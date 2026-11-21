import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../../shops/models/shop_model.dart';
import '../../shops/widgets/shop_widgets.dart' show shopCategoryLabel;
import 'cuzdan_widgets.dart';
import 'wallet_cards.dart';

/// Pasta dilimi renkleri (uygulamanın yeşilleri + sıcak bir altın tonu).
const _sliceColors = [
  AppColors.emerald600,
  AppColors.sage,
  Color(0xFFB8963E),
  AppColors.emerald900,
  Color(0xFF6FA48A),
  Color(0xFFD9C08A),
  AppColors.textMuted,
];

/// Dükkân kategorisine göre simge (liste avatarlarında da kullanılır).
IconData shopCategoryIcon(String? category) {
  switch (category) {
    case 'Hediyelik':
      return Icons.card_giftcard_rounded;
    case 'Hurma & Gıda':
      return Icons.shopping_basket_rounded;
    case 'Parfüm & Misk':
      return Icons.spa_rounded;
    case 'Tekstil & İhram':
      return Icons.checkroom_rounded;
    case 'Kuyumcu':
      return Icons.diamond_outlined;
    case 'Restoran & Kafe':
      return Icons.restaurant_rounded;
    case 'Kitap & Tesbih':
      return Icons.menu_book_rounded;
  }
  return Icons.storefront_rounded;
}

/// "Harcama analizi" kartı: ay seçici, kategoriye göre halka grafik, açıklama
/// satırları ve özet (toplam harcama, kazanılan indirim, alışveriş sayısı).
/// İptal edilen işlemler hesaba katılmaz.
class SpendingAnalysisCard extends StatefulWidget {
  final List<ShopTransaction> transactions;

  /// shopId → dükkân (kategori için). Bulunamazsa dükkân adına göre gruplanır.
  final Map<String, ShopModel> shops;

  const SpendingAnalysisCard({super.key, required this.transactions, required this.shops});

  @override
  State<SpendingAnalysisCard> createState() => _SpendingAnalysisCardState();
}

class _SpendingAnalysisCardState extends State<SpendingAnalysisCard> {
  /// Seçili ay (null = Tümü).
  DateTime? _month;
  static final _allMonths = DateTime(0);
  int _touched = -1;

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final valid = widget.transactions.where((x) => !x.isCancelled).toList();
    final months = <DateTime>{
      for (final x in valid)
        if (x.createdAt != null) DateTime(x.createdAt!.toLocal().year, x.createdAt!.toLocal().month),
    }.toList()
      ..sort((a, b) => b.compareTo(a));
    if (_month != null && !months.contains(_month)) _month = null;

    final list = _month == null
        ? valid
        : valid.where((x) {
            final d = x.createdAt?.toLocal();
            return d != null && d.year == _month!.year && d.month == _month!.month;
          }).toList();
    final summary = TransactionSummary.of(list);

