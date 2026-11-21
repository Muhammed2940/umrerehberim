import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../esnaf/esnaf_config.dart';
import '../../esnaf/models/point_adjustment.dart';
import '../../esnaf/models/shop_review.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../../esnaf/widgets/esnaf_widgets.dart' show RatingStars;
import '../../shops/models/shop_model.dart';
import 'cuzdan_widgets.dart';
import 'spending_analysis.dart' show shopCategoryIcon;
import 'wallet_cards.dart';

/// Zaman çizelgesindeki tek kayıt: alışveriş ya da elle puan hareketi.
typedef WalletEntry = ({DateTime at, ShopTransaction? tx, PointAdjustment? adj});

/// Hap biçimli bölümlü seçici ("Tümü / Kazanılan / Harcanan").
class WalletSegmented extends StatelessWidget {
  final List<String> labels;
  final int selected;
  final ValueChanged<int> onChanged;
  const WalletSegmented({super.key, required this.labels, required this.selected, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.mint.withValues(alpha: 0.55),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          for (var i = 0; i < labels.length; i++)
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => onChanged(i),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  decoration: BoxDecoration(
                    color: i == selected ? AppColors.surface : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: i == selected
                        ? [BoxShadow(color: AppColors.emerald900.withValues(alpha: 0.06), blurRadius: 6)]
                        : null,
                  ),
                  child: Text(labels[i],
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        color: i == selected ? AppColors.emerald800 : AppColors.textMuted,
                        fontWeight: i == selected ? FontWeight.w600 : FontWeight.w400,
                      )),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// Dükkân avatarı: logo varsa logo, yoksa nane zeminde kategori simgesi.
class ShopAvatar extends StatelessWidget {
  final ShopModel? shop;
  final double size;
  final bool muted;
  const ShopAvatar({super.key, this.shop, this.size = 42, this.muted = false});

  @override
  Widget build(BuildContext context) {
    final bytes = shop?.logoBytes;
    Widget child;
    if (bytes != null) {
      child = Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white, border: Border.all(color: AppColors.divider)),
        clipBehavior: Clip.antiAlias,
        child: Image.memory(bytes, fit: BoxFit.cover, gaplessPlayback: true),
      );
    } else {
      child = Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: muted ? AppColors.divider : AppColors.mint),
        child: Icon(shopCategoryIcon(shop?.category),
            size: size * 0.5, color: muted ? AppColors.textMuted : AppColors.emerald600),
      );
    }
    return muted ? Opacity(opacity: 0.55, child: child) : child;
  }
}

/// Gün başlıklı işlem listesi (beyaz kart içinde).
class WalletHistoryList extends StatelessWidget {
  final List<WalletEntry> entries;
  final Map<String, ShopModel> shops;
  final ValueChanged<WalletEntry> onTap;
  const WalletHistoryList({super.key, required this.entries, required this.shops, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    String header(DateTime at) {
      // Sunucu saati henüz gelmemiş kayıtlar (2100) bugüne yazılır.
      final d = at.year >= 2100 ? today : DateTime(at.year, at.month, at.day);
      final diff = today.difference(d).inDays;
      if (diff <= 0) return t.cuzdanToday;
      if (diff == 1) return t.cuzdanYesterday;
      if (diff < 7) return t.cuzdanDaysAgo(diff);
      return DateFormat(d.year == now.year ? 'd MMMM' : 'd MMMM y').format(d);
    }

    final children = <Widget>[];
    String? last;
    for (final e in entries) {
      final h = header(e.at.toLocal());
      if (h != last) {
        children.add(Padding(
          padding: EdgeInsetsDirectional.fromSTEB(18, last == null ? 14 : 18, 18, 4),
          child: Text(h,
              style: const TextStyle(
                  fontSize: 12.5, color: AppColors.textMuted, fontWeight: FontWeight.w500, letterSpacing: .3)),
        ));
        last = h;
      }
      children.add(e.tx != null
          ? _TxRow(tx: e.tx!, shop: shops[e.tx!.shopId], onTap: () => onTap(e))
          : _AdjRow(adj: e.adj!, onTap: () => onTap(e)));
    }
    children.add(const SizedBox(height: 8));
    return Container(
      decoration: WalletStyle.card(),
      clipBehavior: Clip.antiAlias,
      child: Material(
        color: Colors.transparent,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: children),
      ),
    );
  }
}

String _rowDate(DateTime? at) => at == null ? '' : DateFormat('d MMM · HH:mm').format(at.toLocal());

Widget _cancelBadge(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.error.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(context.l10n.cuzdanCancelledShort,
          style: const TextStyle(fontSize: 10.5, color: AppColors.error, fontWeight: FontWeight.w600)),
    );

