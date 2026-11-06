import 'package:flutter/material.dart';

import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../../dualar/data/dua_models.dart';

/// Beyaz, yuvarlak köşeli, hafif gölgeli kart.
class SimKart extends StatelessWidget {
  const SimKart({super.key, required this.child, this.padding = const EdgeInsets.all(16), this.margin});

  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: AppColors.emerald900.withValues(alpha: 0.08), blurRadius: 12, offset: const Offset(0, 3)),
        ],
      ),
      child: child,
    );
  }
}

/// Arapça (Amiri), okunuş ve anlamıyla tek dua.
class DuaMetniGorunumu extends StatelessWidget {
  const DuaMetniGorunumu({super.key, required this.dua, this.arapcaBoyut = 22, this.kompakt = false});

  final DuaMetni dua;
  final double arapcaBoyut;

  /// true ise anlam gizlenmez ama kaynak yazılmaz.
  final bool kompakt;

  @override
  Widget build(BuildContext context) {
    // Okunuş ve anlam dile göre: ar'de gösterilmez (Arapça asıl zaten var).
    final dil = Localizations.localeOf(context).languageCode;
    final baslik = dua.baslikFor(dil);
    final okunus = dua.okunusFor(dil);
    final anlam = dua.anlamFor(dil);
    final kaynak = dua.kaynakFor(dil);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (baslik != null) ...[
          Text(baslik, style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.w700, fontSize: 13)),
          const SizedBox(height: 6),
        ],
        if (dua.arapca != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(color: AppColors.background, borderRadius: BorderRadius.circular(14)),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                dua.arapca!,
                textAlign: TextAlign.center,
                style: AppTextStyles.arabic.copyWith(fontSize: arapcaBoyut),
              ),
            ),
          ),
        if (okunus != null) ...[
          const SizedBox(height: 8),
          Text(okunus, style: const TextStyle(color: AppColors.text, fontSize: 14, fontStyle: FontStyle.italic, height: 1.4)),
        ],
        if (anlam != null) ...[
          const SizedBox(height: 4),
          Text(anlam, style: const TextStyle(color: AppColors.textMuted, fontSize: 13, height: 1.4)),
        ],
        if (!kompakt && kaynak != null) ...[
          const SizedBox(height: 4),
          Text(kaynak, style: const TextStyle(color: AppColors.textMuted, fontSize: 11)),
        ],
      ],
    );
  }
}

/// Simge + başlık + kısa metin içeren küçük bilgi kutucuğu.
class BilgiKutucugu extends StatelessWidget {
  const BilgiKutucugu({super.key, required this.ikon, required this.baslik, required this.metin});

  final IconData ikon;
  final String baslik;
  final String metin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(color: AppColors.mint, shape: BoxShape.circle),
                child: Icon(ikon, size: 16, color: AppColors.primary),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(baslik, style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.text, fontSize: 13)),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(metin, style: const TextStyle(color: AppColors.textMuted, fontSize: 12, height: 1.35)),
        ],
      ),
    );
  }
}

/// Madde işaretli liste.
class MaddeListesi extends StatelessWidget {
  const MaddeListesi({super.key, required this.maddeler, this.ikon = Icons.check_circle_outline, this.renk = AppColors.primary});

  final List<String> maddeler;
  final IconData ikon;
  final Color renk;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final m in maddeler)
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: const EdgeInsets.only(top: 1), child: Icon(ikon, size: 16, color: renk)),
                const SizedBox(width: 8),
                Expanded(child: Text(m, style: const TextStyle(color: AppColors.text, fontSize: 14, height: 1.4))),
              ],
            ),
          ),
      ],
    );
  }
}

/// Kart içindeki küçük bölüm başlığı.
class BolumBasligi extends StatelessWidget {
  const BolumBasligi(this.metin, {super.key, this.ikon, this.renk = AppColors.primary});

  final String metin;
  final IconData? ikon;
  final Color renk;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 8),
      child: Row(
        children: [
          if (ikon != null) ...[Icon(ikon, size: 18, color: renk), const SizedBox(width: 6)],
          Text(metin, style: TextStyle(color: renk, fontWeight: FontWeight.w700, fontSize: 14)),
        ],
      ),
    );
  }
}
