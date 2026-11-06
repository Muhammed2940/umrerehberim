import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../common/constant/surahs_info.dart';
import '../../../common/services/quran_audio_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../data/quran_text_repository.dart';
import '../data/quran_translation_service.dart';
import '../providers/quran_provider.dart';
import 'quran_common.dart';
import 'quran_mushaf_page.dart';

/// Ayete dokununca açılan alt pencere: ayet, meal, ayet sesi, yer işareti,
/// kopyalama.
class QuranAyahSheet extends StatefulWidget {
  const QuranAyahSheet({super.key, required this.ayah, required this.page});

  final QuranAyah ayah;
  final int page;

  static Future<void> show(BuildContext context, {required QuranAyah ayah, required int page}) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(22))),
      builder: (_) => QuranAyahSheet(ayah: ayah, page: page),
    );
  }

  @override
  State<QuranAyahSheet> createState() => _QuranAyahSheetState();
}

class _QuranAyahSheetState extends State<QuranAyahSheet> {
  final QuranAudioService _audio = QuranAudioService.instance;

  int? _mealId;
  String? _meal;
  bool _mealLoading = false;
  bool _mealOffline = false;

  QuranAyah get a => widget.ayah;

  /// "Bakara 2:255"
  String get _ref => '${surahName(a.surah)} ${a.surah}:${a.ayah}';

  @override
  void initState() {
    super.initState();
    _audio.loadPrefs();
    _mealId = QuranTranslationService.translationIdFor(localeProvider.locale.languageCode);
    if (_mealId != null) _loadMeal();
  }

  @override
  void dispose() {
    if (_audio.playingAyahKey == a.key) _audio.stopAyah();
    super.dispose();
  }

  Future<void> _loadMeal() async {
    final id = _mealId;
    if (id == null) return;
    setState(() {
      _mealLoading = true;
      _mealOffline = false;
    });
    try {
      final t = await QuranTranslationService.instance.fetch(id, a.surah, a.ayah);
      if (!mounted) return;
      setState(() {
        _meal = t;
        _mealLoading = false;
      });
    } on QuranTranslationException catch (e) {
      if (!mounted) return;
      setState(() {
        _mealLoading = false;
        _mealOffline = e.offline;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _mealLoading = false;
        _mealOffline = false;
      });
    }
  }

  Future<void> _listen() async {
    if (!_audio.reciter.hasAyahAudio && _audio.playingAyahKey != a.key) {
      showQuranSnack(context, context.l10n.quranNoAyahAudio, icon: Icons.info_outline_rounded);
      return;
    }
    await runQuranPlay(context, _audio.playAyah(a.surah, a.ayah));
  }

  Future<void> _toggleAyahBookmark() async {
    final l = context.l10n;
    final added = await context.read<QuranProvider>().toggleAyahBookmark(a.surah, a.ayah);
    if (!mounted) return;
    showQuranSnack(
      context,
      added ? l.quranAyahBookmarkAdded(_ref) : l.quranAyahBookmarkRemoved(_ref),
      icon: added ? Icons.bookmark_added_rounded : Icons.bookmark_remove_rounded,
    );
  }

  Future<void> _togglePageBookmark() async {
    final l = context.l10n;
    final added = await context.read<QuranProvider>().togglePageBookmark(widget.page);
    if (!mounted) return;
    showQuranSnack(
      context,
      added ? l.quranPageBookmarkAdded(widget.page) : l.quranPageBookmarkRemoved(widget.page),
      icon: added ? Icons.bookmark_added_rounded : Icons.bookmark_remove_rounded,
    );
  }

  Future<void> _copy() async {
    await Clipboard.setData(ClipboardData(text: '${a.text}\n— $_ref'));
    if (!mounted) return;
    showQuranSnack(context, context.l10n.quranCopied, icon: Icons.copy_rounded);
  }

