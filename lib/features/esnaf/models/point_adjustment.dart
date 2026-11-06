import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';

/// Süper adminin elle yaptığı puan hareketi. Koleksiyon: `point_adjustments/{id}`.
///
/// Misafir bakiyesi = alışveriş puanları (kazanılan − harcanan, iptaller hariç)
/// + bu kayıtların [points] toplamı. Kayıt silinmez; geri alma ters işaretli yeni
/// bir kayıttır ([revertsId] dolu) ve asıl kayıt [reverted] = true olur.
class PointAdjustment {
  final String id;
  final String guestUid;
  final String guestName;
  final String guestAgencyId;
  final int points;
  final String reason;
  final String createdBy;
  final DateTime? createdAt;
  final bool reverted;
  final String revertedById;
  final DateTime? revertedAt;
  final String revertsId;
  final String batchId;

  const PointAdjustment({
    required this.id,
    required this.guestUid,
    required this.guestName,
    required this.guestAgencyId,
    required this.points,
    required this.reason,
    required this.createdBy,
    this.createdAt,
    this.reverted = false,
    this.revertedById = '',
    this.revertedAt,
    this.revertsId = '',
    this.batchId = '',
  });

  /// Bu kayıt başka bir kaydı geri alıyor mu?
  bool get isRevert => revertsId.isNotEmpty;

  /// Toplu yüklemeden mi geldi?
  bool get isBulk => batchId.isNotEmpty;

  /// Geri alınabilir: geri alınmamış ve kendisi bir geri alma değil.
  bool get canRevert => !reverted && !isRevert;

  factory PointAdjustment.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    return PointAdjustment(
      id: doc.id,
      guestUid: toStr(d['guest_uid']),
      guestName: toStr(d['guest_name']),
      guestAgencyId: toStr(d['guest_agency_id']),
      points: toInt(d['points']),
      reason: toStr(d['reason']),
      createdBy: toStr(d['created_by']),
      createdAt: toDateTime(d['created_at']),
      reverted: d['reverted'] == true,
      revertedById: toStr(d['reverted_by_id']),
      revertedAt: toDateTime(d['reverted_at']),
      revertsId: toStr(d['reverts_id']),
      batchId: toStr(d['batch_id']),
    );
  }

  /// Yeni kayıt (kurallar: created_by == auth.uid, created_at == request.time, points int ≠ 0).
  static Map<String, dynamic> createMap({
    required String guestUid,
    required String guestName,
    required String guestAgencyId,
    required int points,
    required String reason,
    required String createdBy,
    String revertsId = '',
    String batchId = '',
  }) =>
      {
        'guest_uid': guestUid,
        'guest_name': guestName,
        'guest_agency_id': guestAgencyId,
        'points': points,
        'reason': reason,
        'created_by': createdBy,
        'created_at': FieldValue.serverTimestamp(),
        'reverted': false,
        'reverts_id': revertsId,
        'batch_id': batchId,
      };
}
