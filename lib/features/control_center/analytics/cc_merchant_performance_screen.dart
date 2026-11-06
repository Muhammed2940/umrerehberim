import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../shops/widgets/shop_widgets.dart';
import '../shared/cc_widgets.dart';
import 'cc_analytics_common.dart';
import 'cc_analytics_data.dart';
import 'cc_charts.dart';

enum _Sort { revenue, tx, rating, complaints, views }

/// Kontrol Merkezi → Esnaf Performansı (süper admin + muhasebe).
class CcMerchantPerformanceScreen extends StatefulWidget {
  const CcMerchantPerformanceScreen({super.key});

  @override
  State<CcMerchantPerformanceScreen> createState() => _CcMerchantPerformanceScreenState();
}

class _CcMerchantPerformanceScreenState extends State<CcMerchantPerformanceScreen> {
  final _p = CcAnalyticsProvider.instance;
  _Sort _sort = _Sort.revenue;

  @override
  void initState() {
    super.initState();
    _p.load();
  }

  double _key(CcShopPerf s) {
    switch (_sort) {
      case _Sort.revenue:
        return s.vol.net;
      case _Sort.tx:
        return s.vol.count.toDouble();
      case _Sort.rating:
        return s.reviewCount == 0 ? -1 : s.avgRating * 1000 + s.reviewCount;
      case _Sort.complaints:
        return s.complaints.toDouble();
      case _Sort.views:
        return s.views.toDouble();
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    if (ccAnAccessOf(context) == CcAnAccess.none) return CcAnNoAccess(title: t.ccAnMpTitle);

    return ListenableBuilder(
      listenable: _p,
      builder: (context, _) {
        final d = _p.data;
        final List<Widget> body;
        if (d == null && _p.error != null) {
          body = [CcEmpty(icon: Icons.cloud_off_rounded, message: t.ccAnLoadError)];
        } else if (d == null) {
          body = const [Padding(padding: EdgeInsets.all(60), child: Center(child: CircularProgressIndicator()))];
        } else if (d.shops.isEmpty) {
          body = [CcEmpty(icon: Icons.storefront_outlined, message: t.ccAnNoShops)];
        } else {
          final list = [...d.shops]..sort((a, b) {
              final c = _key(b).compareTo(_key(a));
              return c != 0 ? c : b.vol.net.compareTo(a.vol.net);
            });
          final popular = [...d.shops.where((s) => s.vol.count > 0)]..sort((a, b) {
              final c = b.vol.count.compareTo(a.vol.count);
              return c != 0 ? c : b.vol.net.compareTo(a.vol.net);
            });
          final maxKey = list.map(_key).fold<double>(0, math.max);
          body = [
            if (popular.isNotEmpty)
              CcSection(
                title: t.ccAnMpPodium,
                child: _Podium(top: popular.take(3).toList(), onTap: (s) => _openDetail(context, s, d)),
              ),
            CcSection(
              title: t.ccAnMpAll,
              trailing: CcBadge(text: t.ccAnShopsCount(list.length)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _SortChips(value: _sort, onChanged: (s) => setState(() => _sort = s)),
                  const SizedBox(height: 10),
                  for (var i = 0; i < list.length; i++)
                    _ShopRow(
                      rank: i + 1,
                      s: list[i],
                      sort: _sort,
                      fraction: maxKey <= 0 ? 0 : math.max(0, _key(list[i])) / maxKey,
                      onTap: () => _openDetail(context, list[i], d),
                    ),
                ],
              ),
            ),
          ];
        }
        return CcPage(
          title: t.ccAnMpTitle,
          subtitle: t.ccAnMpSubtitle,
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

  void _openDetail(BuildContext context, CcShopPerf s, CcAnalyticsData d) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => _ShopDetailSheet(s: s, d: d),
    );
  }
}

// ───────────────────────── Sıralama çipleri ─────────────────────────

class _SortChips extends StatelessWidget {
  final _Sort value;
  final ValueChanged<_Sort> onChanged;
  const _SortChips({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final items = <_Sort, (String, IconData)>{
      _Sort.revenue: (t.ccAnSortRevenue, Icons.payments_rounded),
      _Sort.tx: (t.ccAnSortTx, Icons.swap_horiz_rounded),
      _Sort.rating: (t.ccAnSortRating, Icons.star_rounded),
      _Sort.complaints: (t.ccAnSortComplaints, Icons.report_gmailerrorred_rounded),
      _Sort.views: (t.ccAnSortViews, Icons.visibility_rounded),
    };
    return SizedBox(
      height: 38,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (final e in items.entries)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 8),
              child: ChoiceChip(
                avatar: Icon(e.value.$2, size: 16, color: value == e.key ? Colors.white : CcColors.mid),
                label: Text(e.value.$1),
                selected: value == e.key,
                onSelected: (_) => onChanged(e.key),
                showCheckmark: false,
                selectedColor: CcColors.mid,
                backgroundColor: Colors.white,
                side: const BorderSide(color: CcColors.mint),
                labelStyle: TextStyle(fontWeight: FontWeight.w600, color: value == e.key ? Colors.white : CcColors.ink),
              ),
            ),
        ],
      ),
    );
  }
}

