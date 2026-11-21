import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../../core/providers/locale_provider.dart';
import '../../auth/models/user_model.dart';
import '../models/hatim_group.dart';
import '../models/hatim_part.dart';

/// Kullanıcıya gösterilecek, çevrilmiş hata.
class HatimException implements Exception {
  final String message;
  const HatimException(this.message);
  @override
  String toString() => message;
}

/// Toplu Hatim veri katmanı. Yazılan her alan tool/HATIM_SEMA.md sözleşmesine
/// birebir uyar (Firestore kuralları aynı sözleşmeyle yazıldı; fazladan alan
/// eklenirse yazma reddedilir). `request.time` istenen her zaman alanı
/// [FieldValue.serverTimestamp] ile yazılır.
class HatimService {
  HatimService({FirebaseFirestore? db}) : _db = db ?? FirebaseFirestore.instance;

  final FirebaseFirestore _db;

  CollectionReference<Map<String, dynamic>> get _groups => _db.collection('hatim_groups');
  DocumentReference<Map<String, dynamic>> _group(String gid) => _groups.doc(gid);
  CollectionReference<Map<String, dynamic>> _parts(String gid) => _group(gid).collection('parts');

  /// Bekleyen (henüz sunucu zamanı atanmamış) yazımlar null tarih taşır; sıralamada en üste çıkar.
  static HatimGroup _fromDoc(DocumentSnapshot<Map<String, dynamic>> d) => HatimGroup.fromDoc(d);

  static int _byUpdatedDesc(HatimGroup a, HatimGroup b) {
    final x = a.updatedAt ?? a.createdAt;
    final y = b.updatedAt ?? b.createdAt;
    if (x == null && y == null) return 0;
    if (x == null) return -1;
    if (y == null) return 1;
    return y.compareTo(x);
  }

  /// `last_event` haritası: `{type, uid, name, unit, round, at}`.
  static Map<String, dynamic> _event(String type, UserModel me, {int unit = 0, required int round}) => {
        'type': type,
        'uid': me.id,
        'name': me.userName,
        'unit': unit,
        'round': round,
        'at': FieldValue.serverTimestamp(),
      };

  // ---------------------------------------------------------------------------
  // Okuma
  // ---------------------------------------------------------------------------

  /// Üyesi olduğum gruplar, `updated_at` azalan.
  /// Not: sıralama istemcide yapılır; `array-contains + orderBy` bileşik indeks
  /// isterdi ve indeks yoksa sorgu tamamen düşerdi.
  Stream<List<HatimGroup>> myGroups(String uid) => _groups
      .where('members', arrayContains: uid)
      .snapshots()
      .map((s) => s.docs.map(_fromDoc).toList()..sort(_byUpdatedDesc));

  /// Keşfet: herkese açık gruplar + acentemin grupları, birleşik ve tekil;
  /// üyesi olduklarım hariç.
  Stream<List<HatimGroup>> discover(String uid, String? agencyId) {
    final queries = <Query<Map<String, dynamic>>>[
      _groups.where('is_public', isEqualTo: true).limit(100),
      if ((agencyId ?? '').isNotEmpty) _groups.where('agency_id', isEqualTo: agencyId).limit(100),
    ];
    final latest = List<List<HatimGroup>?>.filled(queries.length, null);
    final subs = <StreamSubscription<QuerySnapshot<Map<String, dynamic>>>>[];
    late final StreamController<List<HatimGroup>> ctrl;

    void emit() {
      if (latest.any((e) => e == null)) return;
      final byId = <String, HatimGroup>{};
      for (final list in latest) {
        for (final g in list!) {
          if (!g.isMember(uid)) byId[g.id] = g;
        }
      }
      ctrl.add(byId.values.toList()..sort(_byUpdatedDesc));
    }

    ctrl = StreamController<List<HatimGroup>>(
      onListen: () {
        for (var i = 0; i < queries.length; i++) {
          subs.add(queries[i].snapshots().listen(
            (s) {
              latest[i] = s.docs.map(_fromDoc).toList();
              emit();
            },
            onError: (Object e) {
              // Bir sorgu reddedilirse (ör. kural) diğerinin sonucu yine gösterilsin.
              debugPrint('HatimService.discover[$i]: $e');
              latest[i] = const [];
              emit();
            },
          ));
        }
      },
      onCancel: () async {
        for (final s in subs) {
          await s.cancel();
        }
        subs.clear();
      },
    );
    return ctrl.stream;
  }

  Stream<HatimGroup?> group(String gid) =>
      _group(gid).snapshots().map((d) => d.exists ? _fromDoc(d) : null);

  /// Verilen turun parçaları, parça numarasına göre.
  Stream<Map<int, HatimPart>> parts(String gid, int round) => _parts(gid)
      .where('round', isEqualTo: round)
      .snapshots()
      .map((s) => {for (final d in s.docs) HatimPart.fromDoc(d).n: HatimPart.fromDoc(d)});

