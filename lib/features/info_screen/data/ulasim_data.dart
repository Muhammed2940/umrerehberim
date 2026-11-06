import 'package:latlong2/latlong.dart';

import 'l10n_text.dart';
import 'otel_restoran_data.dart' show kKabe, kMescidiNebevi;

/// Mekke, Medine ve şehirlerarası toplu taşıma rehberi (umrecinin kendi
/// başına kullanacağı kamu / üçüncü taraf ulaşım; uygulamanın transfer hizmeti DEĞİL).
///
/// KONTROL TARİHİ: Tüm bilgiler 6 Kasım 2026'da web üzerinden kontrol edildi.
/// Her bilginin kaynağı yanındaki yorumda. Kaynaklar arayüzde GÖSTERİLMEZ.
///
/// KOORDİNATLAR: OpenStreetMap Overpass API (overpass-api.de), 6 Kasım 2026.
/// Yorumda OSM öğe kimliği ve OSM'deki ad var. Tahmini koordinat YOK.
///
/// DOĞRULUK KURALI: Doğrulanamayan hat numarası / saat / ücret yazılmadı.
/// Kaynaklar arasında çelişen değerler aralık olarak verildi ve "yaklaşık" diye işaretlendi.

// ───────────────────────── Türler ─────────────────────────

enum UlasimNoktaTur { harem, otobus, tren, havalimani, otogar, mescid }

/// Haritada gösterilen durak / istasyon / terminal.
class UlasimNoktasi {
  const UlasimNoktasi({required this.id, required this.ad, required this.point, required this.tur});

  final String id;
  final L10nText ad;
  final LatLng point;
  final UlasimNoktaTur tur;
}

/// Bir otobüs hattı kartı.
class OtobusHatti {
  const OtobusHatti({
    required this.numara,
    required this.renk,
    required this.nereden,
    required this.nereye,
    this.saat,
    this.ucret,
    this.sefer,
    this.duraklar = const [],
    this.notlar = const [],
    this.kalkisId,
  });

  final String numara;

  /// Rozet rengi (ARGB).
  final int renk;
  final L10nText nereden;
  final L10nText nereye;
  final L10nText? saat;
  final L10nText? ucret;
  final L10nText? sefer;

  /// Hattın geçtiği bilinen semt / duraklar (sırasız olabilir).
  final List<L10nText> duraklar;
  final List<L10nText> notlar;

  /// Harem tarafındaki kalkış noktası ([UlasimNoktasi.id]); yoksa yol tarifi düğmesi çıkmaz.
  final String? kalkisId;
}

/// Madde: isteğe bağlı kalın başlık + metin.
class UlasimMadde {
  const UlasimMadde(this.metin, {this.baslik});

  final L10nText? baslik;
  final L10nText metin;
}

enum UlasimIkon { tren, otobus, taksi, ucak, bilet, uyari, uygulama, konum, saat, harem, tur, guvenlik }

/// Açılır bilgi kartı (istasyon, operatör, ipucu grubu).
class UlasimBolum {
  const UlasimBolum({
    required this.baslik,
    required this.ikon,
    required this.maddeler,
    this.altBaslik,
    this.noktaId,
    this.chips = const [],
  });

  final L10nText baslik;
  final L10nText? altBaslik;
  final UlasimIkon ikon;
  final List<UlasimMadde> maddeler;
  final List<L10nText> chips;

  /// Haritada gösterilecek / yol tarifi verilecek nokta.
  final String? noktaId;
}

// ───────────────────────── Arayüz metinleri ─────────────────────────

class UlasimMetin {
  UlasimMetin._();

  static const baslik = L10nText(tr: 'Toplu Taşıma Rehberi', en: 'Public Transport Guide', ar: 'دليل النقل العام');
  static const tabMekke = L10nText(tr: 'Mekke', en: 'Makkah', ar: 'مكة');
  static const tabMedine = L10nText(tr: 'Medine', en: 'Madinah', ar: 'المدينة');
  static const tabSehirlerarasi =
      L10nText(tr: 'Şehirlerarası & Tren', en: 'Intercity & Train', ar: 'بين المدن والقطار');
  static const tabTaksi = L10nText(tr: 'Taksi', en: 'Taxi', ar: 'سيارات الأجرة');

  static const ustNot = L10nText(
    tr: 'Fiyatlar, saatler ve güzergâhlar sık değişir; özellikle Ramazan ve hac döneminde. '
        'Yola çıkmadan önce işletmecinin uygulamasından kontrol edin. '
        '"Yaklaşık" yazan değerler kesin değildir.',
    en: 'Fares, timetables and routes change often, especially in Ramadan and Hajj. '
        'Check the operator\'s app before you travel. Values marked "approx." are not exact.',
    ar: 'الأسعار والمواعيد والمسارات تتغير كثيرًا، خاصة في رمضان والحج. '
        'تحقق من تطبيق المشغّل قبل السفر. القيم المذكورة "تقريبًا" غير دقيقة.',
  );

  static const hatlar = L10nText(tr: 'Otobüs hatları', en: 'Bus routes', ar: 'مسارات الحافلات');
  static const genelBilgi = L10nText(tr: 'Bilmeniz gerekenler', en: 'Good to know', ar: 'معلومات مهمة');
  static const duraklar = L10nText(tr: 'Geçtiği yerler', en: 'Main stops', ar: 'أبرز المحطات');
  static const istasyonlar =
      L10nText(tr: 'Haremeyn Hızlı Treni istasyonları', en: 'Haramain High-Speed Railway stations', ar: 'محطات قطار الحرمين');
  static const otobusSirketleri = L10nText(tr: 'Şehirlerarası otobüs', en: 'Intercity buses', ar: 'الحافلات بين المدن');
  static const havalimani = L10nText(tr: 'Havalimanından ulaşım', en: 'From the airport', ar: 'من المطار');
  static const ekBilgi = L10nText(tr: 'Ek bilgiler', en: 'More information', ar: 'معلومات إضافية');
  static const haremeUzaklik = L10nText(tr: 'Harem\'e', en: 'to the Haram', ar: 'إلى الحرم');
  static const yaklasik = L10nText(tr: 'yaklaşık', en: 'approx.', ar: 'تقريبًا');
  static const hepsiniGoster = L10nText(tr: 'Tümünü göster', en: 'Show all', ar: 'عرض الكل');
  static const kabe = L10nText(tr: 'Kâbe', en: 'Kaaba', ar: 'الكعبة');
  static const mescidiNebevi = L10nText(tr: 'Mescid-i Nebevî', en: "Prophet's Mosque", ar: 'المسجد النبوي');
}

// ───────────────────────── Noktalar (OSM) ─────────────────────────

