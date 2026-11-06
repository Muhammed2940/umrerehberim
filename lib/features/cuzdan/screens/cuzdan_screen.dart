import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:provider/provider.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../auth/models/user_model.dart';
import '../../esnaf/data/esnaf_service.dart';
import '../../esnaf/esnaf_config.dart';
import '../../esnaf/models/coupon.dart';
import '../../esnaf/models/point_adjustment.dart';
import '../../esnaf/models/shop_review.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../../esnaf/widgets/esnaf_widgets.dart' show RatingStars;
import '../../shops/providers/shop_service.dart';
import '../data/wallet_watcher.dart';
import '../widgets/cuzdan_widgets.dart';
import '../widgets/review_sheet.dart';

enum _Filter { all, earned, spent }

/// Misafir: Harcamalarım ve Puanlarım (`/cuzdan`). Anlaşmalı dükkanlardaki
/// alışverişler ve sadakat puanı bakiyesi (kazanılan − harcanan, iptaller hariç).
class CuzdanScreen extends StatefulWidget {
  const CuzdanScreen({super.key});

  @override
  State<CuzdanScreen> createState() => _CuzdanScreenState();
}

class _CuzdanScreenState extends State<CuzdanScreen> {
  Stream<List<ShopTransaction>>? _stream;
  _Filter _filter = _Filter.all;

  /// Elle puan hareketleri ve verilen değerlendirmeler. Okunamazlarsa boş kalır;
  /// alışveriş listesi yine gösterilir.
  List<PointAdjustment> _adjustments = const [];
  Map<String, ShopReview> _reviews = const {};
  final _subs = <StreamSubscription<Object?>>[];

  /// Kuponlarım (null = yükleniyor) ve kupon dükkanlarının adları.
  List<Coupon>? _coupons;
  Map<String, String> _shopNames = const {};

  @override
  void initState() {
    super.initState();
    WalletWatcher.instance.suppress(true);
    _subscribe();
  }

  @override
  void dispose() {
    for (final s in _subs) {
      s.cancel();
    }
    WalletWatcher.instance.suppress(false);
    super.dispose();
  }

  void _subscribe() {
    final user = context.read<AppStateProvider>().currentUser;
    final uid = user?.id;
    _stream = uid == null ? null : EsnafService.instance.guestTransactions(uid);
    for (final s in _subs) {
      s.cancel();
    }
    _subs.clear();
    if (user == null || uid == null) return;
    _subs.add(EsnafService.instance.guestAdjustments(uid).listen(
          (v) {
            if (mounted) setState(() => _adjustments = v);
          },
          onError: (Object e) => debugPrint('Cüzdan: puan hareketleri okunamadı: $e'),
        ));
    _subs.add(EsnafService.instance.guestReviews(uid).listen(
          (v) {
            if (mounted) setState(() => _reviews = v);
          },
          onError: (Object e) => debugPrint('Cüzdan: değerlendirmeler okunamadı: $e'),
        ));
    _loadCoupons(user);
  }

  Future<void> _loadCoupons(UserModel user) async {
    try {
      final list = await EsnafService.instance.usableCoupons(user).timeout(const Duration(seconds: 15));
      var names = _shopNames;
      if (list.any((c) => !c.forAllShops)) {
        final shops = await ShopService.instance.forGuest(user.agencyId);
        names = {for (final s in shops) s.id: s.name};
      }
      if (mounted) {
        setState(() {
          _coupons = list;
          _shopNames = names;
        });
      }
    } catch (e) {
      debugPrint('Cüzdan: kuponlar okunamadı: $e');
      if (mounted) setState(() => _coupons = const []);
    }
  }

