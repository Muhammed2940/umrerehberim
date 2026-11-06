import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../shops/widgets/shop_widgets.dart';
import '../shared/cc_widgets.dart';
import 'cc_analytics_common.dart';
import 'cc_analytics_data.dart';
import 'cc_charts.dart';
import 'cc_merchant_performance_screen.dart';

/// Kontrol Merkezi → Analiz & BI.
/// Süper admin: Kullanım + İşlem hacmi + Trendler. Muhasebe: yalnız işlem bölümleri.
class CcAnalyticsScreen extends StatefulWidget {
  const CcAnalyticsScreen({super.key});

  @override
  State<CcAnalyticsScreen> createState() => _CcAnalyticsScreenState();
}

class _CcAnalyticsScreenState extends State<CcAnalyticsScreen> {
  final _p = CcAnalyticsProvider.instance;

  @override
  void initState() {
    super.initState();
    _p.load();
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final access = ccAnAccessOf(context);
    if (access == CcAnAccess.none) return CcAnNoAccess(title: t.ccAnTitle);

    return ListenableBuilder(
      listenable: _p,
      builder: (context, _) {
        final d = _p.data;
        final List<Widget> body;
        if (d == null && _p.error != null) {
          body = [CcEmpty(icon: Icons.cloud_off_rounded, message: t.ccAnLoadError)];
        } else if (d == null) {
          body = const [Padding(padding: EdgeInsets.all(60), child: Center(child: CircularProgressIndicator()))];
        } else {
          body = [
            if (access == CcAnAccess.full && d.usersLoaded) _UsageSection(d: d),
            _VolumeSection(d: d),
            _TrendsSection(d: d),
          ];
        }
        return CcPage(
          title: t.ccAnTitle,
          subtitle: t.ccAnSubtitle,
          actions: [
            IconButton(
              tooltip: t.ccAnOpenMerchantPerf,
              icon: const Icon(Icons.storefront_rounded),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const CcMerchantPerformanceScreen())),
            ),
          ],
          headerExtra: CcPeriodChips(
            value: _p.period,
            onChanged: _p.setPeriod,
            labels: ccAnPeriodLabels(context),
            onDark: true,
          ),
          onRefresh: () => _p.load(force: true),
          body: body,
        );
      },
    );
  }
}

// ───────────────────────── Kullanım ─────────────────────────

class _UsageSection extends StatelessWidget {
  final CcAnalyticsData d;
  const _UsageSection({required this.d});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final growth = ccGrowth(d.newUsers, d.prevNewUsers);
    final roles = d.usersByRole.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
    final agencies = d.usersByAgency.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
    final maxAgency = agencies.isEmpty ? 1 : agencies.first.value;
    final maxMonth = d.monthlyNewUsers.fold<int>(0, math.max);
    final peak = maxMonth == 0 ? null : d.monthlyNewUsers.lastIndexOf(maxMonth);

    return CcSection(
      title: t.ccAnSecUsage,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CcKpiGrid(children: [
            CcKpiTile(icon: Icons.today_rounded, value: CcFmt.num0(d.dau), label: t.ccAnDau),
            CcKpiTile(icon: Icons.date_range_rounded, value: CcFmt.num0(d.wau), label: t.ccAnWau, color: CcColors.info),
            CcKpiTile(icon: Icons.calendar_month_rounded, value: CcFmt.num0(d.mau), label: t.ccAnMau, color: CcColors.sage),
            CcKpiTile(
                icon: Icons.favorite_rounded, value: CcFmt.pct(d.stickiness), label: t.ccAnStickiness, color: CcColors.gold),
            CcKpiTile(icon: Icons.groups_rounded, value: CcFmt.num0(d.totalUsers), label: t.ccAnTotalUsers, color: CcColors.deep),
            CcKpiTile(
              icon: Icons.person_add_alt_1_rounded,
              value: CcFmt.num0(d.newUsers),
              label: t.ccAnNewUsers,
              color: CcColors.series[4],
              delta: ccAnDelta(growth),
              deltaPositive: (growth ?? 0) >= 0,
            ),
          ]),
          CcPanel(
            title: t.ccAnUsersByRole,
            child: CcDonut(
              centerValue: CcFmt.num0(d.totalUsers),
              centerLabel: t.ccAnTotalUsers,
              entries: [
                for (var i = 0; i < roles.length; i++)
                  CcDonutEntry(ccAnRoleLabel(context, roles[i].key), roles[i].value.toDouble(),
                      CcColors.series[i % CcColors.series.length]),
              ],
            ),
          ),
          CcPanel(
            title: t.ccAnUsersByAgency,
            child: Column(
              children: [
                for (var i = 0; i < math.min(8, agencies.length); i++)
                  CcRankBar(
                    rank: i + 1,
                    label: agencies[i].key.isEmpty
                        ? t.ccAnNoAgency
                        : (d.agencyNames[agencies[i].key] ?? agencies[i].key),
                    value: t.ccAnUsersCount(agencies[i].value),
                    fraction: agencies[i].value / maxAgency,
                    color: CcColors.series[i % CcColors.series.length],
                  ),
              ],
            ),
          ),
          CcPanel(
            title: t.ccAnMonthlyNewUsers,
            child: CcBarChart(
              values: [for (final v in d.monthlyNewUsers) v.toDouble()],
              bottomLabel: (i) => i >= 0 && i < 12 ? ccAnMonthShort(context, d.months[i]) : '',
              tooltip: (i, v) => '${ccAnMonthYear(context, d.months[i])}\n${t.ccAnUsersCount(v.round())}',
              labelEvery: 2,
              highlightIndex: peak,
            ),
          ),
        ],
      ),
    );
  }
}