const kUlasimNoktalari = <UlasimNoktasi>[
  // ── MEKKE ── (Mekke Otobüsü merkez terminalleri; OSM'de "محطة 1..4" bus_stop düğümleri)
  // OSM node 9957269654 "محطة 1, جبل الكعبة" / "Terminal 1, Jabal Alka'bah"
  UlasimNoktasi(
    id: 'mk_t1',
    ad: L10nText(tr: '1 No\'lu Terminal · Cebel-i Kâbe (Cerval)', en: 'Terminal 1 · Jabal Al-Kaaba (Jarwal)', ar: 'محطة 1 · جبل الكعبة (جرول)'),
    point: LatLng(21.431252, 39.816640),
    tur: UlasimNoktaTur.otobus,
  ),
  // OSM node 9964861540 "محطة 2, المروة" / "Terminal 2, Almarwah" (Gazze semti, Harem'in kuzeydoğusu)
  UlasimNoktasi(
    id: 'mk_t2',
    ad: L10nText(tr: '2 No\'lu Terminal · Merve (Gazze)', en: 'Terminal 2 · Al-Marwah (Al-Ghazzah)', ar: 'محطة 2 · المروة (الغزة)'),
    point: LatLng(21.430412, 39.829625),
    tur: UlasimNoktaTur.otobus,
  ),
  // OSM node 12736480811 "محطة 3, ابراهيم الخليل" / "Terminal 3, Ibrahim Alkhalil"
  UlasimNoktasi(
    id: 'mk_t3',
    ad: L10nText(tr: '3 No\'lu Terminal · İbrahim Halil Cd.', en: 'Terminal 3 · Ibrahim Al-Khalil St.', ar: 'محطة 3 · شارع إبراهيم الخليل'),
    point: LatLng(21.415893, 39.822911),
    tur: UlasimNoktaTur.otobus,
  ),
  // OSM node 9970701317 "محطة 4, اجياد" / "Terminal 4, Ajyad"
  UlasimNoktasi(
    id: 'mk_t4',
    ad: L10nText(tr: '4 No\'lu Terminal · Ecyad', en: 'Terminal 4 · Ajyad', ar: 'محطة 4 · أجياد'),
    point: LatLng(21.416828, 39.827777),
    tur: UlasimNoktaTur.otobus,
  ),
  // OSM node 5435296635 "الشبيكة439" (bus_stop)
  UlasimNoktasi(
    id: 'mk_subeyke',
    ad: L10nText(tr: 'Şübeyke durağı', en: 'Shubaikah stop', ar: 'موقف الشبيكة'),
    point: LatLng(21.422241, 39.821337),
    tur: UlasimNoktaTur.otobus,
  ),
  // OSM node 9970696109 "كدى 20" / "Kudai 20" (Kudey durak grubu, Harem'in güneyi)
  UlasimNoktasi(
    id: 'mk_kudey',
    ad: L10nText(tr: 'Kudey durakları', en: 'Kudai stops', ar: 'مواقف كدي'),
    point: LatLng(21.407261, 39.829544),
    tur: UlasimNoktaTur.otobus,
  ),
  // OSM node 4852132708 "محطة حافلات جرول مكة" / "Jarwal Bus Station Makkah" (şehirlerarası otogar)
  UlasimNoktasi(
    id: 'mk_cerval_otogar',
    ad: L10nText(tr: 'Cerval Şehirlerarası Otogarı', en: 'Jarwal Intercity Bus Station', ar: 'محطة حافلات جرول'),
    point: LatLng(21.430409, 39.817255),
    tur: UlasimNoktaTur.otogar,
  ),
  // OSM node 10956967098 "قطار الحرمين السريع - مكة" (Rusayfe)
  UlasimNoktasi(
    id: 'hhr_mekke',
    ad: L10nText(tr: 'Haremeyn Treni · Mekke (Rusayfe)', en: 'Haramain Train · Makkah (Rusaifah)', ar: 'قطار الحرمين · مكة (الرصيفة)'),
    point: LatLng(21.417656, 39.788532),
    tur: UlasimNoktaTur.tren,
  ),
  // Tenim: gezi_mekke_b_data.dart ile aynı, OSM way 431611519 (مسجد التنعيم)
  UlasimNoktasi(
    id: 'mk_tenim',
    ad: L10nText(tr: 'Tenim (Hz. Âişe) Mescidi', en: "Tan'eem (Aisha) Mosque", ar: 'مسجد التنعيم (عائشة)'),
    point: LatLng(21.46771, 39.80137),
    tur: UlasimNoktaTur.mescid,
  ),

  // ── MEDİNE ──
  // OSM node 11440993896 "حافلات المدينة المركزية الشمالية" (Kuzey Merkez durağı; 300 hattının Harem ucu)
  UlasimNoktasi(
    id: 'md_kuzey',
    ad: L10nText(tr: 'Kuzey Merkez durağı', en: 'Northern Central stop', ar: 'المركزية الشمالية'),
    point: LatLng(24.474985, 39.610922),
    tur: UlasimNoktaTur.otobus,
  ),
  // OSM node 5900331631 "Al Aliyah Bus Station"
  UlasimNoktasi(
    id: 'md_aliye',
    ad: L10nText(tr: 'Âliye durağı', en: 'Al-Aliyah stop', ar: 'محطة العالية'),
    point: LatLng(24.467565, 39.603628),
    tur: UlasimNoktaTur.otobus,
  ),
  // OSM node 5900385753 "Al Madinah City Sightseeing - Bus Station 1 - Almasged Nabawi"
  UlasimNoktasi(
    id: 'md_tur',
    ad: L10nText(tr: 'Şehir turu otobüsü 1. durak', en: 'City sightseeing bus stop 1', ar: 'الحافلة السياحية - المحطة 1'),
    point: LatLng(24.472513, 39.611504),
    tur: UlasimNoktaTur.otobus,
  ),
  // Kuba: gezi_medine_data.dart ile aynı, OSM relation 18051738
  UlasimNoktasi(
    id: 'md_kuba',
    ad: L10nText(tr: 'Kuba Mescidi', en: 'Quba Mosque', ar: 'مسجد قباء'),
    point: LatLng(24.439364, 39.617255),
    tur: UlasimNoktaTur.mescid,
  ),
  // OSM node 10957110707 "قطار الحرمين السريع - المدينة المنورة"
  UlasimNoktasi(
    id: 'hhr_medine',
    ad: L10nText(tr: 'Haremeyn Treni · Medine', en: 'Haramain Train · Madinah', ar: 'قطار الحرمين · المدينة'),
    point: LatLng(24.472297, 39.699604),
    tur: UlasimNoktaTur.tren,
  ),
  // OSM way 401660557 "مبنى المطار - مطار الأمير محمد بن عبدالعزيز الدولي بالمدينة المنورة"
  UlasimNoktasi(
    id: 'md_havalimani',
    ad: L10nText(tr: 'Medine Havalimanı', en: 'Madinah Airport', ar: 'مطار المدينة المنورة'),
    point: LatLng(24.554108, 39.714517),
    tur: UlasimNoktaTur.havalimani,
  ),
  // OSM node 11545563957 "محطة حافلات المدينة" / "Madinah Bus Station" (şehirlerarası)
  UlasimNoktasi(
    id: 'md_otogar',
    ad: L10nText(tr: 'Medine Şehirlerarası Otogarı', en: 'Madinah Intercity Bus Station', ar: 'محطة حافلات المدينة'),
    point: LatLng(24.492004, 39.624392),
    tur: UlasimNoktaTur.otogar,
  ),

  // ── CİDDE / KAEC ──
  // OSM way 485762503 "قطار الحرمين السريع - السليمانية - جدة"
  UlasimNoktasi(
    id: 'hhr_cidde',
    ad: L10nText(tr: 'Haremeyn Treni · Cidde (Süleymaniye)', en: 'Haramain Train · Jeddah (Sulaymaniyah)', ar: 'قطار الحرمين · جدة (السليمانية)'),
    point: LatLng(21.516603, 39.245256),
    tur: UlasimNoktaTur.tren,
  ),
  // OSM way 550729660 "قطار الحرمين السريع - مطار الملك عبدالعزيز الدولي"
  UlasimNoktasi(
    id: 'hhr_havalimani',
    ad: L10nText(tr: 'Haremeyn Treni · Cidde Havalimanı', en: 'Haramain Train · Jeddah Airport', ar: 'قطار الحرمين · مطار جدة'),
    point: LatLng(21.658524, 39.174630),
    tur: UlasimNoktaTur.tren,
  ),
  // OSM node 2147398509 "King Abdullah Economic City" (railway=station)
  UlasimNoktasi(
    id: 'hhr_kaec',
    ad: L10nText(tr: 'Haremeyn Treni · KAEC (Rabiğ)', en: 'Haramain Train · KAEC (Rabigh)', ar: 'قطار الحرمين · مدينة الملك عبدالله الاقتصادية'),
    point: LatLng(22.421824, 39.191746),
    tur: UlasimNoktaTur.tren,
  ),
  // OSM relation 20056128 "صالة 1" / "Terminal 1"
  UlasimNoktasi(
    id: 'jed_t1',
    ad: L10nText(tr: 'Cidde Havalimanı · 1. Terminal', en: 'Jeddah Airport · Terminal 1', ar: 'مطار جدة · الصالة 1'),
    point: LatLng(21.667095, 39.171170),
    tur: UlasimNoktaTur.havalimani,
  ),
  // OSM way 41399788 "مطار الملك عبد العزيز - الصالة الشمالية" / "KAIA Airport - North Terminal"
  UlasimNoktasi(
    id: 'jed_kuzey',
    ad: L10nText(tr: 'Cidde Havalimanı · Kuzey Terminali', en: 'Jeddah Airport · North Terminal', ar: 'مطار جدة · الصالة الشمالية'),
    point: LatLng(21.687547, 39.143741),
    tur: UlasimNoktaTur.havalimani,
  ),
  // OSM way 41399787 "Hajj Terminal East"
  UlasimNoktasi(
    id: 'jed_hac',
    ad: L10nText(tr: 'Cidde Havalimanı · Hac Terminali', en: 'Jeddah Airport · Hajj Terminal', ar: 'مطار جدة · صالة الحجاج'),
    point: LatLng(21.700097, 39.141403),
    tur: UlasimNoktaTur.havalimani,
  ),
];

UlasimNoktasi? ulasimNoktasi(String? id) {
  if (id == null) return null;
  for (final n in kUlasimNoktalari) {
    if (n.id == id) return n;
  }
  return null;
}

List<UlasimNoktasi> noktalar(List<String> ids) => [for (final id in ids) ?ulasimNoktasi(id)];

const kMekkeHaritaIds = ['mk_t1', 'mk_t2', 'mk_t3', 'mk_t4', 'mk_subeyke', 'mk_kudey', 'mk_cerval_otogar', 'hhr_mekke', 'mk_tenim'];
const kMedineHaritaIds = ['md_kuzey', 'md_aliye', 'md_tur', 'md_kuba', 'hhr_medine', 'md_havalimani', 'md_otogar'];
const kSehirlerarasiHaritaIds = [
  'hhr_mekke',
  'hhr_cidde',
  'hhr_havalimani',
  'hhr_kaec',
  'hhr_medine',
  'jed_t1',
  'mk_cerval_otogar',
  'md_otogar',
  'jed_kuzey',
  'jed_hac',
  'md_havalimani',
];

/// Harem merkezleri (Kâbe / Mescid-i Nebevî) otel_restoran_data.dart'tan.
const kUlasimKabe = kKabe;
const kUlasimNebevi = kMescidiNebevi;

// ───────────────────────── Ortak kısa metinler ─────────────────────────

const _ucretMekke = L10nText(tr: '4 riyal', en: 'SAR 4', ar: '4 ريال');
const _saatMekke = L10nText(tr: 'Günde ~22 saat', en: '~22 h a day', ar: '~22 ساعة يوميًا');
const _ucretMedine = L10nText(tr: '3,45 riyal', en: 'SAR 3.45', ar: '3.45 ريال');

// ───────────────────────── MEKKE ─────────────────────────

