import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../../core/utils/firestore_utils.dart';
import '../../auth/models/user_model.dart';

/// Denetim kaydı eylem adları. Yeni eylem eklerken buraya ekle ve
/// `ccAuditActionLabel` (audit ekranı) içinde etiketini ver.
class AuditAction {
  static const shopCreate = 'shop_create';
  static const shopUpdate = 'shop_update';
  static const shopDelete = 'shop_delete';
  static const shopToggle = 'shop_toggle';
  static const merchantCreate = 'merchant_create';
  static const pointsGrant = 'points_grant';
  static const pointsRevert = 'points_revert';
  static const pointsBulk = 'points_bulk';
  static const couponCreate = 'coupon_create';
  static const couponUpdate = 'coupon_update';
  static const couponDelete = 'coupon_delete';
  static const settlementPaid = 'settlement_paid';
  static const settlementUpdate = 'settlement_update';
  static const financeSettings = 'finance_settings';
  static const userCreate = 'user_create';
  static const userUpdate = 'user_update';
  static const userDelete = 'user_delete';
  static const roleChange = 'role_change';
  static const agencyCreate = 'agency_create';
  static const agencyUpdate = 'agency_update';
  static const agencyDelete = 'agency_delete';
  static const messageSend = 'message_send';
  static const riskReview = 'risk_review';
  static const txCancel = 'tx_cancel';
}

/// `audit_logs/{id}`: kim, ne zaman, neyi yaptı. Kurallar yalnız eklemeye izin verir
/// (değiştirme/silme yok), okuma yalnız süper admin.
class AuditLogEntry {
  final String id;
  final String actorUid;
  final String actorName;
  final String actorRole;
  final String action;
  final String targetType;
  final String targetId;
  final String targetName;
  final Map<String, dynamic> details;
  final DateTime? createdAt;

  const AuditLogEntry({
    required this.id,
    required this.actorUid,
    required this.actorName,
    required this.actorRole,
    required this.action,
    required this.targetType,
    required this.targetId,
    required this.targetName,
    required this.details,
    this.createdAt,
  });

  factory AuditLogEntry.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    return AuditLogEntry(
      id: doc.id,
      actorUid: toStr(d['actor_uid']),
      actorName: toStr(d['actor_name']),
      actorRole: toStr(d['actor_role']),
      action: toStr(d['action']),
      targetType: toStr(d['target_type']),
      targetId: toStr(d['target_id']),
      targetName: toStr(d['target_name']),
      details: (d['details'] is Map) ? Map<String, dynamic>.from(d['details'] as Map) : const {},
      createdAt: toDateTime(d['created_at']),
    );
  }
}

class AuditLog {
  AuditLog._();

  static CollectionReference<Map<String, dynamic>> get collection =>
      FirebaseFirestore.instance.collection('audit_logs');

  /// Kritik bir işlemi kaydeder. Asıl işlemi ASLA bozmaz: hata olursa yalnız loglar.
  /// [actor] verilmezse oturumdaki uid kullanılır (ad/rol boş kalır).
  static Future<void> write({
    required String action,
    UserModel? actor,
    String targetType = '',
    String targetId = '',
    String targetName = '',
    Map<String, dynamic> details = const {},
  }) async {
    try {
      final uid = actor?.id ?? FirebaseAuth.instance.currentUser?.uid;
      if (uid == null) return;
      await collection.add({
        'actor_uid': uid,
        'actor_name': actor?.userName ?? '',
        'actor_role': actor?.userType ?? '',
        'action': action,
        'target_type': targetType,
        'target_id': targetId,
        'target_name': targetName,
        'details': details,
        'created_at': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      debugPrint('AuditLog.write($action) başarısız: $e');
    }
  }

  /// Batch içinde yazmak için (işlemle aynı anda kaydedilsin).
  static void addToBatch(
    WriteBatch batch, {
    required String action,
    required UserModel actor,
    String targetType = '',
    String targetId = '',
    String targetName = '',
    Map<String, dynamic> details = const {},
  }) {
    batch.set(collection.doc(), {
      'actor_uid': actor.id,
      'actor_name': actor.userName,
      'actor_role': actor.userType,
      'action': action,
      'target_type': targetType,
      'target_id': targetId,
      'target_name': targetName,
      'details': details,
      'created_at': FieldValue.serverTimestamp(),
    });
  }
}
