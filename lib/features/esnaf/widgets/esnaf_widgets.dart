import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../shops/models/shop_model.dart';
import '../esnaf_config.dart';
import '../models/coupon.dart';

/// Esnaf paneli biçimlendirme yardımcıları (para, tarih, ödeme türü).
class EsnafFmt {
  EsnafFmt._();

  static String _tag(BuildContext context) {
    final code = Localizations.localeOf(context).languageCode;
    return switch (code) { 'tr' => 'tr_TR', 'ar' => 'ar', _ => 'en_US' };
  }

  /// Rakamlar her dilde Latin (0-9) kalır; Arapçada da kasada okunur olsun.
  static String number(BuildContext context, double v, {int digits = 2}) {
    final f = NumberFormat.decimalPatternDigits(locale: _tag(context), decimalDigits: digits);
    return _latinDigits(f.format(v));
  }

  static String integer(BuildContext context, int v) =>
      _latinDigits(NumberFormat.decimalPattern(_tag(context)).format(v));

  /// "1.234,50 SAR" / "SAR 1,234.50" / "1,234.50 ر.س"
  static String sar(BuildContext context, double v) => context.l10n.esnafSar(number(context, v));

  static String time(BuildContext context, DateTime? d) =>
      d == null ? '—' : _latinDigits(DateFormat('HH:mm', _tag(context)).format(d));

  static String dateTime(BuildContext context, DateTime? d) =>
      d == null ? '—' : _latinDigits(DateFormat('d MMM yyyy, HH:mm', _tag(context)).format(d));

  static String date(BuildContext context, DateTime d) =>
      _latinDigits(DateFormat('d MMMM yyyy', _tag(context)).format(d));

  static String shortDate(BuildContext context, DateTime d) =>
      _latinDigits(DateFormat('d MMM', _tag(context)).format(d));

  static String _latinDigits(String s) {
    const arabic = '٠١٢٣٤٥٦٧٨٩';
    const persian = '۰۱۲۳۴۵۶۷۸۹';
    final b = StringBuffer();
    for (final ch in s.runes) {
      final c = String.fromCharCode(ch);
      final i = arabic.indexOf(c);
      final j = persian.indexOf(c);
      b.write(i >= 0 ? '$i' : (j >= 0 ? '$j' : c));
    }
    return b.toString();
  }

  /// Kullanıcının yazdığı tutarı çözer: Arapça rakam ve virgül kabul edilir.
  static double? parseAmount(String raw) {
    final s = _latinDigits(raw.trim()).replaceAll('٫', '.').replaceAll(',', '.');
    if (s.isEmpty) return null;
    return double.tryParse(s);
  }

  static String methodLabel(BuildContext context, String m) => switch (m) {
        PaymentMethod.card => context.l10n.esnafMethodCard,
        PaymentMethod.points => context.l10n.esnafMethodPoints,
        _ => context.l10n.esnafMethodCash,
      };

  static IconData methodIcon(String m) => switch (m) {
        PaymentMethod.card => Icons.credit_card_rounded,
        PaymentMethod.points => Icons.stars_rounded,
        _ => Icons.payments_rounded,
      };

  /// Grafik renkleri yalnız uygulama paletinden.
  static Color methodColor(String m) => switch (m) {
        PaymentMethod.card => AppColors.emerald800,
        PaymentMethod.points => AppColors.sage,
        _ => AppColors.primary,
      };
}

/// Tutar alanı: rakam (Arapça rakamlar dahil), tek ondalık ayırıcı, en fazla 2 ondalık.
class AmountInputFormatter extends TextInputFormatter {
  static final _re = RegExp(r'^[0-9٠-٩]{0,6}([.,٫][0-9٠-٩]{0,2})?$');

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) =>
      _re.hasMatch(newValue.text) ? newValue : oldValue;
}

/// Dükkan logosu (yoksa vitrin ikonu).
class ShopLogo extends StatelessWidget {
  final ShopModel? shop;
  final double size;

  const ShopLogo({super.key, required this.shop, this.size = 56});

  @override
  Widget build(BuildContext context) {
    final bytes = shop?.logoBytes;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: AppColors.surface,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.mint, width: 2),
      ),
      clipBehavior: Clip.antiAlias,
      child: bytes != null
          ? Image.memory(bytes, fit: BoxFit.cover, gaplessPlayback: true)
          : Icon(Icons.storefront_rounded, color: AppColors.primary, size: size * 0.5),
    );
  }
}

