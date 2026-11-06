import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/constant/surahs_info.dart';
import '../../../common/services/quran_audio_service.dart';

/// Son okunan / dinlenen kayıt.
class QuranRecent {
  const QuranRecent({required this.surah, required this.page, required this.listened, required this.at});

  final int surah;
  final int page;

  /// true: dinlendi, false: okundu.
  final bool listened;
  final DateTime at;

  Map<String, dynamic> toJson() => {
    'surah': surah,
    'page': page,
    'listened': listened,
    'at': at.millisecondsSinceEpoch,
  };

  static QuranRecent? fromJson(Object? j) {
    if (j is! Map) return null;
    final s = j['surah'], p = j['page'], at = j['at'];
    if (s is! int || p is! int || at is! int) return null;
    return QuranRecent(surah: s, page: p, listened: j['listened'] == true, at: DateTime.fromMillisecondsSinceEpoch(at));
  }
}

/// Kur'an okuma durumu: son sayfa, son okunanlar, yer işaretleri, yazı boyutu.
/// Hepsi SharedPreferences'ta saklanır.
class QuranProvider extends ChangeNotifier {
  QuranProvider() {
    assert(checkQuranIndex(), 'surahs_info.dart verisi tutarsız (6236 ayet, 86 Mekki / 28 Medeni)');
    _audio.addListener(_onAudioChanged);
    load();
  }

  static const String lastPageKey = 'quran_last_page';
  static const String _recentsKey = 'quran_recents';
  static const String _surahBookmarksKey = 'quran_bookmark_surahs';
  static const String _pageBookmarksKey = 'quran_bookmark_pages';
  static const String _arabicScaleKey = 'quran_arabic_scale';
  static const String _ayahBookmarksKey = 'quran_bookmark_ayahs';
  static const String _nightModeKey = 'quran_night_mode';
  static const int maxRecents = 10;

  final QuranAudioService _audio = QuranAudioService.instance;

  bool loaded = false;
  int currentPage = 1;

  /// Kullanıcı sayfa okuyucusunu en az bir kez açtı mı?
  bool hasReadingHistory = false;
  List<QuranRecent> recents = [];
  Set<int> bookmarkedSurahs = {};
  Set<int> bookmarkedPages = {};

  /// Yer işaretli ayetler ("2:255").
  Set<String> bookmarkedAyahs = {};
  double arabicScale = 1.0;

  /// Mushaf gece modu (koyu zümrüt zemin, krem yazı).
  bool nightMode = false;

  int? _lastAudioSurah;

  /// Son okunan sayfanın suresi (1-114).
  int get currentSurahNo => surahIndexForPage(currentPage) + 1;

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final last = prefs.getInt(lastPageKey);
    hasReadingHistory = last != null;
    currentPage = (last ?? 1).clamp(1, 604);
    try {
      final raw = prefs.getString(_recentsKey);
      if (raw != null) {
        recents = (jsonDecode(raw) as List).map(QuranRecent.fromJson).whereType<QuranRecent>().toList();
      }
    } catch (_) {
      recents = [];
    }
    bookmarkedSurahs = (prefs.getStringList(_surahBookmarksKey) ?? []).map(int.tryParse).whereType<int>().toSet();
    bookmarkedPages = (prefs.getStringList(_pageBookmarksKey) ?? []).map(int.tryParse).whereType<int>().toSet();
    bookmarkedAyahs = (prefs.getStringList(_ayahBookmarksKey) ?? []).toSet();
    arabicScale = (prefs.getDouble(_arabicScaleKey) ?? 1.0).clamp(0.8, 1.6);
    nightMode = prefs.getBool(_nightModeKey) ?? false;
    loaded = true;
    notifyListeners();
  }

  /// Okuyucuda sayfa değişti.
  void setCurrentPage(int page) {
    final p = page.clamp(1, 604);
    hasReadingHistory = true;
    currentPage = p;
    _addRecent(QuranRecent(surah: currentSurahNo, page: p, listened: false, at: DateTime.now()));
    SharedPreferences.getInstance().then((prefs) => prefs.setInt(lastPageKey, p));
  }

  void _onAudioChanged() {
    final s = _audio.currentSurah;
    if (s == null || s == _lastAudioSurah) return;
    _lastAudioSurah = s;
    _addRecent(QuranRecent(surah: s, page: surahByNo(s)['page'] as int, listened: true, at: DateTime.now()));
  }

  void _addRecent(QuranRecent r) {
    recents.removeWhere((e) => e.surah == r.surah);
    recents.insert(0, r);
    if (recents.length > maxRecents) recents = recents.sublist(0, maxRecents);
    notifyListeners();
    _saveRecents();
  }

  Future<void> clearRecents() async {
    recents = [];
    notifyListeners();
    await _saveRecents();
  }

  Future<void> _saveRecents() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_recentsKey, jsonEncode(recents.map((e) => e.toJson()).toList()));
  }

  bool isSurahBookmarked(int no) => bookmarkedSurahs.contains(no);
  bool isPageBookmarked(int page) => bookmarkedPages.contains(page);

  /// Ekler veya çıkarır; eklendiyse true döner.
  Future<bool> toggleSurahBookmark(int no) async {
    final added = bookmarkedSurahs.add(no);
    if (!added) bookmarkedSurahs.remove(no);
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_surahBookmarksKey, (bookmarkedSurahs.toList()..sort()).map((e) => '$e').toList());
    return added;
  }

  Future<bool> togglePageBookmark(int page) async {
    final added = bookmarkedPages.add(page);
    if (!added) bookmarkedPages.remove(page);
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_pageBookmarksKey, (bookmarkedPages.toList()..sort()).map((e) => '$e').toList());
    return added;
  }

  bool isAyahBookmarked(int surah, int ayah) => bookmarkedAyahs.contains('$surah:$ayah');

  /// Ayet yer işaretleri sure/ayet sırasıyla.
  List<(int, int)> get sortedAyahBookmarks {
    final list = <(int, int)>[];
    for (final k in bookmarkedAyahs) {
      final parts = k.split(':');
      final s = int.tryParse(parts.first), a = parts.length > 1 ? int.tryParse(parts[1]) : null;
      if (s != null && a != null) list.add((s, a));
    }
    list.sort((x, y) => x.$1 != y.$1 ? x.$1.compareTo(y.$1) : x.$2.compareTo(y.$2));
    return list;
  }

  Future<bool> toggleAyahBookmark(int surah, int ayah) async {
    final key = '$surah:$ayah';
    final added = bookmarkedAyahs.add(key);
    if (!added) bookmarkedAyahs.remove(key);
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_ayahBookmarksKey, bookmarkedAyahs.toList());
    return added;
  }

  Future<void> toggleNightMode() async {
    nightMode = !nightMode;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_nightModeKey, nightMode);
  }

  Future<void> setArabicScale(double v) async {
    arabicScale = v.clamp(0.8, 1.6);
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_arabicScaleKey, arabicScale);
  }

  @override
  void dispose() {
    _audio.removeListener(_onAudioChanged);
    super.dispose();
  }
}
