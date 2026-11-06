import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/services/quran_audio_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/quran_provider.dart';
import 'quran_common.dart';

/// Ayarlar: Arapça yazı boyutu ve imam seçimi (her imam için "dinle" önizlemesi).
class QuranSettingsSheet extends StatelessWidget {
  const QuranSettingsSheet({super.key});

  static Future<void> show(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      backgroundColor: AppColors.background,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      builder: (_) => const QuranSettingsSheet(),
    );
    await QuranAudioService.instance.stopPreview();
  }

  @override
  Widget build(BuildContext context) {
    final audio = QuranAudioService.instance;
    final l = context.l10n;
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.8,
      minChildSize: 0.4,
      maxChildSize: 0.95,
      builder: (context, scroll) => ListenableBuilder(
        listenable: audio,
        builder: (context, _) => ListView(
          controller: scroll,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
          children: [
            Text(l.quranSettings, style: AppTextStyles.sectionTitle),
            const SizedBox(height: 16),
            _SectionLabel(icon: Icons.text_fields_rounded, text: l.quranArabicFontSize),
            const SizedBox(height: 8),
            const _FontSizeCard(),
            const SizedBox(height: 22),
            _SectionLabel(icon: Icons.record_voice_over_rounded, text: l.quranReciterSelection),
            const SizedBox(height: 4),
            Text(
              l.quranStreamingNote,
              style: const TextStyle(color: AppColors.textMuted, fontSize: 12.5),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(18),
                boxShadow: quranCardShadow(),
              ),
              child: Column(
                children: [
                  for (var i = 0; i < quranReciters.length; i++) ...[
                    if (i > 0) const Divider(height: 1, indent: 72, endIndent: 16),
                    _ReciterTile(reciter: quranReciters[i], audio: audio),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.text, fontSize: 14.5),
        ),
      ],
    );
  }
}

class _FontSizeCard extends StatelessWidget {
  const _FontSizeCard();

  @override
  Widget build(BuildContext context) {
    final quran = context.watch<QuranProvider>();
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 6),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
        boxShadow: quranCardShadow(),
      ),
      child: Column(
        children: [
          Text(
            'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: AppTextStyles.arabic.copyWith(fontSize: 22 * quran.arabicScale, color: AppColors.primaryDark),
          ),
          Row(
            children: [
              const Text('A', style: TextStyle(fontSize: 13, color: AppColors.textMuted)),
              Expanded(
                child: Slider(
                  value: quran.arabicScale,
                  min: 0.8,
                  max: 1.6,
                  divisions: 8,
                  activeColor: AppColors.primary,
                  inactiveColor: AppColors.primaryLight,
                  label: context.l10n.quranPercent((quran.arabicScale * 100).round()),
                  onChanged: quran.setArabicScale,
                ),
              ),
              const Text('A', style: TextStyle(fontSize: 20, color: AppColors.textMuted)),
            ],
          ),
        ],
      ),
    );
  }
}

class _ReciterTile extends StatelessWidget {
  const _ReciterTile({required this.reciter, required this.audio});

  final QuranReciter reciter;
  final QuranAudioService audio;

  @override
  Widget build(BuildContext context) {
    final selected = audio.reciter.id == reciter.id;
    final previewing = audio.previewingId == reciter.id;
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () => audio.setReciter(reciter),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(14, 10, 8, 10),
        child: Row(
          children: [
            ReciterAvatar(reciter: reciter, size: 42),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reciter.displayName,
                    style: TextStyle(
                      fontWeight: selected ? FontWeight.w700 : FontWeight.w600,
                      color: selected ? AppColors.primaryDark : AppColors.text,
                      fontSize: 14.5,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(reciter.style, style: const TextStyle(color: AppColors.textMuted, fontSize: 12)),
                ],
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.primary,
                backgroundColor: previewing ? AppColors.primaryLight : null,
                minimumSize: const Size(0, 34),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () => runQuranPlay(context, audio.preview(reciter)),
              icon: Icon(previewing ? Icons.stop_rounded : Icons.headphones_rounded, size: 18),
              label: Text(
                previewing ? context.l10n.quranStop : context.l10n.quranListen,
                style: const TextStyle(fontSize: 12.5),
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              selected ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
              color: selected ? AppColors.primary : AppColors.divider,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
