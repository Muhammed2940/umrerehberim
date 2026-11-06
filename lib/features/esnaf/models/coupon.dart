import 'dart:math' as math;

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';

/// Kupon kontrolünün sonucu. [ok] dışındakiler kuponun bu alışverişte
/// kullanılamayacağını söyler.
enum CouponProblem { ok, notFound, inactive, notStarted, expired, exhausted, otherAgency, otherShop, minSpend, alreadyUsed, zero }

/// İndirim kuponu. Koleksiyon: `coupons/{CODE}` (belge id = kod, büyük harf).
///
/// İndirim: percent → brüt × değer / 100; fixed → değer; [maxDiscount] > 0 ise
/// onunla sınırlanır; brüt < [minSpend] ise uygulanmaz. Mağaza indiriminden SONRA
/// kalan tutardan düşülür (net ≥ 0). Misafir başına bir kez kullanılır
/// (`coupon_redemptions/{CODE}_{guestUid}`).
class Coupon {
  static const typePercent = 'percent';
  static const typeFixed = 'fixed';
  static const all = 'all';

  /// Kod biçimi: büyük harf A–Z ve rakam, 4–16 karakter.
  static final codePattern = RegExp(r'^[A-Z0-9]{4,16}$');

  final String code;
  final String title;
  final String description;
  final String type;
  final double value;
  final double minSpend;
  final double maxDiscount;
  final DateTime? validFrom;
  final DateTime? validUntil;
  final String agencyId;
  final String shopId;
  final int maxUses;
  final int usedCount;
  final bool active;
  final String createdBy;
  final DateTime? createdAt;
  final String lastTxId;

  const Coupon({
    required this.code,
    required this.title,
    this.description = '',
    this.type = typePercent,
    this.value = 0,
    this.minSpend = 0,
    this.maxDiscount = 0,
    this.validFrom,
    this.validUntil,
    this.agencyId = all,
    this.shopId = all,
    this.maxUses = 0,
    this.usedCount = 0,
    this.active = true,
    this.createdBy = '',
    this.createdAt,
    this.lastTxId = '',
  });

  String get id => code;
  bool get isPercent => type == typePercent;
  bool get isExhausted => maxUses > 0 && usedCount >= maxUses;
  bool get forAllAgencies => agencyId == all;
  bool get forAllShops => shopId == all;

  bool isExpiredAt(DateTime now) => validUntil != null && now.isAfter(validUntil!);
  bool notStartedAt(DateTime now) => validFrom != null && now.isBefore(validFrom!);

  /// Şu an misafirin kullanabileceği durumda mı (aktif, tarih içinde, tükenmemiş)?
  bool isLiveAt(DateTime now) => active && !isExpiredAt(now) && !notStartedAt(now) && !isExhausted;

  /// Kullanım oranı 0..1 (sınırsızda 0).
  double get usageFraction => maxUses <= 0 ? 0 : (usedCount / maxUses).clamp(0, 1).toDouble();

  bool appliesToShop(String id) => forAllShops || shopId == id;
  bool appliesToAgency(String id) => forAllAgencies || agencyId == id;

  /// Brüt tutara göre kupon tavanı (min_spend ve mağaza indirimi hariç).
  double capFor(double gross) {
    var d = isPercent ? gross * value / 100 : value;
    if (maxDiscount > 0) d = math.min(d, maxDiscount);
    return d < 0 ? 0 : d;
  }

  /// Uygulanacak kupon indirimi: [afterShopDiscount] (mağaza indiriminden sonra kalan)
  /// tutarı aşmaz. Brüt < min_spend ise 0. Kuruşa yuvarlanır (aşağı, kural tavanını aşmasın).
  double discountFor({required double gross, required double afterShopDiscount}) {
    if (gross <= 0 || gross < minSpend) return 0;
    final d = math.min(capFor(gross), afterShopDiscount);
    if (d <= 0) return 0;
    return (d * 100).floorToDouble() / 100;
  }

