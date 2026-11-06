import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat, NumberFormat;

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../esnaf/esnaf_config.dart';
import '../../esnaf/models/coupon.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../../esnaf/widgets/esnaf_widgets.dart' show CouponText;

/// Bilet görünümlü kupon kartı (Kuponlarım ve QR ekranındaki kupon seçimi).
class CouponTicket extends StatelessWidget {
  final Coupon coupon;

  /// Kupon tek dükkana özelse dükkan adı (bilinmiyorsa null).
  final String? shopName;
  final double? width;
  final bool selected;
  final VoidCallback? onTap;

  const CouponTicket({
    super.key,
    required this.coupon,
    this.shopName,
    this.width,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final c = coupon;
    final big = c.isPercent ? '%${_n(c.value)}' : '${_n(c.value)} SAR';
    final until = c.validUntil == null ? '' : t.cuzdanCouponValidUntil(DateFormat('d MMM y').format(c.validUntil!));
    final where = c.forAllShops ? t.cuzdanCouponAllShops : t.cuzdanCouponAtShop(shopName ?? '—');
    final minText = CouponText.minSpend(context, c);
    return SizedBox(
      width: width,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppColors.surface,
              border: Border.all(color: selected ? AppColors.primary : AppColors.divider, width: selected ? 2 : 1),
            ),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 82,
                    decoration: const BoxDecoration(
                      gradient: AppColors.primaryGradient,
                      borderRadius: BorderRadiusDirectional.horizontal(start: Radius.circular(17)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(big,
                              style: const TextStyle(color: AppColors.surface, fontSize: 24, fontWeight: FontWeight.w900)),
                        ),
                        Text(t.cuzdanCouponOff,
                            style: const TextStyle(color: AppColors.mint, fontSize: 12, fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(12, 10, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(c.title.isEmpty ? c.code : c.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 14.5, fontWeight: FontWeight.w800, color: AppColors.text)),
                              ),
                              if (selected) const Icon(Icons.check_circle_rounded, color: AppColors.primary, size: 20),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(c.code,
                              style: const TextStyle(
                                  fontSize: 12, letterSpacing: 1.2, fontWeight: FontWeight.w700, color: AppColors.primary)),
                          const SizedBox(height: 4),
                          Text(
                            [CouponText.value(context, c), minText].where((e) => e.isNotEmpty).join(' · '),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 12, color: AppColors.text, height: 1.25),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            [where, until].where((e) => e.isNotEmpty).join(' · '),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  static String _n(double v) => v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toStringAsFixed(2);
}

/// 1234.5 → "1.234,50" (seçili dile göre); tam sayılarda kuruş yazılmaz.
String formatSar(double v) {
  final whole = v == v.roundToDouble();
  return NumberFormat(whole ? '#,##0' : '#,##0.00').format(v);
}

IconData paymentMethodIcon(String method) {
  switch (method) {
    case PaymentMethod.card:
      return Icons.credit_card_rounded;
    case PaymentMethod.points:
      return Icons.stars_rounded;
    default:
      return Icons.payments_rounded;
  }
}

String paymentMethodLabel(BuildContext context, String method) {
  final t = context.l10n;
  switch (method) {
    case PaymentMethod.card:
      return t.cuzdanMethodCard;
    case PaymentMethod.points:
      return t.cuzdanMethodPoints;
    default:
      return t.cuzdanMethodCash;
  }
}

/// Bir işlemin tutar / indirim / ödenen / ödeme türü / puan dökümü.
/// QR ekranındaki başarı görünümünde kullanılır.
class TransactionBreakdown extends StatelessWidget {
  final ShopTransaction tx;
  const TransactionBreakdown({super.key, required this.tx});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Container(
      width: double.infinity,
      padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          _row(t.cuzdanGross, t.cuzdanSar(formatSar(tx.amountGross))),
          if (tx.discountAmount > 0)
            _row('${t.cuzdanDiscount} (%${tx.discountPercent})', '−${t.cuzdanSar(formatSar(tx.discountAmount))}',
                color: AppColors.success),
          if (tx.hasCoupon)
            _row(t.cuzdanCouponUsed(tx.couponId), '−${t.cuzdanSar(formatSar(tx.couponDiscount))}',
                color: AppColors.success),
          const Divider(color: AppColors.divider, height: 18),
          _row(t.cuzdanPaid, t.cuzdanSar(formatSar(tx.amountNet)), bold: true),
          _row(t.cuzdanPaymentMethod, paymentMethodLabel(context, tx.paymentMethod),
              icon: paymentMethodIcon(tx.paymentMethod)),
          if (tx.pointsEarned > 0)
            _row(t.cuzdanPointsEarned, t.cuzdanPointsPlus(tx.pointsEarned), color: AppColors.success, bold: true),
          if (tx.pointsSpent > 0)
            _row(t.cuzdanPointsSpent, t.cuzdanPointsMinus(tx.pointsSpent), color: AppColors.warning, bold: true),
        ],
      ),
    );
  }

  Widget _row(String label, String value, {Color? color, bool bold = false, IconData? icon}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Expanded(child: Text(label, style: const TextStyle(fontSize: 14, color: AppColors.textMuted))),
            if (icon != null) ...[
              Icon(icon, size: 18, color: AppColors.primary),
              const SizedBox(width: 6),
            ],
            Text(value,
                style: TextStyle(
                  fontSize: bold ? 17 : 15,
                  fontWeight: bold ? FontWeight.w800 : FontWeight.w600,
                  color: color ?? AppColors.text,
                )),
          ],
        ),
      );
}
