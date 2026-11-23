import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../info_screen/widgets/info_widgets.dart';

/// Bireysel kullanıcı paketleri (docs/plan/BIREYSEL_PLAN.md): Ücretsiz, Umre Paketi
/// (30 gün, 349,99 TL / 9,99 €), Aile/Arkadaş Paketi (6 kişi, 30 gün, 799,99 TL / 19,99 €).
/// Ödeme (Google Play / App Store) henüz bağlı değil: "Satın al" bilgi mesajı gösterir.
/// Görünüm yeni değil: bilgi ekranlarının [InfoCardBox], [InfoIconBadge], [InfoChip],
/// [InfoNote] bileşenleri ve profil başlığının yeşil degradesi.
class PaketlerScreen extends StatelessWidget {
  const PaketlerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l.paketlerTitle)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
        children: [
          Text(
            l.paketlerIntro,
            style: const TextStyle(fontSize: 14, height: 1.45, color: AppColors.textMuted),
          ),
          const SizedBox(height: 14),
          _PaketKart(
            icon: FlutterIslamicIcons.solidKaaba,
            name: l.paketlerUmreName,
            price: l.paketlerUmrePrice,
            period: l.paketlerUmrePeriod,
            badge: l.paketlerRecommended,
            highlighted: true,
            features: [
              l.paketlerUmreF1,
              l.paketlerUmreF2,
              l.paketlerUmreF3,
              l.paketlerUmreF4,
              l.paketlerUmreF5,
            ],
          ),
          _PaketKart(
            icon: Icons.groups_rounded,
            name: l.paketlerAileName,
            price: l.paketlerAilePrice,
            period: l.paketlerAilePeriod,
            badge: l.paketlerBestValue,
            features: [l.paketlerAileF1, l.paketlerAileF2, l.paketlerAileF3],
          ),
          _PaketKart(
            icon: Icons.favorite_rounded,
            name: l.paketlerFreeName,
            price: l.paketlerFreePrice,
            badge: l.paketlerCurrent,
            current: true,
            features: [l.paketlerFreeF1, l.paketlerFreeF2, l.paketlerFreeF3, l.paketlerFreeF4],
          ),
          InfoNote(l.paketlerAgencyNote, icon: FlutterIslamicIcons.solidHadji),
          const SizedBox(height: 4),
          Text(
            l.paketlerFootnote,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
          ),
        ],
      ),
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

  /// Önerilen paket: üst kısım profil başlığındaki yeşil degradeyle.
  final bool highlighted;

  /// Kullanıcının mevcut planı: satın alma düğmesi yok.
  final bool current;

  const _PaketKart({
    required this.icon,
    required this.name,
    required this.price,
    this.period,
    required this.badge,
    required this.features,
    this.highlighted = false,
    this.current = false,
  });

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final header = Row(
      children: [
        if (highlighted)
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.18),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: Colors.white, size: 24),
          )
        else
          InfoIconBadge(icon),
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
        if (!current) ...[
          const SizedBox(height: 6),
          highlighted
              ? ElevatedButton(
                  onPressed: () => GlobalSnackbar.showInfo(l.paketlerBuySoon),
                  child: Text(l.paketlerBuy),
                )
              : OutlinedButton(
                  onPressed: () => GlobalSnackbar.showInfo(l.paketlerBuySoon),
                  style: OutlinedButton.styleFrom(minimumSize: const Size(64, 48)),
                  child: Text(l.paketlerBuy),
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