    // Kategori (yoksa dükkân adı) → net tutar
    final byGroup = <String, double>{};
    final labels = <String, String>{};
    for (final x in list) {
      final shop = widget.shops[x.shopId];
      final key = shop != null ? 'c:${shop.category}' : 's:${x.shopName}';
      labels[key] = shop != null
          ? shopCategoryLabel(context, shop.category)
          : (x.shopName.isEmpty ? t.shopsCatOther : x.shopName);
      byGroup[key] = (byGroup[key] ?? 0) + x.amountNet;
    }
    final groups = byGroup.entries.where((e) => e.value > 0).toList()..sort((a, b) => b.value.compareTo(a.value));
    final total = groups.fold<double>(0, (s, e) => s + e.value);
    final monthFmt = DateFormat('MMMM y');

    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(18, 14, 18, 16),
      decoration: WalletStyle.card(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(t.cuzdanAnalysisTitle,
                    style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600, color: AppColors.text)),
              ),
              PopupMenuButton<DateTime>(
                // "Tümü" için [_allMonths] (null değer menüde seçim sayılmaz).
                initialValue: _month ?? _allMonths,
                onSelected: (v) => setState(() {
                  _month = v == _allMonths ? null : v;
                  _touched = -1;
                }),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                color: AppColors.surface,
                itemBuilder: (_) => [
                  PopupMenuItem<DateTime>(value: _allMonths, child: Text(t.cuzdanFilterAll)),
                  for (final m in months) PopupMenuItem<DateTime>(value: m, child: Text(monthFmt.format(m))),
                ],
                child: Container(
                  padding: const EdgeInsetsDirectional.fromSTEB(12, 6, 8, 6),
                  decoration: BoxDecoration(
                    color: AppColors.mint.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(_month == null ? t.cuzdanFilterAll : monthFmt.format(_month!),
                          style: const TextStyle(fontSize: 12.5, color: AppColors.emerald700, fontWeight: FontWeight.w500)),
                      const Icon(Icons.keyboard_arrow_down_rounded, size: 18, color: AppColors.emerald700),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (total <= 0)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(t.cuzdanAnalysisEmpty,
                  textAlign: TextAlign.center, style: const TextStyle(color: AppColors.textMuted, fontSize: 13.5)),
            )
          else ...[
            SizedBox(
              height: 170,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PieChart(
                    PieChartData(
                      sectionsSpace: 2,
                      centerSpaceRadius: 54,
                      startDegreeOffset: -90,
                      pieTouchData: PieTouchData(
                        touchCallback: (event, resp) {
                          final i = resp?.touchedSection?.touchedSectionIndex ?? -1;
                          if (!event.isInterestedForInteractions) {
                            if (_touched != -1) setState(() => _touched = -1);
                            return;
                          }
                          if (i != _touched) setState(() => _touched = i);
                        },
                      ),
                      sections: [
                        for (var i = 0; i < groups.length; i++)
                          PieChartSectionData(
                            value: groups[i].value,
                            color: _sliceColors[i % _sliceColors.length],
                            showTitle: false,
                            radius: i == _touched ? 30 : 24,
                          ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _touched >= 0 && _touched < groups.length ? labels[groups[_touched].key]! : t.cuzdanTotalSpent,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        t.cuzdanSar(formatSar(
                            _touched >= 0 && _touched < groups.length ? groups[_touched].value : total)),
                        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: AppColors.text),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 14),
            for (var i = 0; i < groups.length; i++)
              _legendRow(
                color: _sliceColors[i % _sliceColors.length],
                label: labels[groups[i].key]!,
                amount: groups[i].value,
                fraction: groups[i].value / total,
              ),
          ],
          const SizedBox(height: 6),
          const Divider(height: 1, color: AppColors.divider),
          const SizedBox(height: 12),
          Row(
            children: [
              _summaryItem(t.cuzdanTotalSpent, t.cuzdanSar(formatSar(summary.net))),
              _summaryItem(t.cuzdanTotalDiscount, t.cuzdanSar(formatSar(summary.discount + summary.couponDiscount)),
                  color: AppColors.success),
              _summaryItem(t.cuzdanPurchaseCountLabel, '${summary.count}'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _legendRow({required Color color, required String label, required double amount, required double fraction}) {
    final t = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Row(
            children: [
              Container(width: 10, height: 10, decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
              const SizedBox(width: 10),
              Expanded(
                child: Text(label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13.5, color: AppColors.text)),
              ),
              Text(t.cuzdanSar(formatSar(amount)),
                  style: const TextStyle(fontSize: 13.5, fontWeight: FontWeight.w600, color: AppColors.text)),
              SizedBox(
                width: 46,
                child: Text('%${(fraction * 100).round()}',
                    textAlign: TextAlign.end, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: LinearProgressIndicator(
                value: fraction.clamp(0.0, 1.0),
                minHeight: 4,
                backgroundColor: AppColors.divider.withValues(alpha: 0.6),
                valueColor: AlwaysStoppedAnimation(color),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _summaryItem(String label, String value, {Color? color}) => Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(value,
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.w700, color: color ?? AppColors.text)),
            ),
            const SizedBox(height: 2),
            Text(label,
                maxLines: 2, style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted, height: 1.2)),
          ],
        ),
      );
}
