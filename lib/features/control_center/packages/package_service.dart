import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';
import '../../auth/models/user_model.dart';
import '../../paketler/providers/personal_plan_provider.dart';
import '../shared/audit_log.dart';

/// Paket satırının liste sekmesi.
enum PackageTab { pending, active, expired }

/// `entitlements/{uid}` + sahibinin adı/e-postası (`users/{uid}`).
class PackageRow {
  final String uid;
  final String name;
  final String email;
  final PaketId paket;
  final String status;
  final DateTime? paidUntil;
  final DateTime? mekkeStart;
  final DateTime? mekkeEnd;
  final DateTime? medineStart;
  final DateTime? medineEnd;
  final String mekkeHotel;
  final String medineHotel;

  const PackageRow({
    required this.uid,
    required this.name,
    required this.email,
    required this.paket,
    required this.status,
    this.paidUntil,
    this.mekkeStart,
    this.mekkeEnd,
    this.medineStart,
    this.medineEnd,
    this.mekkeHotel = '',
    this.medineHotel = '',
  });

  factory PackageRow.fromMap(String uid, Map<String, dynamic> d, {String name = '', String email = ''}) => PackageRow(
        uid: uid,
        name: name,
        email: email,
        paket: PaketId.values.firstWhere((p) => p.name == d['paket'], orElse: () => PaketId.ucretsiz),
        status: toStr(d['status']),
        paidUntil: toDateTime(d['paid_until']),
        mekkeStart: toDateTime(d['mekke_start']),
        mekkeEnd: toDateTime(d['mekke_end']),
        medineStart: toDateTime(d['medine_start']),
        medineEnd: toDateTime(d['medine_end']),
        mekkeHotel: toStr(d['mekke_hotel']),
        medineHotel: toStr(d['medine_hotel']),
      );

  bool get isPending => status == 'pending_approval';
  bool get isFull => paket == PaketId.full;

  PackageTab tabAt(DateTime now) {
    if (isPending) return PackageTab.pending;
    if (paidUntil == null || !paidUntil!.isAfter(now)) return PackageTab.expired;
    return PackageTab.active;
  }
}

/// Hak belgesi artık yok (kullanıcı paketi iptal etmiş); bayat satırdan işlem yapılamaz.
class PackageGoneException implements Exception {
  const PackageGoneException();
}

/// Hesaplanan bitiş bugünden önce (geçmiş tarih).
class PackageDatesPastException implements Exception {
  const PackageDatesPastException();
}

/// Kontrol Merkezi › Paket Onayları. Yazma yalnız süper admin (kurallar);
/// her işlem denetim kaydıyla aynı batch'te yazılır.
class PackageService {
  PackageService._();
  static final instance = PackageService._();

  final _db = FirebaseFirestore.instance;
  CollectionReference<Map<String, dynamic>> get _col => _db.collection('entitlements');

  /// Tüm haklar; ad/e-posta için her sahibin kullanıcı belgesi okunur (veri küçük).
  Future<List<PackageRow>> loadAll() async {
    final snap = await _col.get();
    final users = await Future.wait([
      for (final d in snap.docs)
        _db.collection('users').doc(d.id).get().then<Map<String, dynamic>?>(
              (u) => u.data(),
              onError: (Object _) => null,
            ),
    ]);
    final rows = <PackageRow>[
      for (var i = 0; i < snap.docs.length; i++)
        PackageRow.fromMap(
          snap.docs[i].id,
          snap.docs[i].data(),
          name: toStr(users[i]?['user_name']),
          email: toStr(users[i]?['email']),
        ),
    ];
    rows.sort((a, b) => (b.paidUntil ?? DateTime(1970)).compareTo(a.paidUntil ?? DateTime(1970)));
    return rows;
  }

