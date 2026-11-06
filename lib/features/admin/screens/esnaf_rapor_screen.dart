import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:umrerehberim/common/widgets/empty_state_widget.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../esnaf/data/esnaf_service.dart';
import '../../esnaf/esnaf_config.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../../shops/models/shop_model.dart';
import '../../shops/providers/shop_service.dart';
import '../../../core/providers/app_state_provider.dart';
import '../providers/admin_provider.dart';
import '../utils/admin_helpers.dart';
import '../widgets/no_access_screen.dart';

enum _Period { thisMonth, lastMonth, last30, custom }

String _money(double v) => '${NumberFormat('#,##0.00').format(v)} SAR';
String _int(int v) => NumberFormat('#,##0').format(v);

/// Raporu görebilenler: süper admin ve muhasebe (iptal yalnız süper admin).
bool _canView(BuildContext context) {
  final u = context.read<AppStateProvider>().currentUser;
  return u != null && (u.isSuperAdmin || u.isFinance);
}

/// Raporun kapsamı: Kontrol Merkezi'nden (acente seçilmeden) açılınca '' = tüm acenteler;
/// acente "Yönet" ile seçildiyse o acente.
String? _scopeAgency(BuildContext context) {
  final u = context.read<AppStateProvider>().currentUser;
  if (u != null && u.usesControlCenter && context.read<AdminProvider>().overrideAgencyId == null) return '';
  return adminAgencyId(context);
}

/// Yönetici: acentenin misafirlerinin anlaşmalı esnaftaki harcamaları,
/// biriken komisyon, uyarılar ve işlem iptali (`/admin/esnaf-rapor`).
class EsnafRaporScreen extends StatefulWidget {
  const EsnafRaporScreen({super.key});

  @override
  State<EsnafRaporScreen> createState() => _EsnafRaporScreenState();
}

class _EsnafRaporScreenState extends State<EsnafRaporScreen> {
  _Period _period = _Period.thisMonth;
  DateTimeRange _range = _rangeFor(_Period.thisMonth);
  List<ShopTransaction> _all = [];
  Map<String, ShopModel> _shops = {};
  bool _loading = false;
  bool _failed = false;
  bool _showAllTx = false;
  String? _loadedAgency;

