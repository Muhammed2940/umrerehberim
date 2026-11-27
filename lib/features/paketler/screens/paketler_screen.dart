import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../info_screen/widgets/info_widgets.dart';
import '../providers/paket_fiyat_provider.dart';
import '../providers/personal_plan_provider.dart';
import 'odeme_screen.dart';

/// Bireysel kullanıcı paketleri (docs/plan/BIREYSEL_PLAN.md), fiyata göre sıralı:
/// Ücretsiz, Umre Paketi (30 gün, 349,99 TL), Aile/Arkadaş Paketi (6 kişi, 30 gün,
/// 799,99 TL), Full Umre Paketi (10 gün, 1.500 $; uçak, vize, otel, yemek,
/// ulaşım, eSIM dahil). EN/AR'da TL fiyat anlık kurla euroya çevrilir ([PaketFiyatProvider]).
/// DEMO: Ödeme henüz bağlı değil; "Satın al" animasyonlu ödeme sayfasını açar ([OdemeScreen]),
/// ödeme almadan paketi bu cihazda seçer ([PersonalPlanProvider]). Full: yönetici onayı.
/// Görünüm yeni değil: bilgi ekranlarının [InfoCardBox], [InfoIconBadge], [InfoChip],
/// [InfoNote] bileşenleri ve profil başlığının yeşil degradesi.
class PaketlerScreen extends StatefulWidget {
  const PaketlerScreen({super.key});

  @override
  State<PaketlerScreen> createState() => _PaketlerScreenState();
}

class _PaketlerScreenState extends State<PaketlerScreen> {
  @override
  void initState() {
    super.initState();
    final uid = context.read<AppStateProvider>().currentUser?.id;
    if (uid != null) personalPlan.loadFor(uid);
    paketFiyat.yukle();
  }

  /// Ücretli paket: animasyonlu ödeme sayfası; başarılıysa Umre/Aile için Yolculuk
  /// Bilgilerim açılır, Full için onay bekleniyor durumu gösterilir.
  Future<void> _buy(OdemeArgs args) async {
    final ok = await Navigator.of(context).push(odemeRoute(args));
    if (ok != true || !mounted) return;
    if (args.id != PaketId.full) Navigator.of(context).pushNamed('/yolculuk-bilgilerim');
  }

