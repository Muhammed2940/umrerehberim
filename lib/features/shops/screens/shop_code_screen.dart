import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../cuzdan/data/wallet_watcher.dart';
import '../../cuzdan/widgets/cuzdan_widgets.dart';
import '../../esnaf/data/esnaf_service.dart';
import '../../esnaf/esnaf_config.dart';
import '../../esnaf/models/coupon.dart';
import '../../esnaf/models/shop_token.dart';
import '../../esnaf/widgets/esnaf_widgets.dart' show CouponText;
import '../../esnaf/models/shop_transaction.dart';
import '../models/shop_model.dart';
import '../providers/shop_service.dart';
import '../widgets/shop_widgets.dart';

/// Esnafa gösterilen tam ekran indirim kodu: beyaz zemin, büyük QR, altında
/// misafirin adı, acente adı ve canlı tarih/saat.
///
/// Varsayılan kod esnaf panelinin okuttuğu **tek kullanımlık** koddur
/// (`UMRE1:<tokenId>`, [EsnafConfig.tokenTtl] süre geçerli, süre dolunca kendiliğinden
/// yenilenir). Esnaf kodu okutup işlemi kaydedince ekran başarı görünümüne geçer.
/// Dükkanın elle girilmiş `qr_data` alanı varsa küçük bir bağlantıyla o eski
/// statik koda geçilebilir.
///
/// Not: Ekran parlaklığı paketi projede yok; parlaklık değiştirilmez.
class ShopCodeScreen extends StatefulWidget {
  final ShopModel shop;
  const ShopCodeScreen({super.key, required this.shop});

  @override
  State<ShopCodeScreen> createState() => _ShopCodeScreenState();
}

class _ShopCodeScreenState extends State<ShopCodeScreen> {
  Timer? _timer;
  DateTime _now = DateTime.now();
  String _agencyName = '';

  /// Kod ilk oluşturulurken okunan puan bakiyesi.
  int? _points;
  ShopToken? _token;
  DateTime? _expiresAt;
  bool _creating = false;
  bool _error = false;
  bool _showStatic = false;

  /// Güncel ve bir önceki kod dinlenir: esnaf süresi biten kodu yenilenme anında
  /// okutmuş olabilir (kurallar 3 dakikaya kadar izin veriyor).
  final _tokenSubs = <String, StreamSubscription<ShopToken?>>{};
  StreamSubscription<ShopTransaction?>? _txSub;
  ShopToken? _usedToken;
  ShopTransaction? _tx;
  bool _txFailed = false;

  bool get _done => _usedToken != null;

  /// Bu dükkanda kullanılabilecek kuponlar ve misafirin seçtiği (null = kuponsuz).
  /// Kupon değişince kod hemen yeniden üretilir (kupon koda yazılır).
  List<Coupon> _coupons = const [];
  Coupon? _coupon;
  bool _recreate = false;

  @override
  void initState() {
    super.initState();
    // Durum çubuğu simgeleri beyaz zeminde koyu görünsün.
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    WalletWatcher.instance.suppress(true);
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
    final user = context.read<AppStateProvider>().currentUser;
    ShopService.instance.agencyName(user?.agencyId).then((v) {
      if (mounted && v.isNotEmpty) setState(() => _agencyName = v);
    }, onError: (_) {});
    if (user != null) {
      EsnafService.instance.usableCoupons(user, shopId: widget.shop.id).then((v) {
        if (mounted) setState(() => _coupons = v);
      }, onError: (Object e) => debugPrint('ShopCodeScreen.coupons: $e'));
    }
    _createToken();
  }

  void _setCoupon(Coupon? c) {
    if (c?.code == _coupon?.code) return;
    setState(() => _coupon = c);
    if (_done || _showStatic) return;
    if (_creating) {
      _recreate = true;
    } else {
      _createToken();
    }
  }

