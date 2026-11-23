import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../info_screen/widgets/info_widgets.dart';
import '../providers/personal_plan_provider.dart';

/// Ödeme sayfasına giden animasyonlu geçiş: aşağıdan kayarak ve belirerek açılır;
/// paket ikonu [Hero] ile kartın üstünden özet kartına uçar.
Route<bool> odemeRoute(OdemeArgs args) => PageRouteBuilder<bool>(
      transitionDuration: const Duration(milliseconds: 520),
      reverseTransitionDuration: const Duration(milliseconds: 380),
      pageBuilder: (_, _, _) => OdemeScreen(args: args),
      transitionsBuilder: (_, anim, _, child) {
        final curved = CurvedAnimation(parent: anim, curve: Curves.easeOutCubic, reverseCurve: Curves.easeInCubic);
        return FadeTransition(
          opacity: curved,
          child: SlideTransition(
            position: Tween(begin: const Offset(0, 0.08), end: Offset.zero).animate(curved),
            child: child,
          ),
        );
      },
    );

class OdemeArgs {
  final PaketId id;
  final IconData icon;
  final String name;
  final String price;
  final String? period;

  const OdemeArgs({required this.id, required this.icon, required this.name, required this.price, this.period});

  String get heroTag => 'paket-icon-${id.name}';
}

enum _Asama { ozet, isleniyor, basarili }

/// Ödeme sayfası. Ödeme ileride PayTR (anlaşmalı sanal POS) güvenli ödeme sayfasıyla
/// (iFrame API, WebView) alınacak; kart bilgisi uygulamada hiç toplanmaz.
/// DEMO: "Ödemeye geç" ödeme almadan işleniyor → başarılı animasyonunu gösterir, paketi
/// bu cihazda seçer ve `true` ile döner.
class OdemeScreen extends StatefulWidget {
  final OdemeArgs args;

  const OdemeScreen({super.key, required this.args});

  @override
  State<OdemeScreen> createState() => _OdemeScreenState();
}

class _OdemeScreenState extends State<OdemeScreen> {
  _Asama _asama = _Asama.ozet;

  Future<void> _ode() async {
    setState(() => _asama = _Asama.isleniyor);
    // TODO(PayTR): sunucudan iFrame token al → WebView'de PayTR ödeme sayfası →
    // bildirim (callback) sunucuda doğrulanınca paket sunucuda tanımlanır.
    await Future<void>.delayed(const Duration(milliseconds: 1800));
    if (!mounted) return;
    try {
      await personalPlan.selectPaket(widget.args.id);
    } catch (e) {
      debugPrint('Paket etkinleştirilemedi: $e');
      if (!mounted) return;
      setState(() => _asama = _Asama.ozet);
      GlobalSnackbar.showError(context.l10n.odemeFailed);
      return;
    }
    if (!mounted) return;
    setState(() => _asama = _Asama.basarili);
    await Future<void>.delayed(const Duration(milliseconds: 1600));
    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final a = widget.args;
    final full = a.id == PaketId.full;
    return PopScope(
      canPop: _asama == _Asama.ozet,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l.odemeTitle),
          automaticallyImplyLeading: _asama == _Asama.ozet,
        ),
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 420),
          switchInCurve: Curves.easeOutBack,
          transitionBuilder: (child, anim) => FadeTransition(
            opacity: anim,
            child: ScaleTransition(scale: Tween(begin: 0.92, end: 1.0).animate(anim), child: child),
          ),
          child: switch (_asama) {
            _Asama.ozet => _ozet(context, a, full),
            _Asama.isleniyor => _Durum(
                key: const ValueKey('isleniyor'),
                icon: null,
                title: l.odemeProcessing,
                body: l.odemeProcessingBody,
              ),
            _Asama.basarili => _Durum(
                key: const ValueKey('basarili'),
                icon: Icons.check_rounded,
                title: l.odemeSuccess,
                body: full ? l.odemeSuccessFull : l.odemeSuccessBody,
              ),
          },
        ),
      ),
    );
  }

  Widget _ozet(BuildContext context, OdemeArgs a, bool full) {
    final l = context.l10n;
    return ListView(
      key: const ValueKey('ozet'),
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
      children: [
        // Özet kartı: profil başlığının yeşil degradesi.
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [AppColors.primary, AppColors.primaryDark],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(color: AppColors.primary.withValues(alpha: 0.3), blurRadius: 14, offset: const Offset(0, 6)),
            ],
          ),
          child: Row(
            children: [
              Hero(
                tag: a.heroTag,
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Icon(a.icon, color: Colors.white, size: 30),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(a.name, style: const TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold)),
                    if (a.period != null) ...[
                      const SizedBox(height: 4),
                      Text(a.period!, style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 13)),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
        InfoSectionLabel(l.odemeSummary, icon: Icons.receipt_long_rounded),
        InfoCardBox(
          child: Column(
            children: [
              _satir(l.odemeRowPackage, a.name),
              if (a.period != null) _satir(l.odemeRowPeriod, a.period!),
              const Divider(height: 22, color: AppColors.divider),
              _satir(l.odemeRowTotal, a.price, strong: true),
            ],
          ),
        ),
        if (full) InfoNote(l.odemeFullNote, icon: Icons.support_agent_rounded),
        InfoNote(l.odemeSecureNote, icon: Icons.lock_rounded),
        InfoNote(l.odemeDemoNote, warning: true),
        const SizedBox(height: 8),
        ElevatedButton.icon(
          onPressed: _ode,
          icon: const Icon(Icons.credit_card_rounded),
          label: Text(l.odemePay(a.price)),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.verified_user_rounded, size: 16, color: AppColors.textMuted),
            const SizedBox(width: 6),
            Text(l.odemePoweredBy, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ],
        ),
      ],
    );
  }

  Widget _satir(String k, String v, {bool strong = false}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Expanded(child: Text(k, style: const TextStyle(fontSize: 14, color: AppColors.textMuted))),
            Text(
              v,
              style: TextStyle(
                fontSize: strong ? 20 : 14.5,
                fontWeight: strong ? FontWeight.w800 : FontWeight.w600,
                color: strong ? AppColors.primary : AppColors.text,
              ),
            ),
          ],
        ),
      );
}

/// İşleniyor / başarılı görünümü: ortada büyüyerek gelen yuvarlak.
class _Durum extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String body;

  const _Durum({super.key, required this.icon, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 1),
              duration: const Duration(milliseconds: 650),
              curve: Curves.elasticOut,
              builder: (_, v, child) => Transform.scale(scale: v, child: child),
              child: Container(
                width: 104,
                height: 104,
                decoration: BoxDecoration(
                  color: icon == null ? AppColors.primaryLight : AppColors.primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: AppColors.primary.withValues(alpha: 0.25), blurRadius: 18, offset: const Offset(0, 6)),
                  ],
                ),
                child: icon == null
                    ? const Padding(
                        padding: EdgeInsets.all(30),
                        child: CircularProgressIndicator(strokeWidth: 4, color: AppColors.primary),
                      )
                    : Icon(icon, color: Colors.white, size: 60),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.text),
            ),
            const SizedBox(height: 8),
            Text(
              body,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, height: 1.45, color: AppColors.textMuted),
            ),
          ],
        ),
      ),
    );
  }
}