  @override
  void initState() {
    super.initState();
    ensureAdminLoaded(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _load();
    });
  }

  /// [DateTimeRange.end] hariç (son günün ertesi 00:00).
  static DateTimeRange _rangeFor(_Period p, [DateTimeRange? custom]) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = today.add(const Duration(days: 1));
    switch (p) {
      case _Period.thisMonth:
        return DateTimeRange(start: DateTime(now.year, now.month), end: tomorrow);
      case _Period.lastMonth:
        return DateTimeRange(start: DateTime(now.year, now.month - 1), end: DateTime(now.year, now.month));
      case _Period.last30:
        return DateTimeRange(start: today.subtract(const Duration(days: 29)), end: tomorrow);
      case _Period.custom:
        final c = custom!;
        return DateTimeRange(
          start: DateTime(c.start.year, c.start.month, c.start.day),
          end: DateTime(c.end.year, c.end.month, c.end.day).add(const Duration(days: 1)),
        );
    }
  }

  Future<void> _load() async {
    if (!_canView(context)) return;
    final agency = _scopeAgency(context);
    if (agency == null) return;
    setState(() {
      _loading = true;
      _failed = false;
      _loadedAgency = agency;
    });
    try {
      final txFuture = EsnafService.instance.agencyTransactions(agency, from: _range.start);
      List<ShopModel> shops = const [];
      try {
        shops = await ShopService.instance.forAdmin(isSuper: agency.isEmpty, agencyId: agency);
      } catch (e) {
        debugPrint('EsnafRaporScreen shops: $e');
      }
      final txs = await txFuture;
      if (!mounted) return;
      setState(() {
        _all = txs.where((t) => t.createdAt == null || t.createdAt!.isBefore(_range.end)).toList();
        _shops = {for (final s in shops) s.id: s};
      });
    } catch (e) {
      debugPrint('EsnafRaporScreen._load: $e');
      if (mounted) setState(() => _failed = true);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _selectPeriod(_Period p) async {
    if (p == _Period.custom) {
      final now = DateTime.now();
      final picked = await showDateRangePicker(
        context: context,
        firstDate: DateTime(now.year - 2),
        lastDate: now,
        initialDateRange: DateTimeRange(
          start: _range.start.isAfter(now) ? now : _range.start,
          end: now.isBefore(_range.end) ? now : _range.end.subtract(const Duration(days: 1)),
        ),
      );
      if (picked == null || !mounted) return;
      setState(() {
        _period = p;
        _range = _rangeFor(p, picked);
        _showAllTx = false;
      });
    } else {
      setState(() {
        _period = p;
        _range = _rangeFor(p);
        _showAllTx = false;
      });
    }
    _load();
  }

  String get _rangeText => context.l10n
      .adminEsnafRange(formatDate(_range.start), formatDate(_range.end.subtract(const Duration(days: 1))));

  // ------------------------------------------------------------ hesaplar
  List<_ShopRow> get _shopRows {
    final map = <String, List<ShopTransaction>>{};
    for (final t in _all) {
      map.putIfAbsent(t.shopId, () => []).add(t);
    }
    return [
      for (final e in map.entries)
        _ShopRow(
          name: _shops[e.key]?.name ?? (e.value.first.shopName.isEmpty ? e.key : e.value.first.shopName),
          rate: _shops[e.key]?.commissionPercent ?? e.value.first.commissionPercent,
          txs: e.value,
          summary: TransactionSummary.of(e.value),
        ),
    ]..sort((a, b) => b.summary.net.compareTo(a.summary.net));
  }

  List<String> _alerts() {
    final t = context.l10n;
    final out = <String>[];
    // Aynı misafir + aynı dükkan + aynı gün > 3 işlem.
    final perDay = <String, List<ShopTransaction>>{};
    for (final x in _all) {
      if (x.isCancelled || x.createdAt == null) continue;
      final key = '${x.guestUid}|${x.shopId}|${DateFormat('yyyy-MM-dd').format(x.createdAt!)}';
      perDay.putIfAbsent(key, () => []).add(x);
    }
    for (final l in perDay.values) {
      if (l.length > 3) {
        final f = l.first;
        out.add(t.adminEsnafAlertManyTx(f.guestName, f.shopName, formatDate(f.createdAt), l.length));
      }
    }
    // 5000 SAR üstü tek işlem.
    for (final x in _all) {
      if (x.amountGross > 5000) out.add(t.adminEsnafAlertBigTx(x.guestName, x.shopName, _money(x.amountGross)));
    }
    // 24 saat içinde iptal.
    for (final x in _all) {
      final c = x.createdAt, k = x.cancelledAt;
      if (x.isCancelled && c != null && k != null && k.difference(c) <= const Duration(hours: 24)) {
        out.add(t.adminEsnafAlertQuickCancel(x.guestName, x.shopName, _money(x.amountGross)));
      }
    }
    return out;
  }

  // ------------------------------------------------------------ eylemler
  /// share_plus paketi yok: döküm panoya kopyalanır.
  Future<void> _share() async {
    final t = context.l10n;
    final s = TransactionSummary.of(_all);
    final b = StringBuffer()
      ..writeln(t.adminEsnafShareHeader)
      ..writeln(t.adminEsnafSharePeriod(_rangeText))
      ..writeln(t.adminEsnafShareTotals(s.count, _money(s.net), _money(s.commission)))
      ..writeln()
      ..writeln(t.adminEsnafShareByShop);
    for (final r in _shopRows) {
      b.writeln('• ${r.name}: '
          '${t.adminEsnafShopRow(r.summary.count, _money(r.summary.net), r.rate, _money(r.summary.commission))}');
    }
    await Clipboard.setData(ClipboardData(text: b.toString().trim()));
    GlobalSnackbar.showSuccess(t.adminEsnafShareCopied);
  }

  Future<void> _openShop(_ShopRow r) async {
    final changed = await Navigator.of(context).push<bool>(MaterialPageRoute(
      builder: (_) => _ShopTransactionsPage(title: r.name, txs: r.txs),
    ));
    if (changed == true && mounted) _load();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<AdminProvider>();
    final t = context.l10n;
    // Esnaf raporları yalnız süper admin.
    if (!_canView(context)) return NoAccessScreen(title: t.adminEsnafMenu);
    final agency = _scopeAgency(context);
    if (agency == null) {
      return Scaffold(
        appBar: AppBar(title: Text(t.adminEsnafMenu)),
        body: EmptyStateWidget(
          icon: Icons.business,
          message: t.adminNoAgencySelected,
          subtitle: t.adminEsnafNoAgencyHint,
        ),
      );
    }
    if (_loadedAgency != null && _loadedAgency != agency && !_loading) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) _load();
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(t.adminEsnafMenu),
        actions: [
          IconButton(
            tooltip: t.adminEsnafShare,
            onPressed: _all.isEmpty ? null : _share,
            icon: const Icon(Icons.ios_share_rounded),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _load,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          children: [
            _periodBar(),
            const SizedBox(height: 8),
            _loyaltyCard(),
            const SizedBox(height: 12),
            if (_loading && _all.isEmpty)
              const Padding(padding: EdgeInsets.all(48), child: Center(child: CircularProgressIndicator()))
            else if (_failed)
              EmptyStateWidget(icon: Icons.cloud_off_rounded, message: t.adminEsnafLoadFailed)
            else if (_all.isEmpty)
              EmptyStateWidget(icon: Icons.point_of_sale_rounded, message: t.adminEsnafEmpty)
            else ...[
              if (_loading) const LinearProgressIndicator(),
              _summaryGrid(),
              _card(t.adminEsnafDailyChart, Icons.bar_chart_rounded, _dailyChart()),
              _card(t.adminEsnafMethodChart, Icons.pie_chart_outline_rounded, _methodChart()),
              _card(t.adminEsnafByShop, Icons.storefront_rounded, _shopList()),
              _card(t.adminEsnafAlerts, Icons.warning_amber_rounded, _alertList()),
              _card(t.adminEsnafTransactions, Icons.receipt_long_rounded, _txList()),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: _share,
                icon: const Icon(Icons.copy_all_rounded),
                label: Text(t.adminEsnafShare),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _periodBar() {
    final t = context.l10n;
    final labels = {
      _Period.thisMonth: t.adminEsnafPeriodThisMonth,
      _Period.lastMonth: t.adminEsnafPeriodLastMonth,
      _Period.last30: t.adminEsnafPeriod30,
      _Period.custom: t.adminEsnafPeriodCustom,
    };
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: [
            for (final e in labels.entries)
              ChoiceChip(
                label: Text(e.value),
                selected: _period == e.key,
                selectedColor: AppColors.primaryLight,
                onSelected: (_) => _selectPeriod(e.key),
              ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            const Icon(Icons.date_range_rounded, size: 16, color: AppColors.textMuted),
            const SizedBox(width: 6),
            Text(_rangeText, style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
          ],
        ),
      ],
    );
  }

  /// Sadakat puanı şimdilik sabit (EsnafConfig).
  Widget _loyaltyCard() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            const Icon(Icons.stars_rounded, color: AppColors.primary, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                context.l10n.adminEsnafLoyaltyInfo(
                  EsnafConfig.pointsPerSar,
                  (100 * EsnafConfig.pointValueSar).toStringAsFixed(0),
                ),
                style: const TextStyle(fontSize: 13, color: AppColors.text),
              ),
            ),
          ],
        ),
      );

  Widget _summaryGrid() {
    final t = context.l10n;
    final s = TransactionSummary.of(_all);
    final items = [
      (t.adminEsnafSumCount, _int(s.count), Icons.shopping_bag_outlined, AppColors.primary),
      (t.adminEsnafSumGross, _money(s.gross), Icons.payments_outlined, AppColors.primaryDark),
      (t.adminEsnafSumDiscount, _money(s.discount), Icons.local_offer_outlined, AppColors.warning),
      (t.adminEsnafSumNet, _money(s.net), Icons.account_balance_outlined, AppColors.success),
      (t.adminEsnafSumCommission, _money(s.commission), Icons.savings_outlined, AppColors.emerald800),
      (t.adminEsnafSumPointsEarned, _int(s.pointsEarned), Icons.stars_rounded, AppColors.primary),
      (t.adminEsnafSumPointsSpent, _int(s.pointsSpent), Icons.redeem_rounded, AppColors.error),
    ];
    return LayoutBuilder(builder: (context, c) {
      final w = (c.maxWidth - 10) / 2;
      return Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          for (final i in items)
            Container(
              width: w,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.divider),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(i.$3, color: i.$4, size: 22),
                  const SizedBox(height: 6),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(i.$2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: i.$4)),
                  ),
                  const SizedBox(height: 2),
                  Text(i.$1, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                ],
              ),
            ),
        ],
      );
    });
  }

  Widget _card(String title, IconData icon, Widget child) => Container(
        margin: const EdgeInsets.only(top: 14),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.divider),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(icon, color: AppColors.primary, size: 20),
                const SizedBox(width: 8),
                Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15))),
              ],
            ),
            const SizedBox(height: 12),
            child,
          ],
        ),
      );

  Widget _dailyChart() {
    final start = _range.start;
    final now = DateTime.now();
    final lastDay = _range.end.isAfter(now)
        ? DateTime(now.year, now.month, now.day)
        : _range.end.subtract(const Duration(days: 1));
    final days = lastDay.difference(start).inDays + 1;
    if (days <= 0) return const SizedBox.shrink();
    final values = List<double>.filled(days, 0);
    for (final t in _all) {
      if (t.isCancelled || t.createdAt == null) continue;
      final c = t.createdAt!;
      final i = DateTime(c.year, c.month, c.day).difference(start).inDays;
      if (i >= 0 && i < days) values[i] += t.amountNet;
    }
    final maxY = values.fold<double>(0, (m, v) => v > m ? v : m);
    final step = (days / 6).ceil().clamp(1, 1000);
    final barW = days <= 10 ? 14.0 : (days <= 31 ? 6.0 : 3.0);
    String dayLabel(int i) => DateFormat('dd.MM').format(start.add(Duration(days: i)));
    return SizedBox(
      height: 200,
      child: BarChart(
        BarChartData(
          maxY: maxY == 0 ? 10 : maxY * 1.2,
          gridData: const FlGridData(show: true, drawVerticalLine: false),
          borderData: FlBorderData(show: false),
          barTouchData: BarTouchData(
            enabled: true,
            touchTooltipData: BarTouchTooltipData(
              getTooltipItem: (g, gi, rod, ri) => BarTooltipItem(
                '${dayLabel(g.x)}\n${_money(rod.toY)}',
                const TextStyle(color: AppColors.surface, fontSize: 11, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                getTitlesWidget: (v, meta) => Text(
                  NumberFormat.compact().format(v),
                  style: const TextStyle(fontSize: 10, color: AppColors.textMuted),
                ),
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (v, meta) {
                  final i = v.toInt();
                  if (i < 0 || i >= days || i % step != 0) return const SizedBox.shrink();
                  return Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(dayLabel(i), style: const TextStyle(fontSize: 10, color: AppColors.textMuted)),
                  );
                },
              ),
            ),
          ),
          barGroups: [
            for (var i = 0; i < days; i++)
              BarChartGroupData(x: i, barRods: [
                BarChartRodData(
                  toY: values[i],
                  color: AppColors.primary,
                  width: barW,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(3)),
                ),
              ]),
          ],
        ),
      ),
    );
  }

  static const _methodColors = {
    PaymentMethod.cash: AppColors.primary,
    PaymentMethod.card: AppColors.warning,
    PaymentMethod.points: AppColors.sage,
  };

  Widget _methodChart() {
    final s = TransactionSummary.of(_all);
    // Puanla ödemede net tutar 0 olabilir; pasta işlem adedine göre çizilir.
    final counts = <String, int>{};
    for (final t in _all) {
      if (!t.isCancelled) counts[t.paymentMethod] = (counts[t.paymentMethod] ?? 0) + 1;
    }
    final total = counts.values.fold<int>(0, (a, b) => a + b);
    if (total == 0) return const SizedBox.shrink();
    return Row(
      children: [
        SizedBox(
          width: 130,
          height: 130,
          child: PieChart(
            PieChartData(
              sectionsSpace: 2,
              centerSpaceRadius: 26,
              sections: [
                for (final e in counts.entries)
                  PieChartSectionData(
                    value: e.value.toDouble(),
                    color: _methodColors[e.key] ?? AppColors.textMuted,
                    title: '${(e.value * 100 / total).round()}%',
                    radius: 36,
                    titleStyle: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: AppColors.surface),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final e in counts.entries)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          color: _methodColors[e.key] ?? AppColors.textMuted,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          '${paymentMethodLabel(context, e.key)} · ${e.value} · ${_money(s.netByMethod[e.key] ?? 0)}',
                          style: const TextStyle(fontSize: 12.5),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _shopList() {
    final t = context.l10n;
    return Column(
      children: [
        for (final r in _shopRows)
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              backgroundColor: AppColors.primaryLight,
              child: Text('%${r.rate}',
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.primary)),
            ),
            title: Text(r.name, style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Text(
              t.adminEsnafShopRow(r.summary.count, _money(r.summary.net), r.rate, _money(r.summary.commission)),
              style: const TextStyle(fontSize: 12),
            ),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () => _openShop(r),
          ),
      ],
    );
  }

  Widget _alertList() {
    final t = context.l10n;
    final alerts = _alerts();
    if (alerts.isEmpty) {
      return Row(
        children: [
          const Icon(Icons.check_circle_outline, color: AppColors.success, size: 18),
          const SizedBox(width: 8),
          Expanded(child: Text(t.adminEsnafNoAlerts, style: const TextStyle(color: AppColors.textMuted))),
        ],
      );
    }
    return Column(
      children: [
        for (final a in alerts)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.error_outline, color: AppColors.warning, size: 18),
                const SizedBox(width: 8),
                Expanded(child: Text(a, style: const TextStyle(fontSize: 13))),
              ],
            ),
          ),
      ],
    );
  }

  Widget _txList() {
    final t = context.l10n;
    const max = 20;
    final shown = _showAllTx ? _all : _all.take(max).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final x in shown) EsnafTxTile(tx: x, onCancelled: _load),
        if (!_showAllTx && _all.length > max)
          TextButton(
            onPressed: () => setState(() => _showAllTx = true),
            child: Text(t.adminEsnafShowAll(_all.length)),
          ),
      ],
    );
  }
}