  Future<void> _review(ShopTransaction tx) async {
    final user = context.read<AppStateProvider>().currentUser;
    if (user == null) return;
    final ok = await showReviewSheet(context, tx: tx, guestUid: user.id);
    if (ok == true && mounted) GlobalSnackbar.showSuccess(context.l10n.cuzdanReviewThanks);
  }

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(t.cuzdanTitle)),
      body: _stream == null
          ? EmptyStateWidget(icon: Icons.person_off_outlined, message: t.homeUserNotFound)
          : StreamBuilder<List<ShopTransaction>>(
              stream: _stream,
              builder: (context, snap) {
                if (snap.hasError) return _error();
                if (!snap.hasData) return const Center(child: CircularProgressIndicator(color: AppColors.primary));
                return _content(snap.data!);
              },
            ),
    );
  }

  Widget _error() => ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(height: 60),
          EmptyStateWidget(icon: Icons.wifi_off_rounded, message: context.l10n.cuzdanLoadError),
          const SizedBox(height: 12),
          Center(
            child: FilledButton.icon(
              style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
              onPressed: () => setState(_subscribe),
              icon: const Icon(Icons.refresh_rounded),
              label: Text(context.l10n.cuzdanRetry),
            ),
          ),
        ],
      );

  Widget _content(List<ShopTransaction> all) {
    final t = context.l10n;
    final summary = TransactionSummary.of(all);
    final adj = _adjustments;
    // Alışverişler ve elle puan hareketleri tek zaman çizelgesinde (yeniden eskiye).
    final entries = <({DateTime at, ShopTransaction? tx, PointAdjustment? adj})>[
      for (final x in all) (at: x.createdAt ?? DateTime(2100), tx: x, adj: null),
      for (final a in adj) (at: a.createdAt ?? DateTime(2100), tx: null, adj: a),
    ]..sort((a, b) => b.at.compareTo(a.at));
    final list = entries.where((e) {
      final x = e.tx, a = e.adj;
      return switch (_filter) {
        _Filter.all => true,
        _Filter.earned => (x != null && x.pointsEarned > 0) || (a != null && a.points > 0),
        _Filter.spent => (x != null && x.pointsSpent > 0) || (a != null && a.points < 0),
      };
    }).toList();

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: [
        _PointsCard(points: EsnafService.balanceOf(all, adj)),
        const SizedBox(height: 14),
        Row(
          children: [
            _stat(Icons.shopping_bag_rounded, t.cuzdanTotalSpent, t.cuzdanSar(formatSar(summary.net))),
            const SizedBox(width: 8),
            _stat(Icons.local_offer_rounded, t.cuzdanTotalDiscount,
                t.cuzdanSar(formatSar(summary.discount + summary.couponDiscount))),
            const SizedBox(width: 8),
            _stat(Icons.receipt_long_rounded, t.cuzdanPurchaseCount, '${summary.count}'),
          ],
        ),
        const SizedBox(height: 12),
        _myCoupons(),
        _howItWorks(),
        const SizedBox(height: 8),
        if (entries.isEmpty)
          _empty()
        else ...[
          SizedBox(
            height: 46,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _chip(t.cuzdanFilterAll, _Filter.all),
                _chip(t.cuzdanFilterEarned, _Filter.earned),
                _chip(t.cuzdanFilterSpent, _Filter.spent),
              ],
            ),
          ),
          const SizedBox(height: 6),
          if (list.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: Text(t.cuzdanNoFilterMatch,
                  textAlign: TextAlign.center, style: const TextStyle(color: AppColors.textMuted)),
            )
          else
            for (final e in list)
              if (e.tx != null)
                _TransactionTile(tx: e.tx!, review: _reviews[e.tx!.id], onReview: () => _review(e.tx!))
              else
                _AdjustmentTile(adj: e.adj!),
        ],
      ],
    );
  }

  /// "Kuponlarım": misafirin şu an kullanabileceği kuponlar (yoksa gizli).
  Widget _myCoupons() {
    final t = context.l10n;
    final list = _coupons;
    if (list == null || list.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Icon(Icons.confirmation_number_rounded, color: AppColors.primary, size: 20),
              const SizedBox(width: 6),
              Expanded(
                child: Text(t.cuzdanMyCoupons,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: AppColors.text)),
              ),
              Text('${list.length}', style: const TextStyle(fontWeight: FontWeight.w800, color: AppColors.primary)),
            ],
          ),
          const SizedBox(height: 4),
          Text(t.cuzdanCouponHowTo, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
          const SizedBox(height: 8),
          SizedBox(
            height: 128,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              separatorBuilder: (_, _) => const SizedBox(width: 10),
              itemBuilder: (_, i) => CouponTicket(
                coupon: list[i],
                shopName: list[i].forAllShops ? null : _shopNames[list[i].shopId],
                width: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _stat(IconData icon, String label, String value) => Expanded(
        child: Container(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 12, 10, 12),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.divider),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: AppColors.primary, size: 20),
              const SizedBox(height: 6),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerStart,
                child: Text(value,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: AppColors.text)),
              ),
              const SizedBox(height: 2),
              Text(label,
                  maxLines: 2,
                  style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted, height: 1.2)),
            ],
          ),
        ),
      );

  Widget _howItWorks() {
    final t = context.l10n;
    Widget line(IconData icon, String text) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 18, color: AppColors.primary),
              const SizedBox(width: 8),
              Expanded(
                  child: Text(text, style: const TextStyle(fontSize: 13.5, color: AppColors.text, height: 1.35))),
            ],
          ),
        );
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          leading: const Icon(Icons.help_outline_rounded, color: AppColors.primary),
          title: Text(t.cuzdanHowTitle,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.text)),
          iconColor: AppColors.primary,
          collapsedIconColor: AppColors.primary,
          childrenPadding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
          children: [
            line(Icons.add_circle_outline_rounded, t.cuzdanHowEarn),
            line(Icons.swap_horiz_rounded, t.cuzdanHowValue),
            line(Icons.local_offer_outlined, t.cuzdanHowPay),
            line(Icons.info_outline_rounded, t.cuzdanHowRecord),
          ],
        ),
      ),
    );
  }

  Widget _chip(String label, _Filter f) {
    final selected = _filter == f;
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8),
      child: ChoiceChip(
        label: Text(label),
        selected: selected,
        onSelected: (_) => setState(() => _filter = f),
        showCheckmark: false,
        selectedColor: AppColors.primary,
        backgroundColor: AppColors.surface,
        side: BorderSide(color: selected ? AppColors.primary : AppColors.divider),
        labelStyle: TextStyle(
          color: selected ? AppColors.surface : AppColors.text,
          fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          fontSize: 13,
        ),
      ),
    );
  }

  Widget _empty() => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            const Icon(Icons.storefront_outlined, size: 64, color: AppColors.accent),
            const SizedBox(height: 12),
            Text(context.l10n.cuzdanEmpty,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14.5, color: AppColors.textMuted, height: 1.4)),
            const SizedBox(height: 16),
            FilledButton.icon(
              style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
              onPressed: () => Navigator.of(context).pushNamed('/dukkanlar'),
              icon: const Icon(Icons.storefront_rounded),
              label: Text(context.l10n.cuzdanGoShops),
            ),
          ],
        ),
      );
}