  @override
  Widget build(BuildContext context) {
    final l = context.l10n;
    final quran = context.watch<QuranProvider>();
    final ayahMarked = quran.isAyahBookmarked(a.surah, a.ayah);
    final pageMarked = quran.isPageBookmarked(widget.page);
    final isArabic = _mealId == null;
    final c = MushafColors.day;

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: isArabic ? 0.55 : 0.7,
      minChildSize: 0.35,
      maxChildSize: 0.95,
      builder: (context, scroll) => ListView(
        controller: scroll,
        padding: const EdgeInsets.fromLTRB(18, 10, 18, 24),
        children: [
          Center(
            child: Container(
              width: 42,
              height: 4,
              decoration: BoxDecoration(color: AppColors.divider, borderRadius: BorderRadius.circular(2)),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              QuranNumberBadge(number: a.ayah, size: 38),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      surahTitle(a.surah),
                      style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16.5, color: AppColors.primaryDark),
                    ),
                    Text(
                      '${a.surah}:${a.ayah} • ${l.quranPage(widget.page)}',
                      style: const TextStyle(color: AppColors.textMuted, fontSize: 12.5),
                    ),
                  ],
                ),
              ),
              IconButton(
                tooltip: l.commonClose,
                icon: const Icon(Icons.close_rounded, color: AppColors.textMuted),
                onPressed: () => Navigator.maybePop(context),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            decoration: BoxDecoration(
              color: c.paper,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: c.frame.withValues(alpha: 0.6)),
            ),
            child: Text(
              '${a.text} ۝${arabicDigits(a.ayah)}',
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontFamily: quranFontFamily,
                fontFamilyFallback: quranFontFallback,
                fontSize: (isArabic ? 28 : 24) * quran.arabicScale,
                height: 2.0,
                color: c.ink,
              ),
            ),
          ),
          const SizedBox(height: 14),
          ListenableBuilder(
            listenable: _audio,
            builder: (context, _) {
              final playing = _audio.playingAyahKey == a.key;
              return Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  _ActionChip(
                    icon: playing ? Icons.stop_circle_outlined : Icons.play_circle_outline_rounded,
                    label: playing ? l.quranStopAyah : l.quranListenAyah,
                    active: playing,
                    onTap: _listen,
                  ),
                  _ActionChip(
                    icon: ayahMarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
                    label: l.quranBookmarkAyah,
                    active: ayahMarked,
                    onTap: _toggleAyahBookmark,
                  ),
                  _ActionChip(
                    icon: pageMarked ? Icons.bookmarks_rounded : Icons.bookmarks_outlined,
                    label: l.quranBookmarkPage,
                    active: pageMarked,
                    onTap: _togglePageBookmark,
                  ),
                  _ActionChip(icon: Icons.copy_rounded, label: l.quranCopy, onTap: _copy),
                ],
              );
            },
          ),
          ListenableBuilder(
            listenable: _audio,
            builder: (context, _) => _audio.reciter.hasAyahAudio
                ? Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      _audio.reciter.displayName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: AppColors.textMuted, fontSize: 12),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      '${_audio.reciter.displayName}: ${l.quranNoAyahAudio}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: AppColors.warning, fontSize: 12),
                    ),
                  ),
          ),
          if (!isArabic) ...[const SizedBox(height: 18), _mealSection()],
        ],
      ),
    );
  }

  Widget _mealSection() {
    final l = context.l10n;
    Widget body;
    if (_mealLoading) {
      body = const Padding(
        padding: EdgeInsets.all(16),
        child: Center(child: SizedBox(width: 26, height: 26, child: CircularProgressIndicator(strokeWidth: 3))),
      );
    } else if (_meal != null) {
      body = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_meal!, style: const TextStyle(fontSize: 15.5, height: 1.55, color: AppColors.text)),
          const SizedBox(height: 8),
          Text(
            l.quranMealSource(QuranTranslationService.sourceName(_mealId!)),
            style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted, fontStyle: FontStyle.italic),
          ),
        ],
      );
    } else {
      body = Row(
        children: [
          Icon(_mealOffline ? Icons.wifi_off_rounded : Icons.error_outline_rounded, color: AppColors.textMuted),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              _mealOffline ? l.quranMealOffline : l.quranMealFailed,
              style: const TextStyle(color: AppColors.textMuted, fontSize: 13.5),
            ),
          ),
          TextButton(onPressed: _loadMeal, child: Text(l.commonRetry)),
        ],
      );
    }
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
      decoration: BoxDecoration(color: AppColors.background, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.translate_rounded, size: 18, color: AppColors.primary),
              const SizedBox(width: 8),
              Text(l.quranMeal, style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.primaryDark)),
            ],
          ),
          const SizedBox(height: 8),
          body,
        ],
      ),
    );
  }
}

class _ActionChip extends StatelessWidget {
  const _ActionChip({required this.icon, required this.label, required this.onTap, this.active = false});

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: active ? AppColors.primary : AppColors.primaryLight,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 19, color: active ? Colors.white : AppColors.primaryDark),
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13.5,
                  color: active ? Colors.white : AppColors.primaryDark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