class _TxRow extends StatelessWidget {
  final ShopTransaction tx;
  final ShopModel? shop;
  final VoidCallback onTap;
  const _TxRow({required this.tx, this.shop, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final cancelled = tx.isCancelled;
    String? points;
    var pointsColor = AppColors.success;
    if (tx.pointsSpent > 0) {
      points = t.cuzdanPointsMinus(tx.pointsSpent);
      pointsColor = AppColors.warning;
    } else if (tx.pointsEarned > 0) {
      points = t.cuzdanPointsPlus(tx.pointsEarned);
    }
    final main = cancelled ? AppColors.textMuted : AppColors.text;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
        child: Row(
          children: [
            ShopAvatar(shop: shop, muted: cancelled),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(tx.shopName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14.5, fontWeight: FontWeight.w500, color: main)),
                      ),
                      if (cancelled) ...[const SizedBox(width: 6), _cancelBadge(context)],
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(_rowDate(tx.createdAt), style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(t.cuzdanSar(formatSar(tx.amountNet)),
                    style: TextStyle(
                      fontSize: 14.5,
                      fontWeight: FontWeight.w600,
                      color: main,
                      decoration: cancelled ? TextDecoration.lineThrough : null,
                    )),
                if (points != null) ...[
                  const SizedBox(height: 2),
                  Text(points,
                      style: TextStyle(
                        fontSize: 12,
                        color: cancelled ? AppColors.textMuted : pointsColor,
                        decoration: cancelled ? TextDecoration.lineThrough : null,
                      )),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

String _adjTitle(BuildContext context, PointAdjustment adj) {
  final t = context.l10n;
  return adj.isRevert ? t.cuzdanPointsRevert : (adj.points > 0 ? t.cuzdanGiftPoints : t.cuzdanPointsCorrection);
}

class _AdjRow extends StatelessWidget {
  final PointAdjustment adj;
  final VoidCallback onTap;
  const _AdjRow({required this.adj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final plus = adj.points > 0;
    final color = plus ? AppColors.success : AppColors.warning;
    final sub = [_rowDate(adj.createdAt), adj.reason].where((e) => e.isNotEmpty).join(' · ');
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 10),
        child: Row(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(shape: BoxShape.circle, color: color.withValues(alpha: 0.12)),
              child: Icon(plus ? Icons.card_giftcard_rounded : Icons.remove_circle_outline_rounded,
                  color: color, size: 21),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(_adjTitle(context, adj),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.5,
                              fontWeight: FontWeight.w500,
                              color: adj.reverted ? AppColors.textMuted : AppColors.text,
                              decoration: adj.reverted ? TextDecoration.lineThrough : null,
                            )),
                      ),
                      if (adj.reverted) ...[
                        const SizedBox(width: 6),
                        Text(t.cuzdanPointsReverted,
                            style: const TextStyle(fontSize: 11, color: AppColors.textMuted, fontWeight: FontWeight.w600)),
                      ],
                    ],
                  ),
                  if (sub.isNotEmpty) ...[
                    const SizedBox(height: 2),
                    Text(sub,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 8),
            Text(plus ? t.cuzdanPointsPlus(adj.points) : t.cuzdanPointsMinus(-adj.points),
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: color)),
          ],
        ),
      ),
    );
  }
}

// ------------------------------------------------------------ ayrıntı sayfaları

Future<void> _sheet(BuildContext context, Widget child) => showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) => SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(ctx).size.height * 0.85),
          child: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
            child: child,
          ),
        ),
      ),
    );

Widget _detailRow(String label, String value, {Color? color, IconData? icon, bool bold = false}) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(label, style: const TextStyle(fontSize: 14, color: AppColors.textMuted))),
          if (icon != null) ...[
            Icon(icon, size: 17, color: AppColors.primary),
            const SizedBox(width: 6),
          ],
          Flexible(
            child: Text(value,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 14.5,
                  fontWeight: bold ? FontWeight.w700 : FontWeight.w500,
                  color: color ?? AppColors.text,
                )),
          ),
        ],
      ),
    );