// KAYNAK (genel): Gulf News, "Budget travel in Makkah: How Umrah pilgrims can save with the public bus system",
//   19.09.2024: 12 hat (aşağıdaki numara/uç listesi), tek yolculuk 4 SAR, ekspres 8 SAR, günlük (4 yolculuk) 15 SAR,
//   haftalık (16) 58 SAR, aylık (50) 150 SAR; kâğıt bilet otobüste / bilet makinesinde / "Makkah Bus" uygulamasında,
//   paketler yalnız uygulamada.
// KAYNAK (saat): Saudipedia "Makkah Bus Project": günde 22 saat, yoğun sezonda 24 saat.
// KAYNAK (güzergâh ayrıntısı): @MakkahBuses resmî X hesabı, 16.03.2024 (Ramazan planı) ve
//   rahhal.wego.com (19.03.2024) / halalkhalij.com (03.04.2024) aynı listeyi aktarıyor.
// Hat başına sefer sıklığı resmî kaynakta bulunamadı → yazılmadı.
// Çelişki notu: khaleejblog.com 2026 rehberindeki hat tablosu resmî listeyle uyuşmuyor, KULLANILMADI.
const kMekkeGenel = <UlasimMadde>[
  UlasimMadde(
    L10nText(
      tr: 'Mekke Otobüsü (Makkah Bus) 12 hatla şehrin büyük kısmını Harem çevresindeki terminallere bağlar. '
          'Otobüsler günde yaklaşık 22 saat, yoğun sezonda 24 saat çalışır.',
      en: 'Makkah Bus links most of the city to terminals around the Haram on 12 routes. '
          'Buses run about 22 hours a day, 24 hours in peak season.',
    ),
    baslik: L10nText(tr: 'Ağ:', en: 'Network:', ar: 'الشبكة:'),
  ),
  UlasimMadde(
    L10nText(
      tr: 'Tek yolculuk 4 riyal, ekspres sefer 8 riyal. Uygulamada günlük (4 yolculuk) 15, '
          'haftalık (16 yolculuk) 58, aylık (50 yolculuk) 150 riyallik paketler var (2024 tarifesi).',
      en: 'Single trip SAR 4, express SAR 8. The app sells day (4 trips) SAR 15, week (16 trips) SAR 58 '
          'and month (50 trips) SAR 150 passes (2024 tariff).',
    ),
    baslik: L10nText(tr: 'Ücret:', en: 'Fare:', ar: 'الأجرة:'),
  ),
  UlasimMadde(
    L10nText(
      tr: '"Makkah Bus" (Hafilat Mekke) uygulamasından kartla ya da dijital cüzdanla; duraklardaki bilet makinelerinden '
          'veya otobüste. Şoföre nakit verilmez.',
      en: 'In the "Makkah Bus" app by card or digital wallet, at stop ticket machines, or on board. '
          'Do not pay the driver in cash.',
    ),
    baslik: L10nText(tr: 'Bilet:', en: 'Tickets:', ar: 'التذاكر:'),
  ),
  UlasimMadde(
    L10nText(
      tr: 'Harem çevresindeki ana terminaller: 1 No\'lu Cebel-i Kâbe (Cerval), 2 No\'lu Merve (Gazze), '
          '3 No\'lu İbrahim Halil ve 4 No\'lu Ecyad. Haritadan en yakınını seçin.',
      en: 'Main terminals around the Haram: T1 Jabal Al-Kaaba (Jarwal), T2 Al-Marwah (Al-Ghazzah), '
          'T3 Ibrahim Al-Khalil and T4 Ajyad. Pick the nearest one on the map.',
    ),
    baslik: L10nText(tr: 'Terminaller:', en: 'Terminals:', ar: 'المحطات:'),
  ),
];

