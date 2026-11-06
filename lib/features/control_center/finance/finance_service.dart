import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import '../../../core/utils/firestore_utils.dart';
import '../../auth/models/user_model.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../../shops/models/shop_model.dart';
import '../shared/audit_log.dart';

/// Esnaf işlemi + kupon alanları (kupon alanları ham veriden savunmacı okunur).
class FinTx {
  final ShopTransaction tx;
  final String couponId;
  final double couponDiscount;

  const FinTx(this.tx, {this.couponId = '', this.couponDiscount = 0});

  factory FinTx.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    final c = d['coupon_discount'];
    return FinTx(
      ShopTransaction.fromFirestore(doc),
      couponId: toStr(d['coupon_id']),
      couponDiscount: c is num ? c.toDouble() : double.tryParse('$c') ?? 0,
    );
  }

  String get id => tx.id;
  bool get isOk => !tx.isCancelled;
  DateTime? get createdAt => tx.createdAt;
  double get gross => tx.amountGross;
  double get net => tx.amountNet;
  double get discount => tx.discountAmount;
  double get commission => tx.commissionAmount;
}

/// Bir grup işlemin finans toplamları (iptaller hariç).
class FinTotals {
  int count = 0;
  double gross = 0, net = 0, discount = 0, coupon = 0, commission = 0;

  void add(FinTx t) {
    if (!t.isOk) return;
    count++;
    gross += t.gross;
    net += t.net;
    discount += t.discount;
    coupon += t.couponDiscount;
    commission += t.commission;
  }

  static FinTotals of(Iterable<FinTx> list) {
    final s = FinTotals();
    for (final t in list) {
      s.add(t);
    }
    return s;
  }

  double platformShare(int percent) => commission * percent / 100;
  double agencyShare(int percent) => commission - platformShare(percent);
}

/// `settlements/{shopId}_{YYYY-MM}`.
class Settlement {
  static const pending = 'bekliyor';
  static const paid = 'odendi';

  final String id;
  final String shopId;
  final String shopName;
  final String period;
  final int txCount;
  final double gross, net, discountTotal, couponTotal, commissionTotal, agencyShare, platformShare;
  final String status;
  final DateTime? paidAt;
  final String paidBy;
  final String note;
  final DateTime? updatedAt;

  /// Kayıt oluşturulurken geçerli platform payı (eski kayıtlarda null).
  final int? platformPercent;

  const Settlement({
    required this.id,
    required this.shopId,
    required this.shopName,
    required this.period,
    required this.txCount,
    required this.gross,
    required this.net,
    required this.discountTotal,
    required this.couponTotal,
    required this.commissionTotal,
    required this.agencyShare,
    required this.platformShare,
    required this.status,
    this.paidAt,
    this.paidBy = '',
    this.note = '',
    this.updatedAt,
    this.platformPercent,
  });

  bool get isPaid => status == paid;

  static double _d(dynamic v) => v is num ? v.toDouble() : double.tryParse('$v') ?? 0;

  factory Settlement.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data() ?? const {};
    return Settlement(
      id: doc.id,
      shopId: toStr(d['shop_id']),
      shopName: toStr(d['shop_name']),
      period: toStr(d['period']),
      txCount: toInt(d['tx_count']),
      gross: _d(d['gross']),
      net: _d(d['net']),
      discountTotal: _d(d['discount_total']),
      couponTotal: _d(d['coupon_total']),
      commissionTotal: _d(d['commission_total']),
      agencyShare: _d(d['agency_share']),
      platformShare: _d(d['platform_share']),
      status: toStr(d['status'], pending),
      paidAt: toDateTime(d['paid_at']),
      paidBy: toStr(d['paid_by']),
      note: toStr(d['note']),
      updatedAt: toDateTime(d['updated_at']),
      platformPercent: d['platform_share_percent'] is num ? (d['platform_share_percent'] as num).toInt() : null,
    );
  }

  /// Ödenmiş kayıt ile canlı toplamlar farklı mı? (geç iptal, geç kayıt vb.)
  bool differsFrom(FinTotals live) =>
      txCount != live.count || (commissionTotal - live.commission).abs() > 0.01;
}

/// Hak ediş tablosunun bir satırı (bir dükkan, bir ay).
class ShopSettlementRow {
  final String shopId;
  final String shopName;
  final String shopAgencyId;
  final ShopModel? shop;
  final List<FinTx> txs; // iptaller dahil (dekontta gösterilmez)
  final FinTotals totals;
  final Settlement? settlement;

  ShopSettlementRow({
    required this.shopId,
    required this.shopName,
    required this.shopAgencyId,
    required this.shop,
    required this.txs,
    required this.settlement,
  }) : totals = FinTotals.of(txs);

  List<FinTx> get okTxs => txs.where((t) => t.isOk).toList();

