import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';

import '../../../common/constant/surahs_info.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import 'quran_common.dart';

/// "Okumaya Devam Et" kartı.
class QuranContinueCard extends StatelessWidget {
  const QuranContinueCard({
    super.key,
    required this.page,
    required this.hasHistory,
    required this.playing,
    required this.loading,
    required this.onOpen,
    required this.onPlay,
  });

  final int page;
  final bool hasHistory;
  final bool playing;
  final bool loading;
  final VoidCallback onOpen;
  final VoidCallback onPlay;

  @override
  Widget build(BuildContext context) {
    final surahNo = surahIndexForPage(page) + 1;
    final progress = (page / 604).clamp(0.0, 1.0);
    final l = context.l10n;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: quranCardShadow(),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onOpen,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const _QuranEmblem(),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hasHistory ? l.quranContinueReading : l.quranStartReading,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        surahTitle(surahNo),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColors.text,
                          fontSize: 18.5,
                          fontWeight: FontWeight.w800,
                          height: 1.15,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        l.quranPageJuz(page, juzForPage(page)),
                        style: const TextStyle(color: AppColors.textMuted, fontSize: 12.5),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: LinearProgressIndicator(
                                value: progress,
                                minHeight: 5,
                                backgroundColor: AppColors.primaryLight,
                                valueColor: const AlwaysStoppedAnimation(AppColors.primary),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '$page / 604',
                            style: const TextStyle(
                              color: AppColors.textMuted,
                              fontSize: 11.5,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Material(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: onPlay,
                    child: SizedBox(
                      width: 52,
                      height: 52,
                      child: Center(
                        child: loading
                            ? const SizedBox(
                                width: 22,
                                height: 22,
                                child: CircularProgressIndicator(strokeWidth: 2.4, color: Colors.white),
                              )
                            : Icon(
                                playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Kur'an simgesi ve hilalden oluşan rozet.
class _QuranEmblem extends StatelessWidget {
  const _QuranEmblem();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 78,
      decoration: BoxDecoration(gradient: AppColors.primaryGradient, borderRadius: BorderRadius.circular(18)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          PositionedDirectional(
            top: 7,
            end: 8,
            child: Icon(
              FlutterIslamicIcons.solidCrescentMoon,
              size: 15,
              color: AppColors.accent.withValues(alpha: 0.95),
            ),
          ),
          const Icon(FlutterIslamicIcons.solidQuran, size: 40, color: Colors.white),
        ],
      ),
    );
  }
}

/// Sure listesi satırı.
class QuranSurahTile extends StatelessWidget {
  const QuranSurahTile({
    super.key,
    required this.surah,
    required this.highlighted,
    required this.playing,
    required this.bookmarked,
    required this.arabicScale,
    required this.onTap,
    required this.onBookmark,
  });

  final Map<String, dynamic> surah;
  final bool highlighted;
  final bool playing;
  final bool bookmarked;
  final double arabicScale;
  final VoidCallback onTap;
  final VoidCallback onBookmark;

  @override
  Widget build(BuildContext context) {
    final no = surah['no'] as int;
    final l = context.l10n;
    final meaning = surahMeaning(no);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Material(
        color: highlighted ? AppColors.primaryLight : AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              border: BorderDirectional(
                start: BorderSide(color: highlighted ? AppColors.primary : Colors.transparent, width: 4),
              ),
            ),
            padding: const EdgeInsetsDirectional.fromSTEB(10, 12, 4, 12),
            child: Row(
              children: [
                QuranNumberBadge(number: no, active: highlighted),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              surahTitle(no),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: highlighted ? AppColors.primaryDark : AppColors.text,
                              ),
                            ),
                          ),
                          if (playing) ...[
                            const SizedBox(width: 6),
                            const Icon(Icons.graphic_eq_rounded, size: 16, color: AppColors.primary),
                          ],
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        [
                          ?meaning,
                          l.quranAyahCount(surah['ayahCount'] as int),
                          surahPlaceLabel(surah),
                        ].join(' • '),
                        style: const TextStyle(color: AppColors.textMuted, fontSize: 12.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '${surah['arabic']}',
                  textDirection: TextDirection.rtl,
                  style: AppTextStyles.arabic.copyWith(
                    fontSize: 21 * arabicScale,
                    height: 1.3,
                    color: AppColors.primaryDark,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  tooltip: bookmarked ? l.quranRemoveBookmark : l.quranAddBookmark,
                  onPressed: onBookmark,
                  visualDensity: VisualDensity.compact,
                  icon: Icon(
                    bookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
                    color: bookmarked ? AppColors.primary : AppColors.textMuted,
                    size: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Basit liste satırı (cüz, son okunan, sayfa yer işareti).
class QuranSimpleTile extends StatelessWidget {
  const QuranSimpleTile({
    super.key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.trailing,
  });

  final Widget leading;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Material(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(14, 12, 6, 12),
            child: Row(
              children: [
                leading,
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: AppColors.text),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: AppColors.textMuted, fontSize: 12.5),
                      ),
                    ],
                  ),
                ),
                trailing ?? const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
                const SizedBox(width: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Yuvarlak köşeli ikon kutusu.
class QuranIconBox extends StatelessWidget {
  const QuranIconBox({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(12)),
      child: Icon(icon, color: AppColors.primary, size: 22),
    );
  }
}
