import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';

/// Misafirin bir alışverişe verdiği puan / şikâyet. Koleksiyon: `shop_reviews/{txId}`
/// (belge id = işlem id'si → işlem başına tek değerlendirme; değiştirilemez).
class ShopReview {
  static const maxComment = 500;

  final String txId;
  final String shopId;
  final String guestUid;
  final String guestAgencyId;
  final int rating;
  final String comment;
  final bool complaint;
  final DateTime? createdAt;

  const ShopReview({
    required this.txId,
    required this.shopId,
    required this.guestUid,
    required this.guestAgencyId,
    required this.rating,
    this.comment = '',
    this.complaint = false,
    this.createdAt,
  });

  factory ShopReview.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    return ShopReview(
      txId: doc.id,
      shopId: toStr(d['shop_id']),
      guestUid: toStr(d['guest_uid']),
      guestAgencyId: toStr(d['guest_agency_id']),
      rating: toInt(d['rating']).clamp(0, 5),
      comment: toStr(d['comment']),
      complaint: d['complaint'] == true,
      createdAt: toDateTime(d['created_at']),
    );
  }

  Map<String, dynamic> toCreateMap() => {
        'tx_id': txId,
        'shop_id': shopId,
        'guest_uid': guestUid,
        'guest_agency_id': guestAgencyId,
        'rating': rating,
        'comment': comment.length > maxComment ? comment.substring(0, maxComment) : comment,
        'complaint': complaint,
        'created_at': FieldValue.serverTimestamp(),
      };
}