  /// Dükkan oranı; dükkan silinmişse işlemdeki oran.
  int get commissionPercent =>
      shop?.commissionPercent ?? (txs.isEmpty ? 0 : txs.first.tx.commissionPercent);
}

/// Bir ayın finans verisi.
class FinanceMonth {
  final DateTime month;
  final List<FinTx> txs;
  final Map<String, Settlement> settlements;
  final Map<String, ShopModel> shops;
  final Map<String, String> agencyNames;
  final int platformPercent;
  final bool platformPercentIsDefault;

  FinanceMonth({
    required this.month,
    required this.txs,
    required this.settlements,
    required this.shops,
    required this.agencyNames,
    required this.platformPercent,
    required this.platformPercentIsDefault,
  });

  late final FinTotals totals = FinTotals.of(txs);

  String get period => CcFinanceService.periodKey(month);

  late final List<ShopSettlementRow> rows = () {
    final by = <String, List<FinTx>>{};
    for (final t in txs) {
      by.putIfAbsent(t.tx.shopId, () => []).add(t);
    }
    // Ayda işlemi olmayan ama kaydı olan dükkanlar da görünsün.
    for (final s in settlements.values) {
      by.putIfAbsent(s.shopId, () => []);
    }
    final out = [
      for (final e in by.entries)
        ShopSettlementRow(
          shopId: e.key,
          shopName: shops[e.key]?.name ??
              (e.value.isNotEmpty && e.value.first.tx.shopName.isNotEmpty
                  ? e.value.first.tx.shopName
                  : settlements[CcFinanceService.settlementId(e.key, period)]?.shopName ?? e.key),
          shopAgencyId: shops[e.key]?.agencyId ?? (e.value.isEmpty ? '' : e.value.first.tx.shopAgencyId),
          shop: shops[e.key],
          txs: e.value,
          settlement: settlements[CcFinanceService.settlementId(e.key, period)],
        ),
    ];
    out.sort((a, b) => b.totals.commission.compareTo(a.totals.commission));
    return out;
  }();

  /// Acente payları: misafirin acentesine (guest_agency_id) göre.
  late final List<({String agencyId, FinTotals totals})> agencyRows = () {
    final by = <String, List<FinTx>>{};
    for (final t in txs) {
      if (!t.isOk) continue;
      by.putIfAbsent(t.tx.guestAgencyId, () => []).add(t);
    }
    final out = [for (final e in by.entries) (agencyId: e.key, totals: FinTotals.of(e.value))];
    out.sort((a, b) => b.totals.commission.compareTo(a.totals.commission));
    return out;
  }();

  /// Ayın günlerine göre komisyon (index 0 = 1. gün).
  List<double> get dailyCommission {
    final days = DateTime(month.year, month.month + 1, 0).day;
    final out = List<double>.filled(days, 0);
    for (final t in txs) {
      final c = t.createdAt;
      if (!t.isOk || c == null) continue;
      if (c.year == month.year && c.month == month.month) out[c.day - 1] += t.commission;
    }
    return out;
  }
}

class CcFinanceService {
  CcFinanceService._();
  static final CcFinanceService instance = CcFinanceService._();

  static const defaultPlatformPercent = 50;

  final _db = FirebaseFirestore.instance;

  static String periodKey(DateTime m) => DateFormat('yyyy-MM').format(m);
  static String settlementId(String shopId, String period) => '${shopId}_$period';

  DocumentReference<Map<String, dynamic>> get _settingsDoc =>
      _db.collection('platform_settings').doc('finance');

  Future<FinanceMonth> loadMonth(DateTime month) async {
    final start = DateTime(month.year, month.month);
    final end = DateTime(month.year, month.month + 1);
    final period = periodKey(start);
    final results = await Future.wait<Object>([
      transactions(start, end),
      _db.collection('settlements').where('period', isEqualTo: period).get(),
      _db.collection('shops').get(),
      _agencyNames(),
      _settingsDoc.get(),
    ]);
    final settlementsSnap = results[1] as QuerySnapshot<Map<String, dynamic>>;
    final shopsSnap = results[2] as QuerySnapshot<Map<String, dynamic>>;
    final settings = results[4] as DocumentSnapshot<Map<String, dynamic>>;
    final raw = settings.data()?['platform_share_percent'];
    return FinanceMonth(
      month: start,
      txs: results[0] as List<FinTx>,
      settlements: {for (final d in settlementsSnap.docs) d.id: Settlement.fromFirestore(d)},
      shops: {for (final d in shopsSnap.docs) d.id: ShopModel.fromFirestore(d)},
      agencyNames: results[3] as Map<String, String>,
      platformPercent: raw is num ? raw.toInt().clamp(0, 100) : defaultPlatformPercent,
      platformPercentIsDefault: raw is! num,
    );
  }

