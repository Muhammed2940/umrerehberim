import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../shops/models/shop_model.dart';
import '../data/esnaf_service.dart';
import '../esnaf_config.dart';
import '../models/coupon.dart';
import '../models/shop_token.dart';
import '../models/shop_transaction.dart';
import '../widgets/esnaf_widgets.dart';

/// QR okutulduktan sonra açılır: misafir kartı, tutar + ödeme türü, canlı hesap, kaydet.
///
/// Dönüş: `true` → "Yeni işlem" (ana ekran tarayıcıyı yeniden açar), aksi halde ana sayfa.
class MerchantTransactionScreen extends StatefulWidget {
  final String raw;
  final ShopModel shop;

  const MerchantTransactionScreen({super.key, required this.raw, required this.shop});

  @override
  State<MerchantTransactionScreen> createState() => _MerchantTransactionScreenState();
}

enum _Problem { notOurs, notFound, used, expired, otherAgency, loadFailed }

class _MerchantTransactionScreenState extends State<MerchantTransactionScreen> {
  final _amountCtrl = TextEditingController();
  final _noteCtrl = TextEditingController();

  bool _loading = true;
  _Problem? _problem;
  ShopToken? _token;
  String _method = PaymentMethod.cash;
  bool _saving = false;
  ShopTransaction? _saved;
  Timer? _ticker;

  /// Misafirin QR'da seçtiği kupon (token.couponId doluysa okunur).
  Coupon? _coupon;
  bool _couponLoading = false;
  bool _couponMissing = false;

  /// Kuponun bu alışverişteki durumu (tutar girildiyse alt limit dahil).
  CouponProblem? get _couponState {
    final token = _token;
    if (token == null || !token.hasCoupon || _couponLoading) return null;
    final c = _coupon;
    if (c == null || _couponMissing) return CouponProblem.notFound;
    final gross = _amountValid ? _amount! : null;
    final afterShop = gross == null ? null : gross - gross * widget.shop.discountPercent / 100;
    return c.check(
      now: DateTime.now(),
      shopId: widget.shop.id,
      guestAgencyId: token.agencyId,
      gross: gross,
      afterShopDiscount: afterShop,
    );
  }

  /// Kupon hesapta kullanılabilir mi (yalnız durum "ok" iken).
  Coupon? get _appliedCoupon => _couponState == CouponProblem.ok ? _coupon : null;