/// Kredi kartı görünümlü sadakat puanı kartı.
class _PointsCard extends StatelessWidget {
  final int points;
  const _PointsCard({required this.points});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final name = context.watch<AppStateProvider>().currentUser?.userName.trim() ?? '';
    final worth = formatSar(EsnafConfig.pointsToSar(points < 0 ? 0 : points));
    return AspectRatio(
      aspectRatio: 1.7,
      child: Container(
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(color: AppColors.emerald900.withValues(alpha: 0.3), blurRadius: 16, offset: const Offset(0, 8)),
          ],
        ),
        child: Stack(
          children: [
            PositionedDirectional(
              end: -30,
              top: -30,
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.mint.withValues(alpha: 0.08),
                ),
              ),
            ),
            PositionedDirectional(
              start: -40,
              bottom: -60,
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.sage.withValues(alpha: 0.10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 18, 20, 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(t.cuzdanLoyaltyPoints,
                            style: const TextStyle(
                                color: AppColors.mint, fontSize: 15, fontWeight: FontWeight.w700, letterSpacing: .5)),
                      ),
                      const Icon(Icons.stars_rounded, color: AppColors.sage, size: 30),
                    ],
                  ),
                  const Spacer(),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: Text('$points',
                        style: const TextStyle(
                            color: AppColors.surface, fontSize: 46, fontWeight: FontWeight.w900, height: 1)),
                  ),
                  const SizedBox(height: 4),
                  Text(t.cuzdanPointsWorth(worth),
                      style: const TextStyle(color: AppColors.mint, fontSize: 14, fontWeight: FontWeight.w600)),
                  const Spacer(),
                  Text(name.toUpperCase(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: AppColors.surface, fontSize: 15, letterSpacing: 1.5, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Elle puan hareketi satırı: "Hediye puan +500 — sebep".
class _AdjustmentTile extends StatelessWidget {
  final PointAdjustment adj;
  const _AdjustmentTile({required this.adj});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final plus = adj.points > 0;
    final color = plus ? AppColors.success : AppColors.warning;
    final date = adj.createdAt == null ? '' : DateFormat('d MMM y  HH:mm').format(adj.createdAt!.toLocal());
    final title = adj.isRevert ? t.cuzdanPointsRevert : (plus ? t.cuzdanGiftPoints : t.cuzdanPointsCorrection);
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.35)),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: color.withValues(alpha: 0.12),
            child: Icon(plus ? Icons.card_giftcard_rounded : Icons.remove_circle_outline_rounded, color: color, size: 22),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: AppColors.text,
                            decoration: adj.reverted ? TextDecoration.lineThrough : null,
                          )),
                    ),
                    if (adj.reverted) ...[
                      const SizedBox(width: 6),
                      Text(t.cuzdanPointsReverted,
                          style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted, fontWeight: FontWeight.w700)),
                    ],
                  ],
                ),
                if (adj.reason.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(adj.reason, style: const TextStyle(fontSize: 13, color: AppColors.text)),
                ],
                if (date.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(date, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                ],
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text(plus ? t.cuzdanPointsPlus(adj.points) : t.cuzdanPointsMinus(-adj.points),
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: color)),
        ],
      ),
    );
  }
}