const kMekkeHatlari = <OtobusHatti>[
  // Gulf News 2024: "Al Buhayrat - Batha Quraish". @MakkahBuses 2024: Batha Quraish → Medine yolu; 3. Çevre Yolu, Ümmü'l-Cud, Buheyrat.
  OtobusHatti(
    numara: '1',
    renk: 0xFF235347,
    nereden: L10nText(tr: 'Buheyrat', en: 'Al-Buhayrat', ar: 'البحيرات'),
    nereye: L10nText(tr: 'Batha Kureyş', en: 'Batha Quraish', ar: 'بطحاء قريش'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    duraklar: [
      L10nText(tr: '3. Çevre Yolu', en: 'Third Ring Road', ar: 'الطريق الدائري الثالث'),
      L10nText(tr: 'Ümmü\'l-Cud', en: 'Umm Al-Joud', ar: 'أم الجود'),
      L10nText(tr: 'Medine yolu', en: 'Madinah Road', ar: 'طريق المدينة'),
    ],
  ),
  // Gulf News 2024: "Jarwal - An Nawwariyyah". @MakkahBuses 2024: Nevvariye karşısı → Cebel-i Kâbe (Cerval).
  OtobusHatti(
    numara: '2',
    renk: 0xFF1E6091,
    nereden: L10nText(tr: 'Cerval (Cebel-i Kâbe)', en: 'Jarwal (Jabal Al-Kaaba)', ar: 'جرول (جبل الكعبة)'),
    nereye: L10nText(tr: 'Nevvariye', en: 'An-Nawwariyyah', ar: 'النوارية'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    kalkisId: 'mk_t1',
  ),
  // Gulf News 2024: "Al Kakiyyah - Ash Shuhada". @MakkahBuses 2024: 4. Çevre Yolu, Şevkiye, Mansur Cd.
  OtobusHatti(
    numara: '3',
    renk: 0xFF8E5A2B,
    nereden: L10nText(tr: 'Kakiye', en: 'Al-Kakiyyah', ar: 'الكعكية'),
    nereye: L10nText(tr: 'Şüheda', en: 'Ash-Shuhada', ar: 'الشهداء'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    duraklar: [
      L10nText(tr: '4. Çevre Yolu', en: 'Fourth Ring Road', ar: 'الطريق الدائري الرابع'),
      L10nText(tr: 'Şevkiye', en: 'Ash-Shawqiyyah', ar: 'الشوقية'),
      L10nText(tr: 'Mansur Caddesi', en: 'Al-Mansour Street', ar: 'شارع المنصور'),
    ],
  ),
  // Gulf News 2024: "Al Gazzah - Kuday". @MakkahBuses 2024: Kudey otoparkı → Merve Merkez, Aziziye üzerinden.
  // OSM'de Kudey ve "Terminal 2, Almarwah" duraklarının birlikte bulunması da bunu destekliyor.
  OtobusHatti(
    numara: '4',
    renk: 0xFF6A4C93,
    nereden: L10nText(tr: 'Gazze (Merve terminali)', en: 'Al-Ghazzah (Al-Marwah terminal)', ar: 'الغزة (محطة المروة)'),
    nereye: L10nText(tr: 'Kudey', en: 'Kudai', ar: 'كدي'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    duraklar: [
      L10nText(tr: 'Aziziye', en: 'Al-Aziziyah', ar: 'العزيزية'),
      L10nText(tr: 'Kudey otoparkı', en: 'Kudai parking', ar: 'مواقف كدي'),
    ],
    kalkisId: 'mk_t2',
  ),
  // Gulf News 2024: "Ajyad - Alawali". @MakkahBuses 2024 (Ramazan): Kudey istasyonu → Avali.
  OtobusHatti(
    numara: '5',
    renk: 0xFFB23A48,
    nereden: L10nText(tr: 'Ecyad', en: 'Ajyad', ar: 'أجياد'),
    nereye: L10nText(tr: 'Avali', en: 'Al-Awali', ar: 'العوالي'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    notlar: [
      L10nText(
        tr: 'Ramazan planında Kudey istasyonundan kalkıyor.',
        en: 'In the Ramadan plan it departs from Kudai station.',
      ),
    ],
    kalkisId: 'mk_t4',
  ),
  // Gulf News 2024: "Ar Rusayfah - Al Abdeyah". @MakkahBuses 2024: 1. bölüm Ümmü'l-Kura Üniv. → Güney Aziziye;
  //   2. bölüm Haremeyn istasyonu (Rusayfe) → Cebel-i Kâbe (Cerval).
  OtobusHatti(
    numara: '6',
    renk: 0xFF2A9D8F,
    nereden: L10nText(tr: 'Rusayfe', en: 'Ar-Rusayfah', ar: 'الرصيفة'),
    nereye: L10nText(tr: 'Abdiye', en: 'Al-Abdiyah', ar: 'العابدية'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    duraklar: [
      L10nText(tr: 'Haremeyn tren istasyonu', en: 'Haramain train station', ar: 'محطة قطار الحرمين'),
      L10nText(tr: 'Ümmü\'l-Kura Üniversitesi', en: 'Umm Al-Qura University', ar: 'جامعة أم القرى'),
      L10nText(tr: 'Güney Aziziye', en: 'South Aziziyah', ar: 'العزيزية الجنوبية'),
    ],
    notlar: [
      L10nText(
        tr: 'Ramazan planında bir kolu tren istasyonundan Cebel-i Kâbe (Cerval) terminaline gidiyor.',
        en: 'In the Ramadan plan one branch runs from the train station to the Jabal Al-Kaaba (Jarwal) terminal.',
      ),
    ],
  ),
  // Gulf News 2024: "Ash Shubaikah - Al Haramain Train". @MakkahBuses 2024: A7 tren istasyonu → Batı Cebel-i Kâbe,
  //   1. Çevre Yolu altından. Saudi Gazette 2021 planı: tren istasyonu → Cebel-i Ömer.
  OtobusHatti(
    numara: '7',
    renk: 0xFFD17A00,
    nereden: L10nText(tr: 'Şübeyke', en: 'Ash-Shubaikah', ar: 'الشبيكة'),
    nereye: L10nText(tr: 'Haremeyn tren istasyonu', en: 'Haramain train station', ar: 'محطة قطار الحرمين'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    duraklar: [
      L10nText(tr: 'Cebel-i Ömer', en: 'Jabal Omar', ar: 'جبل عمر'),
      L10nText(tr: '1. Çevre Yolu', en: 'First Ring Road', ar: 'الطريق الدائري الأول'),
    ],
    notlar: [
      L10nText(
        tr: 'Trenle gelenler için Harem\'e en pratik otobüs. Ramazan\'da "A7" adıyla Batı Cebel-i Kâbe\'ye çalışıyor.',
        en: 'Most practical bus to the Haram for train passengers. In Ramadan it runs as "A7" to West Jabal Al-Kaaba.',
      ),
    ],
    kalkisId: 'mk_subeyke',
  ),
  // Gulf News 2024: "Al Gazzah - Um Ajud". @MakkahBuses 2024: Eski Cidde yolu → Merve Merkez, Küçük Çarşı tüneli / Hacun Cd.
  OtobusHatti(
    numara: '8',
    renk: 0xFF3D5A80,
    nereden: L10nText(tr: 'Gazze (Merve terminali)', en: 'Al-Ghazzah (Al-Marwah terminal)', ar: 'الغزة (محطة المروة)'),
    nereye: L10nText(tr: 'Ümmü\'l-Cud', en: 'Umm Al-Joud', ar: 'أم الجود'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    duraklar: [
      L10nText(tr: 'Küçük Çarşı tüneli', en: 'Al-Souq Al-Saghir tunnel', ar: 'نفق السوق الصغير'),
      L10nText(tr: 'Hacun Caddesi', en: 'Al-Hajoun Street', ar: 'شارع الحجون'),
      L10nText(tr: 'Eski Cidde yolu', en: 'Old Jeddah Road', ar: 'طريق جدة القديم'),
    ],
    kalkisId: 'mk_t2',
  ),
  // Gulf News 2024: "Ash Shara'i - Alawali". @MakkahBuses 2024: Şerayi → Avali Emir Sultan yolu, Kral Faysal Cd. üzerinden.
  OtobusHatti(
    numara: '9',
    renk: 0xFF5C7457,
    nereden: L10nText(tr: 'Şerayi', en: "Ash-Shara'i", ar: 'الشرائع'),
    nereye: L10nText(tr: 'Avali', en: 'Al-Awali', ar: 'العوالي'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    duraklar: [
      L10nText(tr: 'Kral Faysal Caddesi', en: 'King Faisal Street', ar: 'شارع الملك فيصل'),
      L10nText(tr: 'Emir Sultan yolu', en: 'Prince Sultan Road', ar: 'طريق الأمير سلطان'),
    ],
  ),
  // Gulf News 2024: "Al Gazzah - Ju'ranah". @MakkahBuses 2024: Ci'rane Mescidi → Merve Merkez.
  OtobusHatti(
    numara: '10',
    renk: 0xFF9C6644,
    nereden: L10nText(tr: 'Gazze (Merve terminali)', en: 'Al-Ghazzah (Al-Marwah terminal)', ar: 'الغزة (محطة المروة)'),
    nereye: L10nText(tr: 'Ci\'rane Mescidi', en: "Al-Ji'ranah Mosque", ar: 'مسجد الجعرانة'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    notlar: [
      L10nText(
        tr: 'Ci\'rane de bir mikat noktasıdır; umreye buradan ihrama girerek de başlanabilir.',
        en: "Al-Ji'ranah is also a miqat point for Umrah.",
      ),
    ],
    kalkisId: 'mk_t2',
  ),
  // Gulf News 2024: "Al Hajlah - Ash Shuhada". @MakkahBuses 2024: Mesfele İbrahim Halil Cd. → Şüheda; Kakiye, Şevkiye, Rusayfe.
  OtobusHatti(
    numara: '11',
    renk: 0xFF7B2D26,
    nereden: L10nText(tr: 'Hacle', en: 'Al-Hajlah', ar: 'الحجلة'),
    nereye: L10nText(tr: 'Şüheda', en: 'Ash-Shuhada', ar: 'الشهداء'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    duraklar: [
      L10nText(tr: 'Mesfele (İbrahim Halil Cd.)', en: 'Al-Misfalah (Ibrahim Al-Khalil St.)', ar: 'المسفلة (شارع إبراهيم الخليل)'),
      L10nText(tr: 'Kakiye', en: 'Al-Kakiyyah', ar: 'الكعكية'),
      L10nText(tr: 'Şevkiye', en: 'Ash-Shawqiyyah', ar: 'الشوقية'),
      L10nText(tr: 'Rusayfe', en: 'Ar-Rusayfah', ar: 'الرصيفة'),
    ],
  ),
  // Gulf News 2024: "Jarwal - Al Umrah". @MakkahBuses 16.03.2024: "مسار رقم 12 من مسجد التنعيم إلى محطة جبل الكعبة المركزية".
  // İki kaynak uyumlu → DOĞRULANDI.
  OtobusHatti(
    numara: '12',
    renk: 0xFF0B2B26,
    nereden: L10nText(tr: 'Cebel-i Kâbe (Cerval)', en: 'Jabal Al-Kaaba (Jarwal)', ar: 'جبل الكعبة (جرول)'),
    nereye: L10nText(tr: 'Tenim (Umre) Mescidi', en: "Tan'eem (Umrah) Mosque", ar: 'مسجد التنعيم (العمرة)'),
    saat: _saatMekke,
    ucret: _ucretMekke,
    notlar: [
      L10nText(
        tr: 'Mekke\'deyken yeni umre için ihrama girmek isteyenlerin hattı (Hz. Âişe Mescidi).',
        en: 'The line for pilgrims going to the miqat for a new Umrah (Aisha Mosque).',
      ),
    ],
    kalkisId: 'mk_t1',
  ),
];

const kMekkeEk = <UlasimBolum>[
  // Tenim: hat 12 (yukarıdaki kaynaklar). Taksi aralığı: harmain-travels / taxiserviceksa / yolcu yorumları
  //   (gidiş-dönüş 50–150 SAR) çelişkili → tek yön "yaklaşık 30–50" olarak verildi.
  UlasimBolum(
    baslik: L10nText(tr: 'Tenim\'e (Hz. Âişe Mescidi) gitmek', en: "Getting to Tan'eem (Aisha Mosque)", ar: 'الذهاب إلى مسجد التنعيم'),
    ikon: UlasimIkon.harem,
    noktaId: 'mk_tenim',
    maddeler: [
      UlasimMadde(
        L10nText(
          tr: '1 No\'lu Cebel-i Kâbe (Cerval) terminalinden 12 numaralı otobüse binin; ücret 4 riyal.',
          en: 'Take bus 12 from Terminal 1 Jabal Al-Kaaba (Jarwal); fare SAR 4.',
        ),
        baslik: L10nText(tr: 'Otobüs:', en: 'Bus:', ar: 'الحافلة:'),
      ),
      UlasimMadde(
        L10nText(
          tr: 'Harem\'den yaklaşık 7 km. Tek yön yaklaşık 30–50 riyal; dönüşü bekleme için fiyatı binmeden konuşun.',
          en: 'About 7 km from the Haram. One way approx. SAR 30–50; agree on waiting and the return before you get in.',
        ),
        baslik: L10nText(tr: 'Taksi:', en: 'Taxi:', ar: 'سيارة أجرة:'),
      ),
    ],
  ),
  // Ramazan / yoğun dönem: SPA N2066385 (Mart 2024, RCMC Ramazan planı: 12 hat, 400 otobüs);
  //   Saudi Gazette 631051 "17 round-the-clock bus routes to and from the Grand Mosque" (Ramazan ring hatları, Kudey otoparkı vb.).
  //   Saudipedia: yoğun sezonda 24 saat.
  UlasimBolum(
    baslik: L10nText(tr: 'Ramazan ve yoğun dönem', en: 'Ramadan and peak season', ar: 'رمضان والمواسم'),
    ikon: UlasimIkon.saat,
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Ramazan ve hac döneminde otobüsler 24 saat çalışır; bazı hatların kalkış noktası değişir (ör. 7 yerine "A7").',
        en: 'In Ramadan and Hajj buses run 24 hours and some routes change their terminals (e.g. "A7" instead of 7).',
      )),
      UlasimMadde(L10nText(
        tr: 'Bu dönemlerde Kudey gibi şehir dışı otoparklardan Harem\'e ek ring seferleri konur. '
            'Güncel ring listesi her sezon "Makkah Bus" uygulamasında duyurulur.',
        en: 'Extra shuttles run from park-and-ride lots such as Kudai to the Haram. '
            'The current list is announced each season in the "Makkah Bus" app.',
      )),
      UlasimMadde(L10nText(
        tr: 'Cuma ve teravih çıkışlarında duraklar çok kalabalık olur; namazdan hemen sonra yürüyerek uzaklaşıp ileri bir duraktan binmek zaman kazandırır.',
        en: 'Stops get very crowded after Friday and Taraweeh prayers; walking to a stop further away often saves time.',
      )),
    ],
  ),
  // Hira hattı: Arab News 11.01.2026 (SPA): Mescid-i Haram ↔ Hira Kültür Bölgesi yeni hat; numara ve ücret açıklanmamış → yazılmadı.
  UlasimBolum(
    baslik: L10nText(tr: 'Hira Kültür Bölgesi hattı', en: 'Hira Cultural District route', ar: 'مسار حي حراء الثقافي'),
    ikon: UlasimIkon.tur,
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Ocak 2026\'da Mescid-i Haram ile Hira Kültür Bölgesi (Vahiy Sergisi, Kur\'an Müzesi, Hira Mağarası yolu) arasında yeni bir hat açıldı. '
            'Hat numarası ve saatlerini uygulamadan kontrol edin.',
        en: 'In January 2026 a new route opened between the Grand Mosque and the Hira Cultural District '
            '(Revelation Exhibition, Holy Quran Museum, Cave of Hira path). Check its number and hours in the app.',
      )),
    ],
  ),
];

// ───────────────────────── MEDİNE ─────────────────────────

// KAYNAK: saptco.com.sa/qr-madinah-bus (Medine Otobüsü / SAPTCO): genel saat 06:00–22:00, her gün; "Madinah Bus" uygulaması ve kart.
// KAYNAK: Arab News 30.04.2025: 9 yeni hat ile toplam 15 hat, 455+ durak.
// KAYNAK: al-madina.com 08.10.2026: havalimanı hattı ücreti 11,50 → 3,45 SAR; 300 hattı Haremeyn istasyonu ↔ Mescid-i Nebevî
//   (Kuzey Merkez); 390 hattı Kuba ↔ Matar (Havalimanı) mahallesi.
// KAYNAK: economy-today.com 08.06.2026: 400 hattı havalimanı ↔ Mescid-i Nebevî, 24 saat.
// KAYNAK: madinahbus.mda.gov.sa/ticket.html (arama özetinde): tüm hatlar 3,45 SAR (sunucu erişilemedi, özetten).
// 401–404 hatlarının uçları yalnız ksaexpats.com'da (Ocak 2025) var ve SAPTCO'nun 403-A/403-B adlandırmasıyla çelişiyor → YAZILMADI.
const kMedineGenel = <UlasimMadde>[
  UlasimMadde(
    L10nText(
      tr: 'Medine Otobüsü 15 hatla çalışır. Genel çalışma saati 06:00–22:00; havalimanı hattı 24 saat.',
      en: 'Madinah Bus has 15 routes. General hours 06:00–22:00; the airport route runs 24 hours.',
    ),
    baslik: L10nText(tr: 'Ağ:', en: 'Network:', ar: 'الشبكة:'),
  ),
  UlasimMadde(
    L10nText(
      tr: 'Tek yolculuk 3,45 riyal. Ekim 2026\'dan beri havalimanı hattı da 3,45 riyal (önceden 11,50).',
      en: 'Single trip SAR 3.45. Since October 2026 the airport route is also SAR 3.45 (was 11.50).',
    ),
    baslik: L10nText(tr: 'Ücret:', en: 'Fare:', ar: 'الأجرة:'),
  ),
  UlasimMadde(
    L10nText(
      tr: '"Madinah Bus" (Hafilat el-Medine) uygulamasını indirip kart oluşturun ve yükleme yapın.',
      en: 'Download the "Madinah Bus" app, create a card and top it up.',
    ),
    baslik: L10nText(tr: 'Bilet:', en: 'Tickets:', ar: 'التذاكر:'),
  ),
];

const kMedineHatlari = <OtobusHatti>[
  // 400: economy-today.com 08.06.2026 (24 saat) + al-madina.com 08.10.2026 (3,45 SAR).
  OtobusHatti(
    numara: '400',
    renk: 0xFF1E6091,
    nereden: L10nText(tr: 'Mescid-i Nebevî', en: "Prophet's Mosque", ar: 'المسجد النبوي'),
    nereye: L10nText(tr: 'Medine Havalimanı', en: 'Madinah Airport', ar: 'مطار المدينة'),
    saat: L10nText(tr: '24 saat', en: '24 hours', ar: '24 ساعة'),
    ucret: _ucretMedine,
    duraklar: [
      L10nText(tr: 'Prens Muhammed bin Abdülaziz Havalimanı', en: 'Prince Mohammad bin Abdulaziz Airport', ar: 'مطار الأمير محمد بن عبدالعزيز'),
      L10nText(tr: 'Mescid-i Nebevî çevresi', en: "Prophet's Mosque area", ar: 'المنطقة المركزية'),
    ],
    kalkisId: 'md_havalimani',
  ),
  // 300: al-madina.com 08.10.2026: "المسار 300 يربط بين محطة قطار الحرمين والمسجد النبوي - المركزية الشمالية".
  // Saat: ksaexpats.com (Ocak 2025) 07:00–23:00, tek kaynak → "yaklaşık".
  OtobusHatti(
    numara: '300',
    renk: 0xFFD17A00,
    nereden: L10nText(tr: 'Kuzey Merkez (Mescid-i Nebevî)', en: "Northern Central (Prophet's Mosque)", ar: 'المركزية الشمالية'),
    nereye: L10nText(tr: 'Haremeyn tren istasyonu', en: 'Haramain train station', ar: 'محطة قطار الحرمين'),
    saat: L10nText(tr: 'Yaklaşık 07:00–23:00', en: 'Approx. 07:00–23:00', ar: 'تقريبًا 07:00–23:00'),
    ucret: _ucretMedine,
    notlar: [
      L10nText(
        tr: 'Trenle gelenler için Harem\'e en ucuz yol. Sefer sonu saatini uygulamadan kontrol edin.',
        en: 'Cheapest way to the Haram for train passengers. Check the last departure in the app.',
      ),
    ],
    kalkisId: 'md_kuzey',
  ),
  // 390: al-madina.com 08.10.2026: Kuba Mescidi → Matar mahallesi (önceden Kral Fahd mahallesi); yeni duraklar listesi.
  // SPA 2025 "Quba Mosque via two routes" haberi de 390'ı Kuba hattı olarak anıyor.
  OtobusHatti(
    numara: '390',
    renk: 0xFF2A9D8F,
    nereden: L10nText(tr: 'Kuba Mescidi', en: 'Quba Mosque', ar: 'مسجد قباء'),
    nereye: L10nText(tr: 'Matar (Havalimanı) mahallesi', en: 'Al-Matar district', ar: 'حي المطار'),
    ucret: _ucretMedine,
    duraklar: [
      L10nText(tr: 'Teknik Kolej', en: 'Technical College', ar: 'الكلية التقنية'),
      L10nText(tr: 'Kral Halid yolu', en: 'King Khalid Road', ar: 'طريق الملك خالد'),
      L10nText(tr: 'Akul mahallesi', en: 'Al-Aqoul district', ar: 'حي العاقول'),
    ],
    notlar: [
      L10nText(
        tr: 'Harem\'den Kuba\'ya giden yolcular Ramazan\'da Âliye durağından kalkan ek sefer de kullanabilir (sezonluk).',
        en: 'In Ramadan an extra seasonal shuttle runs from Al-Aliyah stop to Quba.',
      ),
    ],
    kalkisId: 'md_kuba',
  ),
];

const kMedineEk = <UlasimBolum>[
  // Ramazan: theislamicinformation.com / saudiumrahvisa.com "Madinah Buses free shuttle Ramadan 2026";
  //   siasat.com Ramazan 2025: çoğu hat 18 saat, Selam ve Seyyidü'ş-Şüheda istasyonları 24 saat.
  //   scenenow.com / app.com.pk: Kurban Bayramı'nda iki ana hat (tren ve havalimanı) 24 saat.
  UlasimBolum(
    baslik: L10nText(tr: 'Ramazan ve bayram servisleri', en: 'Ramadan and Eid services', ar: 'خدمات رمضان والعيد'),
    ikon: UlasimIkon.saat,
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Ramazan\'da otoparklardan Mescid-i Nebevî\'ye ücretsiz ring seferleri konuyor (2026\'da da uygulandı).',
        en: "In Ramadan free shuttles run from parking areas to the Prophet's Mosque (also in 2026).",
      )),
      UlasimMadde(L10nText(
        tr: 'Ramazan ve bayramlarda çalışma saatleri uzar; tren ve havalimanı hatları 24 saat çalışır.',
        en: 'Hours are extended in Ramadan and Eid; train and airport routes run 24 hours.',
      )),
      UlasimMadde(L10nText(
        tr: 'Hac operasyonu sırasında bazı hatlar geçici olarak durdurulabilir.',
        en: 'Some routes may be suspended temporarily during Hajj operations.',
      )),
    ],
  ),
  // Şehir turu: OSM'de "Al Madinah City Sightseeing" durakları (node 5900385753, 6268439977, 6268543193, 6268575546);
  //   platinumlist.net / musement / isango (2025–2026 satışta): 24 saatlik bilet, 2 güzergâh (kırmızı / yeşil), 12 durak,
  //   Uhud ve Kuba kırmızı hatta, Baki yeşil hatta. Fiyat satıcıya göre değişiyor → yazılmadı.
  UlasimBolum(
    baslik: L10nText(tr: 'Şehir turu otobüsü (in-bin)', en: 'Hop-on hop-off city tour', ar: 'الحافلة السياحية'),
    ikon: UlasimIkon.tur,
    noktaId: 'md_tur',
    chips: [L10nText(tr: '24 saatlik bilet', en: '24-hour ticket', ar: 'تذكرة 24 ساعة')],
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Üstü açık "City Sightseeing" otobüsü iki güzergâhta 12 durakta durur. İlk durak Mescid-i Nebevî yanında.',
        en: "The open-top City Sightseeing bus has 2 routes and 12 stops. Stop 1 is next to the Prophet's Mosque.",
      )),
      UlasimMadde(
        L10nText(tr: 'Uhud ve Kuba Mescidi.', en: 'Uhud and Quba Mosque.'),
        baslik: L10nText(tr: 'Kırmızı hat:', en: 'Red route:', ar: 'المسار الأحمر:'),
      ),
      UlasimMadde(
        L10nText(tr: 'Mescid-i Nebevî çevresi ve Cennetü\'l-Baki.', en: "Prophet's Mosque area and Al-Baqi'."),
        baslik: L10nText(tr: 'Yeşil hat:', en: 'Green route:', ar: 'المسار الأخضر:'),
      ),
      UlasimMadde(L10nText(
        tr: 'Bilet 24 saat geçerli; çok dilli sesli anlatım var. Fiyatı bilet noktasında ya da satış sitesinde kontrol edin.',
        en: 'Tickets are valid 24 hours with multilingual audio. Check the price at the ticket point.',
      )),
    ],
  ),
];