  Future<void> _loadCoupon(String code) async {
    setState(() => _couponLoading = true);
    try {
      final c = await EsnafService.instance.fetchCoupon(code).timeout(const Duration(seconds: 15));
      if (!mounted) return;
      setState(() {
        _coupon = c;
        _couponMissing = c == null;
        _couponLoading = false;
      });
    } catch (e) {
      debugPrint('Kupon okunamadı: $e');
      if (!mounted) return;
      setState(() {
        _couponMissing = true;
        _couponLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _ticker?.cancel();
    _amountCtrl.dispose();
    _noteCtrl.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    final id = EsnafConfig.parseQr(widget.raw);
    if (id == null) {
      setState(() {
        _loading = false;
        _problem = _Problem.notOurs;
      });
      return;
    }
    try {
      final t = await EsnafService.instance.fetchToken(id).timeout(const Duration(seconds: 15));
      if (!mounted) return;
      _Problem? p;
      if (t == null) {
        p = _Problem.notFound;
      } else if (t.used) {
        p = _Problem.used;
      } else if (t.isExpired) {
        p = _Problem.expired;
      } else if (!widget.shop.isForAllAgencies && widget.shop.agencyId != t.agencyId) {
        p = _Problem.otherAgency;
      }
      setState(() {
        _loading = false;
        _token = t;
        _problem = p;
        // Kupon okunana kadar "bulunamadı" görünmesin.
        _couponLoading = p == null && t != null && t.hasCoupon;
      });
      if (p == null && t != null && t.hasCoupon) _loadCoupon(t.couponId);
      if (p == null) {
        _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
          if (!mounted || _saved != null) return;
          setState(() {});
        });
      }
    } on FirebaseException catch (e) {
      debugPrint('Kod okunamadı: ${e.code} ${e.message}');
      if (!mounted) return;
      setState(() {
        _loading = false;
        _problem = e.code == 'permission-denied' ? _Problem.notFound : _Problem.loadFailed;
      });
    } catch (e) {
      debugPrint('Kod okunamadı: $e');
      if (!mounted) return;
      setState(() {
        _loading = false;
        _problem = _Problem.loadFailed;
      });
    }
  }

  /// Kodun kalan süresi; sunucu zamanı yoksa null.
  Duration? get _remaining {
    final c = _token?.createdAt;
    if (c == null) return null;
    final r = EsnafConfig.tokenTtl - DateTime.now().difference(c);
    return r.isNegative ? Duration.zero : r;
  }

  bool get _expiredNow => _remaining == Duration.zero;

  double? get _amount => EsnafFmt.parseAmount(_amountCtrl.text);

  bool get _amountValid {
    final a = _amount;
    return a != null && a > 0 && a <= EsnafConfig.maxAmountSar;
  }

  ({double discount, double couponDiscount, double payable, int pointsSpent, int pointsEarned}) _calc(
          String method) =>
      EsnafService.calculate(
        gross: _amountValid ? _amount! : 0,
        discountPercent: widget.shop.discountPercent,
        method: method,
        pointsAvailable: _token?.pointsAvailable ?? 0,
        coupon: _appliedCoupon,
      );

  /// Kuponlu kodda kupon geçerli olmadan kayıt yapılamaz (kurallar işlemdeki
  /// coupon_id'nin QR'dakiyle aynı olmasını ister).
  bool get _couponBlocks {
    final token = _token;
    if (token == null || !token.hasCoupon) return false;
    if (_couponLoading) return true;
    return _couponState != CouponProblem.ok;
  }

  /// Puanla ödeme mümkün mü? (Tutar girilmeden önce: bakiye > 0 olmalı.)
  bool get _pointsEnough {
    final avail = _token?.pointsAvailable ?? 0;
    if (avail <= 0) return false;
    if (!_amountValid) return true;
    return _calc(PaymentMethod.points).pointsSpent <= avail;
  }

  bool get _canSave =>
      !_saving &&
      _token != null &&
      _amountValid &&
      !_expiredNow &&
      !_couponBlocks &&
      (_method != PaymentMethod.points || _pointsEnough);

  Future<void> _save() async {
    if (!_canSave) return;
    FocusScope.of(context).unfocus();
    final token = _token!;
    final shop = widget.shop;
    final r = _calc(_method);
    final tx = ShopTransaction(
      id: token.id,
      shopId: shop.id,
      shopName: shop.name,
      shopAgencyId: shop.agencyId,
      guestUid: token.guestUid,
      guestName: token.guestName,
      guestAgencyId: token.agencyId,
      amountGross: _amount!,
      discountPercent: shop.discountPercent,
      discountAmount: r.discount,
      amountNet: r.payable,
      paymentMethod: _method,
      pointsEarned: r.pointsEarned,
      pointsSpent: r.pointsSpent,
      commissionPercent: shop.commissionPercent,
      cashierUid: FirebaseAuth.instance.currentUser?.uid ?? '',
      note: _noteCtrl.text.trim(),
      createdAt: DateTime.now(),
      couponId: token.couponId,
      couponDiscount: token.hasCoupon ? r.couponDiscount : 0,
    );
    setState(() => _saving = true);
    try {
      await EsnafService.instance
          .recordTransaction(token: token, tx: tx, coupon: token.hasCoupon ? _coupon : null)
          .timeout(const Duration(seconds: 20));
      _ticker?.cancel();
      if (!mounted) return;
      setState(() {
        _saving = false;
        _saved = tx;
      });
    } on FirebaseException catch (e) {
      debugPrint('İşlem kaydedilemedi: ${e.code} ${e.message}');
      if (!mounted) return;
      setState(() => _saving = false);
      final msg = switch (e.code) {
        // Kuponlu kodda en olası neden: kupon bu misafirce zaten kullanılmış / az önce tükenmiş.
        'permission-denied' || 'already-exists' when token.hasCoupon => context.l10n.esnafCouponErrSave,
        'permission-denied' || 'already-exists' || 'not-found' => context.l10n.esnafErrInvalidCode,
        'unavailable' => context.l10n.esnafErrNetwork,
        _ => context.l10n.esnafErrSave,
      };
      _showError(msg);
    } on TimeoutException {
      if (!mounted) return;
      setState(() => _saving = false);
      _showError(context.l10n.esnafErrNetwork);
    } catch (e) {
      debugPrint('İşlem kaydedilemedi: $e');
      if (!mounted) return;
      setState(() => _saving = false);
      _showError(context.l10n.esnafErrSave);
    }
  }

  void _showError(String msg) {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: const Icon(Icons.error_outline_rounded, color: AppColors.error, size: 40),
        title: Text(ctx.l10n.esnafErrTitle),
        content: Text(msg),
        actions: [FilledButton(onPressed: () => Navigator.pop(ctx), child: Text(ctx.l10n.commonOk))],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !_saving,
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text(_saved != null ? context.l10n.esnafSuccessTitle : context.l10n.esnafTxTitle),
          automaticallyImplyLeading: _saved == null,
        ),
        body: SafeArea(child: _content()),
      ),
    );
  }

  Widget _content() {
    if (_loading) return const Center(child: CircularProgressIndicator());
    if (_saved != null) return _SuccessView(tx: _saved!, onNew: () => Navigator.pop(context, true));
    final p = _problem;
    if (p != null) return _problemView(p);
    return _form();
  }

  Widget _problemView(_Problem p) {
    final l = context.l10n;
    final (IconData icon, String title, String body) = switch (p) {
      _Problem.notOurs => (Icons.qr_code_2_rounded, l.esnafErrNotOurs, l.esnafErrNotOursBody),
      _Problem.notFound => (Icons.search_off_rounded, l.esnafErrNotFound, l.esnafErrInvalidCode),
      _Problem.used => (
          Icons.block_rounded,
          l.esnafErrUsed,
          (_token?.usedByShopName ?? '').isEmpty ? l.esnafErrUsedBody : l.esnafErrUsedAt(_token!.usedByShopName!)
        ),
      _Problem.expired => (Icons.timer_off_rounded, l.esnafErrExpired, l.esnafErrExpiredBody),
      _Problem.otherAgency => (Icons.groups_2_outlined, l.esnafErrOtherAgency, l.esnafErrOtherAgencyBody),
      _Problem.loadFailed => (Icons.cloud_off_rounded, l.esnafLoadFailed, l.esnafLoadFailedBody),
    };
    return EsnafMessage(
      icon: icon,
      title: title,
      message: body,
      color: p == _Problem.loadFailed ? AppColors.error : AppColors.warning,
      action: Column(
        children: [
          FilledButton.icon(
            onPressed: () => Navigator.pop(context, true),
            icon: const Icon(Icons.qr_code_scanner_rounded),
            label: Text(l.esnafScanAgain),
            style: FilledButton.styleFrom(minimumSize: const Size(220, 50)),
          ),
          const SizedBox(height: 8),
          TextButton(onPressed: () => Navigator.pop(context, false), child: Text(l.esnafBackHome)),
        ],
      ),
    );
  }

  Widget _form() {
    final l = context.l10n;
    final token = _token!;
    final shop = widget.shop;
    final r = _calc(_method);
    final pointsEnough = _pointsEnough;
    final amountText = _amountCtrl.text.trim();
    final amount = _amount;
    String? amountError;
    if (amountText.isNotEmpty) {
      if (amount == null || amount <= 0) {
        amountError = l.esnafAmountInvalid;
      } else if (amount > EsnafConfig.maxAmountSar) {
        amountError = l.esnafAmountTooHigh(EsnafFmt.sar(context, EsnafConfig.maxAmountSar));
      }
    }

    return ListView(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 32),
      children: [
        _GuestCard(token: token, remaining: _remaining),
        if (token.hasCoupon) ...[
          const SizedBox(height: 10),
          _CouponCard(
            code: token.couponId,
            coupon: _coupon,
            loading: _couponLoading,
            state: _couponState,
            discount: r.couponDiscount,
          ),
        ],
        if (_expiredNow) ...[
          const SizedBox(height: 10),
          _Banner(icon: Icons.timer_off_rounded, color: AppColors.error, text: l.esnafErrExpiredBody),
        ],
        const SizedBox(height: 18),
        Text(l.esnafAmountLabel, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.text)),
        const SizedBox(height: 8),
        TextField(
          controller: _amountCtrl,
          autofocus: true,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [AmountInputFormatter()],
          onChanged: (_) => setState(() {}),
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.text),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: '0.00',
            suffixText: 'SAR',
            suffixStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.textMuted),
            errorText: amountError,
            filled: true,
            fillColor: AppColors.surface,
            contentPadding: const EdgeInsetsDirectional.symmetric(vertical: 18, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.divider),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.divider),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.primary, width: 2),
            ),
          ),
        ),
        const SizedBox(height: 18),
        Text(l.esnafMethodLabel, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.text)),
        const SizedBox(height: 8),
        Row(
          children: [
            for (final m in PaymentMethod.all) ...[
              if (m != PaymentMethod.all.first) const SizedBox(width: 8),
              Expanded(
                child: _MethodCard(
                  method: m,
                  selected: _method == m,
                  enabled: m != PaymentMethod.points || pointsEnough,
                  onTap: () => setState(() => _method = m),
                ),
              ),
            ],
          ],
        ),
        if (!pointsEnough) ...[
          const SizedBox(height: 8),
          _Banner(
            icon: Icons.info_outline_rounded,
            color: _method == PaymentMethod.points ? AppColors.error : AppColors.textMuted,
            text: token.pointsAvailable <= 0
                ? l.esnafPointsNone
                : l.esnafPointsInsufficient(
                    EsnafFmt.integer(context, _calc(PaymentMethod.points).pointsSpent),
                    EsnafFmt.integer(context, token.pointsAvailable),
                  ),
          ),
        ],
        const SizedBox(height: 18),
        _CalcCard(
          gross: _amountValid ? amount! : 0,
          discountPercent: shop.discountPercent,
          discount: r.discount,
          couponCode: token.couponId,
          couponDiscount: r.couponDiscount,
          payable: r.payable,
          method: _method,
          pointsSpent: r.pointsSpent,
          pointsEarned: r.pointsEarned,
          pointsAvailable: token.pointsAvailable,
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _noteCtrl,
          maxLength: 120,
          decoration: InputDecoration(
            labelText: l.esnafNoteLabel,
            prefixIcon: const Icon(Icons.edit_note_rounded, color: AppColors.primary),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 56,
          child: FilledButton.icon(
            onPressed: _canSave ? _save : null,
            icon: _saving
                ? const SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(strokeWidth: 2.5, color: AppColors.surface),
                  )
                : const Icon(Icons.check_circle_outline_rounded),
            label: Text(l.esnafSaveTx, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          l.esnafNoCollectNote,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
        ),
      ],
    );
  }
}