  Future<void> _pickCoupon() async {
    final t = context.l10n;
    final picked = await showModalBottomSheet<Coupon?>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (ctx) => SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(ctx).size.height * 0.75),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
            children: [
              Text(t.cuzdanCouponPickTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: AppColors.text)),
              const SizedBox(height: 4),
              Text(t.cuzdanCouponPickHint,
                  textAlign: TextAlign.center, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
              const SizedBox(height: 12),
              for (final c in _coupons)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CouponTicket(
                    coupon: c,
                    shopName: widget.shop.name,
                    selected: _coupon?.code == c.code,
                    onTap: () => Navigator.pop(ctx, c),
                  ),
                ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  foregroundColor: AppColors.text,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                ),
                onPressed: () => Navigator.pop(ctx, const Coupon(code: '', title: '')),
                icon: const Icon(Icons.block_rounded),
                label: Text(t.cuzdanCouponNone),
              ),
            ],
          ),
        ),
      ),
    );
    if (picked == null || !mounted) return; // kapatıldı: değişiklik yok
    _setCoupon(picked.code.isEmpty ? null : picked);
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (final s in _tokenSubs.values) {
      s.cancel();
    }
    _txSub?.cancel();
    WalletWatcher.instance.suppress(false);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    super.dispose();
  }

  void _tick() {
    if (!mounted) return;
    setState(() => _now = DateTime.now());
    final exp = _expiresAt;
    if (!_done && !_showStatic && !_creating && !_error && exp != null && _now.isAfter(exp)) {
      _createToken();
    }
  }

  String _tripName(AppStateProvider app) {
    for (final t in [app.mekkeTrip, app.medineTrip]) {
      final n = t?.name.trim() ?? '';
      if (n.isNotEmpty) return n;
    }
    return '';
  }

  Future<void> _createToken() async {
    final app = context.read<AppStateProvider>();
    final user = app.currentUser;
    if (user == null) {
      setState(() => _error = true);
      return;
    }
    setState(() {
      _creating = true;
      _error = false;
    });
    try {
      if (_agencyName.isEmpty) {
        _agencyName = await ShopService.instance
            .agencyName(user.agencyId)
            .timeout(const Duration(seconds: 8), onTimeout: () => '');
      }
      _points ??= await EsnafService.instance.guestPointsBalance(user.id).timeout(const Duration(seconds: 10));
      final token = await EsnafService.instance
          .createToken(
            guest: user,
            agencyName: _agencyName,
            tripName: _tripName(app),
            pointsAvailable: _points ?? 0,
            couponId: _coupon?.code ?? '',
          )
          .timeout(const Duration(seconds: 15));
      if (!mounted || _done) return;
      _watch(token.id);
      setState(() {
        _token = token;
        _expiresAt = DateTime.now().add(EsnafConfig.tokenTtl);
        _creating = false;
      });
      // Üretim sürerken kupon değiştiyse yeni kuponla hemen yenile.
      if (_recreate || token.couponId != (_coupon?.code ?? '')) {
        _recreate = false;
        _createToken();
      }
    } catch (e) {
      debugPrint('ShopCodeScreen.createToken: $e');
      if (!mounted) return;
      _recreate = false;
      setState(() {
        _creating = false;
        // Önceki kod hâlâ ekrandaysa ve süresi bitmişse onu da gösterme.
        _token = null;
        _expiresAt = null;
        _error = true;
      });
    }
  }

  void _watch(String id) {
    _tokenSubs[id] = EsnafService.instance.watchToken(id).listen(
      (tk) {
        if (tk != null && tk.used) _onUsed(tk);
      },
      onError: (Object e) => debugPrint('watchToken: $e'),
    );
    while (_tokenSubs.length > 2) {
      _tokenSubs.remove(_tokenSubs.keys.first)?.cancel();
    }
  }

  void _onUsed(ShopToken tk) {
    if (_done || !mounted) return;
    for (final s in _tokenSubs.values) {
      s.cancel();
    }
    _tokenSubs.clear();
    setState(() {
      _usedToken = tk;
      _showStatic = false;
    });
    _txSub = EsnafService.instance.watchTransaction(tk.id).listen(
      (tx) {
        if (tx == null || !mounted) return;
        final first = _tx == null;
        setState(() => _tx = tx);
        if (first) {
          HapticFeedback.vibrate();
          HapticFeedback.heavyImpact();
        }
      },
      onError: (Object e) {
        debugPrint('watchTransaction: $e');
        if (mounted) setState(() => _txFailed = true);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: IconButton(
                iconSize: 30,
                color: AppColors.text,
                icon: const Icon(Icons.close_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Expanded(child: _done ? _successView() : _codeView()),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------------- kod
  Widget _codeView() {
    final user = context.watch<AppStateProvider>().currentUser;
    final s = widget.shop;
    final hasStatic = s.qrData.trim().isNotEmpty;
    final size = MediaQuery.of(context).size;
    final qrSize = (size.width * 0.74).clamp(200.0, 340.0);
    final t = context.l10n;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          ShopLogo.of(s, size: 60, circle: true),
          const SizedBox(height: 8),
          Text(t.shopsCodeGuestTitle,
              style: const TextStyle(fontSize: 15, color: AppColors.primary, fontWeight: FontWeight.w700)),
          const SizedBox(height: 4),
          Text(s.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: AppColors.text)),
          if (s.discountPercent > 0) ...[
            const SizedBox(height: 2),
            Text(t.shopsDiscountPercent(s.discountPercent),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 26, fontWeight: FontWeight.w900, color: AppColors.primary, letterSpacing: 1)),
          ],
          if (s.discountNote.isNotEmpty)
            Text(s.discountNote,
                textAlign: TextAlign.center, style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
          if (!_showStatic && _coupons.isNotEmpty) ...[
            const SizedBox(height: 10),
            _couponSelector(),
          ],
          const SizedBox(height: 14),
          if (_showStatic) _qr(s.qrData.trim(), qrSize) else _liveCode(qrSize),
          if (hasStatic)
            TextButton.icon(
              onPressed: () {
                setState(() => _showStatic = !_showStatic);
                final exp = _expiresAt;
                if (!_showStatic && !_creating && (exp == null || DateTime.now().isAfter(exp))) _createToken();
              },
              icon: Icon(_showStatic ? Icons.timer_outlined : Icons.qr_code_rounded, size: 18),
              label: Text(_showStatic ? t.cuzdanCodeShowLive : t.cuzdanCodeShowStatic),
            ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Text(user?.userName.isNotEmpty == true ? user!.userName : t.shopsGuest,
                    style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: AppColors.text)),
                if (_agencyName.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(_agencyName,
                      style: const TextStyle(fontSize: 14, color: AppColors.primary, fontWeight: FontWeight.w600)),
                ],
                const SizedBox(height: 6),
                Text(DateFormat('d MMMM y  HH:mm:ss').format(_now),
                    style: const TextStyle(
                        fontSize: 15, color: AppColors.text, fontFeatures: [FontFeature.tabularFigures()])),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Text(t.shopsCodeShowAtCheckout,
              textAlign: TextAlign.center, style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  /// "Kupon kullan" satırı: seçili kupon ya da kullanılabilir kupon sayısı.
  Widget _couponSelector() {
    final t = context.l10n;
    final c = _coupon;
    final color = c == null ? AppColors.primary : AppColors.success;
    return Material(
      color: color.withValues(alpha: 0.08),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: _pickCoupon,
        child: Container(
          padding: const EdgeInsetsDirectional.fromSTEB(14, 10, 10, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: color.withValues(alpha: 0.5), width: 1.5),
          ),
          child: Row(
            children: [
              Icon(c == null ? Icons.confirmation_number_outlined : Icons.confirmation_number_rounded, color: color),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      c == null ? t.cuzdanCouponUse : t.cuzdanCouponSelected(c.code),
                      style: TextStyle(fontWeight: FontWeight.w800, color: color, fontSize: 15),
                    ),
                    Text(
                      c == null ? t.cuzdanCouponAvailable(_coupons.length) : CouponText.value(context, c),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12.5, color: AppColors.text),
                    ),
                  ],
                ),
              ),
              if (c != null)
                IconButton(
                  tooltip: t.cuzdanCouponNone,
                  visualDensity: VisualDensity.compact,
                  onPressed: () => _setCoupon(null),
                  icon: const Icon(Icons.close_rounded, color: AppColors.textMuted),
                )
              else
                Icon(Icons.chevron_right_rounded, color: color),
            ],
          ),
        ),
      ),
    );
  }

  Widget _qr(String data, double size) => QrImageView(
        data: data,
        version: QrVersions.auto,
        size: size,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(8),
        eyeStyle: const QrEyeStyle(eyeShape: QrEyeShape.square, color: AppColors.emerald900),
        dataModuleStyle: const QrDataModuleStyle(dataModuleShape: QrDataModuleShape.square, color: AppColors.emerald900),
      );

  Widget _liveCode(double qrSize) {
    final t = context.l10n;
    if (_error) {
      return Container(
        width: qrSize,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.divider),
        ),
        child: Column(
          children: [
            const Icon(Icons.wifi_off_rounded, size: 48, color: AppColors.error),
            const SizedBox(height: 10),
            Text(t.cuzdanCodeError,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14.5, color: AppColors.text, height: 1.35)),
            const SizedBox(height: 14),
            FilledButton.icon(
              style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
              onPressed: _createToken,
              icon: const Icon(Icons.refresh_rounded),
              label: Text(t.cuzdanRetry),
            ),
          ],
        ),
      );
    }
    final token = _token;
    if (token == null) {
      return SizedBox(
        width: qrSize,
        height: qrSize,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(color: AppColors.primary),
            const SizedBox(height: 14),
            Text(t.cuzdanCodeCreating, style: const TextStyle(fontSize: 14, color: AppColors.textMuted)),
          ],
        ),
      );
    }

    final total = EsnafConfig.tokenTtl.inSeconds;
    final left = _expiresAt == null ? 0 : _expiresAt!.difference(_now).inSeconds.clamp(0, total);
    final mm = (left ~/ 60).toString();
    final ss = (left % 60).toString().padLeft(2, '0');
    final urgent = left <= 15;

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 250),
              opacity: _creating ? 0.15 : 1,
              child: _qr(token.qrData, qrSize),
            ),
            if (_creating) const CircularProgressIndicator(color: AppColors.primary),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 58,
              height: 58,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: total == 0 ? 0 : left / total,
                    strokeWidth: 5,
                    backgroundColor: AppColors.divider,
                    color: urgent ? AppColors.warning : AppColors.primary,
                  ),
                  Center(
                    child: Text('$mm:$ss',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: urgent ? AppColors.warning : AppColors.text,
                          fontFeatures: const [FontFeature.tabularFigures()],
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(t.cuzdanCodeTimeLeft,
                      style: const TextStyle(fontSize: 12, color: AppColors.textMuted, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 2),
                  Text(t.cuzdanCodeOneTime(EsnafConfig.tokenTtl.inMinutes),
                      style: const TextStyle(fontSize: 13, color: AppColors.text, height: 1.3)),
                  if ((_points ?? 0) > 0) ...[
                    const SizedBox(height: 2),
                    Text(t.cuzdanCodeYourPoints(_points!),
                        style: const TextStyle(fontSize: 13, color: AppColors.primary, fontWeight: FontWeight.w700)),
                  ],
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // ---------------------------------------------------------------- başarı
  Widget _successView() {
    final t = context.l10n;
    final tx = _tx;
    final shopName = tx?.shopName.isNotEmpty == true
        ? tx!.shopName
        : (_usedToken?.usedByShopName?.isNotEmpty == true ? _usedToken!.usedByShopName! : widget.shop.name);
    final waiting = tx == null && !_txFailed;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
      child: Column(
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.4, end: 1),
            duration: const Duration(milliseconds: 500),
            curve: Curves.elasticOut,
            builder: (_, v, child) => Transform.scale(scale: v, child: child),
            child: Container(
              width: 124,
              height: 124,
              decoration: const BoxDecoration(color: AppColors.primaryLight, shape: BoxShape.circle),
              child: Icon(
                waiting ? Icons.hourglass_top_rounded : Icons.check_circle_rounded,
                size: 96,
                color: waiting ? AppColors.primary : AppColors.success,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(waiting ? t.cuzdanCodeWaiting : t.cuzdanSuccessTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: AppColors.text)),
          const SizedBox(height: 6),
          Text(shopName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.primary)),
          const SizedBox(height: 20),
          if (tx != null)
            TransactionBreakdown(tx: tx)
          else if (waiting)
            const Padding(
              padding: EdgeInsets.all(12),
              child: CircularProgressIndicator(color: AppColors.primary),
            ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              onPressed: () => Navigator.of(context).pushReplacementNamed('/cuzdan'),
              icon: const Icon(Icons.account_balance_wallet_rounded),
              label: Text(t.cuzdanMyPurchases, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primary,
                side: const BorderSide(color: AppColors.primary),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              onPressed: () => Navigator.pop(context),
              child: Text(t.cuzdanClose, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
  }
}