/// "%10 indirim" rozeti.
class DiscountBadge extends StatelessWidget {
  final int percent;
  final bool onDark;

  const DiscountBadge({super.key, required this.percent, this.onDark = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: onDark ? AppColors.sage : AppColors.mint,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        context.l10n.esnafDiscountBadge(percent),
        style: const TextStyle(color: AppColors.onAccent, fontWeight: FontWeight.bold, fontSize: 13),
      ),
    );
  }
}

/// Küçük durum rozeti (ör. "İptal").
class EsnafTag extends StatelessWidget {
  final String label;
  final Color color;

  const EsnafTag({super.key, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.5)),
      ),
      child: Text(label, style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.bold)),
    );
  }
}

/// Kupon metinleri (esnaf ve misafir ekranları ortak).
class CouponText {
  CouponText._();

  static String _num(double v) => v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toStringAsFixed(2);

  /// "%10 indirim · en fazla 50 SAR" / "25 SAR indirim".
  static String value(BuildContext context, Coupon c) {
    final l = context.l10n;
    final head = c.isPercent ? l.esnafCouponPercent(_num(c.value)) : l.esnafCouponFixed(EsnafFmt.sar(context, c.value));
    final parts = [
      head,
      if (c.isPercent && c.maxDiscount > 0) l.esnafCouponMax(EsnafFmt.sar(context, c.maxDiscount)),
    ];
    return parts.join(' · ');
  }

  /// "En az 100 SAR alışverişte" (alt limit yoksa boş).
  static String minSpend(BuildContext context, Coupon c) =>
      c.minSpend > 0 ? context.l10n.esnafCouponMin(EsnafFmt.sar(context, c.minSpend)) : '';

  static String problem(BuildContext context, CouponProblem p, Coupon? c) {
    final l = context.l10n;
    return switch (p) {
      CouponProblem.ok => '',
      CouponProblem.notFound => l.esnafCouponErrNotFound,
      CouponProblem.inactive => l.esnafCouponErrInactive,
      CouponProblem.notStarted => l.esnafCouponErrNotStarted,
      CouponProblem.expired => l.esnafCouponErrExpired,
      CouponProblem.exhausted => l.esnafCouponErrExhausted,
      CouponProblem.otherAgency => l.esnafCouponErrOtherAgency,
      CouponProblem.otherShop => l.esnafCouponErrOtherShop,
      CouponProblem.minSpend => l.esnafCouponErrMinSpend(EsnafFmt.sar(context, c?.minSpend ?? 0)),
      CouponProblem.alreadyUsed => l.esnafCouponErrAlreadyUsed,
      CouponProblem.zero => l.esnafCouponErrZero,
    };
  }
}

/// Küçük yıldız gösterimi (değerlendirme rozeti).
class RatingStars extends StatelessWidget {
  final int rating;
  final double size;
  final bool complaint;

  const RatingStars({super.key, required this.rating, this.size = 14, this.complaint = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 1; i <= 5; i++)
          Icon(i <= rating ? Icons.star_rounded : Icons.star_outline_rounded,
              size: size, color: i <= rating ? const Color(0xFFE0A526) : AppColors.divider),
        if (complaint) ...[
          const SizedBox(width: 4),
          Icon(Icons.report_rounded, size: size + 2, color: AppColors.error),
        ],
      ],
    );
  }
}

/// Uyarı / hata gösterimi (tam ekran ortası).
class EsnafMessage extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String? message;
  final Widget? action;

  const EsnafMessage({
    super.key,
    required this.icon,
    required this.title,
    this.message,
    this.color = AppColors.warning,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsetsDirectional.all(20),
              decoration: BoxDecoration(color: color.withValues(alpha: 0.1), shape: BoxShape.circle),
              child: Icon(icon, size: 56, color: color),
            ),
            const SizedBox(height: 18),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: AppColors.text),
            ),
            if (message != null) ...[
              const SizedBox(height: 8),
              Text(
                message!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15, color: AppColors.textMuted, height: 1.4),
              ),
            ],
            if (action != null) ...[const SizedBox(height: 22), action!],
          ],
        ),
      ),
    );
  }
}