class _GuestCard extends StatelessWidget {
  final ShopToken token;
  final Duration? remaining;
  const _GuestCard({required this.token, required this.remaining});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final r = remaining;
    final low = r != null && r.inSeconds <= 30;
    String fmt(Duration d) =>
        '${d.inMinutes.toString().padLeft(2, '0')}:${(d.inSeconds % 60).toString().padLeft(2, '0')}';
    return Container(
      padding: const EdgeInsetsDirectional.all(16),
      decoration: BoxDecoration(gradient: AppColors.primaryGradient, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: AppColors.sage,
                child: Icon(Icons.person_rounded, color: AppColors.onAccent, size: 28),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      token.guestName.isEmpty ? '—' : token.guestName,
                      style: const TextStyle(color: AppColors.surface, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    if (token.agencyName.isNotEmpty)
                      Text(token.agencyName, style: const TextStyle(color: AppColors.mint, fontSize: 14)),
                  ],
                ),
              ),
              if (r != null)
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 6),
                  decoration: BoxDecoration(
                    color: low ? AppColors.error : AppColors.emerald900.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.timer_outlined, color: AppColors.surface, size: 18),
                      Text(
                        fmt(r),
                        textDirection: TextDirection.ltr,
                        style: const TextStyle(
                          color: AppColors.surface,
                          fontWeight: FontWeight.bold,
                          fontFeatures: [FontFeature.tabularFigures()],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(color: AppColors.emerald600, height: 1),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: _kv(l.esnafGuestTrip, token.tripName.isEmpty ? '—' : token.tripName),
              ),
              Expanded(
                child: _kv(l.esnafGuestPoints, EsnafFmt.integer(context, token.pointsAvailable)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _kv(String k, String v) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(k, style: const TextStyle(color: AppColors.sage, fontSize: 12)),
          const SizedBox(height: 2),
          Text(
            v,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: AppColors.surface, fontWeight: FontWeight.w600),
          ),
        ],
      );
}