  /// Tutardan bağımsız kontroller (esnaf kodu okutunca). [gross] verilirse alt limit
  /// ve sıfır indirim de denetlenir.
  CouponProblem check({
    required DateTime now,
    required String shopId,
    required String guestAgencyId,
    double? gross,
    double? afterShopDiscount,
  }) {
    if (!active) return CouponProblem.inactive;
    if (notStartedAt(now)) return CouponProblem.notStarted;
    if (isExpiredAt(now)) return CouponProblem.expired;
    if (isExhausted) return CouponProblem.exhausted;
    if (!appliesToAgency(guestAgencyId)) return CouponProblem.otherAgency;
    if (!appliesToShop(shopId)) return CouponProblem.otherShop;
    if (gross != null && gross > 0) {
      if (gross < minSpend) return CouponProblem.minSpend;
      if (discountFor(gross: gross, afterShopDiscount: afterShopDiscount ?? gross) <= 0) return CouponProblem.zero;
    }
    return CouponProblem.ok;
  }

  static double _d(dynamic v) => v is num ? v.toDouble() : double.tryParse('$v') ?? 0;

  factory Coupon.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    return Coupon(
      code: doc.id,
      title: toStr(d['title']),
      description: toStr(d['description']),
      type: toStr(d['type'], typePercent),
      value: _d(d['value']),
      minSpend: _d(d['min_spend']),
      maxDiscount: _d(d['max_discount']),
      validFrom: toDateTime(d['valid_from']),
      validUntil: toDateTime(d['valid_until']),
      agencyId: toStr(d['agency_id'], all),
      shopId: toStr(d['shop_id'], all),
      maxUses: toInt(d['max_uses']),
      usedCount: toInt(d['used_count']),
      active: d['active'] == true,
      createdBy: toStr(d['created_by']),
      createdAt: toDateTime(d['created_at']),
      lastTxId: toStr(d['last_tx_id']),
    );
  }

  /// Süper admin kaydı. [isNew] ise used_count / created_* / last_tx_id da yazılır.
  Map<String, dynamic> toMap({required bool isNew, String createdByUid = ''}) => {
        'code': code,
        'title': title,
        'description': description,
        'type': type,
        'value': value,
        'min_spend': minSpend,
        'max_discount': maxDiscount,
        'valid_from': validFrom == null ? null : Timestamp.fromDate(validFrom!),
        'valid_until': validUntil == null ? null : Timestamp.fromDate(validUntil!),
        'agency_id': agencyId,
        'shop_id': shopId,
        'max_uses': maxUses,
        'active': active,
        if (isNew) ...{
          'used_count': 0,
          'created_by': createdByUid,
          'created_at': FieldValue.serverTimestamp(),
          'last_tx_id': '',
        },
      };

  /// Kod önerisi: önek + rastgele 4 karakter (karışan harfler yok).
  static String suggestCode([String prefix = 'UMRE']) {
    const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
    final r = math.Random.secure();
    final p = prefix.toUpperCase().replaceAll(RegExp(r'[^A-Z0-9]'), '');
    final head = p.length > 10 ? p.substring(0, 10) : p;
    return head + List.generate(4, (_) => chars[r.nextInt(chars.length)]).join();
  }
}

/// `coupon_redemptions/{CODE}_{guestUid}`: bir misafirin kuponu kullandığı işlem.
class CouponRedemption {
  final String id;
  final String couponId;
  final String guestUid;
  final String shopId;
  final String txId;
  final double discount;
  final DateTime? createdAt;

  const CouponRedemption({
    required this.id,
    required this.couponId,
    required this.guestUid,
    required this.shopId,
    required this.txId,
    required this.discount,
    this.createdAt,
  });

  static String docId(String code, String guestUid) => '${code}_$guestUid';

  factory CouponRedemption.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    final v = d['discount'];
    return CouponRedemption(
      id: doc.id,
      couponId: toStr(d['coupon_id']),
      guestUid: toStr(d['guest_uid']),
      shopId: toStr(d['shop_id']),
      txId: toStr(d['tx_id']),
      discount: v is num ? v.toDouble() : 0,
      createdAt: toDateTime(d['created_at']),
    );
  }
}
