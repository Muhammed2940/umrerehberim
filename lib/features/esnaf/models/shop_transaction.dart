import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';

/// Anlaşmalı esnafta yapılan bir alışverişin kaydı. Koleksiyon: `shop_transactions/{id}`.
/// Belge id'si = kullanılan [ShopToken] id'si (tek kullanım garantisi).
///
/// Tutarlar Suudi riyali (SAR). Uygulama ödemeyi tahsil etmez; esnaf aldığı
/// ödemenin türünü ve tutarını kaydeder.
class ShopTransaction {
  static const statusOk = 'ok';
  static const statusCancelled = 'iptal';

  final String id;
  final String shopId;
  final String shopName;
  final String shopAgencyId;
  final String guestUid;
  final String guestName;
  final String guestAgencyId;
  final double amountGross;
  final int discountPercent;
  final double discountAmount;

  /// Puanla ödenen kısım düşüldükten sonra müşterinin ödediği tutar.
  final double amountNet;
  final String paymentMethod; // PaymentMethod.cash | card | points
  final int pointsEarned;
  final int pointsSpent;
  final int commissionPercent;
  final String cashierUid;
  final String status;
  final String note;
  final String cancelReason;
  final DateTime? createdAt;
  final DateTime? cancelledAt;

  /// Kullanılan kupon ('' = yok) ve kupon indirimi (mağaza indiriminden sonra düşülür).
  final String couponId;
  final double couponDiscount;

  const ShopTransaction({
    required this.id,
    required this.shopId,
    required this.shopName,
    required this.shopAgencyId,
    required this.guestUid,
    required this.guestName,
    required this.guestAgencyId,
    required this.amountGross,
    required this.discountPercent,
    required this.discountAmount,
    required this.amountNet,
    required this.paymentMethod,
    this.pointsEarned = 0,
    this.pointsSpent = 0,
    this.commissionPercent = 0,
    required this.cashierUid,
    this.status = statusOk,
    this.note = '',
    this.cancelReason = '',
    this.createdAt,
    this.cancelledAt,
    this.couponId = '',
    this.couponDiscount = 0,
  });

  bool get isCancelled => status == statusCancelled;
  bool get hasCoupon => couponId.isNotEmpty;

  /// Acentenin alacağı komisyon (net tutar üzerinden, iptalde 0).
  double get commissionAmount => isCancelled ? 0 : amountNet * commissionPercent / 100;

  static double _d(dynamic v) => v is num ? v.toDouble() : double.tryParse('$v') ?? 0;

  factory ShopTransaction.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    return ShopTransaction(
      id: doc.id,
      shopId: toStr(d['shop_id']),
      shopName: toStr(d['shop_name']),
      shopAgencyId: toStr(d['shop_agency_id']),
      guestUid: toStr(d['guest_uid']),
      guestName: toStr(d['guest_name']),
      guestAgencyId: toStr(d['guest_agency_id']),
      amountGross: _d(d['amount_gross']),
      discountPercent: toInt(d['discount_percent']),
      discountAmount: _d(d['discount_amount']),
      amountNet: _d(d['amount_net']),
      paymentMethod: toStr(d['payment_method'], 'nakit'),
      pointsEarned: toInt(d['points_earned']),
      pointsSpent: toInt(d['points_spent']),
      commissionPercent: toInt(d['commission_percent']),
      cashierUid: toStr(d['cashier_uid']),
      status: toStr(d['status'], statusOk),
      note: toStr(d['note']),
      cancelReason: toStr(d['cancel_reason']),
      createdAt: toDateTime(d['created_at']),
      cancelledAt: toDateTime(d['cancelled_at']),
      couponId: toStr(d['coupon_id']),
      couponDiscount: _d(d['coupon_discount']),
    );
  }

  Map<String, dynamic> toCreateMap({required String tokenId}) => {
        'token_id': tokenId,
        'shop_id': shopId,
        'shop_name': shopName,
        'shop_agency_id': shopAgencyId,
        'guest_uid': guestUid,
        'guest_name': guestName,
        'guest_agency_id': guestAgencyId,
        'amount_gross': amountGross,
        'discount_percent': discountPercent,
        'discount_amount': discountAmount,
        'amount_net': amountNet,
        'payment_method': paymentMethod,
        'points_earned': pointsEarned,
        'points_spent': pointsSpent,
        'commission_percent': commissionPercent,
        'cashier_uid': cashierUid,
        'status': statusOk,
        'note': note,
        'coupon_id': couponId,
        'coupon_discount': couponId.isEmpty ? 0 : couponDiscount,
        'created_at': FieldValue.serverTimestamp(),
      };
}

/// İşlem listesi özeti (esnaf günlük özeti, yönetici raporu, misafir cüzdanı).
class TransactionSummary {
  final int count;
  final double gross;
  final double net;
  final double discount;
  final double commission;
  final Map<String, double> netByMethod;
  final int pointsEarned;
  final int pointsSpent;

  /// Kupon indirimleri toplamı (mağaza indirimi [discount] içinde değildir).
  final double couponDiscount;

  const TransactionSummary({
    this.count = 0,
    this.gross = 0,
    this.net = 0,
    this.discount = 0,
    this.commission = 0,
    this.netByMethod = const {},
    this.pointsEarned = 0,
    this.pointsSpent = 0,
    this.couponDiscount = 0,
  });

  int get pointsBalance => pointsEarned - pointsSpent;

  /// İptal edilenler hariç tutulur.
  factory TransactionSummary.of(Iterable<ShopTransaction> list) {
    var count = 0, earned = 0, spent = 0;
    double gross = 0, net = 0, discount = 0, commission = 0, coupon = 0;
    final byMethod = <String, double>{};
    for (final t in list) {
      if (t.isCancelled) continue;
      count++;
      coupon += t.couponDiscount;
      gross += t.amountGross;
      net += t.amountNet;
      discount += t.discountAmount;
      commission += t.commissionAmount;
      earned += t.pointsEarned;
      spent += t.pointsSpent;
      byMethod[t.paymentMethod] = (byMethod[t.paymentMethod] ?? 0) + t.amountNet;
    }
    return TransactionSummary(
      count: count,
      gross: gross,
      net: net,
      discount: discount,
      commission: commission,
      netByMethod: byMethod,
      pointsEarned: earned,
      pointsSpent: spent,
      couponDiscount: coupon,
    );
  }
}
