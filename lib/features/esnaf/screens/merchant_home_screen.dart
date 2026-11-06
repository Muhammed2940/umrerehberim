import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/widgets/language_picker.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../auth/providers/login_provider.dart';
import '../../shops/models/shop_model.dart';
import '../../shops/screens/qr_scanner_screen.dart';
import '../data/esnaf_service.dart';
import '../esnaf_config.dart';
import '../models/shop_review.dart';
import '../models/shop_transaction.dart';
import '../widgets/esnaf_widgets.dart';
import 'merchant_history_screen.dart';
import 'merchant_shop_info_screen.dart';
import 'merchant_transaction_screen.dart';

/// Esnaf ana ekranı: dükkan başlığı, "QR Okut" butonu, bugünün özeti ve son işlemler.
class MerchantHomeScreen extends StatefulWidget {
  const MerchantHomeScreen({super.key});

  @override
  State<MerchantHomeScreen> createState() => _MerchantHomeScreenState();
}

class _MerchantHomeScreenState extends State<MerchantHomeScreen> {
  String? _shopId;
  Stream<DocumentSnapshot<Map<String, dynamic>>>? _shopStream;
  Stream<List<ShopTransaction>>? _todayStream;
  DateTime _day = _startOfToday();

  static DateTime _startOfToday() {
    final n = DateTime.now();
    return DateTime(n.year, n.month, n.day);
  }

  /// Akışlar dükkan ya da gün değişince yeniden kurulur.
  void _ensureStreams(String shopId) {
    final today = _startOfToday();
    if (_shopId == shopId && _day == today && _shopStream != null) return;
    _shopId = shopId;
    _day = today;
    _shopStream = FirebaseFirestore.instance.collection('shops').doc(shopId).snapshots();
    _todayStream = EsnafService.instance.shopTransactions(shopId, from: today, limit: 500);
  }

  /// QR okut → işlem ekranı. "Yeni işlem" seçilirse tarayıcı yeniden açılır.
  Future<void> _scan(ShopModel shop) async {
    while (true) {
      if (!mounted) return;
      final raw = await Navigator.of(context).push<String>(
        MaterialPageRoute(builder: (_) => const QrScannerScreen()),
      );
      if (raw == null || !mounted) return;
      final again = await Navigator.of(context).push<bool>(
        MaterialPageRoute(builder: (_) => MerchantTransactionScreen(raw: raw, shop: shop)),
      );
      if (again != true) return;
    }
  }