// ───────────────────────── Podyum ─────────────────────────

class _Podium extends StatelessWidget {
  final List<CcShopPerf> top;
  final ValueChanged<CcShopPerf> onTap;
  const _Podium({required this.top, required this.onTap});

  static const _medal = [CcColors.gold, Color(0xFF9AA5A8), Color(0xFFB0793F)];

  @override
  Widget build(BuildContext context) {
    // Görsel sıra: 2. · 1. · 3.
    final order = [if (top.length > 1) 1, 0, if (top.length > 2) 2];
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 18, 12, 0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [CcColors.ink, CcColors.mid],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Color(0x33051F20), blurRadius: 16, offset: Offset(0, 6))],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (final i in order) Expanded(child: _step(context, i)),
        ],
      ),
    );
  }

  Widget _step(BuildContext context, int i) {
    final t = context.l10n;
    final s = top[i];
    final heights = [118.0, 88.0, 68.0];
    final c = _medal[i];
    return GestureDetector(
      onTap: () => onTap(s),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (i == 0) const Icon(Icons.emoji_events_rounded, color: CcColors.gold, size: 30),
            CircleAvatar(
              radius: i == 0 ? 26 : 21,
              backgroundColor: c,
              child: Text(
                s.shop.name.isEmpty ? '?' : s.shop.name.characters.first.toUpperCase(),
                style: TextStyle(fontSize: i == 0 ? 20 : 16, fontWeight: FontWeight.w800, color: Colors.white),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              s.shop.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 12.5),
            ),
            Text(t.ccAnTxCountShort(s.vol.count), style: const TextStyle(color: Colors.white70, fontSize: 11)),
            const SizedBox(height: 6),
            Container(
              height: heights[i],
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [c, c.withValues(alpha: 0.55)],
                ),
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              ),
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  Text('${i + 1}', style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w900)),
                  FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(CcFmt.compact(s.vol.net),
                          style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ───────────────────────── Liste satırı ─────────────────────────

class _ShopRow extends StatelessWidget {
  final int rank;
  final CcShopPerf s;
  final _Sort sort;
  final double fraction;
  final VoidCallback onTap;
  const _ShopRow({required this.rank, required this.s, required this.sort, required this.fraction, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final v = s.vol;
    String headline;
    switch (sort) {
      case _Sort.revenue:
        headline = CcFmt.sar(v.net);
      case _Sort.tx:
        headline = t.ccAnTxCountShort(v.count);
      case _Sort.rating:
        headline = s.reviewCount == 0 ? '-' : '${s.avgRating.toStringAsFixed(1)} ★';
      case _Sort.complaints:
        headline = '${s.complaints}';
      case _Sort.views:
        headline = t.ccAnViewsShort(s.views);
    }
    return CcPanel(
      onTap: onTap,
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: rank <= 3 ? CcColors.gold.withValues(alpha: 0.18) : CcColors.mint,
                child: Text('$rank',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: rank <= 3 ? CcColors.gold : CcColors.mid)),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(s.shop.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.ink)),
                        ),
                        if (!s.shop.isActive) ...[
                          const SizedBox(width: 6),
                          CcBadge(text: t.ccAnInactive, color: AppColors.textMuted),
                        ],
                      ],
                    ),
                    Text(shopCategoryLabel(context, s.shop.category),
                        style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted)),
                  ],
                ),
              ),
              Text(headline, style: const TextStyle(fontWeight: FontWeight.w800, color: CcColors.ink)),
              const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
            ],
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: fraction.clamp(0, 1).toDouble(),
              minHeight: 5,
              backgroundColor: CcColors.mint,
              valueColor: AlwaysStoppedAnimation(sort == _Sort.complaints ? CcColors.danger : CcColors.mid),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              _chip(Icons.payments_outlined, CcFmt.sar(v.net)),
              _chip(Icons.swap_horiz_rounded, '${v.count}'),
              _chip(Icons.shopping_basket_outlined, CcFmt.sar(v.avgBasket)),
              _chip(Icons.star_rounded, s.reviewCount == 0 ? '-' : '${s.avgRating.toStringAsFixed(1)} (${s.reviewCount})',
                  color: CcColors.gold),
              _chip(Icons.report_gmailerrorred_rounded, '${s.complaints}',
                  color: s.complaints > 0 ? CcColors.danger : CcColors.mid),
              _chip(Icons.cancel_outlined, CcFmt.pct(v.cancelRate * 100),
                  color: v.cancelRate > 0.1 ? CcColors.danger : CcColors.mid),
              _chip(Icons.visibility_outlined, '${s.views}', color: CcColors.info),
              _chip(Icons.trending_up_rounded, CcFmt.pct(s.conversion * 100), color: CcColors.info),
              _chip(Icons.account_balance_outlined, CcFmt.sar(v.commission), color: CcColors.gold),
            ],
          ),
        ],
      ),
    );
  }

  Widget _chip(IconData icon, String text, {Color color = CcColors.mid}) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(color: color.withValues(alpha: 0.08), borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 13, color: color),
            const SizedBox(width: 4),
            Text(text, style: const TextStyle(fontSize: 11.5, fontWeight: FontWeight.w600, color: CcColors.ink)),
          ],
        ),
      );
}