class _TransactionTile extends StatelessWidget {
  final ShopTransaction tx;
  final ShopReview? review;
  final VoidCallback? onReview;
  const _TransactionTile({required this.tx, this.review, this.onReview});

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final cancelled = tx.isCancelled;
    final strike = cancelled ? TextDecoration.lineThrough : null;
    final date = tx.createdAt == null ? '' : DateFormat('d MMM y  HH:mm').format(tx.createdAt!.toLocal());
    final muted = cancelled ? AppColors.textMuted : AppColors.text;

    Widget amount(String label, String value, {Color? color}) => Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
              const SizedBox(height: 2),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerStart,
                child: Text(value,
                    style: TextStyle(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w700,
                        color: cancelled ? AppColors.textMuted : (color ?? AppColors.text),
                        decoration: strike)),
              ),
            ],
          ),
        );

    String? points;
    Color pointsColor = AppColors.success;
    if (tx.pointsSpent > 0) {
      points = t.cuzdanPointsMinus(tx.pointsSpent);
      pointsColor = AppColors.warning;
    } else if (tx.pointsEarned > 0) {
      points = t.cuzdanPointsPlus(tx.pointsEarned);
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Tooltip(
                message: paymentMethodLabel(context, tx.paymentMethod),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: cancelled ? AppColors.divider : AppColors.primaryLight,
                  child: Icon(paymentMethodIcon(tx.paymentMethod),
                      color: cancelled ? AppColors.textMuted : AppColors.primary, size: 22),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tx.shopName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700, color: muted, decoration: strike)),
                    const SizedBox(height: 2),
                    Text(
                      [date, paymentMethodLabel(context, tx.paymentMethod)].where((e) => e.isNotEmpty).join(' · '),
                      style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                    ),
                  ],
                ),
              ),
              if (cancelled)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColors.error.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(t.cuzdanCancelled,
                      style: const TextStyle(fontSize: 11.5, color: AppColors.error, fontWeight: FontWeight.w700)),
                )
              else if (points != null)
                Text(points, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: pointsColor)),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              amount(t.cuzdanGross, t.cuzdanSar(formatSar(tx.amountGross))),
              amount(
                tx.discountPercent > 0 ? '${t.cuzdanDiscount} %${tx.discountPercent}' : t.cuzdanDiscount,
                '−${t.cuzdanSar(formatSar(tx.discountAmount))}',
                color: AppColors.success,
              ),
              amount(t.cuzdanPaid, t.cuzdanSar(formatSar(tx.amountNet))),
            ],
          ),
          if (tx.hasCoupon) ...[
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.confirmation_number_outlined,
                    size: 16, color: cancelled ? AppColors.textMuted : AppColors.primary),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(t.cuzdanCouponUsed(tx.couponId),
                      style: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.w600,
                          color: cancelled ? AppColors.textMuted : AppColors.primary,
                          decoration: strike)),
                ),
                Text('−${t.cuzdanSar(formatSar(tx.couponDiscount))}',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: cancelled ? AppColors.textMuted : AppColors.success,
                        decoration: strike)),
              ],
            ),
          ],
          if (!cancelled) ...[
            const SizedBox(height: 8),
            const Divider(height: 1, color: AppColors.divider),
            const SizedBox(height: 6),
            if (review != null)
              Row(
                children: [
                  Text(t.cuzdanReviewYours, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                  const SizedBox(width: 8),
                  RatingStars(rating: review!.rating, size: 16, complaint: review!.complaint),
                  if (review!.comment.isNotEmpty) ...[
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text('“${review!.comment}”',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12, color: AppColors.textMuted, fontStyle: FontStyle.italic)),
                    ),
                  ],
                ],
              )
            else
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    visualDensity: VisualDensity.compact,
                  ),
                  onPressed: onReview,
                  icon: const Icon(Icons.star_outline_rounded, size: 20),
                  label: Text(t.cuzdanReviewAction, style: const TextStyle(fontWeight: FontWeight.w700)),
                ),
              ),
          ],
          if (cancelled && tx.cancelReason.isNotEmpty) ...[
            const SizedBox(height: 6),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(tx.cancelReason,
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted, fontStyle: FontStyle.italic)),
            ),
          ],
        ],
      ),
    );
  }
}