// ───────────────────────── İşlem hacmi ─────────────────────────

class _VolumeSection extends StatelessWidget {
  final CcAnalyticsData d;
  const _VolumeSection({required this.d});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final v = d.vol, pv = d.prevVol;
    final hasPrev = d.period != CcPeriod.all;

    CcKpiTile kpi(IconData icon, String value, String label, Color color, double cur, double prev) {
      final g = hasPrev ? ccGrowth(cur, prev) : null;
      return CcKpiTile(
        icon: icon,
        value: value,
        label: label,
        color: color,
        delta: ccAnDelta(g),
        deltaPositive: (g ?? 0) >= 0,
      );
    }

    final methods = v.byMethod.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

    return CcSection(
      title: t.ccAnSecVolume,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CcKpiGrid(children: [
            kpi(Icons.payments_rounded, CcFmt.sar(v.net), t.ccAnNet, CcColors.mid, v.net, pv.net),
            kpi(Icons.receipt_long_rounded, CcFmt.sar(v.gross), t.ccAnGross, CcColors.deep, v.gross, pv.gross),
            kpi(Icons.swap_horiz_rounded, CcFmt.num0(v.count), t.ccAnTxCount, CcColors.info, v.count.toDouble(),
                pv.count.toDouble()),
            kpi(Icons.shopping_basket_rounded, CcFmt.sar(v.avgBasket), t.ccAnAvgBasket, CcColors.sage, v.avgBasket,
                pv.avgBasket),
            kpi(Icons.account_balance_rounded, CcFmt.sar(v.commission), t.ccAnCommission, CcColors.gold, v.commission,
                pv.commission),
            kpi(Icons.local_offer_rounded, CcFmt.sar(v.discount), t.ccAnDiscount, CcColors.series[5], v.discount,
                pv.discount),
            kpi(Icons.confirmation_number_rounded, CcFmt.sar(v.coupon), t.ccAnCouponDiscount, CcColors.series[4],
                v.coupon, pv.coupon),
            CcKpiTile(
              icon: Icons.cancel_outlined,
              value: CcFmt.pct(v.cancelRate * 100),
              label: t.ccAnCancelRate,
              color: CcColors.danger,
            ),
          ]),
          CcPanel(
            title: d.monthlyBuckets ? t.ccAnMonthlyVolume : t.ccAnDailyVolume,
            trailing: CcBadge(text: CcFmt.sar(v.net)),
            child: v.count == 0
                ? CcEmpty(icon: Icons.show_chart_rounded, message: t.ccAnNoData)
                : CcAreaChart(
                    values: d.bucketNet,
                    bottomLabel: (i) => d.monthlyBuckets
                        ? ccAnMonthShort(context, d.bucketDates[i])
                        : (d.bucketDates.length == 1 ? ccAnDay(context, d.bucketDates[i]) : '${d.bucketDates[i].day}'),
                    tooltipTitle: (i) => d.monthlyBuckets
                        ? ccAnMonthYear(context, d.bucketDates[i])
                        : ccAnDay(context, d.bucketDates[i]),
                    valueLabel: CcFmt.sar,
                  ),
          ),
          CcPanel(
            title: t.ccAnPaymentSplit,
            child: methods.isEmpty
                ? CcEmpty(icon: Icons.pie_chart_outline_rounded, message: t.ccAnNoData)
                : CcDonut(
                    centerValue: CcFmt.compact(v.net),
                    centerLabel: t.ccAnNet,
                    entries: [
                      for (final m in methods)
                        CcDonutEntry(ccAnPayLabel(context, m.key), m.value, ccAnPayColor(m.key), CcFmt.sar(m.value)),
                    ],
                  ),
          ),
          CcPanel(
            title: t.ccAnPointsFlow,
            trailing: CcBadge(
              text: '${t.ccAnPointsNet}: ${CcFmt.num0(v.earned - v.spent)}',
              color: v.earned >= v.spent ? CcColors.ok : CcColors.danger,
            ),
            child: CcSplitBar(
              leftLabel: t.ccAnPointsEarned,
              rightLabel: t.ccAnPointsSpent,
              left: v.earned.toDouble(),
              right: v.spent.toDouble(),
            ),
          ),
        ],
      ),
    );
  }
}