  void _openHistory(ShopModel shop) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => MerchantHistoryScreen(shop: shop)));
  }

  Future<void> _onMenu(String v, ShopModel? shop) async {
    switch (v) {
      case 'shop':
        if (shop != null) {
          await Navigator.of(context).push(MaterialPageRoute(builder: (_) => MerchantShopInfoScreen(shop: shop)));
        }
      case 'lang':
        await LanguagePicker.show(context);
      case 'logout':
        await _logout();
    }
  }

  Future<void> _logout() async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.l10n.esnafLogout),
        content: Text(ctx.l10n.esnafLogoutConfirm),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(ctx.l10n.commonCancel)),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: Text(ctx.l10n.esnafLogout)),
        ],
      ),
    );
    if (ok == true && mounted) await context.read<LoginProvider>().logout(context);
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<AppStateProvider>().currentUser;
    final shopId = user?.shopId ?? '';

    if (shopId.isEmpty) return _scaffold(null, _notFound());
    _ensureStreams(shopId);

    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: _shopStream,
      builder: (context, snap) {
        if (snap.hasError) {
          return _scaffold(
            null,
            EsnafMessage(
              icon: Icons.cloud_off_rounded,
              title: context.l10n.esnafLoadFailed,
              message: context.l10n.esnafLoadFailedBody,
              color: AppColors.error,
              action: OutlinedButton.icon(
                onPressed: () => setState(() => _shopStream = null),
                icon: const Icon(Icons.refresh_rounded),
                label: Text(context.l10n.commonRetry),
              ),
            ),
          );
        }
        if (!snap.hasData) return _scaffold(null, const Center(child: CircularProgressIndicator()));
        final doc = snap.data!;
        if (!doc.exists) return _scaffold(null, _notFound());
        final shop = ShopModel.fromFirestore(doc);
        return _scaffold(shop, _body(shop));
      },
    );
  }

  Widget _notFound() => EsnafMessage(
        icon: Icons.store_mall_directory_outlined,
        title: context.l10n.esnafShopNotFound,
        message: context.l10n.esnafShopNotFoundBody,
        color: AppColors.error,
        action: OutlinedButton.icon(
          onPressed: _logout,
          icon: const Icon(Icons.logout_rounded),
          label: Text(context.l10n.esnafLogout),
        ),
      );

  Widget _scaffold(ShopModel? shop, Widget body) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(context.l10n.esnafTitle),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert_rounded),
            onSelected: (v) => _onMenu(v, shop),
            itemBuilder: (ctx) => [
              if (shop != null)
                PopupMenuItem(value: 'shop', child: _menuRow(Icons.storefront_outlined, ctx.l10n.esnafMenuShopInfo)),
              PopupMenuItem(value: 'lang', child: _menuRow(Icons.language_rounded, ctx.l10n.commonLanguage)),
              PopupMenuItem(value: 'logout', child: _menuRow(Icons.logout_rounded, ctx.l10n.esnafLogout)),
            ],
          ),
        ],
      ),
      body: body,
    );
  }

  Widget _menuRow(IconData icon, String label) => Row(
        children: [
          Icon(icon, color: AppColors.primary, size: 20),
          const SizedBox(width: 12),
          Text(label),
        ],
      );

  Widget _body(ShopModel shop) {
    return StreamBuilder<List<ShopTransaction>>(
      stream: _todayStream,
      builder: (context, snap) {
        final list = snap.data ?? const <ShopTransaction>[];
        final summary = TransactionSummary.of(list);
        return ListView(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 32),
          children: [
            _ShopHeader(shop: shop),
            if (!shop.isActive) ...[
              const SizedBox(height: 12),
              MerchantInfoBanner(
                icon: Icons.pause_circle_outline_rounded,
                color: AppColors.warning,
                text: context.l10n.esnafShopInactive,
              ),
            ],
            const SizedBox(height: 16),
            _ScanButton(enabled: shop.isActive, onTap: () => _scan(shop)),
            const SizedBox(height: 22),
            _SectionHeader(title: context.l10n.esnafTodaySummary),
            const SizedBox(height: 8),
            if (snap.hasError)
              MerchantInfoBanner(
                icon: Icons.cloud_off_rounded,
                color: AppColors.error,
                text: context.l10n.esnafLoadFailed,
              )
            else if (!snap.hasData)
              const Padding(
                padding: EdgeInsetsDirectional.all(24),
                child: Center(child: CircularProgressIndicator()),
              )
            else ...[
              MerchantSummaryRow(summary: summary),
              const SizedBox(height: 12),
              MerchantMethodChart(summary: summary),
            ],
            const SizedBox(height: 22),
            _SectionHeader(
              title: context.l10n.esnafRecentTransactions,
              action: TextButton.icon(
                onPressed: () => _openHistory(shop),
                icon: const Icon(Icons.receipt_long_rounded, size: 18),
                label: Text(context.l10n.esnafAllTransactions),
              ),
            ),
            if (snap.hasData && list.isEmpty)
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 20),
                child: Text(
                  context.l10n.esnafNoTransactionsToday,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: AppColors.textMuted),
                ),
              ),
            for (final t in list.take(5)) MerchantTransactionTile(tx: t, onTap: () => _openHistory(shop)),
          ],
        );
      },
    );
  }
}

class _ShopHeader extends StatelessWidget {
  final ShopModel shop;
  const _ShopHeader({required this.shop});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.divider),
      ),
      child: Row(
        children: [
          ShopLogo(shop: shop, size: 60),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shop.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.text),
                ),
                const SizedBox(height: 6),
                Wrap(
                  spacing: 8,
                  runSpacing: 6,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    DiscountBadge(percent: shop.discountPercent),
                    if (shop.merchantCode.isNotEmpty)
                      Text(
                        context.l10n.esnafCodeLabel(shop.merchantCode),
                        style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ScanButton extends StatelessWidget {
  final bool enabled;
  final VoidCallback onTap;
  const _ScanButton({required this.enabled, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1 : 0.45,
      child: Material(
        borderRadius: BorderRadius.circular(24),
        clipBehavior: Clip.antiAlias,
        elevation: enabled ? 6 : 0,
        shadowColor: AppColors.primary.withValues(alpha: 0.4),
        child: Ink(
          decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
          child: InkWell(
            onTap: enabled ? onTap : null,
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsetsDirectional.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.surface.withValues(alpha: 0.12),
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.sage, width: 2),
                    ),
                    child: const Icon(Icons.qr_code_scanner_rounded, size: 64, color: AppColors.mint),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    context.l10n.esnafScanQr,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: AppColors.surface, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    context.l10n.esnafScanQrHint,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: AppColors.mint, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final Widget? action;
  const _SectionHeader({required this.title, this.action});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: AppColors.text)),
        ),
        ?action,
      ],
    );
  }
}

/// Renkli bilgi şeridi.
class MerchantInfoBanner extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const MerchantInfoBanner({super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color),
          const SizedBox(width: 10),
          Expanded(child: Text(text, style: TextStyle(color: color, fontWeight: FontWeight.w600))),
        ],
      ),
    );
  }
}

