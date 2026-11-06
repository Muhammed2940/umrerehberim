import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/constant/surahs_info.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/app_theme.dart';
import '../data/quran_text_repository.dart';
import '../providers/quran_provider.dart';
import 'quran_ayah_sheet.dart';
import 'quran_common.dart';
import 'quran_mini_player.dart';
import 'quran_mushaf_page.dart';

/// Mushaf okuyucusu: uygulamaya gömülü Osmanlı hattı metin (Tanzil, Hafs),
/// 604 sayfalık Medine Mushafı düzeni, sağdan sola sayfa çevirme.
/// Ayete dokununca meal, ayet sesi, yer işareti ve kopyalama penceresi açılır.
class QuranReaderPage extends StatefulWidget {
  const QuranReaderPage({super.key, this.initialPage, this.initialSurah, this.initialAyah});

  /// Açılacak sayfa. Verilmezse (ve ayet de verilmezse) son okunan sayfa açılır.
  final int? initialPage;

  /// Açılınca gösterilip vurgulanacak ayet (ör. aramada "2:255").
  final int? initialSurah;
  final int? initialAyah;

  static Future<void> open(BuildContext context, {int? page, int? surah, int? ayah}) => Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => QuranReaderPage(initialPage: page, initialSurah: surah, initialAyah: ayah)),
  );

  @override
  State<QuranReaderPage> createState() => _QuranReaderPageState();
}

class _QuranReaderPageState extends State<QuranReaderPage> {
  static const int _total = QuranTextRepository.totalPages;

  PageController? _controller;
  QuranText? _text;
  Object? _loadError;
  late int _page;
  String? _selectedKey;
  Timer? _highlightTimer;

  @override
  void initState() {
    super.initState();
    final quran = context.read<QuranProvider>();
    _page = (widget.initialPage ?? quran.currentPage).clamp(1, _total);
    _load();
  }

  void _retry() {
    setState(() => _loadError = null);
    _load();
  }

  Future<void> _load() async {
    try {
      final text = await QuranTextRepository.instance.load();
      if (!mounted) return;
      final s = widget.initialSurah, a = widget.initialAyah;
      if (s != null && s >= 1 && s <= 114) {
        final ayah = (a ?? 1).clamp(1, text.ayahCount(s));
        _page = text.pageForAyah(s, ayah);
        if (a != null) _flashHighlight('$s:$ayah');
      }
      _controller?.dispose();
      _controller = PageController(initialPage: _page - 1);
      setState(() => _text = text);
      context.read<QuranProvider>().setCurrentPage(_page);
    } catch (e) {
      debugPrint('QuranReader: metin yüklenemedi: $e');
      if (mounted) setState(() => _loadError = e);
    }
  }

  void _flashHighlight(String key) {
    _highlightTimer?.cancel();
    _selectedKey = key;
    _highlightTimer = Timer(const Duration(milliseconds: 2600), () {
      if (mounted && _selectedKey == key) setState(() => _selectedKey = null);
    });
  }

  @override
  void dispose() {
    _highlightTimer?.cancel();
    _controller?.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    final page = index + 1;
    setState(() => _page = page);
    context.read<QuranProvider>().setCurrentPage(page);
  }

