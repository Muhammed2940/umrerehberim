import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/widgets/empty_state_widget.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../auth/models/user_model.dart';
import '../../esnaf/data/esnaf_service.dart';
import '../../esnaf/models/coupon.dart';
import '../../esnaf/models/point_adjustment.dart';
import '../../esnaf/models/shop_review.dart';
import '../../esnaf/models/shop_transaction.dart';
import '../../shops/models/shop_model.dart';
import '../../shops/providers/shop_service.dart';
import '../../shops/screens/shop_code_screen.dart';
import '../../shops/widgets/shop_widgets.dart' show shopCategoryLabel;
import '../data/wallet_watcher.dart';
import '../widgets/cuzdan_widgets.dart';
import '../widgets/review_sheet.dart';
import '../widgets/spending_analysis.dart';
import '../widgets/wallet_cards.dart';
import '../widgets/wallet_history.dart';

enum _Filter { all, earned, spent }

/// Misafir: Harcamalarım ve Puanlarım (`/cuzdan`). Anlaşmalı dükkanlardaki
/// alışverişler ve sadakat puanı bakiyesi (kazanılan − harcanan, iptaller hariç).
///
/// Düzen (yukarıdan aşağı): bakiye kartı → kart rulosu (sadakat kartı + kuponlar)
/// → harcama analizi → Tümü/Kazanılan/Harcanan seçici → gün gruplu işlem listesi.
class CuzdanScreen extends StatefulWidget {
  const CuzdanScreen({super.key});

  @override
  State<CuzdanScreen> createState() => _CuzdanScreenState();
}

class _CuzdanScreenState extends State<CuzdanScreen> {
  static const _hideKey = 'cuzdan_hide_balance';

  Stream<List<ShopTransaction>>? _stream;
  _Filter _filter = _Filter.all;

  /// Elle puan hareketleri ve verilen değerlendirmeler. Okunamazlarsa boş kalır;
  /// alışveriş listesi yine gösterilir.
  List<PointAdjustment> _adjustments = const [];
  Map<String, ShopReview> _reviews = const {};
  final _subs = <StreamSubscription<Object?>>[];

  /// Kuponlarım (null = yükleniyor).
  List<Coupon>? _coupons;

  /// Misafirin görebildiği dükkanlar (id → dükkân): kategori, logo, kupon dükkân adı
  /// ve QR için dükkân seçimi. Bir kez okunur; okunamazsa boş kalır.
  Map<String, ShopModel> _shops = const {};
  Future<Map<String, ShopModel>>? _shopsFuture;

  /// Bakiye gizli mi (SharedPreferences'ta saklanır).
  bool _hidden = false;