  /// [from] dahil, [to] hariç; iptaller dahil (çağıran süzer).
  Future<List<FinTx>> transactions(DateTime from, DateTime to) async {
    final s = await _db
        .collection('shop_transactions')
        .where('created_at', isGreaterThanOrEqualTo: Timestamp.fromDate(from))
        .where('created_at', isLessThan: Timestamp.fromDate(to))
        .orderBy('created_at')
        .get();
    return s.docs.map(FinTx.fromFirestore).toList();
  }

  Future<Map<String, String>> _agencyNames() async {
    final s = await _db.collection('agencies').get();
    return {for (final d in s.docs) d.id: toStr(d.data()['name'], d.id)};
  }

  Future<void> setPlatformPercent(int percent, {required UserModel actor, required int previous}) async {
    await _settingsDoc.set({
      'platform_share_percent': percent,
      'updated_at': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));
    await AuditLog.write(
      action: AuditAction.financeSettings,
      actor: actor,
      targetType: 'platform_settings',
      targetId: 'finance',
      targetName: 'platform_share_percent',
      details: {'from': previous, 'to': percent},
    );
  }

  /// İşlemi olan her dükkan için dönem kaydını oluşturur/günceller.
  /// Ödenmiş kayıtların tutarlarına dokunulmaz. Dönen değer: güncellenen kayıt sayısı.
  Future<int> generatePeriod(FinanceMonth m, {required UserModel actor}) async {
    var batch = _db.batch();
    var ops = 0, updated = 0;
    for (final r in m.rows) {
      if (r.totals.count == 0 && r.settlement == null) continue;
      if (r.settlement?.isPaid ?? false) continue;
      final t = r.totals;
      batch.set(_db.collection('settlements').doc(settlementId(r.shopId, m.period)), {
        'shop_id': r.shopId,
        'shop_name': r.shopName,
        'shop_agency_id': r.shopAgencyId,
        'period': m.period,
        'tx_count': t.count,
        'gross': _r(t.gross),
        'net': _r(t.net),
        'discount_total': _r(t.discount),
        'coupon_total': _r(t.coupon),
        'commission_total': _r(t.commission),
        'agency_share': _r(t.agencyShare(m.platformPercent)),
        'platform_share': _r(t.platformShare(m.platformPercent)),
        'platform_share_percent': m.platformPercent,
        'status': Settlement.pending,
        'paid_at': null,
        'paid_by': '',
        'note': r.settlement?.note ?? '',
        'updated_at': FieldValue.serverTimestamp(),
      });
      updated++;
      if (++ops >= 400) {
        await batch.commit();
        batch = _db.batch();
        ops = 0;
      }
    }
    if (ops > 0) await batch.commit();
    await AuditLog.write(
      action: AuditAction.settlementUpdate,
      actor: actor,
      targetType: 'settlement_period',
      targetId: m.period,
      targetName: m.period,
      details: {'op': 'generate', 'count': updated, 'platform_share_percent': m.platformPercent},
    );
    return updated;
  }

  Future<void> markPaid(Settlement s, {required UserModel actor, String note = ''}) async {
    await _db.collection('settlements').doc(s.id).update({
      'status': Settlement.paid,
      'paid_at': FieldValue.serverTimestamp(),
      'paid_by': actor.id,
      'note': note,
      'updated_at': FieldValue.serverTimestamp(),
    });
    await AuditLog.write(
      action: AuditAction.settlementPaid,
      actor: actor,
      targetType: 'settlement',
      targetId: s.id,
      targetName: '${s.shopName} ${s.period}',
      details: {'commission_total': s.commissionTotal, 'platform_share': s.platformShare, 'note': note},
    );
  }

  Future<void> revertToPending(Settlement s, {required UserModel actor}) async {
    await _db.collection('settlements').doc(s.id).update({
      'status': Settlement.pending,
      'paid_at': null,
      'paid_by': '',
      'updated_at': FieldValue.serverTimestamp(),
    });
    await AuditLog.write(
      action: AuditAction.settlementUpdate,
      actor: actor,
      targetType: 'settlement',
      targetId: s.id,
      targetName: '${s.shopName} ${s.period}',
      details: {'op': 'revert', 'status': Settlement.pending},
    );
  }

  static double _r(double v) => double.parse(v.toStringAsFixed(2));
}

/// CSV yardımcıları (share_plus yok; panoya kopyalanır).
class FinCsv {
  static String cell(Object? v) {
    final s = v == null ? '' : (v is double ? v.toStringAsFixed(2) : '$v');
    if (s.contains(',') || s.contains('"') || s.contains('\n')) return '"${s.replaceAll('"', '""')}"';
    return s;
  }

  static String row(List<Object?> cells) => cells.map(cell).join(',');

  /// "Ahmet Yılmaz" → "Ahmet Y."
  static String shortName(String name) {
    final parts = name.trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty).toList();
    if (parts.isEmpty) return '-';
    if (parts.length == 1) return parts.first;
    return '${parts.first} ${parts.last.characters0}.';
  }
}

extension on String {
  String get characters0 => isEmpty ? '' : substring(0, 1).toUpperCase();
}
