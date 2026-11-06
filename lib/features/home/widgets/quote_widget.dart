import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../l10n/gen/app_localizations.dart';

/// Ekranların altında gösterilen ayet / hadis alıntısı.
class QuoteWidget extends StatelessWidget {
  final String? quote;
  final String? source;

  /// [quotesOf] listesindeki sıra; doluysa metin seçili dilde çizimde alınır.
  final int? _index;

  const QuoteWidget({super.key, required String this.quote, this.source}) : _index = null;

  const QuoteWidget._indexed(int this._index, {super.key})
      : quote = null,
        source = null;

  /// Ana sayfa ve profilde dönüşümlü gösterilen alıntılar (metin, kaynak).
  static List<(String, String)> quotesOf(AppLocalizations l) => [
        (l.homeQuoteCompleteHajj, l.homeSourceBaqarah196),
        (l.homeQuoteUmrahExpiation, l.homeSourceBukhari),
        (l.homeQuoteSafaMarwah, l.homeSourceBaqarah158),
        (l.homeQuoteRamadanUmrah, l.homeSourceBukhari),
        (l.homeQuoteAcceptFromUs, l.homeSourceBaqarah127),
      ];

  static const _quoteCount = 5;

  /// Güne göre bir alıntı seçer (gün içinde değişmez).
  factory QuoteWidget.ofTheDay({Key? key, int offset = 0}) {
    final now = DateTime.now();
    final dayOfYear = now.difference(DateTime(now.year)).inDays;
    return QuoteWidget._indexed((dayOfYear + offset) % _quoteCount, key: key);
  }

  /// Satır sonlarını boşluğa çevirip fazla boşlukları temizler.
  static String _format(String q) => q.replaceAll('\n', ' ').replaceAll(RegExp(r'\s+'), ' ').trim();

  @override
  Widget build(BuildContext context) {
    final i = _index;
    final picked = i == null ? null : quotesOf(context.l10n)[i];
    final text = _format(picked?.$1 ?? quote ?? '');
    final source = picked?.$2 ?? this.source;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.format_quote_rounded, color: AppColors.accent, size: 28),
            const SizedBox(height: 6),
            Text(
              '“$text”',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                height: 1.5,
                color: AppColors.text,
              ),
            ),
            if (source != null) ...[
              const SizedBox(height: 6),
              Text(
                source,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted, fontWeight: FontWeight.w600),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