  @override
  void initState() {
    super.initState();
    WalletWatcher.instance.suppress(true);
    _loadHidden();
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

  Future<void> _loadHidden() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final v = prefs.getBool(_hideKey) ?? false;
      if (mounted && v != _hidden) setState(() => _hidden = v);
    } catch (e) {
      debugPrint('Cüzdan: gizleme tercihi okunamadı: $e');
    }
  }

  Future<void> _toggleHidden() async {
    setState(() => _hidden = !_hidden);
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_hideKey, _hidden);
    } catch (e) {
      debugPrint('Cüzdan: gizleme tercihi yazılamadı: $e');
    }
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
    _loadShops(user);
    _loadCoupons(user);
  }

  /// Dükkanları bir kez okur (sonraki çağrılar aynı sonucu döner).
  Future<Map<String, ShopModel>> _loadShops(UserModel user) {
    return _shopsFuture ??= () async {
      try {
        final list = await ShopService.instance.forGuest(user.agencyId).timeout(const Duration(seconds: 15));
        final map = {for (final s in list) s.id: s};
        if (mounted) setState(() => _shops = map);
        return map;
      } catch (e) {
        debugPrint('Cüzdan: dükkanlar okunamadı: $e');
        _shopsFuture = null; // sonraki denemede yeniden okunsun
        return <String, ShopModel>{};
      }
    }();
  }

  Future<void> _loadCoupons(UserModel user) async {
    try {
      final list = await EsnafService.instance.usableCoupons(user).timeout(const Duration(seconds: 15));
      if (mounted) setState(() => _coupons = list);
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

  // ------------------------------------------------------------ QR akışı

  /// "QR'ım": QR kodu dükkâna göre üretildiği için önce dükkân seçilir.
  /// [only] verilir ve dükkân biliniyorsa doğrudan o dükkânın kodu açılır.
  Future<void> _openQr({String? only}) async {
    final user = context.read<AppStateProvider>().currentUser;
    if (user == null) return;
    final known = only == null ? null : _shops[only];
    if (known != null) return _pushCode(known);
    final picked = await showModalBottomSheet<ShopModel>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) => SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(ctx).size.height * 0.75),
          child: FutureBuilder<Map<String, ShopModel>>(
            future: _loadShops(user),
            builder: (ctx, snap) {
              final t = ctx.l10n;
              if (!snap.hasData) {
                return const Padding(
                  padding: EdgeInsets.all(40),
                  child: Center(child: CircularProgressIndicator(color: AppColors.primary)),
                );
              }
              final shops = snap.data!.values.toList()..sort(ShopService.compare);
              return ListView(
                shrinkWrap: true,
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                children: [
                  Text(t.cuzdanPickShopTitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: AppColors.text)),
                  const SizedBox(height: 4),
                  Text(t.cuzdanPickShopHint,
                      textAlign: TextAlign.center, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                  const SizedBox(height: 12),
                  if (shops.isEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text(t.cuzdanNoShops,
                          textAlign: TextAlign.center, style: const TextStyle(color: AppColors.textMuted)),
                    ),
                  for (final s in shops)
                    ListTile(
                      contentPadding: const EdgeInsetsDirectional.only(start: 4, end: 4),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      leading: ShopAvatar(shop: s),
                      title: Text(s.name, style: const TextStyle(fontWeight: FontWeight.w500)),
                      subtitle: Text(
                        [
                          shopCategoryLabel(ctx, s.category),
                          if (s.discountPercent > 0) '%${s.discountPercent}',
                        ].join(' · '),
                        style: const TextStyle(fontSize: 12.5),
                      ),
                      trailing: const Icon(Icons.qr_code_2_rounded, color: AppColors.primary),
                      onTap: () => Navigator.pop(ctx, s),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
    if (picked != null && mounted) await _pushCode(picked);
  }

  Future<void> _pushCode(ShopModel shop) async {
    await Navigator.of(context).push(MaterialPageRoute(
      fullscreenDialog: true,
      builder: (_) => ShopCodeScreen(shop: shop),
    ));
  }

  // ------------------------------------------------------------ alt sayfalar

  void _showCoupon(Coupon c) {
    final t = context.l10n;
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) => SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(t.cuzdanCouponDetails,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: AppColors.text)),
              const SizedBox(height: 14),
              CouponTicket(coupon: c, shopName: c.forAllShops ? null : _shops[c.shopId]?.name),
              if (c.description.isNotEmpty) ...[
                const SizedBox(height: 12),
                Text(c.description, style: const TextStyle(fontSize: 13.5, color: AppColors.text, height: 1.4)),
              ],
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: WalletStyle.background, borderRadius: BorderRadius.circular(14)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.info_outline_rounded, size: 18, color: AppColors.primary),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(t.cuzdanCouponHowTo,
                          style: const TextStyle(fontSize: 13, color: AppColors.text, height: 1.35)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              FilledButton.icon(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.emerald700,
                  minimumSize: const Size.fromHeight(48),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                onPressed: () {
                  Navigator.pop(ctx);
                  _openQr(only: c.forAllShops ? null : c.shopId);
                },
                icon: const Icon(Icons.qr_code_2_rounded),
                label: Text(t.cuzdanMyQr),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showHowItWorks() {
    final t = context.l10n;
    Widget line(IconData icon, String text) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: const BoxDecoration(color: AppColors.mint, shape: BoxShape.circle),
                child: Icon(icon, size: 18, color: AppColors.emerald600),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(text, style: const TextStyle(fontSize: 14, color: AppColors.text, height: 1.4)),
                ),
              ),
            ],
          ),
        );
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) => SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(t.cuzdanHowTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: AppColors.text)),
              const SizedBox(height: 16),
              line(Icons.add_circle_outline_rounded, t.cuzdanHowEarn),
              line(Icons.swap_horiz_rounded, t.cuzdanHowValue),
              line(Icons.local_offer_outlined, t.cuzdanHowPay),
              line(Icons.info_outline_rounded, t.cuzdanHowRecord),
            ],
          ),
        ),
      ),
    );
  }

  void _openEntry(WalletEntry e) {
    final tx = e.tx;
    if (tx != null) {
      showTransactionDetail(
        context,
        tx: tx,
        shop: _shops[tx.shopId],
        review: _reviews[tx.id],
        onReview: () => _review(tx),
      );
    } else if (e.adj != null) {
      showAdjustmentDetail(context, e.adj!);
    }
  }

  // ------------------------------------------------------------ görünüm

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Scaffold(
      backgroundColor: WalletStyle.background,
      appBar: AppBar(
        title: Text(t.cuzdanTitle),
        backgroundColor: WalletStyle.background,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        foregroundColor: AppColors.text,
      ),
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

  static Widget _pad(Widget child) => Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: child);

  Widget _content(List<ShopTransaction> all) {
    final t = context.l10n;
    final user = context.watch<AppStateProvider>().currentUser;
    final adj = _adjustments;
    final points = EsnafService.balanceOf(all, adj);

    // Alışverişler ve elle puan hareketleri tek zaman çizelgesinde (yeniden eskiye).
    final entries = <WalletEntry>[
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

    // Kart numarasının son 4 hanesi: TC, yoksa uid.
    final tc = user?.userTc.trim() ?? '';
    final idSource = tc.isNotEmpty ? tc : (user?.id ?? '');
    final last4 = idSource.length >= 4 ? idSource.substring(idSource.length - 4) : idSource.padLeft(4, '0');

    return ListView(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 32),
      children: [
        _pad(WalletBalanceCard(
          points: points,
          hidden: _hidden,
          onToggleHidden: _toggleHidden,
          onQr: _openQr,
          onShops: () => Navigator.of(context).pushNamed('/dukkanlar'),
        )),
        const SizedBox(height: 18),
        WalletCardCarousel(
          loyaltyCard: LoyaltyCard(
            holderName: user?.userName.trim() ?? '',
            last4: last4,
            points: points,
            hidden: _hidden,
          ),
          couponCards: [
            for (final c in _coupons ?? const <Coupon>[]) CouponMiniCard(coupon: c, onTap: () => _showCoupon(c)),
          ],
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(end: 12, top: 2),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.emerald600,
                visualDensity: VisualDensity.compact,
                textStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              onPressed: _showHowItWorks,
              icon: const Icon(Icons.help_outline_rounded, size: 18),
              label: Text(t.cuzdanHowTitle),
            ),
          ),
        ),
        const SizedBox(height: 4),
        if (entries.isEmpty)
          _pad(_empty())
        else ...[
          if (all.any((x) => !x.isCancelled)) ...[
            _pad(SpendingAnalysisCard(transactions: all, shops: _shops)),
            const SizedBox(height: 18),
          ],
          _pad(WalletSegmented(
            labels: [t.cuzdanFilterAll, t.cuzdanFilterEarned, t.cuzdanFilterSpent],
            selected: _filter.index,
            onChanged: (i) => setState(() => _filter = _Filter.values[i]),
          )),
          const SizedBox(height: 12),
          if (list.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: Text(t.cuzdanNoFilterMatch,
                  textAlign: TextAlign.center, style: const TextStyle(color: AppColors.textMuted)),
            )
          else
            _pad(WalletHistoryList(entries: list, shops: _shops, onTap: _openEntry)),
        ],
      ],
    );
  }

  Widget _empty() => Container(
        padding: const EdgeInsets.fromLTRB(20, 28, 20, 24),
        decoration: WalletStyle.card(),
        child: Column(
          children: [
            Container(
              width: 76,
              height: 76,
              decoration: const BoxDecoration(color: AppColors.mint, shape: BoxShape.circle),
              child: const Icon(Icons.storefront_outlined, size: 38, color: AppColors.emerald600),
            ),
            const SizedBox(height: 14),
            Text(context.l10n.cuzdanEmpty,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14.5, color: AppColors.textMuted, height: 1.4)),
            const SizedBox(height: 16),
            FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.emerald700,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              ),
              onPressed: () => Navigator.of(context).pushNamed('/dukkanlar'),
              icon: const Icon(Icons.storefront_rounded),
              label: Text(context.l10n.cuzdanGoShops),
            ),
          ],
        ),
      );
}