  /// Ücretsiz plana dönüş (onaylı).
  Future<void> _backToFree() async {
    final l = context.l10n;
    final ok = await showDialog<bool>(
      context: context,
      builder: (c) => AlertDialog(
        title: Text(l.paketlerBackToFreeTitle),
        content: Text(l.paketlerBackToFreeBody),
        actions: [
          TextButton(onPressed: () => Navigator.pop(c, false), child: Text(l.paketlerCancel)),
          FilledButton(onPressed: () => Navigator.pop(c, true), child: Text(l.paketlerConfirm)),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    try {
      await personalPlan.selectPaket(PaketId.ucretsiz);
      GlobalSnackbar.showInfo(l.paketlerBackToFreeDone);
    } catch (e) {
      debugPrint('Ücretsiz plana dönülemedi: $e');
      GlobalSnackbar.showError(l.odemeFailed);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final dil = Localizations.localeOf(context).languageCode;
    return ListenableBuilder(
      listenable: Listenable.merge([personalPlan, paketFiyat]),
      builder: (context, _) {
        final current = personalPlan.paket;
        // Full (onay bekleyen ya da onaylı): hak yönetici verisidir; değişiklik iletişimle.
        final locked = current == PaketId.full;
        void contact() => Navigator.of(context).pushNamed('/technical-support');
        _PaketKart kart({
          required PaketId id,
          required IconData icon,
          required String name,
          required String price,
          String? period,
          required String badge,
          required List<String> features,
          bool highlighted = false,
          String? ctaLabel,
        }) =>
            _PaketKart(
              icon: icon,
              name: name,
              price: paketFiyat.goster(id, dil, price),
              period: period,
              badge: current == id
                  ? (id == PaketId.full && personalPlan.awaitingApproval ? l.paketlerPendingBadge : l.paketlerCurrent)
                  : badge,
              features: features,
              highlighted: highlighted,
              current: current == id,
              heroTag: 'paket-icon-${id.name}',
              ctaLabel: id == PaketId.ucretsiz ? (locked ? l.paketlerContactUs : l.paketlerBackToFree) : ctaLabel,
              onCta: id == PaketId.ucretsiz
                  ? (locked ? contact : _backToFree)
                  : locked
                      ? null
                      // price: TL metni (ödeme TL çekilir); döviz karşılığını ödeme ekranı ekler.
                      : () => _buy(OdemeArgs(id: id, icon: icon, name: name, price: price, period: period)),
              editLabel: id == PaketId.full && personalPlan.hasPaidPackage && current == id ? l.paketlerContactUs : null,
              onEdit: switch (id) {
                PaketId.ucretsiz => null,
                PaketId.full when personalPlan.hasPaidPackage && current == id => () =>
                    Navigator.of(context).pushNamed('/technical-support'),
                _ => () => Navigator.of(context).pushNamed('/yolculuk-bilgilerim'),
              },
            );
        return Scaffold(
          appBar: AppBar(title: Text(l.paketlerTitle)),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
            children: [
              Text(
                l.paketlerIntro,
                style: const TextStyle(fontSize: 14, height: 1.45, color: AppColors.textMuted),
              ),
              if (locked) ...[
                const SizedBox(height: 10),
                InfoNote(l.ccPkgFullActiveNote, icon: Icons.info_outline_rounded),
              ],
              const SizedBox(height: 14),
              kart(
                id: PaketId.ucretsiz,
                icon: Icons.favorite_rounded,
                name: l.paketlerFreeName,
                price: l.paketlerFreePrice,
                badge: l.paketlerFreeBadge,
                features: [l.paketlerFreeF1, l.paketlerFreeF2, l.paketlerFreeF3, l.paketlerFreeF4],
              ),
              kart(
                id: PaketId.umre,
                icon: FlutterIslamicIcons.solidKaaba,
                name: l.paketlerUmreName,
                price: l.paketlerUmrePrice,
                period: l.paketlerUmrePeriod,
                badge: l.paketlerRecommended,
                highlighted: true,
                features: [l.paketlerUmreF1, l.paketlerUmreF2, l.paketlerUmreF3, l.paketlerUmreF4, l.paketlerUmreF5],
              ),
              kart(
                id: PaketId.aile,
                icon: Icons.groups_rounded,
                name: l.paketlerAileName,
                price: l.paketlerAilePrice,
                period: l.paketlerAilePeriod,
                badge: l.paketlerBestValue,
                features: [l.paketlerAileF1, l.paketlerAileF2, l.paketlerAileF3],
              ),
              kart(
                id: PaketId.full,
                icon: Icons.flight_takeoff_rounded,
                name: l.paketlerFullName,
                price: l.paketlerFullPrice,
                period: l.paketlerFullPeriod,
                badge: l.paketlerFullBadge,
                highlighted: true,
                ctaLabel: l.paketlerFullCta,
                features: [
                  l.paketlerFullF1,
                  l.paketlerFullF2,
                  l.paketlerFullF3,
                  l.paketlerFullF4,
                  l.paketlerFullF5,
                  l.paketlerFullF6,
                  l.paketlerFullF7,
                ],
              ),
              InfoNote(l.paketlerAgencyNote, icon: FlutterIslamicIcons.solidHadji),
              if (l.paketlerKurNot.isNotEmpty) InfoNote(l.paketlerKurNot, icon: Icons.currency_exchange_rounded),
              const SizedBox(height: 4),
              Text(
                l.paketlerFootnote,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PaketKart extends StatelessWidget {
  final IconData icon;
  final String name;
  final String price;
  final String? period;
  final String badge;
  final List<String> features;

  /// Düğme yazısı; boşsa "Satın al".
  final String? ctaLabel;

  /// Önerilen paket: üst kısım profil başlığındaki yeşil degradeyle.
  final bool highlighted;

  /// Kullanıcının mevcut planı: satın alma düğmesi yerine (varsa) düzenleme düğmesi.
  final bool current;

  final VoidCallback? onCta;

  /// Paket ikonu ödeme sayfasına [Hero] ile uçar.
  final Object heroTag;

  /// Düzenleme düğmesinin yazısı; boşsa "Tarih ve otel bilgilerimi düzenle".
  final String? editLabel;

  /// Mevcut paketse "Yolculuk bilgilerimi düzenle" (ücretsiz pakette yok).
  final VoidCallback? onEdit;

  const _PaketKart({
    required this.icon,
    required this.name,
    required this.price,
    this.period,
    required this.badge,
    required this.features,
    this.ctaLabel,
    this.highlighted = false,
    this.current = false,
    this.onCta,
    required this.heroTag,
    this.editLabel,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final header = Row(
      children: [
        Hero(
          tag: heroTag,
          child: highlighted
              ? Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(icon, color: Colors.white, size: 24),
                )
              : InfoIconBadge(icon),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: highlighted ? Colors.white : AppColors.text,
                ),
              ),
              const SizedBox(height: 4),
              if (highlighted)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.18),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    badge,
                    style: const TextStyle(fontSize: 11.5, fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                )
              else
                InfoChip(badge, strong: current),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              price,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: highlighted ? Colors.white : AppColors.primary,
              ),
            ),
            if (period != null)
              Text(
                period!,
                style: TextStyle(
                  fontSize: 11.5,
                  color: highlighted ? Colors.white.withValues(alpha: 0.85) : AppColors.textMuted,
                ),
              ),
          ],
        ),
      ],
    );

    final body = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final f in features)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.check_circle_rounded, size: 18, color: AppColors.accent),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(f, style: const TextStyle(fontSize: 14, height: 1.35, color: AppColors.text)),
                ),
              ],
            ),
          ),
        if (!current || onEdit != null) ...[
          const SizedBox(height: 6),
          if (current)
            OutlinedButton.icon(
              onPressed: onEdit,
              style: OutlinedButton.styleFrom(minimumSize: const Size(64, 48)),
              icon: const Icon(Icons.edit_calendar_rounded),
              label: Text(editLabel ?? l.paketlerEditPlan),
            )
          else if (highlighted)
            ElevatedButton(onPressed: onCta, child: Text(ctaLabel ?? l.paketlerBuy))
          else
            OutlinedButton(
              onPressed: onCta,
              style: OutlinedButton.styleFrom(minimumSize: const Size(64, 48)),
              child: Text(ctaLabel ?? l.paketlerBuy),
            ),
        ],
      ],
    );

    if (!highlighted) {
      return InfoCardBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [header, const SizedBox(height: 14), body],
        ),
      );
    }

    return InfoCardBox(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primary, AppColors.primaryDark],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
            ),
            child: header,
          ),
          Padding(padding: const EdgeInsets.fromLTRB(16, 14, 16, 16), child: body),
        ],
      ),
    );
  }
}