  // ---------------------------------------------------------------------------
  // Grup işlemleri
  // ---------------------------------------------------------------------------

  /// Yeni grup; oluşan gid'i döner.
  Future<String> create({
    required UserModel me,
    required String name,
    required String niyet,
    required String unit,
    required bool isPublic,
    DateTime? deadline,
  }) async {
    final ref = _groups.doc();
    final now = FieldValue.serverTimestamp();
    await _guard(() => ref.set({
          'name': name.trim(),
          'niyet': niyet.trim(),
          'unit': unit,
          'total': HatimGroup.totalFor(unit),
          'is_public': isPublic,
          'agency_id': me.agencyId ?? '',
          'owner_uid': me.id,
          'owner_name': me.userName,
          'members': [me.id],
          'member_count': 1,
          'round': 1,
          'done_count': 0,
          'status': HatimGroup.statusActive,
          // İsteğe bağlı alan: seçilmediyse hiç yazılmaz.
          if (deadline != null) 'deadline': Timestamp.fromDate(deadline),
          'last_event': _event('create', me, round: 1),
          'created_at': now,
          'updated_at': now,
        }));
    return ref.id;
  }

  Future<void> join(HatimGroup g, UserModel me) async {
    if (g.memberCount >= HatimGroup.maxMembers) throw HatimException(l10n.hatimErrFull);
    await _guard(() => _group(g.id).update({
          'members': FieldValue.arrayUnion([me.id]),
          'member_count': FieldValue.increment(1),
          'last_event': _event('join', me, round: g.round),
          'updated_at': FieldValue.serverTimestamp(),
        }));
  }

  Future<void> leave(HatimGroup g, UserModel me) => _guard(() => _group(g.id).update({
        'members': FieldValue.arrayRemove([me.id]),
        'member_count': FieldValue.increment(-1),
        'last_event': _event('leave', me, round: g.round),
        'updated_at': FieldValue.serverTimestamp(),
      }));

  /// Sahip: ad, niyet, hedef tarih, görünürlük. Tarih kaldırılırsa alan silinir.
  Future<void> edit(
    HatimGroup g, {
    required String name,
    required String niyet,
    required bool isPublic,
    DateTime? deadline,
  }) =>
      _guard(() => _group(g.id).update({
            'name': name.trim(),
            'niyet': niyet.trim(),
            'is_public': isPublic,
            'deadline': deadline == null ? FieldValue.delete() : Timestamp.fromDate(deadline),
            'updated_at': FieldValue.serverTimestamp(),
          }));

  /// Sahip veya yönetici. Önce `taken` parçalar silinir (kural gereği); bitmiş
  /// (`done`) parçalar silinemez, alt koleksiyonda sahipsiz kalır.
  Future<void> delete(HatimGroup g) => _guard(() async {
        final taken = await _parts(g.id).where('status', isEqualTo: HatimPart.statusTaken).get();
        for (var i = 0; i < taken.docs.length; i += 400) {
          final batch = _db.batch();
          for (final d in taken.docs.skip(i).take(400)) {
            batch.delete(d.reference);
          }
          await batch.commit();
        }
        await _group(g.id).delete();
      });

  /// Sahip (veya admin), grup tamamlanmışken yeni tur başlatır.
  Future<void> startNewRound(HatimGroup g, UserModel me) => _guard(() => _group(g.id).update({
        'round': g.round + 1,
        'done_count': 0,
        'status': HatimGroup.statusActive,
        'completed_at': null,
        'last_event': _event('new_round', me, round: g.round + 1),
        'updated_at': FieldValue.serverTimestamp(),
      }));

  // ---------------------------------------------------------------------------
  // Parça işlemleri
  // ---------------------------------------------------------------------------

  /// Parça alır: `parts/{round}_{n}` belgesi oluşturulur + aynı işlemde grup
  /// `last_event` (take). İşlem içinde parça ve grup okunur; parça varsa
  /// "başkası aldı" hatası verilir (kural da ikinci oluşturmayı reddeder).
  Future<void> takePart(String gid, int n, UserModel me) async {
    String? unit;
    await _guard(() => _db.runTransaction((tx) async {
          final gSnap = await tx.get(_group(gid));
          if (!gSnap.exists) throw HatimException(l10n.hatimGroupNotFound);
          final g = HatimGroup.fromDoc(gSnap);
          unit = g.unit;
          if (!g.isMember(me.id)) throw HatimException(l10n.hatimNotMember);
          if (g.isCompleted) throw HatimException(l10n.hatimErrNotActive);
          final partRef = _parts(gid).doc(HatimPart.docId(g.round, n));
          final pSnap = await tx.get(partRef);
          if (pSnap.exists) throw HatimException(_takenMsg(g.unit));
          tx.set(partRef, {
            'n': n,
            'round': g.round,
            'uid': me.id,
            'name': me.userName,
            'status': HatimPart.statusTaken,
            'taken_at': FieldValue.serverTimestamp(),
            'done_at': null,
          });
          tx.update(_group(gid), {
            'last_event': _event('take', me, unit: n, round: g.round),
            'updated_at': FieldValue.serverTimestamp(),
          });
        }), onPermissionDenied: () async {
      // Yarış: işlem sırasında başkası oluşturduysa kural reddeder.
      final g = await _group(gid).get();
      final round = HatimGroup.fromDoc(g).round;
      final p = await _parts(gid).doc(HatimPart.docId(round, n)).get();
      return p.exists ? _takenMsg(unit ?? HatimGroup.fromDoc(g).unit) : null;
    });
  }

