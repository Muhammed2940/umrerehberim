import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

/// Ayet meali: quran.com API v4. Bir kez çekilen meal cihazda saklanır.
///
/// Çeviri kimlikleri `https://api.quran.com/api/v4/resources/translations`
/// listesinden doğrulandı (6 Kasım 2026):
/// - 77: Türkçe, Diyanet İşleri
/// - 52: Türkçe, Elmalılı Hamdi Yazır
/// - 20: İngilizce, Saheeh International
class QuranTranslationService {
  QuranTranslationService._();
  static final QuranTranslationService instance = QuranTranslationService._();

  static const int diyanetTr = 77;
  static const int elmaliliTr = 52;
  static const int sahihEn = 20;

  /// Dil koduna göre meal kimliği; Arapçada meal yok (null).
  static int? translationIdFor(String languageCode) => switch (languageCode) {
    'tr' => diyanetTr,
    'en' => sahihEn,
    _ => null,
  };

  /// Meal kaynağının görünen adı.
  static String sourceName(int id) => switch (id) {
    diyanetTr => 'Diyanet İşleri Başkanlığı',
    elmaliliTr => 'Elmalılı Hamdi Yazır',
    sahihEn => 'Saheeh International',
    _ => 'quran.com',
  };

  final Map<String, String> _memory = {};

  static String _cacheKey(int id, int surah, int ayah) => 'quran_meal_${id}_$surah:$ayah';

  /// Meali döner. Önbellekte yoksa internetten çeker; internet yoksa
  /// [QuranTranslationException] (offline: true) fırlatır.
  Future<String> fetch(int id, int surah, int ayah) async {
    final key = _cacheKey(id, surah, ayah);
    final mem = _memory[key];
    if (mem != null) return mem;
    final prefs = await SharedPreferences.getInstance();
    final cached = prefs.getString(key);
    if (cached != null) return _memory[key] = cached;

    final uri = Uri.parse('https://api.quran.com/api/v4/verses/by_key/$surah:$ayah?translations=$id');
    http.Response res;
    try {
      res = await http.get(uri, headers: {'Accept': 'application/json'}).timeout(const Duration(seconds: 15));
    } on SocketException {
      throw const QuranTranslationException(offline: true);
    } on TimeoutException {
      throw const QuranTranslationException(offline: true);
    } on http.ClientException {
      throw const QuranTranslationException(offline: true);
    }
    if (res.statusCode != 200) throw const QuranTranslationException(offline: false);
    final body = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
    final list = ((body['verse'] as Map?)?['translations'] as List?) ?? const [];
    final raw = list.whereType<Map>().map((t) => t['text']).whereType<String>().firstOrNull;
    if (raw == null || raw.trim().isEmpty) throw const QuranTranslationException(offline: false);
    final text = cleanHtml(raw);
    _memory[key] = text;
    await prefs.setString(key, text);
    return text;
  }

  /// Dipnot işaretlerini (`<sup …>1</sup>`) ve HTML etiketlerini temizler.
  static String cleanHtml(String s) => s
      .replaceAll(RegExp(r'<sup[^>]*>.*?</sup>', dotAll: true), '')
      .replaceAll(RegExp(r'<[^>]+>'), '')
      .replaceAll('&nbsp;', ' ')
      .replaceAll('&quot;', '"')
      .replaceAll('&#39;', "'")
      .replaceAll('&amp;', '&')
      .replaceAll(RegExp(r'\s+'), ' ')
      .trim();
}

class QuranTranslationException implements Exception {
  const QuranTranslationException({required this.offline});

  /// true: internet yok / zaman aşımı.
  final bool offline;
}
