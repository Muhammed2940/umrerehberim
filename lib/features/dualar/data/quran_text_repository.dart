import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;

/// Mushaf metni ve sayfa eşlemesi (uygulamaya gömülü, internetsiz).
///
/// Metin: Tanzil Quran Text (Uthmani, v1.1), Hafs rivayeti,
/// `assets/quran/quran-uthmani.txt` (dosya değiştirilmeden, telif bloğuyla
/// birlikte gömülüdür; lisans CC BY 3.0, kaynak gösterilmeli: tanzil.net).
///
/// Sayfa eşlemesi: Tanzil Quran Metadata `QuranData.Page`, 604 sayfalık
/// Medine Mushafı; `assets/quran/pages.json` (`pages[i]` = i+1. sayfanın
/// başladığı `[sure, ayet]`).
class QuranTextRepository {
  QuranTextRepository._();
  static final QuranTextRepository instance = QuranTextRepository._();

  static const String textAsset = 'assets/quran/quran-uthmani.txt';
  static const String pagesAsset = 'assets/quran/pages.json';
  static const int totalPages = 604;
  static const int totalAyahs = 6236;

  QuranText? _data;
  Future<QuranText>? _loading;

  /// Yüklendiyse metin, değilse null.
  QuranText? get data => _data;

  /// Metni bir kez, arka plan isolate'inde ayrıştırır.
  Future<QuranText> load() {
    final d = _data;
    if (d != null) return Future.value(d);
    return _loading ??= () async {
      try {
        final raw = await rootBundle.loadString(textAsset);
        final pages = await rootBundle.loadString(pagesAsset);
        final parsed = await compute(_parse, (raw, pages));
        _data = parsed;
        return parsed;
      } catch (e) {
        _loading = null;
        rethrow;
      }
    }();
  }
}

/// Mushafta tek ayet.
class QuranAyah {
  const QuranAyah(this.surah, this.ayah, this.text);

  final int surah;
  final int ayah;

  /// Ayet metni (sure başındaki besmele ayrılmış hâlde).
  final String text;

  String get key => '$surah:$ayah';
}

/// Ayrıştırılmış metin ve sayfa sınırları.
class QuranText {
  QuranText(this.surahs, this.pageStarts, this.basmala);

  /// `surahs[s-1][a-1]` = ayet metni.
  final List<List<String>> surahs;

  /// `pageStarts[p-1]` = p. sayfanın ilk ayeti (sure, ayet).
  final List<(int, int)> pageStarts;

  /// Besmele (Fatiha 1. ayetin metni).
  final String basmala;

  int ayahCount(int surah) => surahs[surah - 1].length;

  String ayahText(int surah, int ayah) => surahs[surah - 1][ayah - 1];

  /// Ayetin bulunduğu sayfa (1-604).
  int pageForAyah(int surah, int ayah) {
    var lo = 0, hi = pageStarts.length - 1, ans = 0;
    while (lo <= hi) {
      final mid = (lo + hi) >> 1;
      final (s, a) = pageStarts[mid];
      if (s < surah || (s == surah && a <= ayah)) {
        ans = mid;
        lo = mid + 1;
      } else {
        hi = mid - 1;
      }
    }
    return ans + 1;
  }

  /// Sayfadaki ayetler, mushaf sırasıyla.
  List<QuranAyah> ayahsOnPage(int page) {
    final p = page.clamp(1, pageStarts.length);
    var (s, a) = pageStarts[p - 1];
    final (endS, endA) = p < pageStarts.length ? pageStarts[p] : (115, 1);
    final out = <QuranAyah>[];
    while (s < endS || (s == endS && a < endA)) {
      out.add(QuranAyah(s, a, surahs[s - 1][a - 1]));
      a++;
      if (a > surahs[s - 1].length) {
        s++;
        a = 1;
        if (s > 114) break;
      }
    }
    return out;
  }
}

/// Yalnız harf iskeleti (harekeler ve işaretler atılır); besmele eşleşmesi için.
String _skeleton(String s) => s.runes
    .where((r) => (r >= 0x0621 && r <= 0x064A) || r == 0x0671)
    .map(String.fromCharCode)
    .join();

QuranText _parse((String, String) input) {
  final (raw, pagesJson) = input;
  final surahs = List.generate(114, (_) => <String>[]);
  for (final line in const LineSplitter().convert(raw)) {
    if (line.isEmpty || line.startsWith('#')) continue;
    final i1 = line.indexOf('|');
    final i2 = line.indexOf('|', i1 + 1);
    if (i1 < 0 || i2 < 0) continue;
    final s = int.parse(line.substring(0, i1));
    final a = int.parse(line.substring(i1 + 1, i2));
    final list = surahs[s - 1];
    if (list.length + 1 != a) throw FormatException('Kur\'an metni sırası bozuk: $s:$a');
    list.add(line.substring(i2 + 1).trim());
  }
  final total = surahs.fold<int>(0, (t, e) => t + e.length);
  if (total != QuranTextRepository.totalAyahs) throw FormatException('Ayet sayısı $total (6236 olmalı)');

  // Tanzil metninde Fatiha ve Tevbe dışındaki surelerin 1. ayetinin başında
  // besmele bulunur. Mushafta besmele sure başlığının altında ayrı gösterilir;
  // bu yüzden metinden ayrılır (95 ve 97'deki "بِّسْمِ" yazımı dahil).
  final basmala = surahs[0][0];
  final basmalaWords = basmala.split(' ').length;
  final basmalaSkel = _skeleton(basmala);
  for (var s = 2; s <= 114; s++) {
    if (s == 9) continue;
    final words = surahs[s - 1][0].split(' ');
    if (words.length > basmalaWords && _skeleton(words.take(basmalaWords).join(' ')) == basmalaSkel) {
      surahs[s - 1][0] = words.skip(basmalaWords).join(' ');
    }
  }

  final pages = (jsonDecode(pagesJson) as Map<String, dynamic>)['pages'] as List;
  final starts = [for (final p in pages) ((p as List)[0] as int, p[1] as int)];
  if (starts.length != QuranTextRepository.totalPages) throw FormatException('Sayfa sayısı ${starts.length}');
  return QuranText(surahs, starts, basmala);
}

/// Sayıyı Arapça-Hint rakamlarıyla yazar (٢٥٥).
String arabicDigits(int n) {
  const d = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
  return n.toString().split('').map((c) => d[int.parse(c)]).join();
}