// ───────────────────────── ŞEHİRLERARASI & TREN ─────────────────────────

// KAYNAK (istasyonlar, kanallar): sar.hhr.sa (resmî): 5 istasyon (Makkah, Al-Sulimaniyah Jeddah, Airport Jeddah, KAEC, Madinah),
//   bilet web sitesi + mobil uygulama (App Store / Google Play) + 920 004 433; tüm istasyonlarda otopark.
// KAYNAK (süre): Wikipedia "Haramain High Speed Railway": Mekke–Süleymaniye ~43 dk (77 km), Mekke–Medine ~2 sa, 300 km/sa.
//   Havalimanı–Mekke: üçüncü taraf siteler 45–55 dk → "yaklaşık".
// KAYNAK (ücret): Resmî tarife tablosu bulunamadı (fiyat dinamik). Üçüncü taraf: hasberabbi.com (Ekim 2026), saudilifeguide.com,
//   riyadhmetrosa.com, arabiantrains.com: Mekke–Medine ekonomi ~150–225, business ~300–455+ ; Havalimanı–Mekke ekonomi ~40–80,
//   business ~95–130 SAR → hepsi "yaklaşık".
// KAYNAK (saat): Mekke istasyonu 06:30–00:30 (saudilifeguide.com, tek kaynak) → "yaklaşık".
const kTrenGenel = <UlasimMadde>[
  UlasimMadde(
    L10nText(
      tr: 'Mekke, Cidde (Süleymaniye), Cidde Havalimanı, KAEC (Rabiğ) ve Medine arasında saatte 300 km hızla çalışır.',
      en: 'Runs at 300 km/h between Makkah, Jeddah (Sulaymaniyah), Jeddah Airport, KAEC (Rabigh) and Madinah.',
    ),
    baslik: L10nText(tr: 'Hat:', en: 'Line:', ar: 'الخط:'),
  ),
  UlasimMadde(
    L10nText(
      tr: 'Mekke–Medine yaklaşık 2 sa – 2 sa 30 dk; Mekke–Cidde (Süleymaniye) yaklaşık 45 dk; '
          'Cidde Havalimanı–Mekke yaklaşık 45–55 dk.',
      en: 'Makkah–Madinah approx. 2 h – 2 h 30 min; Makkah–Jeddah (Sulaymaniyah) approx. 45 min; '
          'Jeddah Airport–Makkah approx. 45–55 min.',
    ),
    baslik: L10nText(tr: 'Süre:', en: 'Journey time:', ar: 'المدة:'),
  ),
  UlasimMadde(
    L10nText(
      tr: 'Fiyat tarihe ve doluluğa göre değişir. Mekke–Medine ekonomi yaklaşık 150–230, business yaklaşık 300–460 riyal; '
          'Cidde Havalimanı–Mekke ekonomi yaklaşık 40–80, business yaklaşık 95–130 riyal.',
      en: 'Fares are dynamic. Makkah–Madinah economy approx. SAR 150–230, business approx. 300–460; '
          'Jeddah Airport–Makkah economy approx. 40–80, business approx. 95–130.',
    ),
    baslik: L10nText(tr: 'Ücret (yaklaşık):', en: 'Fare (approx.):', ar: 'الأجرة (تقريبًا):'),
  ),
  UlasimMadde(
    L10nText(
      tr: 'Seferler sabah erken saatten gece yarısına kadar sürer (yaklaşık). Yoğun günlerde biletler tükenir; birkaç gün önceden alın.',
      en: 'Trains run from early morning until around midnight (approx.). Tickets sell out on busy days; book a few days ahead.',
    ),
    baslik: L10nText(tr: 'Saatler:', en: 'Hours:', ar: 'المواعيد:'),
  ),
  UlasimMadde(
    L10nText(
      tr: '"Haramain Train" (Haremeyn Treni) uygulaması veya resmî internet sitesi; çağrı merkezi 920 004 433. '
          'Bileti binmeden önce almanız gerekir, trende satılmaz.',
      en: 'The "Haramain Train" app or the official website; call centre 920 004 433. '
          'Buy before boarding; tickets are not sold on the train.',
    ),
    baslik: L10nText(tr: 'Bilet:', en: 'Tickets:', ar: 'التذاكر:'),
  ),
];