// ───────────────────────── Detay sayfası (alt pencere) ─────────────────────────

class _ShopDetailSheet extends StatelessWidget {
  final CcShopPerf s;
  final CcAnalyticsData d;
  const _ShopDetailSheet({required this.s, required this.d});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final v = s.vol;

    // Günlük satış: dönemin kovalarıyla aynı eksen.
    final buckets = List<double>.filled(d.bucketDates.length, 0);
    for (final tx in s.txs) {
      final c = tx.createdAt;
      if (c == null || tx.cancelled || buckets.isEmpty) continue;
      final idx = d.monthlyBuckets
          ? (c.year - d.bucketDates.first.year) * 12 + c.month - d.bucketDates.first.month
          : DateTime(c.year, c.month, c.day).difference(d.bucketDates.first).inDays;
      if (idx >= 0 && idx < buckets.length) buckets[idx] += tx.net;
    }
    final dist = s.ratingDist;
    final maxDist = dist.fold<int>(0, math.max);
    final reviews = [...s.reviews]
      ..sort((a, b) => (b.createdAt ?? DateTime(0)).compareTo(a.createdAt ?? DateTime(0)));
    final methods = v.byMethod.entries.toList()..sort((a, b) => b.value.compareTo(a.value));

    return DraggableScrollableSheet(
      initialChildSize: 0.88,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, ctrl) => Container(
        decoration: const BoxDecoration(
          color: CcColors.bg,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: ListView(
          controller: ctrl,
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 40),
          children: [
            Center(
              child: Container(
                width: 42,
                height: 4,
                margin: const EdgeInsets.only(bottom: 14),
                decoration: BoxDecoration(color: CcColors.sage, borderRadius: BorderRadius.circular(2)),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: CcColors.mid,
                  child: Text(
                    s.shop.name.isEmpty ? '?' : s.shop.name.characters.first.toUpperCase(),
                    style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(s.shop.name,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: CcColors.ink)),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Text(shopCategoryLabel(context, s.shop.category),
                              style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                          const SizedBox(width: 8),
                          if (s.reviewCount > 0) CcAnStars(rating: s.avgRating),
                        ],
                      ),
                    ],
                  ),
                ),
                CcBadge(text: ccAnPeriodLabels(context)[d.period.index], icon: Icons.calendar_today_rounded),
              ],
            ),
            const SizedBox(height: 16),
            CcKpiGrid(children: [
              CcKpiTile(icon: Icons.payments_rounded, value: CcFmt.sar(v.net), label: t.ccAnNet),
              CcKpiTile(
                  icon: Icons.swap_horiz_rounded, value: CcFmt.num0(v.count), label: t.ccAnTxCount, color: CcColors.info),
              CcKpiTile(
                  icon: Icons.shopping_basket_rounded,
                  value: CcFmt.sar(v.avgBasket),
                  label: t.ccAnAvgBasket,
                  color: CcColors.sage),
              CcKpiTile(
                  icon: Icons.account_balance_rounded,
                  value: CcFmt.sar(v.commission),
                  label: t.ccAnCommissionGenerated,
                  color: CcColors.gold),
              CcKpiTile(
                  icon: Icons.star_rounded,
                  value: s.reviewCount == 0 ? '-' : s.avgRating.toStringAsFixed(1),
                  label: '${t.ccAnAvgRating} · ${t.ccAnReviewCount(s.reviewCount)}',
                  color: CcColors.gold),
              CcKpiTile(
                  icon: Icons.report_gmailerrorred_rounded,
                  value: CcFmt.num0(s.complaints),
                  label: t.ccAnComplaints,
                  color: CcColors.danger),
              CcKpiTile(
                  icon: Icons.cancel_outlined,
                  value: CcFmt.pct(v.cancelRate * 100),
                  label: t.ccAnCancelRate,
                  color: CcColors.warn),
              CcKpiTile(
                  icon: Icons.visibility_rounded,
                  value: CcFmt.num0(s.views),
                  label: '${t.ccAnViews} · ${t.ccAnConversionShort} ${CcFmt.pct(s.conversion * 100)}',
                  color: CcColors.info),
            ]),
            CcPanel(
              title: d.monthlyBuckets ? t.ccAnMonthlyVolume : t.ccAnDailySales,
              child: v.count == 0
                  ? CcEmpty(icon: Icons.show_chart_rounded, message: t.ccAnNoData)
                  : CcAreaChart(
                      height: 150,
                      values: buckets,
                      color: CcColors.gold,
                      bottomLabel: (i) => d.monthlyBuckets
                          ? ccAnMonthShort(context, d.bucketDates[i])
                          : '${d.bucketDates[i].day}',
                      tooltipTitle: (i) => d.monthlyBuckets
                          ? ccAnMonthYear(context, d.bucketDates[i])
                          : ccAnDay(context, d.bucketDates[i]),
                      valueLabel: CcFmt.sar,
                    ),
            ),
            CcPanel(
              title: t.ccAnRatingDist,
              trailing: s.reviewCount == 0 ? null : CcBadge(text: t.ccAnReviewCount(s.reviewCount), color: CcColors.gold),
              child: Column(
                children: [
                  for (var star = 5; star >= 1; star--)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 28,
                            child: Text('$star★',
                                style: const TextStyle(fontWeight: FontWeight.w700, color: CcColors.gold, fontSize: 12.5)),
                          ),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: LinearProgressIndicator(
                                value: maxDist == 0 ? 0 : dist[star - 1] / maxDist,
                                minHeight: 10,
                                backgroundColor: CcColors.mint,
                                valueColor: AlwaysStoppedAnimation(star <= 2 ? CcColors.danger : CcColors.gold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 32,
                            child: Text('${dist[star - 1]}',
                                textAlign: TextAlign.end, style: const TextStyle(fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            CcPanel(
              title: t.ccAnPaymentSplit,
              child: methods.isEmpty
                  ? CcEmpty(icon: Icons.pie_chart_outline_rounded, message: t.ccAnNoData)
                  : CcDonut(
                      size: 130,
                      centerValue: CcFmt.compact(v.net),
                      centerLabel: t.ccAnNet,
                      entries: [
                        for (final m in methods)
                          CcDonutEntry(ccAnPayLabel(context, m.key), m.value, ccAnPayColor(m.key), CcFmt.sar(m.value)),
                      ],
                    ),
            ),
            CcPanel(
              title: t.ccAnLatestReviews,
              child: reviews.isEmpty
                  ? CcEmpty(icon: Icons.rate_review_outlined, message: t.ccAnNoReviews)
                  : Column(
                      children: [
                        for (final r in reviews.take(15)) _ReviewTile(r: r, name: d.userNames[r.guestUid]),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReviewTile extends StatelessWidget {
  final CcReview r;
  final String? name;
  const _ReviewTile({required this.r, this.name});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: r.complaint ? CcColors.danger.withValues(alpha: 0.06) : CcColors.bg,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: r.complaint ? CcColors.danger.withValues(alpha: 0.3) : CcColors.mint),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CcAnStars(rating: r.rating.toDouble(), size: 15),
              const SizedBox(width: 8),
              if (r.complaint) CcBadge(text: t.ccAnComplaintBadge, color: CcColors.danger, icon: Icons.flag_rounded),
              const Spacer(),
              Text(CcFmt.dateTime(r.createdAt), style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            r.comment.trim().isEmpty ? t.ccAnNoComment : r.comment,
            style: TextStyle(
              fontSize: 13.5,
              color: r.comment.trim().isEmpty ? AppColors.textMuted : CcColors.ink,
              fontStyle: r.comment.trim().isEmpty ? FontStyle.italic : FontStyle.normal,
              height: 1.35,
            ),
          ),
          const SizedBox(height: 4),
          Text((name == null || name!.isEmpty) ? t.ccAnGuest : name!,
              style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