  void _goToPage(int page) {
    final c = _controller;
    if (c == null || !c.hasClients) return;
    final target = page.clamp(1, _total) - 1;
    if ((target - (_page - 1)).abs() > 3) {
      c.jumpToPage(target);
    } else {
      c.animateToPage(target, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    }
  }

  Future<void> _toggleBookmark() async {
    final added = await context.read<QuranProvider>().togglePageBookmark(_page);
    if (!mounted) return;
    showQuranSnack(
      context,
      added ? context.l10n.quranPageBookmarkAdded(_page) : context.l10n.quranPageBookmarkRemoved(_page),
      icon: added ? Icons.bookmark_added_rounded : Icons.bookmark_remove_rounded,
    );
  }

  Future<void> _onAyahTap(QuranAyah ayah) async {
    _highlightTimer?.cancel();
    setState(() => _selectedKey = ayah.key);
    await QuranAyahSheet.show(context, ayah: ayah, page: _page);
    if (mounted && _selectedKey == ayah.key) setState(() => _selectedKey = null);
  }

  @override
  Widget build(BuildContext context) {
    final quran = context.watch<QuranProvider>();
    final night = quran.nightMode;
    final c = MushafColors.of(night);
    final fg = night ? AppColors.paper : AppColors.primaryDark;
    final surahNo = surahIndexForPage(_page) + 1;
    final bookmarked = quran.isPageBookmarked(_page);
    final l = context.l10n;
    return Scaffold(
      backgroundColor: c.background,
      appBar: AppBar(
        backgroundColor: c.background,
        foregroundColor: fg,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          tooltip: l.quranBack,
          icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
          onPressed: () => Navigator.maybePop(context),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              surahTitle(surahNo),
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17, color: fg),
            ),
            Text(
              l.quranPageOfTotalJuz(_page, _total, juzForPage(_page)),
              style: TextStyle(fontSize: 12, color: c.muted),
            ),
          ],
        ),
        actions: [
          IconButton(
            tooltip: night ? l.quranDayMode : l.quranNightMode,
            icon: Icon(night ? Icons.light_mode_rounded : Icons.dark_mode_rounded),
            onPressed: quran.toggleNightMode,
          ),
          IconButton(
            tooltip: bookmarked ? l.quranRemoveBookmark : l.quranBookmarkPage,
            icon: Icon(bookmarked ? Icons.bookmark_rounded : Icons.bookmark_border_rounded),
            onPressed: _toggleBookmark,
          ),
          IconButton(tooltip: l.quranGoToPage, icon: const Icon(Icons.pin_outlined), onPressed: _openPageJump),
        ],
      ),
      body: _buildBody(quran, c),
      bottomNavigationBar: const QuranMiniPlayer(),
    );
  }

  Widget _buildBody(QuranProvider quran, MushafColors c) {
    final text = _text;
    final controller = _controller;
    if (text == null || controller == null) {
      final l = context.l10n;
      return Center(
        child: _loadError == null
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 14),
                  Text(l.quranPreparing, style: TextStyle(color: c.muted)),
                ],
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.error_outline_rounded, size: 56, color: c.muted),
                  const SizedBox(height: 12),
                  Text(l.quranTextLoadFailed, style: AppTextStyles.sectionTitle.copyWith(color: c.ink)),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: _retry,
                    icon: const Icon(Icons.refresh_rounded),
                    label: Text(l.commonRetry),
                  ),
                ],
              ),
      );
    }
    return Directionality(
      // Mushaf sağdan sola okunur: sonraki sayfa sağa kaydırınca gelir.
      // Arayüz dilinden bağımsız sabit rtl.
      textDirection: TextDirection.rtl,
      child: PageView.builder(
        controller: controller,
        itemCount: _total,
        onPageChanged: _onPageChanged,
        itemBuilder: (context, index) => QuranMushafPage(
          key: ValueKey(index + 1),
          page: index + 1,
          text: text,
          scale: quran.arabicScale,
          night: quran.nightMode,
          selectedKey: _selectedKey,
          onAyahTap: _onAyahTap,
        ),
      ),
    );
  }

  Future<void> _openPageJump() async {
    final controller = TextEditingController(text: '$_page');
    final l = context.l10n;
    final page = await showDialog<int>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.quranGoToPage),
        content: TextField(
          controller: controller,
          autofocus: true,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(hintText: '1 - 604'),
          onSubmitted: (v) => Navigator.pop(ctx, int.tryParse(v)),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(l.commonCancel)),
          TextButton(onPressed: () => Navigator.pop(ctx, int.tryParse(controller.text)), child: Text(l.quranGo)),
        ],
      ),
    );
    controller.dispose();
    if (page != null) _goToPage(page);
  }
}