const kTrenIstasyonlari = <UlasimBolum>[
  // Mekke istasyonu Rusayfe'de (Wikipedia; OSM node 10956967098). Harem'e: Mekke Otobüsü 7 / A7 ve 6 (yukarıdaki kaynaklar).
  UlasimBolum(
    baslik: L10nText(tr: 'Mekke istasyonu', en: 'Makkah station', ar: 'محطة مكة'),
    altBaslik: L10nText(tr: 'Rusayfe semti', en: 'Ar-Rusayfah district', ar: 'حي الرصيفة'),
    ikon: UlasimIkon.tren,
    noktaId: 'hhr_mekke',
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Harem\'e yürüme mesafesinde değildir. Mekke Otobüsü 7 numaralı hat (Ramazan\'da A7) Şübeyke / Cebel-i Kâbe tarafına, '
            '6 numaralı hattın bir kolu Cerval\'e gider. Taksi de istasyon önünde bulunur.',
        en: 'Not within walking distance of the Haram. Makkah Bus route 7 (A7 in Ramadan) goes to Shubaikah / Jabal Al-Kaaba '
            'and a branch of route 6 goes to Jarwal. Taxis wait outside.',
      )),
    ],
  ),
  // Medine istasyonu: Wikipedia "King Abdulaziz Street-East"; OSM node 10957110707. Harem'e: 300 hattı (al-madina.com 08.10.2026).
  UlasimBolum(
    baslik: L10nText(tr: 'Medine istasyonu', en: 'Madinah station', ar: 'محطة المدينة'),
    altBaslik: L10nText(tr: 'Şehrin doğusu', en: 'East of the city', ar: 'شرق المدينة'),
    ikon: UlasimIkon.tren,
    noktaId: 'hhr_medine',
    maddeler: [
      UlasimMadde(L10nText(
        tr: '300 numaralı Medine Otobüsü istasyondan Mescid-i Nebevî\'nin kuzeyindeki Kuzey Merkez durağına gider (3,45 riyal). '
            'Taksiyle de gidebilirsiniz.',
        en: "Madinah Bus 300 runs from the station to the Northern Central stop north of the Prophet's Mosque (SAR 3.45). Taxis are also available.",
      )),
    ],
  ),
  // Süleymaniye: OSM way 485762503.
  UlasimBolum(
    baslik: L10nText(tr: 'Cidde Süleymaniye istasyonu', en: 'Jeddah Sulaymaniyah station', ar: 'محطة جدة السليمانية'),
    altBaslik: L10nText(tr: 'Cidde şehir içi', en: 'Jeddah city', ar: 'داخل جدة'),
    ikon: UlasimIkon.tren,
    noktaId: 'hhr_cidde',
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Cidde\'de kalanlar için Mekke ve Medine\'ye en pratik biniş noktası. İstasyona taksi veya uygulama ile gidilir.',
        en: 'Best boarding point for those staying in Jeddah. Reach it by taxi or ride-hailing app.',
      )),
    ],
  ),
  // Havalimanı istasyonu: Wikipedia (3,75 km'lik kol hat, 11.12.2019); wego.com (Mayıs/Ekim 2026): 1. Terminal'de.
  UlasimBolum(
    baslik: L10nText(tr: 'Cidde Havalimanı istasyonu', en: 'Jeddah Airport station', ar: 'محطة مطار جدة'),
    altBaslik: L10nText(tr: '1. Terminal\'e bağlı', en: 'Connected to Terminal 1', ar: 'متصلة بالصالة 1'),
    ikon: UlasimIkon.tren,
    noktaId: 'hhr_havalimani',
    maddeler: [
      UlasimMadde(L10nText(
        tr: '1. Terminal\'e iniyorsanız trene yürüyerek geçebilirsiniz. Başka terminale iniyorsanız terminaller arası servisle 1. Terminal\'e gelin.',
        en: 'If you land at Terminal 1 you can walk to the train. From other terminals take the inter-terminal shuttle to Terminal 1.',
      )),
    ],
  ),
  // KAEC: OSM node 2147398509; Wikipedia: Rabiğ'de.
  UlasimBolum(
    baslik: L10nText(tr: 'KAEC istasyonu', en: 'KAEC station', ar: 'محطة مدينة الملك عبدالله الاقتصادية'),
    altBaslik: L10nText(tr: 'Kral Abdullah Ekonomi Şehri, Rabiğ', en: 'King Abdullah Economic City, Rabigh', ar: 'رابغ'),
    ikon: UlasimIkon.tren,
    noktaId: 'hhr_kaec',
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Cidde ile Medine arasındaki ara istasyon; umreciler için genelde aktarma gerekmez.',
        en: 'Intermediate stop between Jeddah and Madinah; pilgrims usually do not need it.',
      )),
    ],
  ),
];

