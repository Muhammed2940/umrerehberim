import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../../core/utils/firestore_utils.dart';
import '../../auth/models/user_model.dart';
import '../../hatim/data/hatim_service.dart';
import '../../hatim/models/hatim_group.dart';
import '../shared/audit_log.dart';

/// Ezan vakti belgesi (mekke_/medine_prayer_times/{yyyy-MM-dd}); yapı tool/seed.js ile aynı.
class CcPrayerDoc {
  final bool exists;
  final String day;
  final String hicri;
  final Map<String, String> times; // imsak, gunes, ogle, ikindi, aksam, yatsi

  const CcPrayerDoc({required this.exists, required this.day, required this.hicri, required this.times});
}

/// Dükkan değerlendirmesi + dükkan adı.
class CcReviewItem {
  final String txId;
  final String shopId;
  final String shopName;
  final int rating;
  final String comment;
  final bool complaint;
  final DateTime? createdAt;

  const CcReviewItem({
    required this.txId,
    required this.shopId,
    required this.shopName,
    required this.rating,
    required this.comment,
    required this.complaint,
    this.createdAt,
  });
}

/// Kontrol Merkezi › moderasyon (hatim grupları, ezan vakitleri, değerlendirmeler).
/// Yetki Firestore kurallarındadır; ekranlar yalnız süper admine açılır.
class CcModerationService {
  CcModerationService._();
  static final instance = CcModerationService._();

  FirebaseFirestore get _db => FirebaseFirestore.instance;

  // ------------------------------------------------------------------ hatim
  static const hatimLimit = 300;
  static const _batchSize = 100;

  Future<List<HatimGroup>> loadHatimGroups() async {
    final snap = await _db.collection('hatim_groups').orderBy('updated_at', descending: true).limit(hatimLimit).get();
    return snap.docs.map(HatimGroup.fromDoc).toList();
  }

  /// Grubu siler: önce [HatimService.delete] (taken parçalar + grup), ardından grup artık
  /// olmadığından kalan (done) parçalar süper admin kuralıyla temizlenir.
  Future<void> deleteHatimGroup({required UserModel actor, required HatimGroup group}) async {
    await HatimService().delete(group);
    var leftover = 0;
    try {
      leftover = await _deletePartsOf(group.id);
    } catch (e) {
      debugPrint('CcModerationService.deleteHatimGroup parçalar: $e');
    }
    await AuditLog.write(
      action: AuditAction.hatimModerate,
      actor: actor,
      targetType: 'hatim_group',
      targetId: group.id,
      targetName: group.name,
      details: {'op': 'delete', 'owner_uid': group.ownerUid, 'members': group.memberCount, 'orphan_parts_deleted': leftover},
    );
  }

  Future<int> _deletePartsOf(String gid) async {
    final snap = await _db.collection('hatim_groups').doc(gid).collection('parts').get();
    await _deleteRefs(snap.docs.map((d) => d.reference).toList());
    return snap.docs.length;
  }

  Future<void> _deleteRefs(List<DocumentReference<Map<String, dynamic>>> refs) async {
    for (var i = 0; i < refs.length; i += _batchSize) {
      final batch = _db.batch();
      for (final r in refs.skip(i).take(_batchSize)) {
        batch.delete(r);
      }
      await batch.commit();
    }
  }

  static const _scanPage = 500;
  static const _scanMax = 5000;

  /// Kural, silinen her farklı grup için exists() çağırır (batch başına en çok 20 erişim);
  /// bu yüzden bir batch'e en çok bu kadar farklı grup konur.
  static const _groupsPerBatch = 10;

  /// Silinmiş gruplara ait kalan parçaları siler (en çok [_scanMax] parça taranır).
  /// `collectionGroup('parts')` okuma kuralı yoksa FirebaseException(permission-denied) fırlar.
  Future<({int deleted, int groups})> cleanOrphanParts({required UserModel actor}) async {
    final exists = <String, bool>{};
    var scanned = 0;
    var deleted = 0;
    DocumentSnapshot<Map<String, dynamic>>? last;
    while (scanned < _scanMax) {
      var q = _db.collectionGroup('parts').orderBy(FieldPath.documentId).limit(_scanPage);
      if (last != null) q = q.startAfterDocument(last);
      final snap = await q.get();
      if (snap.docs.isEmpty) break;
      last = snap.docs.last;
      scanned += snap.docs.length;

      final orphansByGroup = <String, List<DocumentReference<Map<String, dynamic>>>>{};
      for (final d in snap.docs) {
        final gid = d.reference.parent.parent?.id;
        if (gid == null) continue;
        exists[gid] ??= (await _db.collection('hatim_groups').doc(gid).get()).exists;
        if (exists[gid] == false) orphansByGroup.putIfAbsent(gid, () => []).add(d.reference);
      }
      deleted += await _deleteOrphans(orphansByGroup);
      if (snap.docs.length < _scanPage) break;
    }
    if (deleted > 0) {
      await AuditLog.write(
        action: AuditAction.hatimModerate,
        actor: actor,
        targetType: 'hatim_group',
        targetId: '*',
        targetName: 'orphan_parts',
        details: {'op': 'clean_orphans', 'count': deleted, 'groups_scanned': exists.length},
      );
    }
    return (deleted: deleted, groups: exists.length);
  }

