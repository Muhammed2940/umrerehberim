import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/constant/surahs_info.dart';
import '../../../common/services/quran_audio_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../providers/quran_provider.dart';
import 'quran_common.dart';

/// Ekranın altında kalıcı mini oynatıcı.
///
/// Henüz bir şey çalınmadıysa son okunan sureyi seçili imamla çalmaya hazır
/// gösterir.
class QuranMiniPlayer extends StatelessWidget {
  const QuranMiniPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    final audio = QuranAudioService.instance;
    return ListenableBuilder(
      listenable: audio,
      builder: (context, _) {
        final fallback = context.select<QuranProvider, int>((p) => p.currentSurahNo);
        final surah = audio.currentSurah ?? fallback;
        final info = surahByNo(surah);
        final playing = audio.isPlaying;
        final l = context.l10n;
        return Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(22)),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryDark.withValues(alpha: 0.10),
                blurRadius: 20,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          child: SafeArea(
            top: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _ProgressBar(audio: audio),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 10, 10),
                  child: Row(
                    children: [
                      ReciterAvatar(reciter: audio.reciter, size: 44),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '${surahTitle(surah)} • ${l.quranAyahCount(info['ayahCount'] as int)}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.5,
                                color: AppColors.text,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              audio.error != null && audio.hasTrack && !playing ? audio.error! : audio.reciter.displayName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: AppColors.textMuted, fontSize: 12.5),
                            ),
                          ],
                        ),
                      ),
                      _RoundIcon(
                        icon: Icons.skip_previous_rounded,
                        tooltip: l.quranPrevSurah,
                        onTap: surah <= 1 && !audio.hasTrack
                            ? null
                            : () =>
                                  runQuranPlay(context, audio.hasTrack ? audio.previous() : audio.playSurah(surah - 1)),
                      ),
                      const SizedBox(width: 2),
                      _PlayButton(
                        playing: playing,
                        loading: audio.isLoading,
                        onTap: () => runQuranPlay(context, audio.togglePlay(fallbackSurah: surah)),
                      ),
                      const SizedBox(width: 2),
                      _RoundIcon(
                        icon: Icons.skip_next_rounded,
                        tooltip: l.quranNextSurah,
                        onTap: surah >= 114
                            ? null
                            : () => runQuranPlay(context, audio.hasTrack ? audio.next() : audio.playSurah(surah + 1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ProgressBar extends StatelessWidget {
  const _ProgressBar({required this.audio});

  final QuranAudioService audio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: ValueListenableBuilder<Duration>(
        valueListenable: audio.position,
        builder: (context, pos, _) {
          final total = audio.duration;
          final v = total.inMilliseconds <= 0 ? 0.0 : (pos.inMilliseconds / total.inMilliseconds).clamp(0.0, 1.0);
          return Column(
            children: [
              LayoutBuilder(
                builder: (context, c) => GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTapDown: (d) {
                    final f = d.localPosition.dx / c.maxWidth;
                    // Sağdan sola arayüzde çubuk sağdan dolar.
                    audio.seekFraction(Directionality.of(context) == TextDirection.rtl ? 1 - f : f);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: audio.isLoading ? null : v,
                        minHeight: 3.5,
                        backgroundColor: AppColors.primaryLight,
                        valueColor: const AlwaysStoppedAnimation(AppColors.primary),
                      ),
                    ),
                  ),
                ),
              ),
              if (total > Duration.zero)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatQuranDuration(pos), style: const TextStyle(fontSize: 10.5, color: AppColors.textMuted)),
                    Text(
                      formatQuranDuration(total),
                      style: const TextStyle(fontSize: 10.5, color: AppColors.textMuted),
                    ),
                  ],
                ),
            ],
          );
        },
      ),
    );
  }
}

class _RoundIcon extends StatelessWidget {
  const _RoundIcon({required this.icon, required this.tooltip, required this.onTap});

  final IconData icon;
  final String tooltip;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip,
      onPressed: onTap,
      iconSize: 28,
      color: AppColors.primaryDark,
      disabledColor: AppColors.divider,
      icon: Icon(icon),
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({required this.playing, required this.loading, required this.onTap});

  final bool playing;
  final bool loading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 50,
          height: 50,
          child: Center(
            child: loading
                ? const SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(strokeWidth: 2.4, color: Colors.white),
                  )
                : Icon(playing ? Icons.pause_rounded : Icons.play_arrow_rounded, color: Colors.white, size: 30),
          ),
        ),
      ),
    );
  }
}