const kOtobusSirketleri = <UlasimBolum>[
  // Darb Alwatan resmî sitesi darbalwatan.com/en/routes.php (6 Kasım 2026): NN-06 Mekke (Cerval) 13:30 ve 21:00 → Medine otogarı
  //   (6 sa 20 dk); Medine 08:00 ve 17:00 → Mekke (6 sa 55 dk). Ücret resmî sayfada yok; saudilifeguide.com (2026) 50–84 SAR
  //   (standart / VIP) → "yaklaşık 50–85".
  UlasimBolum(
    baslik: L10nText(tr: 'Mekke – Medine otobüsü', en: 'Makkah – Madinah bus', ar: 'حافلة مكة – المدينة'),
    altBaslik: L10nText(tr: 'Darb Alwatan', en: 'Darb Alwatan', ar: 'درب الوطن'),
    ikon: UlasimIkon.otobus,
    noktaId: 'mk_cerval_otogar',
    chips: [
      L10nText(tr: '~6,5–7 saat', en: '~6.5–7 h', ar: '~6.5–7 ساعات'),
      L10nText(tr: 'Yaklaşık 50–85 riyal', en: 'Approx. SAR 50–85', ar: 'تقريبًا 50–85 ريال'),
    ],
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Mekke Cerval otogarı ile Medine şehirlerarası otogarı arasında. Örnek saatler: Mekke\'den 13:30 ve 21:00, '
            'Medine\'den 08:00 ve 17:00 (Kasım 2026; değişebilir).',
        en: 'Between Makkah Jarwal bus station and Madinah bus station. Sample times: from Makkah 13:30 and 21:00, '
            'from Madinah 08:00 and 17:00 (November 2026; may change).',
      )),
      UlasimMadde(L10nText(
        tr: 'Tren daha hızlıdır ama tren biletleri tükendiğinde iyi bir seçenektir. Bilet, şirketin uygulaması veya sitesinden.',
        en: 'Slower than the train, but a good option when train tickets are sold out. Book in the company app or website.',
      )),
    ],
  ),
  // Northwest Bus (NWB): Gulf News 27.08.2024: Mekke–Cidde 34 SAR'dan, Cidde–Medine 68 SAR'dan; ksaexpats.com 30.05.2026:
  //   Cidde–Mekke 33 SAR, ~1 sa 46 dk; Cidde–Medine 96 SAR, ~5 sa 24 dk. Çelişki → aralık + "yaklaşık".
  //   Resmî tarife PDF'i nwbus.sa (5 Ağustos – 27 Ekim 2026): NW13 Cidde (Balad, Tren İst., Kilo 10) → Mekke Cerval (ekspres);
  //   Cidde – Medine (Express) hattı Cidde Tren İstasyonu ve Havalimanı 1. Terminal'den.
  //   Bilet: booking.nwbus.sa, 920020590.
  UlasimBolum(
    baslik: L10nText(tr: 'Cidde – Mekke / Cidde – Medine', en: 'Jeddah – Makkah / Jeddah – Madinah', ar: 'جدة – مكة / جدة – المدينة'),
    altBaslik: L10nText(tr: 'Northwest Bus (NWB)', en: 'Northwest Bus (NWB)', ar: 'حافلات الشمال الغربي'),
    ikon: UlasimIkon.otobus,
    maddeler: [
      UlasimMadde(
        L10nText(
          tr: 'Cidde (Balad, tren istasyonu, Kilo 10) → Mekke Cerval otogarı. Yaklaşık 1,5–2 saat, yaklaşık 33–40 riyal.',
          en: 'Jeddah (Al-Balad, train station, Kilo 10) → Makkah Jarwal. Approx. 1.5–2 h, approx. SAR 33–40.',
        ),
        baslik: L10nText(tr: 'Cidde – Mekke:', en: 'Jeddah – Makkah:', ar: 'جدة – مكة:'),
      ),
      UlasimMadde(
        L10nText(
          tr: 'Cidde tren istasyonu ve Havalimanı 1. Terminal → Medine otogarı. Yaklaşık 5–5,5 saat, yaklaşık 70–100 riyal.',
          en: 'Jeddah train station and Airport T1 → Madinah bus station. Approx. 5–5.5 h, approx. SAR 70–100.',
        ),
        baslik: L10nText(tr: 'Cidde – Medine:', en: 'Jeddah – Madinah:', ar: 'جدة – المدينة:'),
      ),
      UlasimMadde(L10nText(
        tr: 'Bilet: NWB internet sitesi veya otogar gişesi. Pasaport bilgisi istenir; e-bilet SMS/e-posta ile gelir.',
        en: 'Tickets: NWB website or the station desk. Passport details are required; the e-ticket arrives by SMS/e-mail.',
      )),
    ],
  ),
  // Genel not: 2023'ten beri şehirlerarası hatlar Ulaştırma Genel Kurumu (TGA) imtiyazlarıyla bölgesel şirketlere verildi
  //   (Northwest Bus, Darb Alwatan, SAT/SAPTCO vb.) — arama özetleri (busupdate.com, alfajartravel.co.uk, 2026). SAPTCO'nun
  //   Mekke–Medine'de doğrudan sefer işlettiği DOĞRULANAMADI → SAPTCO için güzergâh/ücret yazılmadı.
  UlasimBolum(
    baslik: L10nText(tr: 'Hangi şirket?', en: 'Which company?', ar: 'أي شركة؟'),
    ikon: UlasimIkon.bilet,
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Şehirlerarası otobüsleri artık bölgelere göre farklı lisanslı şirketler işletiyor (ör. Northwest Bus, Darb Alwatan, SAPTCO). '
            'Eski "SAPTCO her yere gider" bilgisi güncel değil; bileti almadan önce hattın hangi şirkette olduğunu kontrol edin.',
        en: 'Intercity buses are now run by different licensed companies by region (e.g. Northwest Bus, Darb Alwatan, SAPTCO). '
            'Check which company runs your route before buying.',
      )),
    ],
  ),
];

const kHavalimaniBolumleri = <UlasimBolum>[
  // Cidde: NWB tarife PDF'i (Ağu–Eki 2026) NW28 Mekke Cerval ↔ Havalimanı Kuzey Terminali (1. Terminal üzerinden), günde 18 sefer.
  //   NWB Aralık 2023 bülteni: havalimanı – Cerval seferleri. Ücret resmî değil: rome2rio 40–60, TGA sözcüsü (almuraba.net) 25 SAR,
  //   başka rehber 35 SAR → "yaklaşık 25–40".
  // Taksi aralığı: umrahtaxitravel.com, umrahtaxivip.com vb. ticari siteler 150–300 (araç tipine göre 450'ye kadar) → "yaklaşık".
  // Hac terminali: OSM way 41399787; sezonluk kullanım wego.com ("other terminals operate during pilgrimage periods").
  UlasimBolum(
    baslik: L10nText(tr: 'Cidde Havalimanı → Mekke', en: 'Jeddah Airport → Makkah', ar: 'مطار جدة ← مكة'),
    altBaslik: L10nText(tr: 'Kral Abdülaziz Havalimanı (KAIA)', en: 'King Abdulaziz Airport (KAIA)', ar: 'مطار الملك عبدالعزيز'),
    ikon: UlasimIkon.ucak,
    noktaId: 'jed_t1',
    maddeler: [
      UlasimMadde(
        L10nText(
          tr: 'Uluslararası uçuşların çoğu 1. Terminal\'e iner. Hac ve umre sezonunda bazı uçuşlar Kuzey Terminali\'ne veya Hac Terminali\'ne iner; biletinize bakın.',
          en: 'Most international flights use Terminal 1. In Hajj/Umrah season some flights use the North Terminal or the Hajj Terminal; check your ticket.',
        ),
        baslik: L10nText(tr: 'Terminal:', en: 'Terminal:', ar: 'الصالة:'),
      ),
      UlasimMadde(
        L10nText(
          tr: '1. Terminal\'deki istasyondan Mekke\'ye yaklaşık 45–55 dk; ekonomi yaklaşık 40–80 riyal. Mekke istasyonundan Harem\'e otobüs veya taksi gerekir.',
          en: 'From the Terminal 1 station to Makkah approx. 45–55 min; economy approx. SAR 40–80. You then need a bus or taxi to the Haram.',
        ),
        baslik: L10nText(tr: 'Tren:', en: 'Train:', ar: 'القطار:'),
      ),
      UlasimMadde(
        L10nText(
          tr: 'Northwest Bus, 1. Terminal ve Kuzey Terminali\'nden Mekke Cerval otogarına gün boyu sefer yapar; yaklaşık 1,5 saat, yaklaşık 25–40 riyal. '
              'Cerval, Harem\'e yaklaşık 1 km\'dir.',
          en: 'Northwest Bus runs all day from Terminal 1 and the North Terminal to Makkah Jarwal; approx. 1.5 h, approx. SAR 25–40. '
              'Jarwal is about 1 km from the Haram.',
        ),
        baslik: L10nText(tr: 'Otobüs:', en: 'Bus:', ar: 'الحافلة:'),
      ),
      UlasimMadde(
        L10nText(
          tr: 'Resmî taksi durağından veya uygulamadan. Yaklaşık 150–300 riyal (araç büyüklüğüne ve saate göre).',
          en: 'From the official rank or an app. Approx. SAR 150–300 (depending on vehicle and time).',
        ),
        baslik: L10nText(tr: 'Taksi:', en: 'Taxi:', ar: 'سيارة أجرة:'),
      ),
    ],
  ),
  // Medine: Tibah Airports resmî taksi sayfası (tibahairports.com, 6 Kasım 2026): Merkezi Harem bölgesi ~20 km, 75 ve 90 SAR
  //   (5 ve 7 kişilik tablolar; hangi değerin hangisi olduğu sayfada net değil), ücretler 5'in katı, tarife terminal önündeki tabelada.
  //   Otobüs 400: yukarıdaki Medine kaynakları. Havalimanında tren istasyonu YOK (sar.hhr.sa istasyon listesi).
  UlasimBolum(
    baslik: L10nText(tr: 'Medine Havalimanı → Harem', en: 'Madinah Airport → Haram', ar: 'مطار المدينة ← الحرم'),
    altBaslik: L10nText(tr: 'Prens Muhammed bin Abdülaziz Havalimanı', en: 'Prince Mohammad bin Abdulaziz Airport', ar: 'مطار الأمير محمد بن عبدالعزيز'),
    ikon: UlasimIkon.ucak,
    noktaId: 'md_havalimani',
    chips: [
      L10nText(tr: 'Otobüs 3,45 riyal', en: 'Bus SAR 3.45', ar: 'الحافلة 3.45 ريال'),
      L10nText(tr: 'Taksi 75–90 riyal', en: 'Taxi SAR 75–90', ar: 'الأجرة 75–90 ريال'),
    ],
    maddeler: [
      UlasimMadde(
        L10nText(
          tr: '400 numaralı hat 24 saat çalışır, Mescid-i Nebevî çevresine gider; 3,45 riyal.',
          en: "Route 400 runs 24 hours to the Prophet's Mosque area; SAR 3.45.",
        ),
        baslik: L10nText(tr: 'Otobüs:', en: 'Bus:', ar: 'الحافلة:'),
      ),
      UlasimMadde(
        L10nText(
          tr: 'Terminal çıkışındaki resmî taksilerin Harem bölgesine sabit tarifesi var: araç büyüklüğüne göre 75 veya 90 riyal. '
              'Tarife tabelası çıkışta asılıdır.',
          en: 'Official taxis outside the terminal have a fixed fare to the Haram area: SAR 75 or 90 depending on vehicle size. '
              'The fare board is posted at the exit.',
        ),
        baslik: L10nText(tr: 'Resmî taksi:', en: 'Official taxi:', ar: 'الأجرة الرسمية:'),
      ),
      UlasimMadde(L10nText(
        tr: 'Medine Havalimanı\'nda tren istasyonu yoktur; tren için şehrin doğusundaki Haremeyn istasyonuna gidilir.',
        en: 'There is no train station at Madinah Airport; the Haramain station is in the east of the city.',
      )),
    ],
  ),
];