String paymentMethodLabel(BuildContext context, String m) {
  final t = context.l10n;
  switch (m) {
    case PaymentMethod.cash:
      return t.adminEsnafMethodCash;
    case PaymentMethod.card:
      return t.adminEsnafMethodCard;
    case PaymentMethod.points:
      return t.adminEsnafMethodPoints;
  }
  return m;
}

class _ShopRow {
  final String name;
  final int rate;
  final List<ShopTransaction> txs;
  final TransactionSummary summary;
  const _ShopRow({required this.name, required this.rate, required this.txs, required this.summary});
}

/// Bir dükkanın dönem içindeki işlemleri.
class _ShopTransactionsPage extends StatefulWidget {
  final String title;
  final List<ShopTransaction> txs;
  const _ShopTransactionsPage({required this.title, required this.txs});

  @override
  State<_ShopTransactionsPage> createState() => _ShopTransactionsPageState();
}

class _ShopTransactionsPageState extends State<_ShopTransactionsPage> {
  final _cancelled = <String>{};

  @override
  Widget build(BuildContext context) {
    final s = TransactionSummary.of(widget.txs.where((t) => !_cancelled.contains(t.id)));
    return PopScope(
      canPop: _cancelled.isEmpty,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) Navigator.of(context).pop(true);
      },
      child: Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              context.l10n.adminEsnafShareTotals(s.count, _money(s.net), _money(s.commission)),
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            for (final x in widget.txs)
              EsnafTxTile(
                tx: x,
                forceCancelled: _cancelled.contains(x.id),
                onCancelled: () => setState(() => _cancelled.add(x.id)),
              ),
          ],
        ),
      ),
    );
  }
}