// ───────────────────────── Trendler ─────────────────────────

class _TrendsSection extends StatelessWidget {
  final CcAnalyticsData d;
  const _TrendsSection({required this.d});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final cats = d.categoryRevenue.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
    final byTx = d.shops.where((s) => s.vol.count > 0).toList()..sort((a, b) => b.vol.count.compareTo(a.vol.count));
    final byRev = d.shops.where((s) => s.vol.net > 0).toList()..sort((a, b) => b.vol.net.compareTo(a.vol.net));
    final byViews = d.shops.where((s) => s.views > 0).toList()..sort((a, b) => b.views.compareTo(a.views));
    final byConv = d.shops.where((s) => s.views > 0).toList()
      ..sort((a, b) => b.conversion.compareTo(a.conversion));
    final maxHour = d.hourCounts.fold<int>(0, math.max);

    void openPerf() => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CcMerchantPerformanceScreen()));

    Widget ranks(List<CcShopPerf> list, double Function(CcShopPerf) val, String Function(CcShopPerf) text,
        {String Function(CcShopPerf)? sub, Color color = CcColors.mid}) {
      if (list.isEmpty) return CcEmpty(icon: Icons.storefront_outlined, message: t.ccAnNoData);
      final top = list.take(5).toList();
      final maxV = top.map(val).fold<double>(0, math.max);
      return Column(children: [
        for (var i = 0; i < top.length; i++)
          CcRankBar(
            rank: i + 1,
            label: top[i].shop.name,
            value: text(top[i]),
            subtitle: sub?.call(top[i]),
            fraction: maxV == 0 ? 0 : val(top[i]) / maxV,
            color: color,
            onTap: openPerf,
          ),
      ]);
    }

    return CcSection(
      title: t.ccAnSecTrends,
      trailing: TextButton.icon(
        onPressed: openPerf,
        icon: const Icon(Icons.storefront_rounded, size: 18),
        label: Text(t.ccAnOpenMerchantPerf),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CcPanel(
            title: t.ccAnTopCategories,
            child: cats.isEmpty
                ? CcEmpty(icon: Icons.category_outlined, message: t.ccAnNoData)
                : Column(children: [
                    for (var i = 0; i < cats.length; i++)
                      CcRankBar(
                        rank: i + 1,
                        label: shopCategoryLabel(context, cats[i].key),
                        value: CcFmt.sar(cats[i].value),
                        subtitle: CcFmt.pct(d.vol.net == 0 ? 0 : cats[i].value / d.vol.net * 100),
                        fraction: cats[i].value / cats.first.value,
                        color: CcColors.series[i % CcColors.series.length],
                      ),
                  ]),
          ),
          CcPanel(
            title: t.ccAnTopShopsByRevenue,
            child: ranks(byRev, (s) => s.vol.net, (s) => CcFmt.sar(s.vol.net),
                sub: (s) => t.ccAnTxCountShort(s.vol.count), color: CcColors.gold),
          ),
          CcPanel(
            title: t.ccAnTopShopsByTx,
            child: ranks(byTx, (s) => s.vol.count.toDouble(), (s) => CcFmt.num0(s.vol.count),
                sub: (s) => CcFmt.sar(s.vol.net)),
          ),
          CcPanel(
            title: t.ccAnMostViewed,
            child: ranks(byViews, (s) => s.views.toDouble(), (s) => CcFmt.num0(s.views),
                sub: (s) => '${t.ccAnConversionShort}: ${CcFmt.pct(s.conversion * 100)}', color: CcColors.info),
          ),
          CcPanel(
            title: t.ccAnConversion,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ranks(byConv, (s) => s.conversion, (s) => CcFmt.pct(s.conversion * 100),
                    sub: (s) => '${t.ccAnTxCountShort(s.vol.count)} · ${t.ccAnViewsShort(s.views)}',
                    color: CcColors.series[4]),
                const SizedBox(height: 6),
                Text(t.ccAnViewsNote, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
              ],
            ),
          ),
          CcPanel(
            title: t.ccAnBusyHours,
            child: maxHour == 0
                ? CcEmpty(icon: Icons.schedule_rounded, message: t.ccAnNoData)
                : CcBarChart(
                    height: 150,
                    values: [for (final h in d.hourCounts) h.toDouble()],
                    bottomLabel: (i) => '$i',
                    labelEvery: 3,
                    highlightIndex: d.hourCounts.indexOf(maxHour),
                    color: CcColors.info,
                    tooltip: (i, v) => '${i.toString().padLeft(2, '0')}:00\n${t.ccAnTxCountShort(v.round())}',
                  ),
          ),
        ],
      ),
    );
  }
}