/// Özet kartları: işlem sayısı, net ciro, verilen indirim.
class MerchantSummaryRow extends StatelessWidget {
  final TransactionSummary summary;
  const MerchantSummaryRow({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: MerchantStatCard(
            icon: Icons.receipt_rounded,
            label: context.l10n.esnafStatCount,
            value: EsnafFmt.integer(context, summary.count),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: MerchantStatCard(
            icon: Icons.account_balance_wallet_rounded,
            label: context.l10n.esnafStatNet,
            value: EsnafFmt.sar(context, summary.net),
            highlight: true,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: MerchantStatCard(
            icon: Icons.local_offer_rounded,
            label: context.l10n.esnafStatDiscount,
            value: EsnafFmt.sar(context, summary.discount),
          ),
        ),
      ],
    );
  }
}

/// Tek özet kartı.
class MerchantStatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool highlight;

  const MerchantStatCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.highlight = false,
  });

  @override
  Widget build(BuildContext context) {
    final fg = highlight ? AppColors.surface : AppColors.text;
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 14),
      decoration: BoxDecoration(
        color: highlight ? AppColors.primary : AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: highlight ? AppColors.primary : AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: highlight ? AppColors.mint : AppColors.primary),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(value, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: fg)),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            maxLines: 2,
            style: TextStyle(fontSize: 12, color: highlight ? AppColors.mint : AppColors.textMuted),
          ),
        ],
      ),
    );
  }
}

/// Ödeme türüne göre dağılım: pasta grafik + açıklama.
class MerchantMethodChart extends StatelessWidget {
  final TransactionSummary summary;
  const MerchantMethodChart({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    final total = summary.netByMethod.values.fold<double>(0, (a, b) => a + b);
    return Container(
      padding: const EdgeInsetsDirectional.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 92,
            height: 92,
            child: total <= 0
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.divider, width: 14),
                    ),
                  )
                : PieChart(
                    PieChartData(
                      sectionsSpace: 2,
                      centerSpaceRadius: 24,
                      startDegreeOffset: -90,
                      sections: [
                        for (final m in PaymentMethod.all)
                          if ((summary.netByMethod[m] ?? 0) > 0)
                            PieChartSectionData(
                              value: summary.netByMethod[m]!,
                              color: EsnafFmt.methodColor(m),
                              radius: 20,
                              showTitle: false,
                            ),
                      ],
                    ),
                  ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(context.l10n.esnafByMethod,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.text)),
                const SizedBox(height: 8),
                for (final m in PaymentMethod.all)
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(color: EsnafFmt.methodColor(m), shape: BoxShape.circle),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(EsnafFmt.methodLabel(context, m),
                              style: const TextStyle(fontSize: 13, color: AppColors.text)),
                        ),
                        Text(
                          EsnafFmt.sar(context, summary.netByMethod[m] ?? 0),
                          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.text),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// İşlem satırı (ana ekran ve geçmiş ortak kullanır).
class MerchantTransactionTile extends StatelessWidget {
  final ShopTransaction tx;
  final VoidCallback? onTap;
  final bool showDate;

  /// Misafirin değerlendirmesi (varsa yıldız rozeti gösterilir).
  final ShopReview? review;

  const MerchantTransactionTile({super.key, required this.tx, this.onTap, this.showDate = false, this.review});

  @override
  Widget build(BuildContext context) {
    final cancelled = tx.isCancelled;
    final strike = cancelled ? TextDecoration.lineThrough : null;
    final when = showDate ? EsnafFmt.dateTime(context, tx.createdAt) : EsnafFmt.time(context, tx.createdAt);
    return Card(
      margin: const EdgeInsetsDirectional.symmetric(vertical: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12, 10, 14, 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: cancelled ? AppColors.divider : AppColors.mint,
                child: Icon(EsnafFmt.methodIcon(tx.paymentMethod),
                    color: cancelled ? AppColors.textMuted : AppColors.primary, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            tx.guestName.isEmpty ? '—' : tx.guestName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: cancelled ? AppColors.textMuted : AppColors.text,
                              decoration: strike,
                            ),
                          ),
                        ),
                        if (cancelled) ...[
                          const SizedBox(width: 6),
                          EsnafTag(label: context.l10n.esnafCancelledTag, color: AppColors.error),
                        ],
                        if (tx.hasCoupon) ...[
                          const SizedBox(width: 6),
                          EsnafTag(label: tx.couponId, color: AppColors.emerald800),
                        ],
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      '$when · ${EsnafFmt.methodLabel(context, tx.paymentMethod)}',
                      style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                    ),
                    if (review != null) ...[
                      const SizedBox(height: 3),
                      RatingStars(rating: review!.rating, size: 13, complaint: review!.complaint),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    EsnafFmt.sar(context, tx.amountNet),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: cancelled ? AppColors.textMuted : AppColors.primary,
                      decoration: strike,
                    ),
                  ),
                  if (tx.discountAmount + tx.couponDiscount > 0)
                    Text(
                      context.l10n.esnafDiscountShort(EsnafFmt.sar(context, tx.discountAmount + tx.couponDiscount)),
                      style: TextStyle(fontSize: 11, color: AppColors.textMuted, decoration: strike),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