  /// Bir kullanıcının hakkı (yoksa null); kullanıcı kartı için.
  Future<PackageRow?> forUser(String uid) async {
    final d = await _col.doc(uid).get();
    final m = d.data();
    return m == null ? null : PackageRow.fromMap(uid, m);
  }

  static DateTime _day(DateTime d) => DateTime(d.year, d.month, d.day);

  /// Full onayı (ya da onaylı Full'ün tarihlerini güncelleme). `paid_until` = son çıkıştan
  /// 2 gün sonra; mevcut değer daha ileriyse o korunur.
  Future<void> approveFull({
    required UserModel actor,
    required PackageRow row,
    DateTime? mekkeStart,
    DateTime? mekkeEnd,
    DateTime? medineStart,
    DateTime? medineEnd,
    String mekkeHotel = '',
    String medineHotel = '',
  }) async {
    final ends = [mekkeEnd, medineEnd].whereType<DateTime>().toList();
    if (ends.isEmpty) throw ArgumentError('en az bir şehir tarihi gerekli');
    final last = ends.reduce((a, b) => a.isAfter(b) ? a : b);
    final until = _day(last).add(const Duration(days: 2));
    if (!until.isAfter(DateTime.now())) throw const PackageDatesPastException();
    Timestamp? ts(DateTime? d) => d == null ? null : Timestamp.fromDate(_day(d));

    final batch = _db.batch();
    batch.update(
      _col.doc(row.uid),
      {
        'paket': PaketId.full.name,
        'status': 'active',
        'paid_until': Timestamp.fromDate(until),
        'mekke_start': ts(mekkeStart),
        'mekke_end': ts(mekkeEnd),
        'medine_start': ts(medineStart),
        'medine_end': ts(medineEnd),
        'mekke_hotel': mekkeHotel.trim(),
        'medine_hotel': medineHotel.trim(),
        'approved_by': actor.id,
        'approved_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
      },
    );
    _audit(batch, actor, row, 'approve', {
      'paket': PaketId.full.name,
      'paid_until': until.toIso8601String(),
      'mekke_start': mekkeStart?.toIso8601String(),
      'mekke_end': mekkeEnd?.toIso8601String(),
      'medine_start': medineStart?.toIso8601String(),
      'medine_end': medineEnd?.toIso8601String(),
    });
    await _commit(batch);
  }

  /// Süreyi 30 gün uzatır (bitmişse bugünden, sürüyorsa bitişten itibaren).
  Future<void> extend30({required UserModel actor, required PackageRow row}) async {
    final now = DateTime.now();
    final base = row.paidUntil != null && row.paidUntil!.isAfter(now) ? row.paidUntil! : now;
    final until = base.add(const Duration(days: 30));
    final batch = _db.batch();
    batch.update(_col.doc(row.uid), {
      'paid_until': Timestamp.fromDate(until),
      'updated_at': FieldValue.serverTimestamp(),
    });
    _audit(batch, actor, row, 'extend', {'paket': row.paket.name, 'paid_until': until.toIso8601String()});
    await _commit(batch);
  }

  /// Hakkı siler (kullanıcı ücretsiz plana döner).
  Future<void> revoke({required UserModel actor, required PackageRow row}) async {
    final batch = _db.batch();
    batch.delete(_col.doc(row.uid));
    _audit(batch, actor, row, 'revoke', {'paket': row.paket.name, 'status': row.status});
    await batch.commit();
  }

  /// update'li batch: belge silinmişse [PackageGoneException].
  Future<void> _commit(WriteBatch batch) async {
    try {
      await batch.commit();
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') throw const PackageGoneException();
      rethrow;
    }
  }

  void _audit(WriteBatch batch, UserModel actor, PackageRow row, String op, Map<String, dynamic> details) {
    AuditLog.addToBatch(
      batch,
      action: AuditAction.entitlementUpdate,
      actor: actor,
      targetType: 'entitlement',
      targetId: row.uid,
      targetName: row.name,
      details: {'op': op, ...details},
    );
  }
}
