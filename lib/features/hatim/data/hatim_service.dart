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
  DocumentReference<Map<String, dynamic>> _rate(String uid) => _db.collection('hatim_rate').doc(uid);

  /// Kuralla aynı süreler (firestore.rules TOPLU HATİM).
  static const createCooldown = Duration(seconds: 60);
  static const rejoinCooldown = Duration(seconds: 30);
  static const minReadTime = Duration(seconds: 60);

  /// Grup silerken parça silme batch boyutu (kural değerlendirmesi istek başına okuma sayar).
  static const _deleteBatchSize = 100;

  /// `holds.<uid>` alan yolu (update içinde noktalı yol, iç içe harita anahtarıdır).
  static String _holdsKey(String uid) => 'holds.$uid';

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
      // Bileşik indeksler: is_public+updated_at desc, agency_id+updated_at desc (firestore.indexes.json).
      _groups.where('is_public', isEqualTo: true).orderBy('updated_at', descending: true).limit(100),
      if ((agencyId ?? '').isNotEmpty)
        _groups.where('agency_id', isEqualTo: agencyId).orderBy('updated_at', descending: true).limit(100),
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

  /// Yeni grup; oluşan gid'i döner. Hız sınırı: grup, `hatim_rate/{uid}` belgesiyle
  /// aynı batch'te yazılır; kural son oluşturmadan 60 sn geçmiş olmasını ister.
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
    Timestamp? lastCreate;
    await _guard(() async {
      final rate = await _rate(me.id).get();
      final last = rate.data()?['last_create_at'];
      if (last is Timestamp) lastCreate = last;
      if (last is Timestamp && DateTime.now().difference(last.toDate()) < createCooldown) {
        throw HatimException(l10n.hatimErrCreateTooSoon);
      }
      final batch = _db.batch()
        ..set(_rate(me.id), {'last_create_at': now})
        ..set(ref, {
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
          'holds': <String, int>{},
          // İsteğe bağlı alan: seçilmediyse hiç yazılmaz.
          if (deadline != null) 'deadline': Timestamp.fromDate(deadline),
          'last_event': _event('create', me, round: 1),
          'created_at': now,
          'updated_at': now,
        });
      await batch.commit();
    }, onPermissionDenied: () async {
      // Yalnız son oluşturma yakınsa hız sınırı mesajı; değilse genel yetki mesajı.
      final t = lastCreate;
      final recent = t != null && DateTime.now().difference(t.toDate()) < createCooldown * 2;
      return recent ? l10n.hatimErrCreateTooSoon : null;
    });
    return ref.id;
  }

  Future<void> join(HatimGroup g, UserModel me) async {
    if (g.memberCount >= HatimGroup.maxMembers) throw HatimException(l10n.hatimErrFull);
    // Kural: kendi ayrılışımın ardından 30 sn içinde tekrar katılamam.
    final e = g.lastEvent;
    final leftByMe = e != null && e.type == 'leave' && e.uid == me.id;
    if (leftByMe && e.at != null && DateTime.now().difference(e.at!) < rejoinCooldown + const Duration(seconds: 3)) {
      throw HatimException(l10n.hatimErrRejoinTooSoon);
    }
    await _guard(
        () => _group(g.id).update({
              'members': FieldValue.arrayUnion([me.id]),
              'member_count': FieldValue.increment(1),
              'last_event': _event('join', me, round: g.round),
              'updated_at': FieldValue.serverTimestamp(),
            }),
        onPermissionDenied: () async => leftByMe ? l10n.hatimErrRejoinTooSoon : null);
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

  /// Sahip, genel yönetici veya grubun acentesinin admini. Önce `taken` parçalar
  /// küçük batch'lerle silinir; bu adım başarısız olsa da (ör. acente admininin parça
  /// silme yetkisi yok) grup yine silinir. Bitmiş (`done`) parçalar silinemez,
  /// alt koleksiyonda sahipsiz kalır (yalnız süper admin temizler).
  Future<void> delete(HatimGroup g) => _guard(() async {
        try {
          final taken = await _parts(g.id).where('status', isEqualTo: HatimPart.statusTaken).get();
          for (var i = 0; i < taken.docs.length; i += _deleteBatchSize) {
            final batch = _db.batch();
            for (final d in taken.docs.skip(i).take(_deleteBatchSize)) {
              batch.delete(d.reference);
            }
            await batch.commit();
          }
        } catch (e) {
          debugPrint('HatimService.delete parçalar: $e');
        }
        await _group(g.id).delete();
      });

  /// Sahip (veya admin), grup tamamlanmışken yeni tur başlatır.
  Future<void> startNewRound(HatimGroup g, UserModel me) => _guard(() => _group(g.id).update({
        'round': g.round + 1,
        'done_count': 0,
        'status': HatimGroup.statusActive,
        'completed_at': null,
        'holds': <String, int>{},
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
          final held = g.holdsOf(me.id);
          if (held >= g.maxHolds) throw HatimException(_quotaMsg(g.unit));
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
            _holdsKey(me.id): held + 1,
            'last_event': _event('take', me, unit: n, round: g.round),
            'updated_at': FieldValue.serverTimestamp(),
          });
        }), onPermissionDenied: () async {
      // Yarış: işlem sırasında başkası oluşturduysa kural reddeder.
      final g = await _group(gid).get();
      final hg = HatimGroup.fromDoc(g);
      final p = await _parts(gid).doc(HatimPart.docId(hg.round, n)).get();
      if (p.exists) return _takenMsg(unit ?? hg.unit);
      if (hg.holdsOf(me.id) >= hg.maxHolds) return _quotaMsg(hg.unit);
      return null;
    });
  }

  /// Alınmış (bitmemiş) parçayı boşa çıkarır: belge silinir + AYNI işlemde grup
  /// `holds[parça sahibi]` −1 ve `last_event` (release). Grup işlem içinde taze
  /// okunur (holds güncel olsun). Parça sahibi ya da grup sahibi/genel admin yapabilir.
  Future<void> releasePart(HatimGroup g, HatimPart p, UserModel me) async {
    if (p.isDone) throw HatimException(l10n.hatimErrAlreadyDone);
    await _guard(() => _releaseTx(g.id, p.n, me));
  }

  Future<void> _releaseTx(String gid, int n, UserModel me) => _db.runTransaction((tx) async {
        final gRef = _group(gid);
        final gSnap = await tx.get(gRef);
        if (!gSnap.exists) throw HatimException(l10n.hatimGroupNotFound);
        final g = HatimGroup.fromDoc(gSnap);
        if (g.isCompleted) throw HatimException(l10n.hatimErrNotActive);
        final pRef = _parts(gid).doc(HatimPart.docId(g.round, n));
        final pSnap = await tx.get(pRef);
        if (!pSnap.exists) return; // zaten boş
        final p = HatimPart.fromDoc(pSnap);
        if (p.isDone) throw HatimException(l10n.hatimErrAlreadyDone);
        final held = g.holdsOf(p.uid);
        tx.delete(pRef);
        tx.update(gRef, {
          _holdsKey(p.uid): held > 0 ? held - 1 : 0,
          'last_event': _event('release', me, unit: n, round: g.round),
          'updated_at': FieldValue.serverTimestamp(),
        });
      });

  /// Bireysel hesap silme (tool/BIREYSEL_SEMA.md) için Toplu Hatim temizliği. SIKI:
  /// herhangi bir adım başarısızsa [HatimException] fırlatır; çağıran hesabı silmez.
  /// - Gruplar ve parçalar SUNUCUDAN okunur (önbellekteki eksik liste yüzünden üyelik kalmasın).
  /// - Her grupta önce bu turdaki alınmış (bitmemiş) parçalarım [_releaseTx] ile bırakılır
  ///   (holds −1 aynı işlemde), sonra grup taze okunur: sahibiysem silinir, değilsem ayrılırım.
  /// Bilinen sınır: bitmiş (`done`) parçalardaki ad ve `last_event.name` kalır (BIREYSEL_SEMA.md).
  Future<void> cleanupForAccountDeletion(UserModel me) => _guard(() async {
        const server = GetOptions(source: Source.server);
        final snap = await _groups.where('members', arrayContains: me.id).get(server);
        for (final d in snap.docs) {
          final g = _fromDoc(d);
          if (!g.isCompleted) {
            final parts = await _parts(g.id).where('round', isEqualTo: g.round).get(server);
            for (final pd in parts.docs) {
              final p = HatimPart.fromDoc(pd);
              if (p.uid == me.id && p.isTaken) await _releaseTx(g.id, p.n, me);
            }
          }
          final fresh = await _group(g.id).get(server);
          if (!fresh.exists) continue; // bu arada silinmiş
          final fg = _fromDoc(fresh);
          if (fg.isOwner(me.id)) {
            await delete(fg);
          } else if (fg.members.contains(me.id)) {
            await leave(fg, me);
          }
        }
      });

  /// Sahip (veya genel admin) bir üyeyi çıkarır: önce o üyenin bu turdaki alınmış
  /// parçaları tek tek boşaltılır (her biri ayrı release işlemi; kural bir grup
  /// güncellemesini tek parçaya bağlar), sonra üye `members`'tan çıkarılır ve
  /// `holds` anahtarı silinir (last_event kick, uid = ben, unit 0).
  Future<void> kick(HatimGroup g, String uid, UserModel me) => _guard(() async {
        if (uid == g.ownerUid) throw HatimException(l10n.hatimErrPermission);
        final snap = await _parts(g.id).where('round', isEqualTo: g.round).get();
        for (final d in snap.docs) {
          final p = HatimPart.fromDoc(d);
          if (p.uid == uid && p.isTaken) await _releaseTx(g.id, p.n, me);
        }
        await _group(g.id).update({
          'members': FieldValue.arrayRemove([uid]),
          'member_count': FieldValue.increment(-1),
          _holdsKey(uid): FieldValue.delete(),
          'last_event': _event('kick', me, round: g.round),
          'updated_at': FieldValue.serverTimestamp(),
        });
      });

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
        // Kural: alındıktan en az 60 sn sonra (sunucu zamanı); saat farkına küçük pay.
        final takenAt = p.takenAt;
        if (takenAt == null || DateTime.now().difference(takenAt) < minReadTime + const Duration(seconds: 3)) {
          throw HatimException(l10n.hatimErrTooSoon);
        }
        final held = g.holdsOf(me.id);

        final newDone = g.doneCount + 1;
        final completed = newDone >= g.total;
        tx.update(pRef, {
          'status': HatimPart.statusDone,
          'done_at': FieldValue.serverTimestamp(),
        });
        tx.update(gRef, {
          'done_count': newDone,
          _holdsKey(me.id): held > 0 ? held - 1 : 0,
          'last_event': _event(completed ? 'completed' : 'done', me, unit: n, round: g.round),
          'updated_at': FieldValue.serverTimestamp(),
          if (completed) 'status': HatimGroup.statusCompleted,
          if (completed) 'completed_at': FieldValue.serverTimestamp(),
        });
      }));

  // ---------------------------------------------------------------------------
  // Hata çevirisi
  // ---------------------------------------------------------------------------

  static String _quotaMsg(String unit) =>
      unit == HatimGroup.unitSayfa ? l10n.hatimErrQuotaSayfa : l10n.hatimErrQuotaCuz;

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