/// İşlem satırı; yönetici sebep girerek iptal edebilir.
class EsnafTxTile extends StatelessWidget {
  final ShopTransaction tx;
  final bool forceCancelled;
  final VoidCallback onCancelled;
  const EsnafTxTile({super.key, required this.tx, required this.onCancelled, this.forceCancelled = false});

  Future<void> _cancel(BuildContext context) async {
    final t = context.l10n;
    final reason = await showDialog<String>(context: context, builder: (_) => const _CancelDialog());
    if (reason == null) return;
    try {
      await EsnafService.instance.cancelTransaction(tx.id, reason);
      GlobalSnackbar.showSuccess(t.adminEsnafCancelDone);
      onCancelled();
    } catch (e) {
      GlobalSnackbar.showError(t.adminEsnafFailed('$e'));
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final cancelled = tx.isCancelled || forceCancelled;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsetsDirectional.fromSTEB(12, 8, 4, 8),
      decoration: BoxDecoration(
        color: cancelled ? AppColors.background : AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.divider),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${tx.shopName} · ${tx.guestName}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: cancelled ? AppColors.textMuted : AppColors.text,
                    decoration: cancelled ? TextDecoration.lineThrough : null,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '${formatDateTime(tx.createdAt)} · ${paymentMethodLabel(context, tx.paymentMethod)} · '
                  '${_money(tx.amountGross)} → ${_money(tx.amountNet)}',
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
                if (cancelled && tx.cancelReason.isNotEmpty)
                  Text(t.adminEsnafCancelReasonLabel(tx.cancelReason),
                      style: const TextStyle(fontSize: 12, color: AppColors.error)),
              ],
            ),
          ),
          if (cancelled)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(t.adminEsnafCancelled,
                  style: const TextStyle(color: AppColors.error, fontWeight: FontWeight.w700, fontSize: 12)),
            )
          else if (isSuperAdminUser(context))
            IconButton(
              tooltip: t.adminEsnafCancelTx,
              icon: const Icon(Icons.cancel_outlined, color: AppColors.error),
              onPressed: () => _cancel(context),
            ),
        ],
      ),
    );
  }
}

class _CancelDialog extends StatefulWidget {
  const _CancelDialog();

  @override
  State<_CancelDialog> createState() => _CancelDialogState();
}

class _CancelDialogState extends State<_CancelDialog> {
  final _ctrl = TextEditingController();
  String? _error;

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return AlertDialog(
      title: Text(t.adminEsnafCancelTx),
      content: TextField(
        controller: _ctrl,
        autofocus: true,
        maxLines: 2,
        decoration: InputDecoration(
          labelText: t.adminEsnafCancelReason,
          errorText: _error,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text(t.commonCancel)),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: AppColors.error),
          onPressed: () {
            final r = _ctrl.text.trim();
            if (r.isEmpty) {
              setState(() => _error = t.adminEsnafCancelReasonRequired);
              return;
            }
            Navigator.pop(context, r);
          },
          child: Text(t.adminEsnafCancelTx),
        ),
      ],
    );
  }
}