  /// Alınmış (bitmemiş) parçayı boşa çıkarır: belge silinir + AYNI batch'te grup
  /// `last_event` (release). Kural ayrı yazılan release olayını reddeder.
  /// Parça sahibi ya da grup sahibi/admin yapabilir.
  Future<void> releasePart(HatimGroup g, HatimPart p, UserModel me) async {
    if (p.isDone) throw HatimException(l10n.hatimErrAlreadyDone);
    final batch = _db.batch()
      ..delete(_parts(g.id).doc(p.id))
      ..update(_group(g.id), {
        'last_event': _event('release', me, unit: p.n, round: g.round),
        'updated_at': FieldValue.serverTimestamp(),
      });
    await _guard(batch.commit);
  }

  /// "Bitirdim": tek atomik işlem (transaction = kurallar için tek batch).
  /// Grup ve parça işlem içinde taze okunur; parça `taken → done`
  /// (yalnız status, done_at) + grup done_count = eski + 1, last_event
  /// (done ya da completed), updated_at; son parçaysa status completed + completed_at.
  /// Kural `get(part).status == 'taken'` istediği için aynı parça iki kez sayılamaz.
  Future<void> markDone(String gid, int n, UserModel me) => _guard(() => _db.runTransaction((tx) async {
        final gRef = _group(gid);
        final gSnap = await tx.get(gRef);
        if (!gSnap.exists) throw HatimException(l10n.hatimGroupNotFound);
        final g = HatimGroup.fromDoc(gSnap);
        if (g.isCompleted) throw HatimException(l10n.hatimErrNotActive);
        final pRef = _parts(gid).doc(HatimPart.docId(g.round, n));
        final pSnap = await tx.get(pRef);
        if (!pSnap.exists) throw HatimException(l10n.hatimErrNotYours);
        final p = HatimPart.fromDoc(pSnap);
        if (p.isDone) throw HatimException(l10n.hatimErrAlreadyDone);
        if (p.uid != me.id) throw HatimException(l10n.hatimErrNotYours);

        final newDone = g.doneCount + 1;
        final completed = newDone >= g.total;
        tx.update(pRef, {
          'status': HatimPart.statusDone,
          'done_at': FieldValue.serverTimestamp(),
        });
        tx.update(gRef, {
          'done_count': newDone,
          'last_event': _event(completed ? 'completed' : 'done', me, unit: n, round: g.round),
          'updated_at': FieldValue.serverTimestamp(),
          if (completed) 'status': HatimGroup.statusCompleted,
          if (completed) 'completed_at': FieldValue.serverTimestamp(),
        });
      }));

  // ---------------------------------------------------------------------------
  // Hata çevirisi
  // ---------------------------------------------------------------------------

  static String _takenMsg(String unit) =>
      unit == HatimGroup.unitSayfa ? l10n.hatimErrTakenSayfa : l10n.hatimErrTakenCuz;

  /// Firestore hatalarını kullanıcı dostu Türkçe (seçili dil) mesaja çevirir.
  /// [onPermissionDenied] daha özel bir mesaj üretebilir (null → genel yetki mesajı).
  static Future<T> _guard<T>(Future<T> Function() run, {Future<String?> Function()? onPermissionDenied}) async {
    try {
      return await run();
    } on HatimException {
      rethrow;
    } on FirebaseException catch (e) {
      debugPrint('HatimService: ${e.code} ${e.message}');
      switch (e.code) {
        case 'permission-denied':
          String? special;
          if (onPermissionDenied != null) {
            try {
              special = await onPermissionDenied();
            } catch (_) {}
          }
          throw HatimException(special ?? l10n.hatimErrPermission);
        case 'unavailable':
        case 'deadline-exceeded':
          throw HatimException(l10n.hatimErrNetwork);
        case 'not-found':
          throw HatimException(l10n.hatimGroupNotFound);
        case 'unauthenticated':
          throw HatimException(l10n.hatimErrNotSignedIn);
        default:
          throw HatimException(l10n.hatimErrGeneric);
      }
    } catch (e) {
      debugPrint('HatimService: $e');
      throw HatimException(l10n.hatimErrGeneric);
    }
  }
}
