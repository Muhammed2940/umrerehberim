import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:provider/provider.dart';

import '../../../common/constant/surahs_info.dart';
import '../../../common/services/quran_audio_service.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../data/quran_text_repository.dart';
import '../providers/quran_provider.dart';
import '../widgets/quran_common.dart';
import '../widgets/quran_list_widgets.dart';
import '../widgets/quran_mini_player.dart';
import '../widgets/quran_reader.dart';
import '../widgets/quran_settings_sheet.dart';

enum _QuranTab { surahs, juz, recents, bookmarks }

enum _PlaceFilter { all, makki, madani }

/// Kur'an-ı Kerim ana ekranı: okumaya devam kartı, arama, sekmeler
/// (Sureler / Cüzler / Son Okunanlar / Yer İşaretleri) ve alt mini oynatıcı.
///
/// Sureye, cüze veya kayda dokununca mushaf okuyucusu ([QuranReaderPage])
/// ilgili sayfada açılır.
class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  final TextEditingController _search = TextEditingController();
  final QuranAudioService _audio = QuranAudioService.instance;
  _QuranTab _tab = _QuranTab.surahs;
  _PlaceFilter _filter = _PlaceFilter.all;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _audio.loadPrefs();
    // Mushaf metnini arka planda önceden hazırla (okuyucu anında açılsın).
    QuranTextRepository.instance.load().ignore();
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  void _openReader(int page) => QuranReaderPage.open(context, page: page);

  /// "2:255", "2 255" veya "bakara 255" gibi aramalarda sure numarası/adı ve
  /// ayet ayrıştırılır.
  ({String surahQuery, int? ayah}) _parseQuery(String q) {
    final m = RegExp(r'^\s*(.+?)[\s:./-]+(\d{1,3})\s*$').firstMatch(q);
    if (m != null) return (surahQuery: m.group(1)!, ayah: int.parse(m.group(2)!));
    return (surahQuery: q, ayah: null);
  }

  List<Map<String, dynamic>> get _filteredSurahs {
    final parsed = _parseQuery(_query);
    return quranIndex.where((s) {
      if (_filter == _PlaceFilter.makki && s['place'] != 'Mekke') return false;
      if (_filter == _PlaceFilter.madani && s['place'] != 'Medine') return false;
      if (parsed.ayah != null) {
        final n = int.tryParse(parsed.surahQuery.trim());
        final okSurah = n != null ? s['no'] == n : surahMatches(s, parsed.surahQuery);
        if (okSurah && parsed.ayah! <= (s['ayahCount'] as int)) return true;
        // "Bakara 2" gibi sadece ad aramasında son sayı ayet olmayabilir.
        return surahMatches(s, _query);
      }
      return surahMatches(s, _query);
    }).toList();
  }

  Future<void> _toggleSurahBookmark(int no) async {
    final added = await context.read<QuranProvider>().toggleSurahBookmark(no);
    if (!mounted) return;
    showQuranSnack(
      context,
      added ? context.l10n.quranSurahBookmarkAdded(surahTitle(no)) : context.l10n.quranSurahBookmarkRemoved(surahTitle(no)),
      icon: added ? Icons.bookmark_added_rounded : Icons.bookmark_remove_rounded,
    );
  }

  @override
  Widget build(BuildContext context) {
    final quran = context.watch<QuranProvider>();
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _buildAppBar(context),
      bottomNavigationBar: const QuranMiniPlayer(),
      body: ListenableBuilder(
        listenable: _audio,
        builder: (context, _) {
          final lastSurah = quran.currentSurahNo;
          final activeSurah = _audio.currentSurah ?? lastSurah;
          final continuePlaying = _audio.isPlaying && _audio.currentSurah == lastSurah;
          return CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: QuranContinueCard(
                    page: quran.currentPage,
                    hasHistory: quran.hasReadingHistory,
                    playing: continuePlaying,
                    loading: _audio.isLoading && _audio.currentSurah == lastSurah,
                    onOpen: () => _openReader(quran.currentPage),
                    onPlay: () => runQuranPlay(
                      context,
                      _audio.currentSurah == lastSurah
                          ? _audio.togglePlay(fallbackSurah: lastSurah)
                          : _audio.playSurah(lastSurah),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(child: _buildSearchRow()),
              SliverPersistentHeader(
                pinned: true,
                delegate: _TabsHeader(
                  selected: _tab,
                  onSelect: _selectTab,
                  labels: {
                    _QuranTab.surahs: context.l10n.quranTabSurahs,
                    _QuranTab.juz: context.l10n.quranTabJuz,
                    _QuranTab.recents: context.l10n.quranTabRecents,
                    _QuranTab.bookmarks: context.l10n.quranTabBookmarks,
                  },
                ),
              ),
              ..._buildTabContent(quran, activeSurah),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
            ],
          );
        },
      ),
    );
  }

  void _selectTab(_QuranTab t) {
    if (t == _tab) return;
    setState(() => _tab = t);
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    final canPop = Navigator.of(context).canPop();
    final l = context.l10n;
    return AppBar(
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.primaryDark,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      toolbarHeight: 64,
      automaticallyImplyLeading: false,
      leading: canPop
          ? IconButton(
              tooltip: l.quranBack,
              icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
              onPressed: () => Navigator.maybePop(context),
            )
          : null,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            l.quranTitle,
            style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 19, color: AppColors.primaryDark),
          ),
          const SizedBox(height: 2),
          Text(
            l.quranSubtitle,
            style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 12, color: AppColors.textMuted),
          ),
        ],
      ),
      actions: [
        IconButton(
          tooltip: l.quranSettings,
          icon: const Icon(Icons.tune_rounded),
          onPressed: () => QuranSettingsSheet.show(context),
        ),
        const SizedBox(width: 4),
      ],
    );
  }

  Widget _buildSearchRow() {
    final filtered = _filter != _PlaceFilter.all;
    final l = context.l10n;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(16),
                boxShadow: quranCardShadow(),
              ),
              child: TextField(
                controller: _search,
                textInputAction: TextInputAction.search,
                onChanged: (v) => setState(() {
                  _query = v;
                  if (v.trim().isNotEmpty) _tab = _QuranTab.surahs;
                }),
                decoration: InputDecoration(
                  hintText: l.quranSearchHint,
                  hintStyle: const TextStyle(color: AppColors.textMuted, fontSize: 14),
                  prefixIcon: const Icon(Icons.search_rounded, color: AppColors.textMuted),
                  suffixIcon: _query.isEmpty
                      ? null
                      : IconButton(
                          icon: const Icon(Icons.close_rounded, size: 20, color: AppColors.textMuted),
                          onPressed: () => setState(() {
                            _search.clear();
                            _query = '';
                          }),
                        ),
                  filled: true,
                  fillColor: AppColors.surface,
                  contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: AppColors.primaryLight, width: 1.5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          PopupMenuButton<_PlaceFilter>(
            tooltip: l.quranFilter,
            initialValue: _filter,
            onSelected: (f) => setState(() {
              _filter = f;
              _tab = _QuranTab.surahs;
            }),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            color: AppColors.surface,
            itemBuilder: (_) => [
              _filterItem(_PlaceFilter.all, l.quranFilterAll, Icons.menu_book_rounded),
              _filterItem(_PlaceFilter.makki, l.quranFilterMeccan, Icons.wb_sunny_rounded),
              _filterItem(_PlaceFilter.madani, l.quranFilterMedinan, Icons.mosque_rounded),
            ],
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: filtered ? AppColors.primary : AppColors.surface,
                borderRadius: BorderRadius.circular(16),
                boxShadow: quranCardShadow(),
              ),
              child: Icon(Icons.filter_list_rounded, color: filtered ? Colors.white : AppColors.primaryDark),
            ),
          ),
        ],
      ),
    );
  }

  PopupMenuItem<_PlaceFilter> _filterItem(_PlaceFilter f, String text, IconData icon) {
    final sel = _filter == f;
    return PopupMenuItem(
      value: f,
      child: Row(
        children: [
          Icon(icon, size: 20, color: sel ? AppColors.primary : AppColors.textMuted),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: sel ? FontWeight.w700 : FontWeight.w500,
                color: sel ? AppColors.primaryDark : AppColors.text,
              ),
            ),
          ),
          if (sel) const Icon(Icons.check_rounded, size: 18, color: AppColors.primary),
        ],
      ),
    );
  }

  List<Widget> _buildTabContent(QuranProvider quran, int activeSurah) {
    switch (_tab) {
      case _QuranTab.surahs:
        return _buildSurahs(quran, activeSurah);
      case _QuranTab.juz:
        return [_buildJuzList()];
      case _QuranTab.recents:
        return _buildRecents(quran);
      case _QuranTab.bookmarks:
        return _buildBookmarks(quran, activeSurah);
    }
  }

  Widget _surahTile(Map<String, dynamic> s, QuranProvider quran, int activeSurah, {int? ayah}) {
    final no = s['no'] as int;
    final validAyah = ayah != null && ayah >= 1 && ayah <= (s['ayahCount'] as int) ? ayah : null;
    return QuranSurahTile(
      key: ValueKey('surah_$no'),
      surah: s,
      highlighted: no == activeSurah,
      playing: _audio.isPlaying && _audio.currentSurah == no,
      bookmarked: quran.isSurahBookmarked(no),
      arabicScale: quran.arabicScale,
      onTap: () => validAyah != null
          ? QuranReaderPage.open(context, surah: no, ayah: validAyah)
          : _openReader(s['page'] as int),
      onBookmark: () => _toggleSurahBookmark(no),
    );
  }

  List<Widget> _buildSurahs(QuranProvider quran, int activeSurah) {
    final list = _filteredSurahs;
    final l = context.l10n;
    final header = _filter == _PlaceFilter.all && _query.trim().isEmpty
        ? null
        : [
            l.quranSurahCount(list.length),
            if (_filter == _PlaceFilter.makki) l.quranMeccanAdj,
            if (_filter == _PlaceFilter.madani) l.quranMedinanAdj,
          ].join(' • ');
    if (list.isEmpty) {
      return [
        SliverToBoxAdapter(
          child: QuranEmptyState(
            icon: Icons.search_off_rounded,
            title: l.quranNoResults,
            message: l.quranNoResultsHint,
          ),
        ),
      ];
    }
    return [
      if (header != null)
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
            child: Text(header, style: const TextStyle(color: AppColors.textMuted, fontSize: 12.5)),
          ),
        ),
      SliverList.builder(
        itemCount: list.length,
        itemBuilder: (context, i) => _surahTile(list[i], quran, activeSurah, ayah: _searchedAyahFor(list[i])),
      ),
    ];
  }

  /// "2:255" / "bakara 255" aramasında bu sure için istenen ayet; yoksa null.
  int? _searchedAyahFor(Map<String, dynamic> s) {
    final parsed = _parseQuery(_query);
    if (parsed.ayah == null) return null;
    final n = int.tryParse(parsed.surahQuery.trim());
    final ok = n != null ? s['no'] == n : surahMatches(s, parsed.surahQuery);
    return ok ? parsed.ayah : null;
  }

  Widget _buildJuzList() {
    return SliverList.builder(
      itemCount: juzIndex.length,
      itemBuilder: (context, i) {
        final j = juzIndex[i];
        final s = surahByNo(j['surah']!);
        final l = context.l10n;
        return QuranSimpleTile(
          key: ValueKey('juz_${j['no']}'),
          leading: QuranNumberBadge(number: j['no']!),
          title: l.quranJuz(j['no']!),
          subtitle: l.quranJuzSubtitle(surahTitle(j['surah']!), j['ayah']!, j['page']!),
          trailing: Text(
            '${s['arabic']}',
            textDirection: TextDirection.rtl,
            style: const TextStyle(fontFamily: 'Amiri', fontSize: 18, color: AppColors.primaryDark),
          ),
          onTap: () => _openReader(j['page']!),
        );
      },
    );
  }

  List<Widget> _buildRecents(QuranProvider quran) {
    final l = context.l10n;
    if (quran.recents.isEmpty) {
      return [
        SliverToBoxAdapter(
          child: QuranEmptyState(
            icon: Icons.history_rounded,
            title: l.quranNoHistory,
            message: l.quranNoHistoryHint,
          ),
        ),
      ];
    }
    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20, 2, 8, 0),
          child: Row(
            children: [
              Expanded(
                child: Text(l.quranLast10, style: const TextStyle(color: AppColors.textMuted, fontSize: 12.5)),
              ),
              TextButton(onPressed: quran.clearRecents, child: Text(l.quranClear)),
            ],
          ),
        ),
      ),
      SliverList.builder(
        itemCount: quran.recents.length,
        itemBuilder: (context, i) {
          final r = quran.recents[i];
          return QuranSimpleTile(
            key: ValueKey('recent_${r.surah}'),
            leading: QuranIconBox(icon: r.listened ? Icons.headphones_rounded : Icons.menu_book_rounded),
            title: surahTitle(r.surah),
            subtitle: '${r.listened ? l.quranListened : l.quranPage(r.page)} • ${_ago(r.at)}',
            trailing: r.listened
                ? IconButton(
                    tooltip: l.quranListen,
                    icon: const Icon(Icons.play_circle_outline_rounded, color: AppColors.primary),
                    onPressed: () => runQuranPlay(context, _audio.playSurah(r.surah)),
                  )
                : null,
            onTap: () => _openReader(r.page),
          );
        },
      ),
    ];
  }

  List<Widget> _buildBookmarks(QuranProvider quran, int activeSurah) {
    final surahs = quran.bookmarkedSurahs.toList()..sort();
    final pages = quran.bookmarkedPages.toList()..sort();
    final ayahs = quran.sortedAyahBookmarks;
    final l = context.l10n;
    if (surahs.isEmpty && pages.isEmpty && ayahs.isEmpty) {
      return [
        SliverToBoxAdapter(
          child: QuranEmptyState(
            icon: Icons.bookmark_border_rounded,
            title: l.quranNoBookmarks,
            message: l.quranNoBookmarksHint,
          ),
        ),
      ];
    }
    Widget label(String t) => SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 4),
        child: Text(
          t,
          style: const TextStyle(fontWeight: FontWeight.w700, color: AppColors.primaryDark),
        ),
      ),
    );
    return [
      if (surahs.isNotEmpty) ...[
        label(l.quranTabSurahs),
        SliverList.builder(
          itemCount: surahs.length,
          itemBuilder: (context, i) => _surahTile(surahByNo(surahs[i]), quran, activeSurah),
        ),
      ],
      if (ayahs.isNotEmpty) ...[
        label(l.quranAyahsLabel),
        SliverList.builder(
          itemCount: ayahs.length,
          itemBuilder: (context, i) {
            final (s, a) = ayahs[i];
            final text = QuranTextRepository.instance.data;
            return QuranSimpleTile(
              key: ValueKey('ayah_$s:$a'),
              leading: QuranNumberBadge(number: a),
              title: '${surahTitle(s)} • $s:$a',
              subtitle: text != null ? l.quranPage(text.pageForAyah(s, a)) : l.quranAyahsLabel,
              trailing: IconButton(
                tooltip: l.quranRemoveBookmark,
                icon: const Icon(Icons.bookmark_remove_rounded, color: AppColors.textMuted),
                onPressed: () => quran.toggleAyahBookmark(s, a),
              ),
              onTap: () => QuranReaderPage.open(context, surah: s, ayah: a),
            );
          },
        ),
      ],
      if (pages.isNotEmpty) ...[
        label(l.quranPagesLabel),
        SliverList.builder(
          itemCount: pages.length,
          itemBuilder: (context, i) {
            final p = pages[i];
            return QuranSimpleTile(
              key: ValueKey('page_$p'),
              leading: const QuranIconBox(icon: Icons.bookmark_rounded),
              title: l.quranPage(p),
              subtitle: '${surahTitle(surahIndexForPage(p) + 1)} • ${l.quranJuz(juzForPage(p))}',
              trailing: IconButton(
                tooltip: l.quranRemoveBookmark,
                icon: const Icon(Icons.bookmark_remove_rounded, color: AppColors.textMuted),
                onPressed: () => quran.togglePageBookmark(p),
              ),
              onTap: () => _openReader(p),
            );
          },
        ),
      ],
    ];
  }

  String _ago(DateTime t) {
    final l = context.l10n;
    final d = DateTime.now().difference(t);
    if (d.inMinutes < 1) return l.quranAgoJustNow;
    if (d.inMinutes < 60) return l.quranAgoMinutes(d.inMinutes);
    if (d.inHours < 24) return l.quranAgoHours(d.inHours);
    if (d.inDays < 7) return l.quranAgoDays(d.inDays);
    return DateFormat.yMd().format(t);
  }
}

/// Hap şeklindeki sekmeler (kaydırınca üstte sabit kalır).
class _TabsHeader extends SliverPersistentHeaderDelegate {
  _TabsHeader({required this.selected, required this.onSelect, required this.labels});

  final _QuranTab selected;
  final ValueChanged<_QuranTab> onSelect;
  final Map<_QuranTab, String> labels;

  @override
  double get minExtent => 62;

  @override
  double get maxExtent => 62;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: AppColors.background,
      alignment: Alignment.center,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
        children: [
          for (final t in _QuranTab.values) ...[_pill(t), const SizedBox(width: 8)],
        ],
      ),
    );
  }

  Widget _pill(_QuranTab t) {
    final sel = t == selected;
    return Material(
      color: sel ? AppColors.primary : AppColors.surface,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () => onSelect(t),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: sel ? AppColors.primary : AppColors.divider),
          ),
          child: Text(
            labels[t]!,
            style: TextStyle(
              color: sel ? Colors.white : AppColors.text,
              fontWeight: sel ? FontWeight.w700 : FontWeight.w500,
              fontSize: 13.5,
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _TabsHeader old) =>
      old.selected != selected || old.labels[_QuranTab.surahs] != labels[_QuranTab.surahs];
}