// ───────────────────────── TAKSİ ─────────────────────────

const kTaksiBolumleri = <UlasimBolum>[
  // Mekke Taksi (أجرة مكة): Argaam / SPA (14.01.2025) ve alarabiya.net 14.01.2025: RCMC Genel Ulaşım Merkezi, 47 nokta
  //   (çoğu ana istasyonlar ve Harem çevresi), 24 saat, elektronik taksimetre, TGA onaylı tarife, nakit + kredi kartı,
  //   hibrit/elektrikli araç, 2025 sonuna ~1.800 araç hedefi.
  // Havalimanı taksileri: Tibah Airports (Medine), wego.com (Cidde: resmî durak).
  UlasimBolum(
    baslik: L10nText(tr: 'Resmî taksiler', en: 'Official taxis', ar: 'سيارات الأجرة الرسمية'),
    ikon: UlasimIkon.taksi,
    maddeler: [
      UlasimMadde(
        L10nText(
          tr: 'Kraliyet Komisyonu\'nun resmî taksisi; Harem çevresi ve ana istasyonlar dahil 47 noktada, 24 saat. '
              'Taksimetreyle çalışır, nakit ve kredi kartı geçer.',
          en: 'The Royal Commission\'s official taxi; 47 points including the Haram area and main stations, 24 hours. '
              'Metered; cash and credit cards accepted.',
        ),
        baslik: L10nText(tr: 'Mekke Taksi (Ücret-i Mekke):', en: 'Makkah Taxi:', ar: 'أجرة مكة:'),
      ),
      UlasimMadde(
        L10nText(
          tr: 'Sadece terminal çıkışındaki resmî taksi durağını kullanın. İçeride "taksi" diye yanaşan kişilerin özel araçlarına binmeyin.',
          en: 'Use only the official taxi rank outside the terminal. Do not go with people offering rides inside the hall.',
        ),
        baslik: L10nText(tr: 'Havalimanında:', en: 'At the airport:', ar: 'في المطار:'),
      ),
    ],
  ),
  // Ücret kaynakları kMekkeEk ve kHavalimaniBolumleri yorumlarında. Harem→Arafat için güvenilir ücret BULUNAMADI → yazılmadı.
  UlasimBolum(
    baslik: L10nText(tr: 'Örnek ücretler', en: 'Sample fares', ar: 'أمثلة على الأسعار'),
    altBaslik: L10nText(tr: 'Fiyatlar yaklaşıktır', en: 'Fares are approximate', ar: 'الأسعار تقريبية'),
    ikon: UlasimIkon.bilet,
    maddeler: [
      UlasimMadde(
        L10nText(tr: 'Yaklaşık 150–300 riyal.', en: 'Approx. SAR 150–300.'),
        baslik: L10nText(tr: 'Cidde Havalimanı → Mekke:', en: 'Jeddah Airport → Makkah:', ar: 'مطار جدة ← مكة:'),
      ),
      UlasimMadde(
        L10nText(tr: 'Resmî sabit tarife 75 veya 90 riyal (araç büyüklüğüne göre).', en: 'Official fixed fare SAR 75 or 90 (by vehicle size).'),
        baslik: L10nText(tr: 'Medine Havalimanı → Harem:', en: 'Madinah Airport → Haram:', ar: 'مطار المدينة ← الحرم:'),
      ),
      UlasimMadde(
        L10nText(tr: 'Tek yön yaklaşık 30–50 riyal.', en: 'One way approx. SAR 30–50.'),
        baslik: L10nText(tr: 'Mekke oteli → Tenim:', en: "Makkah hotel → Tan'eem:", ar: 'فندق مكة ← التنعيم:'),
      ),
      UlasimMadde(
        L10nText(
          tr: 'Yaklaşık 20 km. Sabit bir tarife yok; taksimetre açtırın ya da fiyatı binmeden netleştirin. '
              'Hac günlerinde bölgeye araç girişi kısıtlıdır.',
          en: 'About 20 km. No fixed fare; ask for the meter or agree the price first. Vehicle access is restricted during Hajj days.',
        ),
        baslik: L10nText(tr: 'Harem → Arafat:', en: 'Haram → Arafat:', ar: 'الحرم ← عرفات:'),
      ),
    ],
  ),
  // Lisanslı uygulamalar: Argaam 20.11.2024 (TGA verisi): 45 lisanslı uygulama; adı geçenler arasında Uber, Careem, Rehla.
  //   Tibah Airports sayfası Careem ve Rehla'yı listeliyor. Bolt ve Jeeny'nin güncel lisansı DOĞRULANAMADI → yazılmadı.
  UlasimBolum(
    baslik: L10nText(tr: 'Araç çağırma uygulamaları', en: 'Ride-hailing apps', ar: 'تطبيقات النقل'),
    ikon: UlasimIkon.uygulama,
    chips: [
      L10nText.same('Uber'),
      L10nText.same('Careem'),
      L10nText.same('Rehla'),
    ],
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Uber, Careem ve Rehla, Ulaştırma Genel Kurumu (TGA) lisanslı uygulamalar arasında. Fiyatı binmeden uygulamada görürsünüz; kartla ödenebilir.',
        en: 'Uber, Careem and Rehla are among the apps licensed by the Transport General Authority (TGA). You see the price before the ride and can pay by card.',
      )),
      UlasimMadde(L10nText(
        tr: 'Namaz çıkışlarında talep artar ve fiyat yükselir; birkaç dakika bekleyip yeniden bakmak çoğu zaman ucuzlatır.',
        en: 'Demand and prices spike after prayers; waiting a few minutes often lowers the price.',
      )),
    ],
  ),
  // Harem çevresi: Mekke merkez bölgesine özel araç kısıtı ve park-et-bin otoparkları (Kudey, Rusayfe) — arama özetleri
  //   (al-ain.com Hac 2026 otopark haritası; bookumrahtoday / halalbooking rehberleri). Uygulama araçlarının kapı önüne
  //   yanaşamaması: halalbooking.com Makkah transport rehberi.
  UlasimBolum(
    baslik: L10nText(tr: 'Harem çevresinde binme ve inme', en: 'Pick-up near the Haram', ar: 'الركوب قرب الحرم'),
    ikon: UlasimIkon.konum,
    maddeler: [
      UlasimMadde(L10nText(
        tr: 'Harem\'in hemen çevresi özel araçlara kapalıdır; taksi ve uygulama araçları kapıların önüne yanaşamaz.',
        en: 'The area right around the Haram is closed to private cars; taxis and app cars cannot reach the gates.',
      )),
      UlasimMadde(L10nText(
        tr: 'Buluşma noktasını ana caddelerde seçin (ör. İbrahim Halil Caddesi, Ecyad Caddesi tarafı) ve sürücüye haritadan konum gönderin.',
        en: 'Choose a meeting point on a main road (e.g. Ibrahim Al-Khalil St., Ajyad St.) and share the map pin with the driver.',
      )),
      UlasimMadde(L10nText(
        tr: 'Kendi aracıyla gelenler şehir girişindeki otoparklara (ör. Kudey, Rusayfe) bırakıp ring otobüsüyle Harem\'e geçer.',
        en: 'Drivers leave cars at park-and-ride lots at the city edge (e.g. Kudai, Rusaifah) and take the shuttle to the Haram.',
      )),
    ],
  ),
  // Taksimetre kuralı: Gulf News "Can you ride taxis for free in Saudi Arabia? Meter laws explained" ve okaz.com.sa:
  //   taksimetre açılmazsa yolcu ücret ödemeden yolculuğu tamamlayabilir; hac döneminde ceza 3.000 SAR'a kadar.
  //   TGA şikâyet hattı 19929 (arama özeti).
  UlasimBolum(
    baslik: L10nText(tr: 'Güvenlik ve pazarlık ipuçları', en: 'Safety and bargaining tips', ar: 'نصائح السلامة والتفاوض'),
    ikon: UlasimIkon.guvenlik,
    maddeler: [
      UlasimMadde(
        L10nText(
          tr: 'Kurala göre sürücü yolculuk başında taksimetreyi açmak zorunda. Açmazsa ücret ödemek zorunda değilsiniz.',
          en: 'By law the driver must start the meter. If it is not on, you do not have to pay.',
        ),
        baslik: L10nText(tr: 'Taksimetre:', en: 'Meter:', ar: 'العداد:'),
      ),
      UlasimMadde(L10nText(
        tr: 'Taksimetre yoksa fiyatı arabaya binmeden, kişi başı mı araç başı mı olduğunu da sorarak netleştirin.',
        en: 'Without a meter, agree the price before getting in and ask whether it is per person or per car.',
      )),
      UlasimMadde(L10nText(
        tr: 'Plakasız ya da tabelasız özel araçlara ("korsan taksi") binmeyin; özellikle havalimanı ve otogar çıkışlarında.',
        en: 'Avoid unmarked private cars ("pirate taxis"), especially at airport and bus station exits.',
      )),
      UlasimMadde(L10nText(
        tr: 'Yanınızda bozuk riyal bulundurun; her sürücü kart kabul etmeyebilir.',
        en: 'Carry small riyal notes; not every driver accepts cards.',
      )),
      UlasimMadde(
        L10nText(
          tr: 'Ulaştırma Genel Kurumu şikâyet hattı 19929. Plakayı ve saati not edin.',
          en: 'Transport General Authority complaints line 19929. Note the plate number and time.',
        ),
        baslik: L10nText(tr: 'Şikâyet:', en: 'Complaints:', ar: 'الشكاوى:'),
      ),
    ],
  ),
];