/// Alışveriş ayrıntısı. [onReview] verilirse sayfa kapanır ve değerlendirme açılır.
Future<void> showTransactionDetail(
  BuildContext context, {
  required ShopTransaction tx,
  ShopModel? shop,
  ShopReview? review,
  required VoidCallback onReview,
}) {
  final t = context.l10n;
  final cancelled = tx.isCancelled;
  final date = tx.createdAt == null ? '' : DateFormat('d MMMM y · HH:mm').format(tx.createdAt!.toLocal());
  return _sheet(
    context,
    Builder(builder: (ctx) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              ShopAvatar(shop: shop, size: 48, muted: cancelled),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tx.shopName,
                        style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600, color: AppColors.text)),
                    if (date.isNotEmpty)
                      Text(date, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                  ],
                ),
              ),
              if (cancelled) _cancelBadge(ctx),
            ],
          ),
          const SizedBox(height: 20),
          Text(t.cuzdanSar(formatSar(tx.amountNet)),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: cancelled ? AppColors.textMuted : AppColors.text,
                decoration: cancelled ? TextDecoration.lineThrough : null,
              )),
          if (!cancelled && (tx.pointsEarned > 0 || tx.pointsSpent > 0)) ...[
            const SizedBox(height: 8),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                decoration: BoxDecoration(
                  color: (tx.pointsSpent > 0 ? AppColors.warning : AppColors.success).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  tx.pointsSpent > 0 ? t.cuzdanTxSpentBig(tx.pointsSpent) : t.cuzdanTxEarnedBig(tx.pointsEarned),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: tx.pointsSpent > 0 ? AppColors.warning : AppColors.success,
                  ),
                ),
              ),
            ),
          ],
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsetsDirectional.fromSTEB(14, 6, 14, 6),
            decoration: BoxDecoration(
              color: WalletStyle.background,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                _detailRow(t.cuzdanGross, t.cuzdanSar(formatSar(tx.amountGross))),
                if (tx.discountAmount > 0)
                  _detailRow(
                    tx.discountPercent > 0 ? t.cuzdanShopDiscountPct(tx.discountPercent) : t.cuzdanShopDiscount,
                    '−${t.cuzdanSar(formatSar(tx.discountAmount))}',
                    color: AppColors.success,
                  ),
                if (tx.hasCoupon)
                  _detailRow(t.cuzdanCouponUsed(tx.couponId), '−${t.cuzdanSar(formatSar(tx.couponDiscount))}',
                      color: AppColors.success),
                if (tx.pointsSpent > 0)
                  _detailRow(
                    t.cuzdanPaidWithPoints,
                    '${t.cuzdanPointsAmount(formatPoints(tx.pointsSpent))} '
                        '(${t.cuzdanSar(formatSar(EsnafConfig.pointsToSar(tx.pointsSpent)))})',
                  ),
                const Divider(height: 10, color: AppColors.divider),
                _detailRow(t.cuzdanPaid, t.cuzdanSar(formatSar(tx.amountNet)), bold: true),
                _detailRow(t.cuzdanPaymentMethod, paymentMethodLabel(ctx, tx.paymentMethod),
                    icon: paymentMethodIcon(tx.paymentMethod)),
                if (cancelled && tx.cancelReason.isNotEmpty)
                  _detailRow(t.cuzdanCancelReason, tx.cancelReason, color: AppColors.error),
              ],
            ),
          ),
          if (!cancelled) ...[
            const SizedBox(height: 16),
            if (review != null)
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.divider),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(t.cuzdanReviewYours, style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
                        const SizedBox(width: 8),
                        RatingStars(rating: review.rating, size: 18, complaint: review.complaint),
                      ],
                    ),
                    if (review.comment.isNotEmpty) ...[
                      const SizedBox(height: 6),
                      Text('“${review.comment}”',
                          style: const TextStyle(fontSize: 13, color: AppColors.text, fontStyle: FontStyle.italic)),
                    ],
                  ],
                ),
              )
            else
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.emerald700,
                  side: const BorderSide(color: AppColors.sage),
                  minimumSize: const Size.fromHeight(48),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                onPressed: () {
                  Navigator.of(ctx).pop();
                  onReview();
                },
                icon: const Icon(Icons.star_outline_rounded),
                label: Text(t.cuzdanReviewThis, style: const TextStyle(fontWeight: FontWeight.w600)),
              ),
          ],
        ],
      );
    }),
  );
}

/// Elle puan hareketinin ayrıntısı.
Future<void> showAdjustmentDetail(BuildContext context, PointAdjustment adj) {
  final t = context.l10n;
  final plus = adj.points > 0;
  final color = plus ? AppColors.success : AppColors.warning;
  final date = adj.createdAt == null ? '' : DateFormat('d MMMM y · HH:mm').format(adj.createdAt!.toLocal());
  return _sheet(
    context,
    Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color.withValues(alpha: 0.12)),
            child: Icon(plus ? Icons.card_giftcard_rounded : Icons.remove_circle_outline_rounded, color: color, size: 28),
          ),
        ),
        const SizedBox(height: 10),
        Text(_adjTitle(context, adj),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600, color: AppColors.text)),
        if (date.isNotEmpty)
          Text(date, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
        const SizedBox(height: 14),
        Text(plus ? t.cuzdanPointsPlus(adj.points) : t.cuzdanPointsMinus(-adj.points),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: adj.reverted ? AppColors.textMuted : color,
              decoration: adj.reverted ? TextDecoration.lineThrough : null,
            )),
        if (adj.reverted)
          Text(t.cuzdanPointsReverted,
              textAlign: TextAlign.center, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
        if (adj.reason.isNotEmpty) ...[
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsetsDirectional.fromSTEB(14, 6, 14, 6),
            decoration: BoxDecoration(color: WalletStyle.background, borderRadius: BorderRadius.circular(16)),
            child: _detailRow(t.cuzdanAdjustmentReason, adj.reason),
          ),
        ],
      ],
    ),
  );
}
