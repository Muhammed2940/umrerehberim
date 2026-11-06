import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_utils.dart';
import '../../auth/models/user_model.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../finance/finance_service.dart';
import '../shared/audit_log.dart';
import 'risk_engine.dart';

/// `risk_reviews/{alarmId}`.
class RiskReview {
  final String alarmId;
  final String status;
  final String note;
  final String reviewedBy;
  final String reviewedByName;
  final DateTime? reviewedAt;

  const RiskReview({
    required this.alarmId,
    required this.status,
    required this.note,
    required this.reviewedBy,
    required this.reviewedByName,
    required this.reviewedAt,
  });

  factory RiskReview.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    return RiskReview(
      alarmId: toStr(d['alarm_id'], doc.id),
      status: toStr(d['status'], RiskStatus.reviewed),
      note: toStr(d['note']),
      reviewedBy: toStr(d['reviewed_by']),
      reviewedByName: toStr(d['reviewed_by_name']),
      reviewedAt: toDateTime(d['reviewed_at']),
    );
  }
}

class RiskData {
  final List<RiskAlarm> alarms;
  final Map<String, RiskReview> reviews;
  const RiskData({required this.alarms, required this.reviews});
}

class CcRiskService {
  CcRiskService._();
  static final CcRiskService instance = CcRiskService._();

  final _db = FirebaseFirestore.instance;

  Future<Map<String, RiskReview>> reviews() async {
    final s = await _db.collection('risk_reviews').get();
    return {for (final d in s.docs) d.id: RiskReview.fromFirestore(d)};
  }

  /// [computeAlarms] yalnız süper admin için true (destek işlem verisini okuyamaz).
  Future<RiskData> load({required bool computeAlarms}) async {
    if (!computeAlarms) return RiskData(alarms: const [], reviews: await reviews());
    final now = DateTime.now();
    final from = DateTime(now.year, now.month, now.day).subtract(const Duration(days: RiskRules.windowDays));
    final ts = Timestamp.fromDate(from);
    final results = await Future.wait<Object>([
      CcFinanceService.instance.transactions(from, now.add(const Duration(days: 1))),
      _db.collection('point_adjustments').where('created_at', isGreaterThanOrEqualTo: ts).get(),
      _db.collection('coupons').get(),
      reviews(),
    ]);
    final grants = [
      for (final d in (results[1] as QuerySnapshot<Map<String, dynamic>>).docs) RiskGrant.fromMap(d.id, d.data()),
    ];
    final coupons = [
      for (final d in (results[2] as QuerySnapshot<Map<String, dynamic>>).docs) RiskCoupon.fromMap(d.id, d.data()),
    ];
    final adminNames = await _userNames(grants.map((g) => g.createdBy).toSet());
    final alarms = RiskEngine(
      txs: results[0] as List<FinTx>,
      grants: grants,
      coupons: coupons,
      adminNames: adminNames,
    ).run();
    return RiskData(alarms: alarms, reviews: results[3] as Map<String, RiskReview>);
  }

  Future<Map<String, String>> _userNames(Set<String> uids) async {
    final out = <String, String>{};
    await Future.wait([
      for (final uid in uids.where((u) => u.isNotEmpty))
        _db.collection('users').doc(uid).get().then((d) {
          final n = toStr(d.data()?['user_name']);
          if (n.isNotEmpty) out[uid] = n;
        }).catchError((_) {}),
    ]);
    return out;
  }

  Future<void> saveReview(RiskAlarm alarm, {required String status, required String note, required UserModel actor}) async {
    await _db.collection('risk_reviews').doc(alarm.id).set({
      'alarm_id': alarm.id,
      'status': status,
      'note': note,
      'reviewed_by': actor.id,
      'reviewed_by_name': actor.userName,
      'reviewed_at': FieldValue.serverTimestamp(),
      'alarm_type': alarm.type.name,
      'severity': alarm.severity.name,
    });
    await AuditLog.write(
      action: AuditAction.riskReview,
      actor: actor,
      targetType: 'risk_alarm',
      targetId: alarm.id,
      targetName: alarm.type.name,
      details: {'status': status, 'note': note, 'severity': alarm.severity.name},
    );
  }

  /// Süper admin: şüpheli işlemi iptal eder (kayıt silinmez, işaretlenir).
  Future<void> cancelTransaction(FinTx t, {required String reason, required UserModel actor, String alarmId = ''}) async {
    await _db.collection('shop_transactions').doc(t.id).update({
      'status': ShopTransaction.statusCancelled,
      'cancel_reason': reason,
      'cancelled_at': FieldValue.serverTimestamp(),
    });
    await AuditLog.write(
      action: AuditAction.txCancel,
      actor: actor,
      targetType: 'shop_transaction',
      targetId: t.id,
      targetName: '${t.tx.shopName} · ${t.tx.guestName}',
      details: {'reason': reason, 'amount_gross': t.gross, 'source': 'risk', 'alarm_id': alarmId},
    );
  }
}
