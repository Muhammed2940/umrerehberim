import 'package:latlong2/latlong.dart';

import 'l10n_text.dart';

/// Haremler çevresindeki oteller ve restoranlar.
///
/// KOORDİNAT KAYNAĞI: Tümü OpenStreetMap Nominatim (nominatim.openstreetmap.org/search,
/// viewbox ile Harem çevresine sınırlı arama), 5-6 Kasım 2026. Yorumda OSM'deki ad ve etiket var.
/// Nominatim'de bulunamayanlar listeye ALINMADI: The Oberoi Madina, Shaza Al Madina,
/// Al Romansiah, Al Tazaj (Harem çevresinde kayıt yok).
/// Fiyat, yıldız ve telefon bilinçli olarak yazılmadı (doğrulanmamış ve hızla değişir).
///
/// Özel adlar (otel/restoran adları) çevrilmez: [L10nText.same]. Yalnız tür ve notlar çevrilir.

enum PlaceCity { mekke, medine }

enum PlaceKind { otel, restoran }

class CityPlace {
  const CityPlace({
    required this.name,
    required this.type,
    required this.point,
    required this.city,
    required this.kind,
    this.note,
    this.aliases = const [],
  });

  final L10nText name;

  /// "Otel", "Fast food", "Türk mutfağı"...
  final L10nText type;
  final LatLng point;
  final PlaceCity city;
  final PlaceKind kind;
  final L10nText? note;

  /// Kullanıcının otel adıyla eşleştirmek için ek adlar (küçük harf, aksansız).
  final List<String> aliases;
}

/// Mekke: Kâbe (OSM way 103914569).
const kKabe = LatLng(21.422517, 39.826182);

/// Medine: Mescid-i Nebevî (OSM way 461699097, alanın orta noktası).
const kMescidiNebevi = LatLng(24.4686804, 39.6111620);

LatLng haremOf(PlaceCity c) => c == PlaceCity.mekke ? kKabe : kMescidiNebevi;

// ───────── Ortak türler ve notlar ─────────
const _tOtel = L10nText(tr: 'Otel', en: 'Hotel', ar: 'فندق');
const _tTurk = L10nText(tr: 'Türk mutfağı', en: 'Turkish cuisine', ar: 'مطبخ تركي');
const _tTavuk = L10nText(tr: 'Fast food · tavuk', en: 'Fast food · chicken', ar: 'وجبات سريعة · دجاج');
const _nAbraj = L10nText(tr: 'Abraj Al Bait kompleksi', en: 'Abraj Al Bait complex', ar: 'مجمع أبراج البيت');
const _nCebeliOmer = L10nText(tr: 'Cebel-i Ömer bölgesi', en: 'Jabal Omar area', ar: 'منطقة جبل عمر');