class _MethodCard extends StatelessWidget {
  final String method;
  final bool selected;
  final bool enabled;
  final VoidCallback onTap;

  const _MethodCard({required this.method, required this.selected, required this.enabled, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final active = selected && enabled;
    final fg = active ? AppColors.surface : (enabled ? AppColors.primary : AppColors.textMuted);
    return Opacity(
      opacity: enabled ? 1 : 0.5,
      child: Material(
        color: active ? AppColors.primary : AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: enabled ? onTap : null,
          child: Container(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 18, horizontal: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: active ? AppColors.primary : AppColors.divider, width: 1.5),
            ),
            child: Column(
              children: [
                Icon(EsnafFmt.methodIcon(method), color: fg, size: 32),
                const SizedBox(height: 6),
                Text(
                  EsnafFmt.methodLabel(context, method),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: fg, fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CalcCard extends StatelessWidget {
  final double gross;
  final int discountPercent;
  final double discount;
  final String couponCode;
  final double couponDiscount;
  final double payable;
  final String method;
  final int pointsSpent;
  final int pointsEarned;
  final int pointsAvailable;

  const _CalcCard({
    required this.gross,
    required this.discountPercent,
    required this.discount,
    this.couponCode = '',
    this.couponDiscount = 0,
    required this.payable,
    required this.method,
    required this.pointsSpent,
    required this.pointsEarned,
    required this.pointsAvailable,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final isPoints = method == PaymentMethod.points;
    return Container(
      padding: const EdgeInsetsDirectional.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        children: [
          _row(l.esnafCalcGross, EsnafFmt.sar(context, gross)),
          const SizedBox(height: 6),
          _row(l.esnafCalcDiscount(discountPercent), '- ${EsnafFmt.sar(context, discount)}', color: AppColors.success),
          if (couponCode.isNotEmpty) ...[
            const SizedBox(height: 6),
            _row(l.esnafCalcCoupon(couponCode), '- ${EsnafFmt.sar(context, couponDiscount)}', color: AppColors.success),
          ],
          const Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 10),
            child: Divider(height: 1, color: AppColors.divider),
          ),
          _row(l.esnafCalcPayable, EsnafFmt.sar(context, payable), big: true),
          if (isPoints) ...[
            const SizedBox(height: 10),
            _row(l.esnafCalcPointsNeeded, EsnafFmt.integer(context, pointsSpent),
                color: pointsSpent > pointsAvailable ? AppColors.error : AppColors.text),
            const SizedBox(height: 4),
            _row(l.esnafCalcPointsBalance, EsnafFmt.integer(context, pointsAvailable)),
          ] else if (pointsEarned > 0) ...[
            const SizedBox(height: 10),
            _row(l.esnafCalcPointsEarned, '+${EsnafFmt.integer(context, pointsEarned)}', color: AppColors.success),
          ],
        ],
      ),
    );
  }

  Widget _row(String k, String v, {bool big = false, Color? color}) => Row(
        children: [
          Expanded(
            child: Text(
              k,
              style: TextStyle(
                fontSize: big ? 17 : 15,
                fontWeight: big ? FontWeight.bold : FontWeight.normal,
                color: AppColors.text,
              ),
            ),
          ),
          Text(
            v,
            style: TextStyle(
              fontSize: big ? 22 : 15,
              fontWeight: big ? FontWeight.bold : FontWeight.w600,
              color: color ?? (big ? AppColors.primary : AppColors.text),
            ),
          ),
        ],
      );
}

/// Misafirin QR'da seçtiği kupon: kod, değer, alt limit ve geçerlilik durumu.
class _CouponCard extends StatelessWidget {
  final String code;
  final Coupon? coupon;
  final bool loading;
  final CouponProblem? state;
  final double discount;

  const _CouponCard({
    required this.code,
    required this.coupon,
    required this.loading,
    required this.state,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final c = coupon;
    final s = state;
    final bad = !loading && s != null && s != CouponProblem.ok;
    final color = bad ? AppColors.error : AppColors.success;
    final minText = c == null ? '' : CouponText.minSpend(context, c);
    return Container(
      padding: const EdgeInsetsDirectional.all(14),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.07),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.45), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(bad ? Icons.local_offer_outlined : Icons.local_offer_rounded, color: color),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  c == null || c.title.isEmpty ? l.esnafCouponTitle(code) : '${l.esnafCouponTitle(code)} — ${c.title}',
                  style: TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 15),
                ),
              ),
              if (loading) const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2)),
            ],
          ),
          if (c != null) ...[
            const SizedBox(height: 4),
            Text(
              [CouponText.value(context, c), minText].where((e) => e.isNotEmpty).join(' · '),
              style: const TextStyle(color: AppColors.text, fontWeight: FontWeight.w600),
            ),
          ],
          if (loading)
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 4),
              child: Text(l.esnafCouponLoading, style: const TextStyle(color: AppColors.textMuted, fontSize: 13)),
            )
          else if (bad) ...[
            const SizedBox(height: 6),
            Text(CouponText.problem(context, s, c),
                style: const TextStyle(color: AppColors.error, fontWeight: FontWeight.w700, fontSize: 13)),
            const SizedBox(height: 2),
            Text(l.esnafCouponInvalidHint, style: const TextStyle(color: AppColors.text, fontSize: 13)),
          ] else if (discount > 0) ...[
            const SizedBox(height: 6),
            Text(l.esnafCouponApplied(EsnafFmt.sar(context, discount)),
                style: const TextStyle(color: AppColors.success, fontWeight: FontWeight.w700, fontSize: 13)),
          ] else
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 4),
              child: Text(l.esnafCouponEnterAmount, style: const TextStyle(color: AppColors.textMuted, fontSize: 13)),
            ),
        ],
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _Banner({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withValues(alpha: 0.35)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 8),
          Expanded(child: Text(text, style: TextStyle(color: color, fontSize: 13, fontWeight: FontWeight.w600))),
        ],
      ),
    );
  }
}

