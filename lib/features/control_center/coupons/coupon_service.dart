import 'package:cloud_firestore/cloud_firestore.dart';

import '../../auth/models/user_model.dart';
import '../../esnaf/models/coupon.dart';
import '../../shops/models/shop_model.dart';
import '../../shops/providers/shop_service.dart';
import '../shared/audit_log.dart';

/// Kupon durumu (liste rozetleri).
enum CouponStatus { active, scheduled, expired, inactive, exhausted }

CouponStatus couponStatusOf(Coupon c, [DateTime? at]) {
  final now = at ?? DateTime.now();
  if (!c.active) return CouponStatus.inactive;
  if (c.isExhausted) return CouponStatus.exhausted;
  if (c.isExpiredAt(now)) return CouponStatus.expired;
  if (c.notStartedAt(now)) return CouponStatus.scheduled;
  return CouponStatus.active;
}

/// Bir kupon kullanımının ekranda gösterilen hali (işlem kaydından misafir/dükkan adı).
class RedemptionView {
  final CouponRedemption r;
  final String guestName;
  final String shopName;
  const RedemptionView({required this.r, required this.guestName, required this.shopName});
}

class CouponCodeTakenException implements Exception {
  const CouponCodeTakenException();
}

class CouponInUseException implements Exception {
  const CouponInUseException();
}

/// Kontrol Merkezi › Kuponlar. Yazma yalnız süper admin (kurallar); muhasebe okur.
/// Her değişiklik denetim kaydıyla aynı batch'te yazılır.
class CouponService {
  CouponService._();
  static final instance = CouponService._();

  final _db = FirebaseFirestore.instance;
  CollectionReference<Map<String, dynamic>> get _col => _db.collection('coupons');
  CollectionReference<Map<String, dynamic>> get _red => _db.collection('coupon_redemptions');

  /// Tüm kuponlar (yeniden eskiye; sıralama istemcide).
  Stream<List<Coupon>> watchAll() => _col.snapshots().map((s) => s.docs.map(Coupon.fromFirestore).toList()
    ..sort((a, b) => (b.createdAt ?? DateTime(2100)).compareTo(a.createdAt ?? DateTime(2100))));

  /// Tüm kullanımlar (KPI ve kupon başına toplam indirim için).
  Future<List<CouponRedemption>> allRedemptions() async {
    final s = await _red.limit(3000).get();
    return s.docs.map(CouponRedemption.fromFirestore).toList();
  }

  /// Bir kuponun kullanımları; misafir ve dükkan adı işlem kaydından okunur.
  Future<List<RedemptionView>> redemptionsOf(String code) async {
    final s = await _red.where('coupon_id', isEqualTo: code).limit(500).get();
    final list = s.docs.map(CouponRedemption.fromFirestore).toList()
      ..sort((a, b) => (b.createdAt ?? DateTime(2100)).compareTo(a.createdAt ?? DateTime(2100)));
    final txs = await Future.wait([
      for (final r in list.take(200))
        _db.collection('shop_transactions').doc(r.txId).get().then<Map<String, dynamic>?>(
              (d) => d.data(),
              onError: (Object _) => null,
            ),
    ]);
    String field(int i, String key) {
      final d = i < txs.length ? txs[i] : null;
      return (d == null ? null : d[key] as String?) ?? '';
    }

    return [
      for (var i = 0; i < list.length; i++)
        RedemptionView(r: list[i], guestName: field(i, 'guest_name'), shopName: field(i, 'shop_name')),
    ];
  }

  Future<List<ShopModel>> shops() => ShopService.instance.forAdmin(isSuper: true);
  Future<List<({String id, String name})>> agencies() => ShopService.instance.agencies();

  /// Yeni kupon ([isNew]) ya da düzenleme. Yeni kodda belge varsa [CouponCodeTakenException].
  Future<void> save({required UserModel actor, required Coupon coupon, required bool isNew}) async {
    final ref = _col.doc(coupon.code);
    if (isNew && (await ref.get()).exists) throw const CouponCodeTakenException();
    final batch = _db.batch();
    if (isNew) {
      batch.set(ref, coupon.toMap(isNew: true, createdByUid: actor.id));
    } else {
      batch.update(ref, coupon.toMap(isNew: false));
    }
    AuditLog.addToBatch(
      batch,
      action: isNew ? AuditAction.couponCreate : AuditAction.couponUpdate,
      actor: actor,
      targetType: 'coupon',
      targetId: coupon.code,
      targetName: coupon.title,
      details: {
        'type': coupon.type,
        'value': coupon.value,
        'agency_id': coupon.agencyId,
        'shop_id': coupon.shopId,
        'max_uses': coupon.maxUses,
        'active': coupon.active,
      },
    );
    await batch.commit();
  }

  Future<void> setActive({required UserModel actor, required Coupon coupon, required bool active}) async {
    final batch = _db.batch();
    batch.update(_col.doc(coupon.code), {'active': active});
    AuditLog.addToBatch(
      batch,
      action: AuditAction.couponUpdate,
      actor: actor,
      targetType: 'coupon',
      targetId: coupon.code,
      targetName: coupon.title,
      details: {'active': active},
    );
    await batch.commit();
  }

  /// Yalnız hiç kullanılmamış kupon silinir; kullanılmışsa [CouponInUseException]
  /// (pasife alınmalı, geçmiş raporlar bozulmasın).
  Future<void> delete({required UserModel actor, required Coupon coupon}) async {
    if (coupon.usedCount > 0) throw const CouponInUseException();
    final batch = _db.batch();
    batch.delete(_col.doc(coupon.code));
    AuditLog.addToBatch(
      batch,
      action: AuditAction.couponDelete,
      actor: actor,
      targetType: 'coupon',
      targetId: coupon.code,
      targetName: coupon.title,
    );
    await batch.commit();
  }
}