const kCityPlaces = <CityPlace>[
  // ───────── MEKKE · OTELLER ─────────
  // OSM: "سويت هوتيل المقام" name:en "Swissôtel Al Maqam Makkah" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Swissôtel Al Maqam Makkah'),
    type: _tOtel,
    point: LatLng(21.4184744, 39.8244146),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: L10nText(
        tr: 'Abraj Al Bait (Saat Kulesi) kompleksi',
        en: 'Abraj Al Bait (Clock Tower) complex',
        ar: 'مجمع أبراج البيت (برج الساعة)'),
    aliases: ['swissotel al maqam', 'swissotel maqam', 'al maqam'],
  ),
  // OSM: "فندق فيرمونت مكة الحرم" (Fairmont Makkah) (tourism=hotel)
  CityPlace(
    name: L10nText.same('Fairmont Makkah Clock Royal Tower'),
    type: _tOtel,
    point: LatLng(21.4180383, 39.8253020),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: L10nText(tr: 'Saat Kulesi binası', en: 'Clock Tower building', ar: 'مبنى برج الساعة'),
    aliases: ['fairmont'],
  ),
  // OSM: "Hotel Pullmann ZamZam Makkah" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Pullman ZamZam Makkah'),
    type: _tOtel,
    point: LatLng(21.4183327, 39.8249601),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: _nAbraj,
    aliases: ['pullman zamzam', 'zamzam pullman', 'pullmann zamzam'],
  ),
  // OSM: "فندق وريزيدنس موفنبيك برج هاجر" (Mövenpick Hajar Tower) (tourism=hotel)
  CityPlace(
    name: L10nText.same('Mövenpick Hotel & Residences Hajar Tower'),
    type: _tOtel,
    point: LatLng(21.4183039, 39.8262712),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: _nAbraj,
    aliases: ['movenpick hajar', 'hajar tower'],
  ),
  // OSM: "Raffles Makkah Palace" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Raffles Makkah Palace'),
    type: _tOtel,
    point: LatLng(21.4192239, 39.8249791),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: _nAbraj,
    aliases: ['raffles'],
  ),
  // OSM: "Conrad Jabal Omar Makkah" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Conrad Makkah'),
    type: _tOtel,
    point: LatLng(21.4193293, 39.8220789),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: _nCebeliOmer,
    aliases: ['conrad'],
  ),
  // OSM: "Hilton Suites Jabal Omar Makkah" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Hilton Suites Makkah'),
    type: _tOtel,
    point: LatLng(21.4210649, 39.8214375),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: _nCebeliOmer,
    aliases: ['hilton suites'],
  ),
  // OSM: "Jabal Omar Hyatt Regency Makkah" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Jabal Omar Hyatt Regency Makkah'),
    type: _tOtel,
    point: LatLng(21.4208263, 39.8217179),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: _nCebeliOmer,
    aliases: ['hyatt regency', 'hyatt'],
  ),
  // OSM: "فندق دار التوحيد" (Dar Al Tawhid) (tourism=hotel)
  CityPlace(
    name: L10nText.same('Dar Al Tawhid InterContinental'),
    type: _tOtel,
    point: LatLng(21.4209909, 39.8227160),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: L10nText(
        tr: 'İbrahim Halil Caddesi, Harem avlusunun karşısı',
        en: 'Ibrahim Al Khalil Street, opposite the Haram courtyard',
        ar: 'شارع إبراهيم الخليل، مقابل ساحة الحرم'),
    aliases: ['dar al tawhid', 'dar al tawheed'],
  ),
  // OSM: "انجم مكة" name:en "Anjum Hotel" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Anjum Makkah'),
    type: _tOtel,
    point: LatLng(21.4246115, 39.8197910),
    city: PlaceCity.mekke,
    kind: PlaceKind.otel,
    note: L10nText(
        tr: 'Ümmü’l-Kura Yolu, Harem’in batısı',
        en: 'Umm Al-Qura Road, west of the Haram',
        ar: 'طريق أم القرى، غرب الحرم'),
    aliases: ['anjum'],
  ),

  // ───────── MEKKE · RESTORANLAR ─────────
  // OSM: "أبراج الساعة" (building) — Abraj Al Bait kompleksinin kendisi
  CityPlace(
    name: L10nText(
        tr: 'Abraj Al Bait AVM yemek katları',
        en: 'Abraj Al Bait Mall food courts',
        ar: 'طوابق المطاعم في مول أبراج البيت'),
    type: L10nText(tr: 'AVM yemek alanı', en: 'Mall food court', ar: 'ساحة طعام في مول'),
    point: LatLng(21.4188581, 39.8253817),
    city: PlaceCity.mekke,
    kind: PlaceKind.restoran,
    note: L10nText(
        tr: 'Saat Kulesi altındaki alışveriş merkezi; çok sayıda restoran ve fast food',
        en: 'Shopping mall below the Clock Tower; many restaurants and fast-food outlets',
        ar: 'مركز تسوق أسفل برج الساعة؛ فيه مطاعم كثيرة ومحلات وجبات سريعة'),
  ),
  // OSM: "Turkish Grillhouse - 4th Floor" (amenity=restaurant)
  CityPlace(
    name: L10nText.same('Turkish Grillhouse'),
    type: _tTurk,
    point: LatLng(21.4187340, 39.8254026),
    city: PlaceCity.mekke,
    kind: PlaceKind.restoran,
    note: L10nText(tr: 'Abraj Al Bait AVM, 4. kat', en: 'Abraj Al Bait Mall, 4th floor', ar: 'مول أبراج البيت، الطابق الرابع'),
  ),
  // OSM: "Istanbul Turk Lokantasi" (amenity=restaurant), Aziziye
  CityPlace(
    name: L10nText.same('İstanbul Türk Lokantası'),
    type: _tTurk,
    point: LatLng(21.4223257, 39.8475037),
    city: PlaceCity.mekke,
    kind: PlaceKind.restoran,
    note: L10nText(
        tr: 'Aziziye semti; Harem’e uzak, araçla gidilir',
        en: 'Al-Aziziyah district; far from the Haram, reached by vehicle',
        ar: 'حي العزيزية؛ بعيد عن الحرم ويُذهب إليه بالسيارة'),
  ),
  // OSM: "البيك" (amenity=fast_food), Misyal Yolu
  CityPlace(
    name: L10nText.same('Al Baik (Abraj Al Bait)'),
    type: _tTavuk,
    point: LatLng(21.4193987, 39.8248264),
    city: PlaceCity.mekke,
    kind: PlaceKind.restoran,
    note: L10nText(
        tr: 'Suudi Arabistan’ın meşhur kızarmış tavuk zinciri',
        en: 'Saudi Arabia’s famous fried chicken chain',
        ar: 'سلسلة الدجاج المقلي الشهيرة في السعودية'),
  ),
  // OSM: "البيك" (amenity=fast_food), İbrahim Halil Caddesi
  CityPlace(
    name: L10nText(
        tr: 'Al Baik (İbrahim Halil Cd.)',
        en: 'Al Baik (Ibrahim Al Khalil St.)',
        ar: 'Al Baik (شارع إبراهيم الخليل)'),
    type: _tTavuk,
    point: LatLng(21.4211892, 39.8217571),
    city: PlaceCity.mekke,
    kind: PlaceKind.restoran,
  ),
  // OSM: "Al Baik" (amenity=fast_food), Bir Balilah Street
  CityPlace(
    name: L10nText(
        tr: 'Al Baik (Bi’r Belile Cd.)',
        en: 'Al Baik (Bir Balilah St.)',
        ar: 'Al Baik (شارع بئر بليلة)'),
    type: _tTavuk,
    point: LatLng(21.4137903, 39.8280712),
    city: PlaceCity.mekke,
    kind: PlaceKind.restoran,
  ),
  // OSM: "Burger King - Abraj Al Bait Mall" (amenity=fast_food)
  CityPlace(
    name: L10nText(
        tr: 'Burger King (Abraj Al Bait AVM)',
        en: 'Burger King (Abraj Al Bait Mall)',
        ar: 'Burger King (مول أبراج البيت)'),
    type: L10nText(tr: 'Fast food', en: 'Fast food', ar: 'وجبات سريعة'),
    point: LatLng(21.4188849, 39.8258136),
    city: PlaceCity.mekke,
    kind: PlaceKind.restoran,
  ),
  // OSM: "المطعم الماليزي" name:en "Malaysian Restaurant" (amenity=restaurant)
  CityPlace(
    name: L10nText(tr: 'Malezya Restoranı', en: 'Malaysian Restaurant', ar: 'المطعم الماليزي'),
    type: L10nText(tr: 'Malezya mutfağı', en: 'Malaysian cuisine', ar: 'مطبخ ماليزي'),
    point: LatLng(21.4193187, 39.8260703),
    city: PlaceCity.mekke,
    kind: PlaceKind.restoran,
    note: _nAbraj,
  ),

  // ───────── MEDİNE · OTELLER ─────────
  // OSM: "فندق انوار المدينة موفنبيك" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Anwar Al Madinah Mövenpick'),
    type: _tOtel,
    point: LatLng(24.4713757, 39.6078202),
    city: PlaceCity.medine,
    kind: PlaceKind.otel,
    note: L10nText(tr: 'Harem’in kuzeybatısı', en: 'North-west of the Haram', ar: 'شمال غرب الحرم'),
    aliases: ['anwar al madinah', 'movenpick'],
  ),
  // OSM: "فندق زمزم بولمان المدينة" (Pullman Zamzam Madinah) (tourism=hotel)
  CityPlace(
    name: L10nText.same('Pullman Zamzam Madinah'),
    type: _tOtel,
    point: LatLng(24.4644758, 39.6117903),
    city: PlaceCity.medine,
    kind: PlaceKind.otel,
    note: L10nText(tr: 'Harem’in güneyi', en: 'South of the Haram', ar: 'جنوب الحرم'),
    aliases: ['pullman zamzam', 'zamzam pullman', 'pullman'],
  ),
  // OSM: "فندق دار التقوى" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Dar Al Taqwa'),
    type: _tOtel,
    point: LatLng(24.4712004, 39.6118525),
    city: PlaceCity.medine,
    kind: PlaceKind.otel,
    note: L10nText(
        tr: 'Kral Fahd Yolu, Harem’in kuzeyi',
        en: 'King Fahd Road, north of the Haram',
        ar: 'طريق الملك فهد، شمال الحرم'),
    aliases: ['dar al taqwa'],
  ),
  // OSM: "دار الايمان انتركونتيننتال" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Dar Al Iman InterContinental'),
    type: _tOtel,
    point: LatLng(24.4713518, 39.6087731),
    city: PlaceCity.medine,
    kind: PlaceKind.otel,
    aliases: ['dar al iman', 'dar al eiman'],
  ),
  // OSM: "فندق المدينة هيلتون" (Madinah Hilton) (tourism=hotel)
  CityPlace(
    name: L10nText.same('Madinah Hilton'),
    type: _tOtel,
    point: LatLng(24.4720818, 39.6107978),
    city: PlaceCity.medine,
    kind: PlaceKind.otel,
    aliases: ['madinah hilton', 'hilton'],
  ),
  // OSM: "كراون بلازا المدينة" (Crowne Plaza Madinah) (tourism=hotel)
  CityPlace(
    name: L10nText.same('Crowne Plaza Madinah'),
    type: _tOtel,
    point: LatLng(24.4638755, 39.6101126),
    city: PlaceCity.medine,
    kind: PlaceKind.otel,
    aliases: ['crowne plaza'],
  ),
  // OSM: "فندق شذا ريجنسي بلازا" name:en "Shaza Regency Plaza Hotel" (tourism=hotel)
  CityPlace(
    name: L10nText.same('Shaza Regency Plaza'),
    type: _tOtel,
    point: LatLng(24.4737844, 39.6102474),
    city: PlaceCity.medine,
    kind: PlaceKind.otel,
    note: L10nText(tr: 'Kral Faysal Yolu', en: 'King Faisal Road', ar: 'طريق الملك فيصل'),
    aliases: ['shaza regency'],
  ),
  // OSM: "فندق المنى كريم ليدر" (Leader Al Muna Kareem) (tourism=hotel)
  CityPlace(
    name: L10nText.same('Leader Al Muna Kareem'),
    type: _tOtel,
    point: LatLng(24.4728887, 39.6133404),
    city: PlaceCity.medine,
    kind: PlaceKind.otel,
    aliases: ['al muna kareem', 'muna kareem'],
  ),

  // ───────── MEDİNE · RESTORANLAR ─────────
  // OSM: "Al Sanabel Turkish Restaurant" (amenity=restaurant)
  CityPlace(
    name: L10nText.same('Al Sanabel Turkish Restaurant'),
    type: _tTurk,
    point: LatLng(24.4727509, 39.6122178),
    city: PlaceCity.medine,
    kind: PlaceKind.restoran,
    note: L10nText(
        tr: 'Ebû Ubeyde bin Cerrah Caddesi',
        en: 'Abu Ubaidah ibn al-Jarrah Street',
        ar: 'شارع أبي عبيدة بن الجراح'),
  ),
  // OSM: "Naya Turkish Restaurant" (amenity=restaurant)
  CityPlace(
    name: L10nText.same('Naya Turkish Restaurant'),
    type: _tTurk,
    point: LatLng(24.4686376, 39.6019605),
    city: PlaceCity.medine,
    kind: PlaceKind.restoran,
    note: L10nText(
        tr: 'Kral Faysal Yolu, es-Seyh semti',
        en: 'King Faisal Road, As-Sayh district',
        ar: 'طريق الملك فيصل، حي السيح'),
  ),
  // OSM: "البيك" (amenity=fast_food), Abdullah bin Revaha Cd.
  CityPlace(
    name: L10nText.same('Al Baik'),
    type: _tTavuk,
    point: LatLng(24.4639643, 39.6160875),
    city: PlaceCity.medine,
    kind: PlaceKind.restoran,
    note: L10nText(tr: 'Harem’in güneydoğusu', en: 'South-east of the Haram', ar: 'جنوب شرق الحرم'),
  ),
  // OSM: "كودو" brand "Kudu" (amenity=fast_food), Zeyd bin Sabit Cd.
  CityPlace(
    name: L10nText.same('Kudu'),
    type: L10nText(tr: 'Fast food · burger/sandviç', en: 'Fast food · burgers/sandwiches', ar: 'وجبات سريعة · برغر/ساندويتش'),
    point: LatLng(24.4721742, 39.6119646),
    city: PlaceCity.medine,
    kind: PlaceKind.restoran,
    note: L10nText(tr: 'Suudi fast food zinciri', en: 'Saudi fast-food chain', ar: 'سلسلة وجبات سريعة سعودية'),
  ),
];