  Future<int> _deleteOrphans(Map<String, List<DocumentReference<Map<String, dynamic>>>> byGroup) async {
    var total = 0;
    var batch = _db.batch();
    var ops = 0;
    final groupsInBatch = <String>{};
    Future<void> flush() async {
      if (ops == 0) return;
      await batch.commit();
      batch = _db.batch();
      ops = 0;
      groupsInBatch.clear();
    }

    for (final e in byGroup.entries) {
      for (final ref in e.value) {
        if (ops >= _batchSize || (!groupsInBatch.contains(e.key) && groupsInBatch.length >= _groupsPerBatch)) {
          await flush();
        }
        batch.delete(ref);
        groupsInBatch.add(e.key);
        ops++;
        total++;
      }
    }
    await flush();
    return total;
  }

  // ------------------------------------------------------------------ ezan vakitleri
  static const prayerKeys = ['imsak', 'gunes', 'ogle', 'ikindi', 'aksam', 'yatsi'];
  static const _gunler = ['Pazartesi', 'Salı', 'Çarşamba', 'Perşembe', 'Cuma', 'Cumartesi', 'Pazar'];

  static String collectionOf(bool mekke) => mekke ? 'mekke_prayer_times' : 'medine_prayer_times';

  static String ymd(DateTime d) =>
      '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  /// 'HH:mm' (00:00–23:59)
  static bool validTime(String v) => RegExp(r'^([01]\d|2[0-3]):[0-5]\d$').hasMatch(v.trim());

  Future<CcPrayerDoc> loadPrayer({required bool mekke, required DateTime date}) async {
    final doc = await _db.collection(collectionOf(mekke)).doc(ymd(date)).get();
    final d = doc.data() ?? const <String, dynamic>{};
    return CcPrayerDoc(
      exists: doc.exists,
      day: doc.exists ? toStr(d['day']) : _gunler[date.weekday - 1],
      hicri: toStr(d['hicri']),
      times: {for (final k in prayerKeys) k: toStr(d[k])},
    );
  }

  Future<void> savePrayer({
    required UserModel actor,
    required bool mekke,
    required DateTime date,
    required String day,
    required String hicri,
    required Map<String, String> times,
  }) async {
    final id = ymd(date);
    final col = collectionOf(mekke);
    await _db.collection(col).doc(id).set({
      'date': id,
      'day': day.trim(),
      'hicri': hicri.trim(),
      for (final k in prayerKeys) k: (times[k] ?? '').trim(),
    });
    await AuditLog.write(
      action: AuditAction.contentUpdate,
      actor: actor,
      targetType: 'prayer_times',
      targetId: '$col/$id',
      targetName: id,
      details: {'city': mekke ? 'mekke' : 'medine', ...times},
    );
  }

  // ------------------------------------------------------------------ değerlendirmeler
  static const reviewLimit = 300;

  Future<List<CcReviewItem>> loadReviews() async {
    final snap = await _db.collection('shop_reviews').orderBy('created_at', descending: true).limit(reviewLimit).get();
    final names = <String, String>{};
    try {
      final shops = await _db.collection('shops').get();
      for (final s in shops.docs) {
        names[s.id] = toStr(s.data()['name']);
      }
    } catch (e) {
      debugPrint('CcModerationService.loadReviews dükkanlar: $e');
    }
    return [
      for (final d in snap.docs)
        CcReviewItem(
          txId: d.id,
          shopId: toStr(d.data()['shop_id']),
          shopName: names[toStr(d.data()['shop_id'])] ?? '',
          rating: toInt(d.data()['rating']).clamp(0, 5),
          comment: toStr(d.data()['comment']),
          complaint: d.data()['complaint'] == true,
          createdAt: toDateTime(d.data()['created_at']),
        ),
    ];
  }

  Future<void> deleteReview({required UserModel actor, required CcReviewItem review}) async {
    await _db.collection('shop_reviews').doc(review.txId).delete();
    await AuditLog.write(
      action: AuditAction.reviewModerate,
      actor: actor,
      targetType: 'shop_review',
      targetId: review.txId,
      targetName: review.shopName,
      details: {'op': 'delete', 'shop_id': review.shopId, 'rating': review.rating, 'has_comment': review.comment.isNotEmpty},
    );
  }
}
