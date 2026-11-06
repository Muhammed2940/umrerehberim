import 'package:latlong2/latlong.dart';

import 'gezi_diger_b_data.dart';
import 'gezi_diger_data.dart';
import 'gezi_medine_b_data.dart';
import 'gezi_medine_data.dart';
import 'gezi_mekke_a_data.dart';
import 'gezi_mekke_b_data.dart';
import 'gezi_mekke_c_data.dart';
import 'l10n_text.dart';

/// Gezilecek yerlerin bölgesi (ekrandaki sekmeler).
enum GeziBolge { mekke, medine, diger }

/// Kapak ve harita işaretinde kullanılan yer türü (ikonu belirler).
enum GeziTur { kabe, mescid, dag, magara, mezarlik, ova, muze, savasAlani, tarihiSehir }

/// Zaman çizelgesindeki tek olay.
class GeziOlay {
  const GeziOlay({required this.tarih, required this.metin});

  /// Ör. "610", "Hicrî 2 (624)", "Ramazan 8 / Ocak 630".
  final L10nText tarih;
  final L10nText metin;
}

/// Ayet ya da hadis alıntısı. [arapca] Arapça asıl, [meal] çeviri,
/// [kaynak] ör. "Bakara 2/125" ya da "Buhârî, Fazlü's-salât, 1".
class GeziAlinti {
  const GeziAlinti({required this.arapca, required this.meal, required this.kaynak});

  final String arapca;
  final L10nText meal;
  final L10nText kaynak;
}

/// Sayfanın sonundaki kaynak linki.
class GeziKaynak {
  const GeziKaynak(this.baslik, this.url);

  final String baslik;
  final String url;
}

/// Gezilecek tek yer. Tüm uzun metinler `L10nText` (tr, en, ar).
class GeziYeri {
  const GeziYeri({
    required this.id,
    required this.bolge,
    required this.tur,
    required this.ad,
    required this.arapcaAd,
    required this.altBaslik,
    required this.sehir,
    required this.konum,
    required this.genel,
    required this.tarihce,
    this.olaylar = const [],
    required this.fazilet,
    this.alintilar = const [],
    this.adab = const [],
    this.ziyaretNotu,
    this.uygunSaat,
    this.ziyaretSuresi,
    this.uzaklik,
    required this.anlatim,
    required this.kaynaklar,
  });

  /// Rota argümanı olarak kullanılan kalıcı kimlik (ör. `mescid_i_haram`).
  final String id;
  final GeziBolge bolge;
  final GeziTur tur;

  final L10nText ad;

  /// Arapça adı (üç dilde de aynı gösterilir): `L10nText.same('غار حراء')`.
  final L10nText arapcaAd;

  /// Kartta adın altındaki kısa satır.
  final L10nText altBaslik;

  /// Hızlı bilgi çipi: şehir / bölge adı.
  final L10nText sehir;

  /// OpenStreetMap ile doğrulanmış koordinat.
  final LatLng konum;

  /// Genel Bilgi bölümü. Paragraflar `\n\n` ile ayrılır.
  final L10nText genel;

  /// Tarihçe bölümü. Paragraflar `\n\n` ile ayrılır.
  final L10nText tarihce;

  /// Önemli Olaylar (zaman çizelgesi).
  final List<GeziOlay> olaylar;

  /// Dini Önemi / Fazileti. Paragraflar `\n\n` ile ayrılır.
  final L10nText fazilet;
  final List<GeziAlinti> alintilar;

  /// Ziyaret adabı ve ipuçları (madde madde).
  final List<L10nText> adab;

  /// Suudi düzenlemeleri vb. Ekranda "güncelliğini kontrol edin" uyarısıyla gösterilir.
  final L10nText? ziyaretNotu;

  /// Hızlı bilgi çipi: en uygun ziyaret saati (biliniyorsa).
  final L10nText? uygunSaat;

  /// Hızlı bilgi çipi: yaklaşık ziyaret süresi.
  final L10nText? ziyaretSuresi;

  /// Yalnız uzak yerler için: ör. "Mekke'ye ~150 km, Medine'ye ~150 km".
  final L10nText? uzaklik;

  /// Sesli rehber metni: anlatı tarzında, 2-4 dakikalık. Paragraflar `\n\n`
  /// ile ayrılır; her paragraf ayrı bir bölüm olarak okunur.
  final L10nText anlatim;

  final List<GeziKaynak> kaynaklar;
}

/// Tüm yerler (sekme sırasıyla).
final List<GeziYeri> kGeziYerleri = [
  ...kMekkeYerleriA,
  ...kMekkeYerleriB,
  ...kMekkeYerleriC,
  ...kMedineYerleri,
  ...kMedineYerleriB,
  ...kDigerYerler,
  ...kDigerYerleriB,
];

List<GeziYeri> geziYerleriOf(GeziBolge b) => kGeziYerleri.where((y) => y.bolge == b).toList();

GeziYeri? geziYeriById(String id) {
  for (final y in kGeziYerleri) {
    if (y.id == id) return y;
  }
  return null;
}
