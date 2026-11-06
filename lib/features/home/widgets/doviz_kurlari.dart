import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../common/services/exchange_rate_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';

/// Canlı döviz kartı: "₺ Türkiye" ve "﷼ Suudi Arabistan" sekmeleri.
/// Veri HomeProvider.rates'ten gelir (Yahoo Finance, yedek ExchangeRate-API).
class LiveCurrencyCard extends StatefulWidget {
  final LiveRates? rates;
  final bool loading;
  final String? error;
  final VoidCallback onRefresh;

  const LiveCurrencyCard({
    super.key,
    required this.rates,
    required this.loading,
    required this.error,
    required this.onRefresh,
  });

  @override
  State<LiveCurrencyCard> createState() => _LiveCurrencyCardState();
}

class _LiveCurrencyCardState extends State<LiveCurrencyCard> {
  int _tab = 0; // 0: ₺, 1: SAR

  // Biçimler her çizimde oluşturulur ki dil değişince ayraçlar da değişsin.
  NumberFormat get _fmt => NumberFormat('#,##0.00');
  NumberFormat get _fmt4 => NumberFormat('#,##0.0000');

  @override
  Widget build(BuildContext context) {
    final r = widget.rates;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Color(0x12000000), blurRadius: 14, offset: Offset(0, 4))],
      ),
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _tabs(),
          const SizedBox(height: 8),
          if (r == null)
            _placeholder()
          else
            ...[
              for (final x in (_tab == 0 ? r.tryRates : r.sarRates)) _row(x, _tab == 0 ? '₺' : 'SAR'),
            ],
          const SizedBox(height: 4),
          _footer(r),
        ],
      ),
    );
  }

  Widget _tabs() {
    Widget tab(int i, String flag, String label) {
      final sel = _tab == i;
      return Expanded(
        child: GestureDetector(
          onTap: () => setState(() => _tab = i),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(vertical: 9),
            decoration: BoxDecoration(
              gradient: sel ? AppColors.primaryGradient : null,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(flag, style: const TextStyle(fontSize: 16)),
                const SizedBox(width: 6),
                Flexible(
                  child: Text(
                    label,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w700,
                      color: sel ? Colors.white : AppColors.textMuted,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(color: AppColors.background, borderRadius: BorderRadius.circular(14)),
      child: Row(children: [
        tab(0, '🇹🇷', context.l10n.homeCurrencyTry),
        const SizedBox(width: 4),
        tab(1, '🇸🇦', context.l10n.homeCurrencySar),
      ]),
    );
  }

  Widget _row(LiveRate x, String quote) {
    final small = x.value < 1;
    final valueText = '${(small ? _fmt4 : _fmt).format(x.value)} $quote';
    final ch = x.changePct;
    final up = (ch ?? 0) >= 0;
    final chColor = ch == null ? AppColors.textMuted : (up ? AppColors.success : AppColors.error);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
      decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.divider))),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(12)),
            child: Text(x.flag, style: const TextStyle(fontSize: 20)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1 ${x.code}',
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.text)),
                Text(x.name, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(valueText,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.primaryDark)),
              if (ch != null)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(up ? Icons.arrow_drop_up_rounded : Icons.arrow_drop_down_rounded, color: chColor, size: 20),
                    Text(NumberFormat.decimalPercentPattern(decimalDigits: 2).format(ch.abs() / 100),
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: chColor)),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _placeholder() {
    if (widget.loading) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 28),
        child: Center(child: CircularProgressIndicator(strokeWidth: 2.5)),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        widget.error ?? context.l10n.homeRatesError,
        textAlign: TextAlign.center,
        style: const TextStyle(color: AppColors.textMuted, fontSize: 13.5),
      ),
    );
  }

  Widget _footer(LiveRates? r) {
    final when = r == null ? '' : DateFormat('d MMM HH:mm').format(r.updatedAt.toLocal());
    return Row(
      children: [
        const Icon(Icons.circle, size: 8, color: AppColors.success),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            r == null ? context.l10n.homeRatesLive : '${context.l10n.homeRatesLive} • $when',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted),
          ),
        ),
        widget.loading
            ? const Padding(
                padding: EdgeInsets.all(12),
                child: SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2)),
              )
            : IconButton(
                tooltip: context.l10n.homeRefresh,
                visualDensity: VisualDensity.compact,
                onPressed: widget.onRefresh,
                icon: const Icon(Icons.refresh_rounded, color: AppColors.primary, size: 20),
              ),
      ],
    );
  }
}