class _SuccessView extends StatelessWidget {
  final ShopTransaction tx;
  final VoidCallback onNew;
  const _SuccessView({required this.tx, required this.onNew});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final isPoints = tx.paymentMethod == PaymentMethod.points;
    return ListView(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 28, 20, 32),
      children: [
        Center(
          child: Container(
            padding: const EdgeInsetsDirectional.all(20),
            decoration: BoxDecoration(color: AppColors.success.withValues(alpha: 0.12), shape: BoxShape.circle),
            child: const Icon(Icons.check_circle_rounded, color: AppColors.success, size: 96),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          l.esnafSuccessTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.text),
        ),
        const SizedBox(height: 4),
        Text(
          l.esnafSuccessBody,
          textAlign: TextAlign.center,
          style: const TextStyle(color: AppColors.textMuted),
        ),
        const SizedBox(height: 22),
        Container(
          padding: const EdgeInsetsDirectional.all(16),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.divider),
          ),
          child: Column(
            children: [
              _row(l.esnafGuest, tx.guestName),
              _row(l.esnafMethodLabel, EsnafFmt.methodLabel(context, tx.paymentMethod)),
              _row(l.esnafCalcGross, EsnafFmt.sar(context, tx.amountGross)),
              _row(l.esnafCalcDiscount(tx.discountPercent), '- ${EsnafFmt.sar(context, tx.discountAmount)}'),
              if (tx.hasCoupon)
                _row(l.esnafCalcCoupon(tx.couponId), '- ${EsnafFmt.sar(context, tx.couponDiscount)}'),
              const Divider(color: AppColors.divider),
              _row(l.esnafCalcPayable, EsnafFmt.sar(context, tx.amountNet), big: true),
              if (isPoints)
                _row(l.esnafCalcPointsSpent, EsnafFmt.integer(context, tx.pointsSpent))
              else if (tx.pointsEarned > 0)
                _row(l.esnafCalcPointsEarned, '+${EsnafFmt.integer(context, tx.pointsEarned)}'),
              _row(l.esnafTime, EsnafFmt.dateTime(context, tx.createdAt)),
            ],
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 56,
          child: FilledButton.icon(
            onPressed: onNew,
            icon: const Icon(Icons.qr_code_scanner_rounded),
            label: Text(l.esnafNewTx, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            style: FilledButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: OutlinedButton.icon(
            onPressed: () => Navigator.pop(context, false),
            icon: const Icon(Icons.home_rounded),
            label: Text(l.esnafBackHome),
            style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          ),
        ),
      ],
    );
  }

  Widget _row(String k, String v, {bool big = false}) => Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 4),
        child: Row(
          children: [
            Expanded(child: Text(k, style: const TextStyle(color: AppColors.textMuted))),
            Text(
              v,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: big ? 20 : 15,
                color: big ? AppColors.primary : AppColors.text,
              ),
            ),
          ],
        ),
      );
}
