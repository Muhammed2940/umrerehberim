import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';
import '../esnaf_config.dart';

/// Misafirin esnafa gösterdiği tek kullanımlık QR kodu. Koleksiyon: `shop_tokens/{id}`.
///
/// Belge id'si rastgele (Firestore otomatik id, tahmin edilemez); QR yalnızca
/// `UMRE1:<id>` içerir. İşlem kaydı aynı id ile `shop_transactions/{id}` olarak
/// açılır, bu yüzden bir kod en fazla bir kez kullanılabilir.
class ShopToken {
  final String id;
  final String guestUid;
  final String guestName; // kısaltılmış: "Ayşe D."
  final String agencyId;
  final String agencyName;
  final String tripName;

  /// Kod oluşturulurken misafirin puan bakiyesi. "Puanla öde" bu sınırı aşamaz.
  final int pointsAvailable;
  final DateTime? createdAt;
  final bool used;
  final String? usedByShopId;
  final String? usedByShopName;

  /// Misafirin QR'da seçtiği kupon kodu ('' = kupon yok). İşlem kaydındaki
  /// `coupon_id` bununla aynı olmak zorunda (kurallar).
  final String couponId;

  const ShopToken({
    required this.id,
    required this.guestUid,
    required this.guestName,
    required this.agencyId,
    this.agencyName = '',
    this.tripName = '',
    this.pointsAvailable = 0,
    this.createdAt,
    this.used = false,
    this.usedByShopId,
    this.usedByShopName,
    this.couponId = '',
  });

  bool get hasCoupon => couponId.isNotEmpty;

  /// Sunucu zamanı henüz gelmediyse (yerel yazım) geçerli sayılır.
  bool get isExpired {
    final c = createdAt;
    if (c == null) return false;
    return DateTime.now().difference(c) > EsnafConfig.tokenTtl;
  }

  String get qrData => '${EsnafConfig.qrPrefix}$id';

  factory ShopToken.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    return ShopToken(
      id: doc.id,
      guestUid: toStr(d['guest_uid']),
      guestName: toStr(d['guest_name']),
      agencyId: toStr(d['agency_id']),
      agencyName: toStr(d['agency_name']),
      tripName: toStr(d['trip_name']),
      pointsAvailable: toInt(d['points_available']),
      createdAt: toDateTime(d['created_at']),
      used: d['used'] == true,
      usedByShopId: d['used_by_shop']?.toString(),
      usedByShopName: d['used_by_shop_name']?.toString(),
      couponId: toStr(d['coupon_id']),
    );
  }

  Map<String, dynamic> toCreateMap() => {
        'guest_uid': guestUid,
        'guest_name': guestName,
        'agency_id': agencyId,
        'agency_name': agencyName,
        'trip_name': tripName,
        'points_available': pointsAvailable,
        'created_at': FieldValue.serverTimestamp(),
        'used': false,
        'coupon_id': couponId,
      };
}
