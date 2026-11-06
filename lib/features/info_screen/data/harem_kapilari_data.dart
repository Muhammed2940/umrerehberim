import 'package:latlong2/latlong.dart';

import 'l10n_text.dart';

// Harem kapıları: Mescid-i Haram (Mekke) ve Mescid-i Nebevî (Medine).
//
// KAYNAKLAR (yalnızca kodda; arayüzde kaynak gösterilmez):
// [OSM]   OpenStreetMap, Overpass API (6 Kasım 2026): `entrance` düğümleri ve
//         `name`/`ref` etiketleri. Koordinatların tamamı buradan.
// [GPH]   Gen. Başkanlık / Haremeyn İdaresi açıklaması (Mayıs 2026, Sabq üzerinden):
//         5 ana kapı: Kral Abdülaziz 1, Fetih 45, Umre 62, Kral Fahd 79, Kral Abdullah 100.
// [GN]    Gulf News, 5 Şubat 2025: umrecilerin metafa girişi için Kral Fahd 79,
//         Ecyad 3 ve Umre 62 kapıları ayrıldı.
// [MP]    Madain Project, "Gates of Masjid al-Haram" ve "Gates of Masjid an-Nabawi".
// [LSA]   lifeinsaudiarabia.net ve [KSX] ksaexpats.com (2023) kapı numarası listeleri.
// [WP]    Wikipedia, "Baab-al-Salaam".
// [HADİS] Buhârî (Ebû Bekir'in kapısı/havhası), Ebû Dâvûd (Bâbü'n-Nisâ) rivayetleri.
//
// Notlar:
// - Haram'da kapı numaraları kaynaklar arasında zaman zaman farklılık gösteriyor
//   (OSM bazı kapılarda eski/farklı numara kullanıyor, ör. Fetih=30, Umre=40).
//   Resmî açıklama [GPH] ile çakışan durumlarda resmî numara kullanıldı.
//   Numarası kaynaklarda tutarsız olan kapılar (Kudüs, Hudeybiye, Arafat, Hicret,
//   Bilal, Huneyn, İsmail vb.) listeye ALINMADI.
// - Medine'de OSM numaraları [MP] ile birebir örtüşüyor.

/// Kapının bulunduğu mescit.
enum KapiMescid { haram, nebevi }

/// Tek bir kapı (veya aynı adı taşıyan kapı grubu).
class HaremKapisi {
  const HaremKapisi({
    required this.id,
    required this.mescid,
    required this.no,
    required this.ad,
    required this.yakin,
    required this.konum,
    required this.anlam,
    required this.point,
    this.tarih,
    this.ipucu,
  });

  final String id;
  final KapiMescid mescid;

  /// Resmî kapı numarası ("1", "7–9"). Numarası doğrulanamayan kapıda null.
  final String? no;

  /// Kapının adı (tr / en / ar). Arapça ad her dilde ayrıca gösterilir.
  final L10nText ad;

  /// Kart başlığının altındaki kısa "yakınında" satırı.
  final L10nText yakin;

  /// Yön/konum ve çevresindeki yerler.
  final L10nText konum;

  /// İsmin anlamı.
  final L10nText anlam;

  /// İsteğe bağlı tarihî not / rivayet.
  final L10nText? tarih;

  /// Pratik bilgi.
  final L10nText? ipucu;

  final LatLng point;

  /// Arapça ad (yoksa İngilizce/Türkçe).
  String get arapca => ad.ar ?? ad.en ?? ad.tr;

  /// Sıralama için numaranın ilk sayısı (numarasız kapılar en sona).
  int get siraNo => int.tryParse(RegExp(r'\d+').stringMatch(no ?? '') ?? '') ?? 9999;
}

/// Haritadaki ana işaretler.
const kKapiKabe = LatLng(21.422517, 39.826182); // OSM way 103914569 (Kâbe)
// Ravza: OSM'deki "Abu Lubabah Column" (24.467536, 39.611261) ve
// "Delegate Column" (24.467594, 39.611333) sütunlarının ortası.
const kKapiRavza = LatLng(24.467565, 39.611297);

List<HaremKapisi> kapilarOf(KapiMescid m) => m == KapiMescid.haram ? kHaramKapilari : kNebeviKapilari;

/// Ekran metinleri (ARB'ye girmez).
class KapiMetin {
  KapiMetin._();

  static const baslik = L10nText(tr: 'Harem Kapıları', en: 'Gates of the Two Holy Mosques', ar: 'أبواب الحرمين');
  static const tabHaram = L10nText(tr: 'Mescid-i Haram', en: 'Masjid al-Haram', ar: 'المسجد الحرام');
  static const tabNebevi = L10nText(tr: 'Mescid-i Nebevî', en: 'Masjid an-Nabawi', ar: 'المسجد النبوي');
  static const not = L10nText(
    tr: 'Kapıların kullanımı (giriş/çıkış, kadınlara ayrılan kapılar, kapalı kapılar) yetkililer '
        'tarafından yoğunluğa ve genişletme çalışmalarına göre değiştirilebilir. Kapıdaki görevlilerin '
        've tabelaların yönlendirmesine uyun.',
    en: 'Gate usage (entry/exit, women-only gates, closures) may be changed by the authorities depending '
        'on crowds and expansion works. Follow the staff and the signs at the gate.',
    ar: 'قد تغيّر الجهات المختصة استخدام الأبواب (الدخول والخروج، الأبواب المخصصة للنساء، الإغلاق) '
        'بحسب الزحام وأعمال التوسعة. اتبع توجيهات المنظمين واللوحات عند الباب.',
  );
  static const ara = L10nText(tr: 'Numara veya ad ile ara', en: 'Search by number or name', ar: 'ابحث بالرقم أو الاسم');
  static const sonucYok = L10nText(tr: 'Aramanıza uyan kapı bulunamadı.', en: 'No gate matches your search.', ar: 'لا يوجد باب مطابق.');
  static const kapiSayisi = L10nText(tr: '{n} kapı', en: '{n} gates', ar: '{n} باب');
  static const anlam = L10nText(tr: 'Adının anlamı', en: 'Meaning of the name', ar: 'معنى الاسم');
  static const konum = L10nText(tr: 'Konumu ve yakınındakiler', en: 'Location and nearby', ar: 'الموقع وما حوله');
  static const tarih = L10nText(tr: 'Tarihçe', en: 'History', ar: 'نبذة تاريخية');
  static const ipucu = L10nText(tr: 'Pratik bilgi', en: 'Practical tip', ar: 'معلومة عملية');
  static const arapcaAd = L10nText(tr: 'Arapça adı', en: 'Arabic name', ar: 'الاسم بالعربية');
  static const kabe = L10nText(tr: 'Kâbe', en: 'Kaaba', ar: 'الكعبة');
  static const ravza = L10nText(tr: 'Ravza', en: 'Rawdah', ar: 'الروضة');
  static const numarasiz = L10nText(tr: 'Numarası tabelada', en: 'Number on signage', ar: 'الرقم على اللوحة');
}

// ---------------------------------------------------------------------------
// MESCİD-İ HARAM
// ---------------------------------------------------------------------------

const kHaramKapilari = <HaremKapisi>[
  // No: [GPH] 1. Konum: OSM "King Abdul Aziz Gate 1" (entrance=main).
  // Saat kulesi karşısı ve tekerlekli sandalye erişimi: [MP].
  HaremKapisi(
    id: 'h_abdulaziz',
    mescid: KapiMescid.haram,
    no: '1',
    ad: L10nText(tr: 'Kral Abdülaziz Kapısı', en: 'King Abdulaziz Gate', ar: 'باب الملك عبد العزيز'),
    yakin: L10nText(
      tr: 'Güney cephe · Saat Kulesi (Ebrâcü’l-Beyt) karşısı',
      en: 'South side · facing the Clock Tower (Abraj al-Bait)',
      ar: 'الجهة الجنوبية · مقابل برج الساعة (أبراج البيت)',
    ),
    konum: L10nText(
      tr: 'Harem’in güney cephesinde, Rükn-i Yemânî tarafında; Ecyad Caddesi’nin ve Saat Kulesi’nin '
          '(Ebrâcü’l-Beyt) tam karşısındadır. Saat Kulesi otellerinden çıkınca ilk karşınıza çıkan büyük kapıdır.',
      en: 'On the southern façade, on the Yemeni Corner side, directly opposite Ajyad Street and the Clock Tower '
          '(Abraj al-Bait). It is the first big gate you see when leaving the Clock Tower hotels.',
      ar: 'في الواجهة الجنوبية جهة الركن اليماني، مقابل شارع أجياد وبرج الساعة (أبراج البيت).',
    ),
    anlam: L10nText(
      tr: 'Suudi Arabistan’ın kurucusu Kral Abdülaziz bin Abdurrahman Âl-i Suûd’un adını taşır. '
          'Mescid-i Haram’ın beş ana kapısından biridir ve 1 numaralı kapıdır.',
      en: 'Named after King Abdulaziz Al Saud, founder of Saudi Arabia. It is Gate 1 and one of the five main gates.',
      ar: 'سمي باسم الملك عبد العزيز آل سعود مؤسس المملكة، وهو الباب رقم 1 وأحد الأبواب الرئيسة الخمسة.',
    ),
    ipucu: L10nText(
      tr: 'Tekerlekli sandalye kullananlar için metafa (tavaf alanına) doğrudan erişim sağlayan kapılardan biridir. '
          'Ana kapıların üzerinde iki minare bulunur; uzaktan bu iki minareden tanınır.',
      en: 'One of the gates giving wheelchair users direct access to the mataf. Main gates are marked by two minarets above them.',
      ar: 'من الأبواب التي توفر وصولاً مباشراً إلى المطاف لمستخدمي الكراسي المتحركة. تعلو الأبواب الرئيسة مئذنتان.',
    ),
    point: LatLng(21.421045, 39.825841), // OSM entrance ref=1
  ),

  // No: [GN] 2025 "Ajyad Gate No. 3" + OSM "Bab Ajyad - Gate 3". (Eski listelerde 5; OSM'de ayrıca "Ajyad Gate 5" düğümü var.)
  HaremKapisi(
    id: 'h_ecyad',
    mescid: KapiMescid.haram,
    no: '3',
    ad: L10nText(tr: 'Ecyad Kapısı', en: 'Ajyad Gate', ar: 'باب أجياد'),
    yakin: L10nText(
      tr: 'Güney cephe · Ecyad bölgesi ve oteller',
      en: 'South side · Ajyad district and hotels',
      ar: 'الجهة الجنوبية · حي أجياد والفنادق',
    ),
    konum: L10nText(
      tr: 'Kral Abdülaziz Kapısı’nın hemen doğusunda, güney cephededir. Ecyad bölgesindeki ve Saat Kulesi '
          'çevresindeki otellere en yakın kapılardandır.',
      en: 'On the southern façade just east of King Abdulaziz Gate; close to the Ajyad and Clock Tower hotels.',
      ar: 'في الواجهة الجنوبية شرق باب الملك عبد العزيز، قريب من فنادق أجياد وبرج الساعة.',
    ),
    anlam: L10nText(
      tr: 'Adını karşısına açıldığı Ecyad semtinden ve Ecyad vadisinden alır.',
      en: 'Named after the Ajyad district and valley that it faces.',
      ar: 'سمي باسم حي أجياد ووادي أجياد الذي يقابله.',
    ),
    ipucu: L10nText(
      tr: '2025’te umre yapanların metafa girişi için ayrılan kapılar arasında sayıldı (Kral Fahd 79 ve Umre 62 ile birlikte).',
      en: 'In 2025 it was among the gates assigned for Umrah pilgrims to enter the mataf (with King Fahd 79 and Umrah 62).',
      ar: 'خُصص عام 2025 ضمن أبواب دخول المعتمرين إلى المطاف (مع باب الملك فهد 79 وباب العمرة 62).',
    ),
    point: LatLng(21.421065, 39.826406), // OSM "Bab Ajyad - Gate 3"
  ),

  // No: Arapça kaynaklar ve [LSA] 11; [MP] ve [KSX] 12 diyor. OSM'de numarasız "As-Safa Gate" noktası (iç taraf, Safa yönü).
  HaremKapisi(
    id: 'h_safa',
    mescid: KapiMescid.haram,
    no: '11',
    ad: L10nText(tr: 'Safâ Kapısı', en: 'Al-Safa Gate', ar: 'باب الصفا'),
    yakin: L10nText(
      tr: 'Doğu-güneydoğu · Safâ tepesi, sa‘yin başlangıcı',
      en: 'East-southeast · Safa hill, start of Sa‘i',
      ar: 'الجنوب الشرقي · جبل الصفا وبداية السعي',
    ),
    konum: L10nText(
      tr: 'Safâ tepesinin bulunduğu tarafta, Mes‘â’nın (Safâ ile Merve arası) güney ucundadır. '
          'Kapıdan girince sa‘yin başladığı Safâ’ya ve üst katlara ulaşılır.',
      en: 'On the Safa hill side, at the southern end of the Mas‘a (between Safa and Marwah). It leads to Safa, where Sa‘i begins, and to the upper floors.',
      ar: 'عند جبل الصفا في الطرف الجنوبي للمسعى، ويؤدي إلى بداية السعي والأدوار العليا.',
    ),
    anlam: L10nText(
      tr: 'Safâ tepesine açıldığı için bu adı alır. Safâ, “saf, berrak taş” anlamına gelir.',
      en: 'Named after Mount Safa, which it faces. "Safa" refers to smooth, clear stone.',
      ar: 'سمي باسم جبل الصفا الذي يقابله.',
    ),
    ipucu: L10nText(
      tr: 'Tavaftan sonra sa‘ye başlamak için en uygun taraftır. Sa‘y için elektrikli araç (scooter) hizmeti Safâ tarafında verilir.',
      en: 'The best side to start Sa‘i after tawaf. Electric scooter service for Sa‘i is available on the Safa side.',
      ar: 'أنسب جهة لبدء السعي بعد الطواف، وتتوفر خدمة العربات الكهربائية للسعي عند الصفا.',
    ),
    point: LatLng(21.421942, 39.826435), // OSM "As-Safa Gate" (numarasız)
  ),

  // No: [LSA] 13 "Bab Qubais", [KSX] 13 "Abi Qubais". Konum: OSM entrance ref=13 (adsız).
  HaremKapisi(
    id: 'h_ebukubeys',
    mescid: KapiMescid.haram,
    no: '13',
    ad: L10nText(tr: 'Ebû Kubeys Kapısı', en: 'Abu Qubais Gate', ar: 'باب أبي قبيس'),
    yakin: L10nText(
      tr: 'Doğu cephe · Safâ yakını, Ebû Kubeys dağı tarafı',
      en: 'East side · near Safa, Mount Abu Qubais side',
      ar: 'الجهة الشرقية · قرب الصفا وجهة جبل أبي قبيس',
    ),
    konum: L10nText(
      tr: 'Mes‘â’nın doğu cephesinde, Safâ’ya yakın kesimdedir; Ebû Kubeys dağının bulunduğu yöne bakar.',
      en: 'On the eastern façade of the Mas‘a near Safa, facing the direction of Mount Abu Qubais.',
      ar: 'في الواجهة الشرقية للمسعى قرب الصفا باتجاه جبل أبي قبيس.',
    ),
    anlam: L10nText(
      tr: 'Adını Kâbe’nin doğusunda yükselen Ebû Kubeys dağından alır. Bugün bu dağın üzerinde Safâ Sarayı bulunur.',
      en: 'Named after Mount Abu Qubais, which rises east of the Kaaba; today the Al-Safa Palace stands on it.',
      ar: 'سمي باسم جبل أبي قبيس شرق الكعبة، ويقوم عليه اليوم قصر الصفا.',
    ),
    point: LatLng(21.421935, 39.827658), // OSM entrance ref=13
  ),

  // No: OSM "Al Nabi Gate 14" + [MP] 14 + [LSA]/[KSX] 14.
  HaremKapisi(
    id: 'h_nebi',
    mescid: KapiMescid.haram,
    no: '14',
    ad: L10nText(tr: 'Bâbü’n-Nebî (Peygamber Kapısı)', en: 'Al-Nabi Gate', ar: 'باب النبي'),
    yakin: L10nText(
      tr: 'Doğu cephe · Safâ ile Ali Kapısı arası',
      en: 'East side · between Safa and Ali Gate',
      ar: 'الجهة الشرقية · بين الصفا وباب علي',
    ),
    konum: L10nText(
      tr: 'Mes‘â’nın doğu cephesinde, Ebû Kubeys Kapısı ile Ali Kapısı arasında, Safâ’ya yakındır. '
          'Hemen yanındaki Nebî Köprüsü (15) üst katlara çıkar.',
      en: 'On the eastern façade of the Mas‘a, between Abu Qubais Gate and Ali Gate, near Safa. The Nabi Bridge (15) next to it leads to the upper floors.',
      ar: 'في الواجهة الشرقية للمسعى بين باب أبي قبيس وباب علي قرب الصفا، وبجواره جسر باب النبي (15) إلى الأدوار العليا.',
    ),
    anlam: L10nText(
      tr: '“Peygamber Kapısı” demektir; Hz. Muhammed’e (s.a.v.) nispet edilir.',
      en: '"The Prophet’s Gate", named after Prophet Muhammad (peace be upon him).',
      ar: 'نسبة إلى النبي محمد ﷺ.',
    ),
    point: LatLng(21.422201, 39.827678), // OSM "Al Nabi Gate 14"
  ),

  // No: OSM ref=16 "باب سلم الأرقم" + [MP] 16. Dârü’l-Erkam bilgisi: genel siyer bilgisi.
  HaremKapisi(
    id: 'h_erkam',
    mescid: KapiMescid.haram,
    no: '16',
    ad: L10nText(tr: 'Dârü’l-Erkam Kapısı', en: 'Dar al-Arqam Gate', ar: 'باب دار الأرقم'),
    yakin: L10nText(
      tr: 'Doğu cephe · Safâ tarafı, yürüyen merdivenler',
      en: 'East side · Safa side, escalators',
      ar: 'الجهة الشرقية · جهة الصفا والسلالم الكهربائية',
    ),
    konum: L10nText(
      tr: 'Mes‘â’nın doğusunda, Bâbü’n-Nebî’nin kuzeyindedir. Yürüyen merdivenlerle üst kattaki sa‘y alanına çıkılır.',
      en: 'East of the Mas‘a, north of Al-Nabi Gate. Escalators lead up to the upper Sa‘i level.',
      ar: 'شرق المسعى شمال باب النبي، وفيه سلالم كهربائية إلى دور السعي العلوي.',
    ),
    anlam: L10nText(
      tr: 'Sahâbî Erkam bin Ebü’l-Erkam’ın evine (Dârü’l-Erkam) nispet edilir.',
      en: 'Named after the house of the Companion al-Arqam ibn Abi al-Arqam.',
      ar: 'نسبة إلى دار الصحابي الأرقم بن أبي الأرقم.',
    ),
    tarih: L10nText(
      tr: 'Dârü’l-Erkam, Safâ tepesinin yakınındaydı. İslâm’ın ilk yıllarında Müslümanlar bu evde gizlice toplanır, '
          'Peygamber Efendimiz burada ders verirdi. Hz. Ömer’in bu evde Müslüman olduğu rivayet edilir.',
      en: 'Dar al-Arqam stood near Safa. In the early years of Islam the Muslims met secretly in this house and the Prophet taught there. Umar is reported to have embraced Islam there.',
      ar: 'كانت دار الأرقم قرب الصفا، وفيها كان المسلمون يجتمعون سراً في أول الإسلام، ويُروى أن عمر رضي الله عنه أسلم فيها.',
    ),
    point: LatLng(21.422498, 39.82774), // OSM entrance ref=16
  ),

  // No: OSM ref=17 "باب علي" + [MP] 17 + [LSA]/[KSX] 17.
  HaremKapisi(
    id: 'h_ali',
    mescid: KapiMescid.haram,
    no: '17',
    ad: L10nText(tr: 'Hz. Ali Kapısı', en: 'Ali Gate', ar: 'باب علي'),
    yakin: L10nText(
      tr: 'Doğu cephe · Mes‘â’nın ortası (yeşil ışıklar)',
      en: 'East side · middle of the Mas‘a (green lights)',
      ar: 'الجهة الشرقية · وسط المسعى (الأميال الخضراء)',
    ),
    konum: L10nText(
      tr: 'Mes‘â’nın doğu cephesinde, Bâbü’n-Nebî ile Abbas Kapısı arasındadır. Sa‘y yolunda erkeklerin hızlı yürüdüğü '
          'yeşil ışıklı bölgeye (mîleyn-i ahdareyn) doğrudan açılır.',
      en: 'On the eastern façade of the Mas‘a between Al-Nabi and Abbas gates; it opens directly onto the green-lit stretch where men walk briskly during Sa‘i.',
      ar: 'في الواجهة الشرقية للمسعى بين باب النبي وباب العباس، ويفتح مباشرة على منطقة الميلين الأخضرين.',
    ),
    anlam: L10nText(
      tr: 'Dördüncü halife Hz. Ali bin Ebû Tâlib’in adını taşır.',
      en: 'Named after Ali ibn Abi Talib, the fourth caliph.',
      ar: 'سمي باسم الخليفة الرابع علي بن أبي طالب رضي الله عنه.',
    ),
    tarih: L10nText(
      tr: 'Eski dönemde farklı bir yerde bulunan ve Benî Hâşim Kapısı ya da Bathâ Kapısı diye de anılan kapının adını yaşatır.',
      en: 'It carries on the name of an older gate, also known as the Bani Hashim or Batha Gate, which stood elsewhere.',
      ar: 'يحمل اسم باب قديم كان في موضع آخر، وعرف أيضاً بباب بني هاشم أو باب البطحاء.',
    ),
    point: LatLng(21.422952, 39.827579), // OSM entrance ref=17
  ),

  // Numara: OSM'de ref yok. Konum: OSM "Bab Al Salam" (21.423032, 39.827566).
  // Benî Şeybe bağlantısı ve "ilk gelenler buradan girer" geleneği: [WP]; eski kemer: [MP], [WP].
  HaremKapisi(
    id: 'h_selam',
    mescid: KapiMescid.haram,
    no: null,
    ad: L10nText(tr: 'Bâbü’s-Selâm', en: 'Bab al-Salam', ar: 'باب السلام'),
    yakin: L10nText(
      tr: 'Doğu cephe · Mes‘â boyunca, Safâ ile Merve arası',
      en: 'East side · along the Mas‘a, between Safa and Marwah',
      ar: 'الجهة الشرقية · على المسعى بين الصفا والمروة',
    ),
    konum: L10nText(
      tr: 'Mes‘â’nın doğu cephesinde, Ali Kapısı ile Abbas Kapısı arasındadır.',
      en: 'On the eastern façade of the Mas‘a, between Ali Gate and Abbas Gate.',
      ar: 'في الواجهة الشرقية للمسعى بين باب علي وباب العباس.',
    ),
    anlam: L10nText(
      tr: '“Selâm Kapısı, esenlik kapısı” demektir.',
      en: '"The Gate of Peace".',
      ar: 'أي باب السلام والأمان.',
    ),
    tarih: L10nText(
      tr: 'Benî Şeybe Kapısı olarak da anılır. Kâbe’nin anahtarı asırlardır Benî Şeybe ailesindedir. '
          'Harem’e ilk kez gelenlerin kudüm tavafı için bu kapıdan girmesi eski bir gelenektir. '
          'Metafın içinde duran tarihî Benî Şeybe kemeri ise tavaf alanını genişletmek için 1960’larda kaldırıldı.',
      en: 'Also known as the Gate of Bani Shaybah, the family that has kept the key of the Kaaba for centuries. '
          'Entering through it for the arrival tawaf is an old tradition. The historic Bani Shaybah arch inside the mataf was removed in the 1960s to widen the tawaf area.',
      ar: 'ويعرف بباب بني شيبة، وهم سدنة الكعبة. ومن العادات القديمة أن يدخل منه القادم لأول مرة لطواف القدوم. '
          'وأزيلت قنطرة باب بني شيبة التاريخية من المطاف في الستينيات لتوسعة الطواف.',
    ),
    ipucu: L10nText(
      tr: 'Numarası kapı tabelasında yazar.',
      en: 'Its number is shown on the gate sign.',
      ar: 'رقمه مكتوب على لوحة الباب.',
    ),
    point: LatLng(21.423032, 39.827566), // OSM "Bab Al Salam"
  ),

  // No: [MP] 20, [LSA] 20, [KSX] 20. Konum: OSM entrance ref=20 (adsız).
  HaremKapisi(
    id: 'h_abbas',
    mescid: KapiMescid.haram,
    no: '20',
    ad: L10nText(tr: 'Abbas Kapısı', en: 'Al-Abbas Gate', ar: 'باب العباس'),
    yakin: L10nText(
      tr: 'Doğu cephe · Mes‘â’ya doğrudan giriş',
      en: 'East side · direct access to the Mas‘a',
      ar: 'الجهة الشرقية · مدخل مباشر إلى المسعى',
    ),
    konum: L10nText(
      tr: 'Mes‘â’nın doğu cephesinde, Ali Kapısı ile Benî Şeybe Kapısı arasındadır. Ortada büyük, yanlarda küçük olmak üzere üç girişlidir.',
      en: 'On the eastern façade of the Mas‘a between Ali Gate and Bani Shaybah Gate; it has three portals, the large one in the middle.',
      ar: 'في الواجهة الشرقية للمسعى بين باب علي وباب بني شيبة، وله ثلاثة مداخل أكبرها في الوسط.',
    ),
    anlam: L10nText(
      tr: 'Peygamber Efendimizin amcası Hz. Abbas bin Abdülmuttalib’in adını taşır.',
      en: 'Named after al-Abbas ibn Abd al-Muttalib, the Prophet’s uncle.',
      ar: 'سمي باسم العباس بن عبد المطلب عم النبي ﷺ.',
    ),
    point: LatLng(21.42407, 39.827491), // OSM entrance ref=20
  ),

  // No: [MP] 21 (köprü kapısı), [LSA]/[KSX] 21. OSM ref=21'e "Bani Shaibah Bridge Gate" yazmış; ad için [MP] esas alındı.
  HaremKapisi(
    id: 'h_benihasim',
    mescid: KapiMescid.haram,
    no: '21',
    ad: L10nText(tr: 'Benî Hâşim Kapısı', en: 'Bani Hashim Gate', ar: 'باب بني هاشم'),
    yakin: L10nText(
      tr: 'Doğu cephe · köprüden üst katlara',
      en: 'East side · bridge to the upper floors',
      ar: 'الجهة الشرقية · جسر إلى الأدوار العليا',
    ),
    konum: L10nText(
      tr: 'Mes‘â’nın doğu cephesinde, Abbas Kapısı’nın kuzeyindedir. Köprü bağlantılı bir kapıdır; üst katlara ulaşım sağlar.',
      en: 'On the eastern façade of the Mas‘a, north of Abbas Gate. It is a bridge gate giving access to the upper floors.',
      ar: 'في الواجهة الشرقية للمسعى شمال باب العباس، وهو باب جسر يوصل إلى الأدوار العليا.',
    ),
    anlam: L10nText(
      tr: 'Peygamber Efendimizin mensup olduğu Kureyş’in Hâşimoğulları koluna nispet edilir.',
      en: 'Named after the Banu Hashim, the Prophet’s clan of Quraysh.',
      ar: 'نسبة إلى بني هاشم، عشيرة النبي ﷺ من قريش.',
    ),
    point: LatLng(21.424463, 39.827387), // OSM entrance ref=21
  ),

  // No: OSM "22 Bani Shaibah Gate" + [MP] 22 + [KSX] 22.
  HaremKapisi(
    id: 'h_benisheybe',
    mescid: KapiMescid.haram,
    no: '22',
    ad: L10nText(tr: 'Benî Şeybe Kapısı', en: 'Bani Shaybah Gate', ar: 'باب بني شيبة'),
    yakin: L10nText(
      tr: 'Doğu cephe · Merve’ye yakın',
      en: 'East side · near Marwah',
      ar: 'الجهة الشرقية · قرب المروة',
    ),
    konum: L10nText(
      tr: 'Mes‘â’nın doğu cephesinde, Merve tarafına yakındır; sa‘y galerisine açılır.',
      en: 'On the eastern façade of the Mas‘a near Marwah; opens onto the Sa‘i gallery.',
      ar: 'في الواجهة الشرقية للمسعى قرب المروة، ويفتح على رواق السعي.',
    ),
    anlam: L10nText(
      tr: 'Kâbe’nin anahtarını taşıyan (hacebe) Benî Şeybe ailesine nispet edilir.',
      en: 'Named after the Bani Shaybah, the family that holds the key of the Kaaba.',
      ar: 'نسبة إلى بني شيبة سدنة الكعبة وحملة مفتاحها.',
    ),
    tarih: L10nText(
      tr: 'Yeni bir kapıdır; adını metafın içindeki tarihî Benî Şeybe kemerinden alır. O kemer günümüzde yoktur.',
      en: 'A newer gate that carries the name of the historic Bani Shaybah arch in the mataf, which no longer exists.',
      ar: 'باب حديث يحمل اسم قنطرة بني شيبة التاريخية في المطاف، وهي غير موجودة اليوم.',
    ),
    point: LatLng(21.424689, 39.827357), // OSM "22 Bani Shaibah Gate"
  ),

  // No: [MP] 23 ve [LSA] 23. DİKKAT: OSM bu kapıya ref=25 vermiş (name:tr "Merve Kapısı - 25").
  // Konum OSM "Bab Al Marwah" (entrance=main).
  HaremKapisi(
    id: 'h_merve',
    mescid: KapiMescid.haram,
    no: '23',
    ad: L10nText(tr: 'Merve Kapısı', en: 'Al-Marwah Gate', ar: 'باب المروة'),
    yakin: L10nText(
      tr: 'Kuzeydoğu · Merve tepesi, sa‘yin bitişi',
      en: 'Northeast · Marwah hill, end of Sa‘i',
      ar: 'الشمال الشرقي · جبل المروة ونهاية السعي',
    ),
    konum: L10nText(
      tr: 'Merve tepesine en yakın kapıdır. Mes‘â’nın kuzey ucundadır; yürüyen merdivenlerle üst katlara çıkılır.',
      en: 'The closest gate to Marwah, at the northern end of the Mas‘a, with escalators to the upper floors.',
      ar: 'أقرب باب إلى المروة في الطرف الشمالي للمسعى، وفيه سلالم كهربائية.',
    ),
    anlam: L10nText(
      tr: 'Merve tepesine açıldığı için bu adı alır. Merve, “beyaz, parlak çakıl taşı” anlamına gelir.',
      en: 'Named after Mount Marwah. "Marwah" refers to white, shiny pebbles.',
      ar: 'سمي باسم جبل المروة.',
    ),
    ipucu: L10nText(
      tr: 'Sa‘y Merve’de biter; sa‘yden sonra saç kestirmek (tıraş) için en yakın çıkış burasıdır.',
      en: 'Sa‘i ends at Marwah, so this is the nearest exit afterwards, e.g. to have your hair cut.',
      ar: 'ينتهي السعي عند المروة، فهو أقرب مخرج بعده للحلق أو التقصير.',
    ),
    point: LatLng(21.425309, 39.827388), // OSM "Bab Al Marwah 25"
  ),

  // No: OSM "باب قريش 28" + [KSX] 28 ([LSA] 26–27). Kuzey uç: [MP].
  HaremKapisi(
    id: 'h_kureys',
    mescid: KapiMescid.haram,
    no: '28',
    ad: L10nText(tr: 'Kureyş Kapısı', en: 'Quraysh Gate', ar: 'باب قريش'),
    yakin: L10nText(
      tr: 'Kuzey · Mes‘â’nın kuzey ucu, Merve tarafı',
      en: 'North · northern end of the Mas‘a, Marwah side',
      ar: 'الشمال · الطرف الشمالي للمسعى جهة المروة',
    ),
    konum: L10nText(
      tr: 'Mes‘â’nın kuzey ucunda, Merve Kapısı’nın batısındadır; Merve bölgesine ulaşım sağlar.',
      en: 'At the northern end of the Mas‘a, west of Marwah Gate; gives access to the Marwah area.',
      ar: 'في الطرف الشمالي للمسعى غرب باب المروة، ويوصل إلى منطقة المروة.',
    ),
    anlam: L10nText(
      tr: 'Peygamber Efendimizin kabilesi olan Kureyş’e nispet edilir.',
      en: 'Named after Quraysh, the Prophet’s tribe.',
      ar: 'نسبة إلى قبيلة قريش قبيلة النبي ﷺ.',
    ),
    point: LatLng(21.425443, 39.826923), // OSM "باب قريش 28"
  ),

  // No: [GPH] 45 (OSM ref=30 eski/farklı). Konum: OSM "Fateh Gate" (entrance=main).
  HaremKapisi(
    id: 'h_fetih',
    mescid: KapiMescid.haram,
    no: '45',
    ad: L10nText(tr: 'Fetih Kapısı', en: 'Al-Fath Gate', ar: 'باب الفتح'),
    yakin: L10nText(
      tr: 'Kuzey · Merve ile Kral Abdullah Kapısı arası',
      en: 'North · between Marwah and King Abdullah Gate',
      ar: 'الشمال · بين المروة وباب الملك عبد الله',
    ),
    konum: L10nText(
      tr: 'Harem’in kuzey tarafında, Merve’nin batısındadır. Beş ana kapıdan biridir; üzerinde iki minare vardır.',
      en: 'On the northern side of the Haram, west of Marwah. One of the five main gates, with two minarets.',
      ar: 'في الجهة الشمالية غرب المروة، وهو أحد الأبواب الرئيسة الخمسة وتعلوه مئذنتان.',
    ),
    anlam: L10nText(
      tr: '“Fetih Kapısı” demektir; adı Mekke’nin fethini (8/630) hatırlatır.',
      en: '"The Gate of Conquest", recalling the Conquest of Mecca (8 AH / 630 CE).',
      ar: 'يذكّر اسمه بفتح مكة سنة 8 هـ.',
    ),
    point: LatLng(21.424015, 39.826515), // OSM "Fateh Gate"
  ),

  // No: [GPH] 62 (OSM ref=40 eski/farklı). Umrecilere ayrılması: [GN] 2025. Konum: OSM "Umra Gate".
  HaremKapisi(
    id: 'h_umre',
    mescid: KapiMescid.haram,
    no: '62',
    ad: L10nText(tr: 'Umre Kapısı', en: 'Umrah Gate', ar: 'باب العمرة'),
    yakin: L10nText(
      tr: 'Batı · Cebel-i Ömer tarafı, metafa doğrudan giriş',
      en: 'West · Jabal Omar side, direct access to the mataf',
      ar: 'الغرب · جهة جبل عمر، دخول مباشر إلى المطاف',
    ),
    konum: L10nText(
      tr: 'Harem’in batı-kuzeybatı tarafında, Cebel-i Ömer bölgesine bakan cephededir. Beş ana kapıdan biridir; '
          'zemin kattan doğrudan metafa (tavaf alanına) ulaşılır.',
      en: 'On the west-northwest side, facing the Jabal Omar area. One of the five main gates; the ground floor leads directly to the mataf.',
      ar: 'في الجهة الغربية الشمالية مقابل منطقة جبل عمر، وهو أحد الأبواب الرئيسة الخمسة، ويؤدي دوره الأرضي مباشرة إلى المطاف.',
    ),
    anlam: L10nText(
      tr: '“Umre Kapısı” demektir.',
      en: '"The Umrah Gate".',
      ar: 'أي باب العمرة.',
    ),
    ipucu: L10nText(
      tr: 'İhramlı umrecilerin metafa girişi için ayrılan kapılardandır. Tavafa girmek için iyi bir seçenektir.',
      en: 'One of the gates assigned for Umrah pilgrims in ihram to enter the mataf; a good choice for tawaf.',
      ar: 'من الأبواب المخصصة لدخول المعتمرين إلى المطاف.',
    ),
    point: LatLng(21.422838, 39.82457), // OSM "Umra Gate 40"
  ),

  // No: [MP] 74 + [LSA]/[KSX] 74. Konum: OSM entrance ref=74 (adsız).
  HaremKapisi(
    id: 'h_ebubekir',
    mescid: KapiMescid.haram,
    no: '74',
    ad: L10nText(tr: 'Hz. Ebû Bekir Kapısı', en: 'Abu Bakr Gate', ar: 'باب أبي بكر'),
    yakin: L10nText(
      tr: 'Batı-güneybatı · Kral Fahd Kapısı’nın kuzeyi',
      en: 'West-southwest · north of King Fahd Gate',
      ar: 'الغرب الجنوبي · شمال باب الملك فهد',
    ),
    konum: L10nText(
      tr: 'Kral Fahd genişletmesinin batı cephesinde, Kral Fahd Kapısı’na yakın, tek girişli bir kapıdır.',
      en: 'A single-portal gate on the western façade of the King Fahd extension, close to King Fahd Gate.',
      ar: 'باب ذو مدخل واحد في الواجهة الغربية لتوسعة الملك فهد قرب باب الملك فهد.',
    ),
    anlam: L10nText(
      tr: 'İlk halife Hz. Ebû Bekir es-Sıddîk’ın adını taşır.',
      en: 'Named after the first caliph, Abu Bakr al-Siddiq.',
      ar: 'سمي باسم الخليفة الأول أبي بكر الصديق رضي الله عنه.',
    ),
    point: LatLng(21.421688, 39.823904), // OSM entrance ref=74
  ),

  // No: [GPH] 79 + OSM "King Fahd Gate - 79". Umrecilere ayrılması: [GN]. 1982–1988 genişletmesi: [MP].
  HaremKapisi(
    id: 'h_fahd',
    mescid: KapiMescid.haram,
    no: '79',
    ad: L10nText(tr: 'Kral Fahd Kapısı', en: 'King Fahd Gate', ar: 'باب الملك فهد'),
    yakin: L10nText(
      tr: 'Batı-güneybatı · Cebel-i Ömer otelleri tarafı',
      en: 'West-southwest · Jabal Omar hotels side',
      ar: 'الغرب الجنوبي · جهة فنادق جبل عمر',
    ),
    konum: L10nText(
      tr: 'Harem’in batı-güneybatı cephesindedir; Cebel-i Ömer otellerinin bulunduğu tarafa bakar. '
          'Beş ana kapıdan biridir; üç kemerli ve iki minarelidir.',
      en: 'On the west-southwest façade, facing the Jabal Omar hotels. One of the five main gates, with three arches and two minarets.',
      ar: 'في الواجهة الغربية الجنوبية جهة فنادق جبل عمر، وهو من الأبواب الرئيسة الخمسة، بثلاثة عقود ومئذنتين.',
    ),
    anlam: L10nText(
      tr: 'Kral Fahd bin Abdülaziz’in adını taşır; onun döneminde yapılan büyük genişletmede (1982–1988) inşa edildi.',
      en: 'Named after King Fahd; built during his major expansion (1982–1988).',
      ar: 'سمي باسم الملك فهد، وبني في توسعته الكبرى (1982–1988).',
    ),
    ipucu: L10nText(
      tr: 'Umrecilerin metafa girişi için ayrılan kapılardandır. Hemen yanındaki 78 numaralı merdivenlerle üst katlara çıkılır.',
      en: 'One of the gates assigned for Umrah pilgrims to enter the mataf. The stairs at gate 78 next to it lead to the upper floors.',
      ar: 'من الأبواب المخصصة لدخول المعتمرين إلى المطاف، وبجواره سلالم الباب 78 إلى الأدوار العليا.',
    ),
    point: LatLng(21.421232, 39.824046), // OSM "King Fahd Gate - 79"
  ),

  // No: [MP] 84 + [LSA]/[KSX] 84. "Yalnızca kadınlar": [MP] (değişebilir). Konum: OSM entrance ref=84.
  HaremKapisi(
    id: 'h_cabir',
    mescid: KapiMescid.haram,
    no: '84',
    ad: L10nText(tr: 'Câbir bin Abdullah Kapısı', en: 'Jabir ibn Abdullah Gate', ar: 'باب جابر بن عبد الله'),
    yakin: L10nText(
      tr: 'Güneybatı · kadınlar için kullanılan kapı',
      en: 'Southwest · used as a women’s entrance',
      ar: 'الجنوب الغربي · مدخل للنساء',
    ),
    konum: L10nText(
      tr: 'Harem’in güneybatı köşesinde, Kral Fahd Kapısı ile Kral Abdülaziz Kapısı arasındadır.',
      en: 'At the southwestern corner, between King Fahd Gate and King Abdulaziz Gate.',
      ar: 'في الركن الجنوبي الغربي بين باب الملك فهد وباب الملك عبد العزيز.',
    ),
    anlam: L10nText(
      tr: 'Çok hadis rivayet eden sahâbî Câbir bin Abdullah’ın adını taşır.',
      en: 'Named after the Companion Jabir ibn Abdullah, a prolific narrator of hadith.',
      ar: 'سمي باسم الصحابي جابر بن عبد الله رضي الله عنهما.',
    ),
    ipucu: L10nText(
      tr: 'Kral Fahd genişletmesinde yapıldı ve kadınların kullanımına ayrılan bir kapı olarak bilinir. Uygulama değişebilir; tabelalara bakın.',
      en: 'Built in the King Fahd expansion and known as a women’s gate. This can change; check the signs.',
      ar: 'بني في توسعة الملك فهد ويعرف بأنه مخصص للنساء، وقد يتغير ذلك.',
    ),
    point: LatLng(21.420917, 39.824441), // OSM entrance ref=84
  ),

  // No: [LSA] 94 + [KSX] 94. Konum: OSM entrance ref=94 (adsız). Ad kökeni (terzi rivayeti) belirsiz olduğundan yazılmadı.
  HaremKapisi(
    id: 'h_ibrahim',
    mescid: KapiMescid.haram,
    no: '94',
    ad: L10nText(tr: 'İbrâhim Kapısı', en: 'Ibrahim Gate', ar: 'باب إبراهيم'),
    yakin: L10nText(
      tr: 'Güney · Kral Abdülaziz Kapısı’nın batısı',
      en: 'South · west of King Abdulaziz Gate',
      ar: 'الجنوب · غرب باب الملك عبد العزيز',
    ),
    konum: L10nText(
      tr: 'Harem’in güney cephesinde, Kral Abdülaziz Kapısı’na yakındır; Saat Kulesi tarafındaki otellerden kolay ulaşılır.',
      en: 'On the southern façade close to King Abdulaziz Gate; easy to reach from the Clock Tower hotels.',
      ar: 'في الواجهة الجنوبية قرب باب الملك عبد العزيز.',
    ),
    anlam: L10nText(
      tr: 'Adını Harem’in tarihî kapılarından “Bâb-ı İbrâhim”den alır.',
      en: 'Carries the name of the historic "Bab Ibrahim" of the Haram.',
      ar: 'يحمل اسم باب إبراهيم التاريخي في المسجد الحرام.',
    ),
    point: LatLng(21.421099, 39.825549), // OSM entrance ref=94
  ),

  // No: [GPH] 100 + OSM "King Abdullah Gate -100" (entrance=main). Mimari: [MP].
  HaremKapisi(
    id: 'h_abdullah',
    mescid: KapiMescid.haram,
    no: '100',
    ad: L10nText(tr: 'Kral Abdullah Kapısı', en: 'King Abdullah Gate', ar: 'باب الملك عبد الله'),
    yakin: L10nText(
      tr: 'Kuzeybatı · Kral Abdullah genişletmesi',
      en: 'Northwest · King Abdullah expansion',
      ar: 'الشمال الغربي · توسعة الملك عبد الله',
    ),
    konum: L10nText(
      tr: 'Harem’in kuzeybatısında, Kral Abdullah genişletmesinin ana girişidir. Üç kemerli, iki minareli büyük bir kapıdır; '
          'iki yanında daha küçük kapılar bulunur.',
      en: 'On the northwest side; the central entrance of the King Abdullah expansion. A large gate with three arches and two minarets, flanked by smaller gates.',
      ar: 'في الشمال الغربي، وهو المدخل الرئيس لتوسعة الملك عبد الله، بثلاثة عقود ومئذنتين.',
    ),
    anlam: L10nText(
      tr: 'Kral Abdullah bin Abdülaziz’in adını taşır; onun döneminde başlayan kuzey genişletmesinin kapısıdır.',
      en: 'Named after King Abdullah, under whom the northern expansion began.',
      ar: 'سمي باسم الملك عبد الله الذي بدأت في عهده التوسعة الشمالية.',
    ),
    ipucu: L10nText(
      tr: 'Yeni genişletme alanındaki geniş namaz bölümlerine açılır. Kâbe’ye uzaktır; tavaf için Umre veya Kral Fahd kapılarını tercih edin.',
      en: 'Opens onto the large prayer halls of the new expansion. It is far from the Kaaba; for tawaf prefer the Umrah or King Fahd gates.',
      ar: 'يفتح على مصليات التوسعة الجديدة، وهو بعيد عن الكعبة.',
    ),
    point: LatLng(21.425391, 39.824132), // OSM "King Abdullah Gate -100"
  ),
];

// ---------------------------------------------------------------------------
// MESCİD-İ NEBEVÎ
// Tüm numara ve koordinatlar OSM düğümlerinden; [MP] ile örtüşüyor.
// ---------------------------------------------------------------------------

const kNebeviKapilari = <HaremKapisi>[
  // OSM "Entrance - As-Salam Gate - 1". [MP]: en süslü kapı, Hz. Ömer döneminde yapıldı, Osmanlı cephesi korunuyor.
  HaremKapisi(
    id: 'n_selam',
    mescid: KapiMescid.nebevi,
    no: '1',
    ad: L10nText(tr: 'Bâbü’s-Selâm', en: 'Bab al-Salam', ar: 'باب السلام'),
    yakin: L10nText(
      tr: 'Batı duvarı, güney uç · Ravza ve Kabr-i Şerif ziyareti girişi',
      en: 'West wall, south end · entry for visiting the Rawdah and the Prophet’s grave',
      ar: 'الجدار الغربي الطرف الجنوبي · مدخل زيارة الروضة والقبر الشريف',
    ),
    konum: L10nText(
      tr: 'Eski (Osmanlı) mescidin batı duvarının güney ucundadır. Buradan girip kıble duvarı boyunca ilerleyince '
          'Ravza’ya ve Peygamber Efendimizin kabrinin önüne (Müvâcehe) ulaşılır.',
      en: 'At the southern end of the western wall of the old (Ottoman) mosque. Walking along the qibla wall from here leads to the Rawdah and in front of the Prophet’s grave.',
      ar: 'في الطرف الجنوبي للجدار الغربي للمسجد القديم، ومنه يسير الزائر بمحاذاة جدار القبلة إلى الروضة والمواجهة الشريفة.',
    ),
    anlam: L10nText(
      tr: '“Selâm Kapısı” demektir. Ziyaretçiler Peygamber Efendimize selâm vermek için bu kapıdan girer.',
      en: '"The Gate of Peace"; visitors enter here to greet the Prophet with salam.',
      ar: 'باب السلام، ومنه يدخل الزوار للسلام على النبي ﷺ.',
    ),
    tarih: L10nText(
      tr: 'Mescidin en eski ve en süslü kapılarındandır. Osmanlı dönemine ait cephesi, modern cephenin arkasında hâlâ korunmaktadır.',
      en: 'One of the oldest and most decorated gates. Its Ottoman façade still survives behind the modern one.',
      ar: 'من أقدم الأبواب وأكثرها زخرفة، ولا تزال واجهته العثمانية قائمة خلف الواجهة الحديثة.',
    ),
    ipucu: L10nText(
      tr: 'Kabr-i Şerif ziyaretinde bu kapıdan girilir, Bakî Kapısı’ndan (41) çıkılır. Ravza’da namaz için Nusuk uygulamasından randevu almak gerekir.',
      en: 'For the visit to the Prophet’s grave you enter here and leave through Al-Baqi Gate (41). Praying in the Rawdah requires a Nusuk app permit.',
      ar: 'يدخل منه لزيارة القبر الشريف ويخرج من باب البقيع (41). تتطلب الصلاة في الروضة تصريحاً من تطبيق نسك.',
    ),
    point: LatLng(24.46744, 39.610663), // OSM "As-Salam Gate - 1"
  ),

  // OSM "Abu Bakr as-Siddiq Gate - 2". Hadis: Buhârî (Ebû Bekir'in hav­hası dışındaki kapıların kapatılması).
  HaremKapisi(
    id: 'n_ebubekir',
    mescid: KapiMescid.nebevi,
    no: '2',
    ad: L10nText(tr: 'Hz. Ebû Bekir Kapısı', en: 'Abu Bakr al-Siddiq Gate', ar: 'باب أبي بكر الصديق'),
    yakin: L10nText(
      tr: 'Batı duvarı · Bâbü’s-Selâm’ın hemen kuzeyi',
      en: 'West wall · just north of Bab al-Salam',
      ar: 'الجدار الغربي · شمال باب السلام مباشرة',
    ),
    konum: L10nText(
      tr: 'Eski mescidin batı duvarında, Bâbü’s-Selâm ile Rahmet Kapısı arasındadır.',
      en: 'On the western wall of the old mosque, between Bab al-Salam and Bab al-Rahmah.',
      ar: 'في الجدار الغربي بين باب السلام وباب الرحمة.',
    ),
    anlam: L10nText(
      tr: 'İlk halife Hz. Ebû Bekir es-Sıddîk’ın adını taşır. “Ebû Bekir’in havhası (küçük kapısı)” diye de anılır.',
      en: 'Named after Abu Bakr al-Siddiq; also called "the khawkha (small door) of Abu Bakr".',
      ar: 'سمي باسم أبي بكر الصديق، ويعرف بخوخة أبي بكر.',
    ),
    tarih: L10nText(
      tr: 'Buhârî’nin rivayetine göre Peygamber Efendimiz vefatından kısa süre önceki hutbesinde, mescide açılan bütün kapıların '
          '(havhaların) kapatılmasını, yalnızca Ebû Bekir’in kapısının açık bırakılmasını emretti. Bu kapı o hatırayı yaşatır.',
      en: 'According to al-Bukhari, shortly before his death the Prophet ordered all doors opening into the mosque to be closed except the door of Abu Bakr. This gate preserves that memory.',
      ar: 'روى البخاري أن النبي ﷺ أمر في آخر حياته بسد الأبواب (الخوخ) المفتوحة على المسجد إلا خوخة أبي بكر.',
    ),
    point: LatLng(24.467568, 39.610663), // OSM "Abu Bakr as-Siddiq Gate - 2"
  ),

  // OSM "Ar-Rahma Gate - 3". [MP]: en eski üç kapıdan biri, Bâb-ı Âtike adı.
  HaremKapisi(
    id: 'n_rahmet',
    mescid: KapiMescid.nebevi,
    no: '3',
    ad: L10nText(tr: 'Bâbü’r-Rahme (Rahmet Kapısı)', en: 'Bab al-Rahmah', ar: 'باب الرحمة'),
    yakin: L10nText(
      tr: 'Batı duvarı · eski mescidin en eski kapılarından',
      en: 'West wall · one of the oldest gates',
      ar: 'الجدار الغربي · من أقدم الأبواب',
    ),
    konum: L10nText(
      tr: 'Eski mescidin batı duvarında, Ebû Bekir Kapısı’nın kuzeyindedir.',
      en: 'On the western wall of the old mosque, north of Abu Bakr Gate.',
      ar: 'في الجدار الغربي شمال باب أبي بكر.',
    ),
    anlam: L10nText(
      tr: '“Rahmet Kapısı” demektir. Eski adı Bâb-ı Âtike’dir.',
      en: '"The Gate of Mercy"; its old name is Bab Atikah.',
      ar: 'باب الرحمة، ويعرف قديماً بباب عاتكة.',
    ),
    tarih: L10nText(
      tr: 'Peygamber Efendimiz zamanında mescidin sahip olduğu üç kapıdan biri olarak bilinir.',
      en: 'Known as one of the three gates the mosque had in the Prophet’s time.',
      ar: 'يعرف بأنه أحد الأبواب الثلاثة التي كانت للمسجد في عهد النبي ﷺ.',
    ),
    point: LatLng(24.467749, 39.610662), // OSM "Ar-Rahma Gate - 3"
  ),

  // OSM "Bab al-Hijra - 4".
  HaremKapisi(
    id: 'n_hicret',
    mescid: KapiMescid.nebevi,
    no: '4',
    ad: L10nText(tr: 'Hicret Kapısı', en: 'Al-Hijrah Gate', ar: 'باب الهجرة'),
    yakin: L10nText(
      tr: 'Batı · Rahmet Kapısı’nın yanı',
      en: 'West · next to Bab al-Rahmah',
      ar: 'الغرب · بجوار باب الرحمة',
    ),
    konum: L10nText(
      tr: 'Rahmet Kapısı’nın hemen yanındadır; batı tarafındaki avluya açılır.',
      en: 'Right next to Bab al-Rahmah, opening onto the western courtyard.',
      ar: 'بجوار باب الرحمة ويفتح على الساحة الغربية.',
    ),
    anlam: L10nText(
      tr: 'Peygamber Efendimizin Mekke’den Medine’ye hicretini (622) hatırlatır.',
      en: 'Recalls the Prophet’s Hijrah from Mecca to Medina (622).',
      ar: 'يذكّر بهجرة النبي ﷺ من مكة إلى المدينة.',
    ),
    point: LatLng(24.46786, 39.61056), // OSM "Bab al-Hijra - 4"
  ),

  // OSM "Bab Qaba - 5". [MP]: Kuba ~5 km güney, ikinci genişletmede (~1985).
  HaremKapisi(
    id: 'n_kuba',
    mescid: KapiMescid.nebevi,
    no: '5',
    ad: L10nText(tr: 'Kubâ Kapısı', en: 'Quba Gate', ar: 'باب قباء'),
    yakin: L10nText(
      tr: 'Güneybatı · Kubâ yönü',
      en: 'Southwest · towards Quba',
      ar: 'الجنوب الغربي · باتجاه قباء',
    ),
    konum: L10nText(
      tr: 'Kral Fahd genişletmesinin güneybatı kanadındadır. Üç kemerlidir.',
      en: 'On the southwestern wing of the King Fahd extension; triple-arched.',
      ar: 'في الجناح الجنوبي الغربي لتوسعة الملك فهد، وله ثلاثة عقود.',
    ),
    anlam: L10nText(
      tr: 'Adını mescidin yaklaşık 5 km güneyindeki Kubâ’dan (ve İslâm’ın ilk mescidi Kubâ Mescidi’nden) alır.',
      en: 'Named after Quba, about 5 km south, home of the first mosque in Islam.',
      ar: 'سمي باسم قباء جنوب المسجد بنحو 5 كم، وفيها أول مسجد في الإسلام.',
    ),
    point: LatLng(24.467755, 39.60992), // OSM "Bab Qaba - 5"
  ),

  // OSM "King Saud Gates - 7, 8, 9".
  HaremKapisi(
    id: 'n_saud',
    mescid: KapiMescid.nebevi,
    no: '7–9',
    ad: L10nText(tr: 'Kral Suûd Kapısı', en: 'King Saud Gate', ar: 'باب الملك سعود'),
    yakin: L10nText(
      tr: 'Batı cephe · güneybatı köşe',
      en: 'West façade · southwest corner',
      ar: 'الواجهة الغربية · الركن الجنوبي الغربي',
    ),
    konum: L10nText(
      tr: 'Kral Fahd genişletmesinin batı cephesinin güney ucundadır; iki büyük, beş küçük girişi vardır.',
      en: 'At the southern end of the western façade of the King Fahd extension, with two large and five smaller portals.',
      ar: 'في الطرف الجنوبي للواجهة الغربية لتوسعة الملك فهد.',
    ),
    anlam: L10nText(
      tr: 'Kral Suûd bin Abdülaziz’in adını taşır.',
      en: 'Named after King Saud ibn Abdulaziz.',
      ar: 'سمي باسم الملك سعود بن عبد العزيز.',
    ),
    point: LatLng(24.468265, 39.609152), // OSM "King Saud Gates - 7, 8, 9"
  ),

  // OSM "Al Aqiq Gates - 10, 11"; [MP] 10'u İmam Buhârî, 11'i Akîk olarak veriyor. Çakışma yüzünden yalnız 11 yazıldı.
  HaremKapisi(
    id: 'n_akik',
    mescid: KapiMescid.nebevi,
    no: '11',
    ad: L10nText(tr: 'Akîk Kapısı', en: 'Al-Aqiq Gate', ar: 'باب العقيق'),
    yakin: L10nText(
      tr: 'Batı cephe · Kral Suûd ile Mecîdî kapıları arası',
      en: 'West façade · between King Saud and Majidi gates',
      ar: 'الواجهة الغربية · بين باب الملك سعود وباب المجيدي',
    ),
    konum: L10nText(
      tr: 'Kral Fahd genişletmesinin batı cephesinin ortasındadır.',
      en: 'In the middle of the western façade of the King Fahd extension.',
      ar: 'في وسط الواجهة الغربية لتوسعة الملك فهد.',
    ),
    anlam: L10nText(
      tr: 'Adını Medine’nin batısındaki Akîk vadisinden alır; birçok sahâbînin evi bu vadideydi.',
      en: 'Named after Wadi al-Aqiq west of Medina, where several Companions lived.',
      ar: 'سمي باسم وادي العقيق غرب المدينة، وقد سكنه عدد من الصحابة.',
    ),
    point: LatLng(24.468896, 39.609115), // OSM "Al Aqiq Gates - 10, 11"
  ),

  // OSM "Bab Sultan Abdul Majid - 12, 13, 14 - Women Entrance".
  HaremKapisi(
    id: 'n_mecidi',
    mescid: KapiMescid.nebevi,
    no: '12–14',
    ad: L10nText(tr: 'Mecîdî Kapısı', en: 'Al-Majidi Gate', ar: 'باب المجيدي'),
    yakin: L10nText(
      tr: 'Kuzeybatı · kadınlar bölümü girişi',
      en: 'Northwest · women’s section entrance',
      ar: 'الشمال الغربي · مدخل مصلى النساء',
    ),
    konum: L10nText(
      tr: 'Kral Fahd genişletmesinin kuzeybatı kanadındadır; iki büyük, beş küçük girişi vardır.',
      en: 'On the northwestern wing of the King Fahd extension, with two large and five smaller portals.',
      ar: 'في الجناح الشمالي الغربي لتوسعة الملك فهد.',
    ),
    anlam: L10nText(
      tr: 'Mescidi büyük ölçüde yeniden yaptıran Osmanlı padişahı Sultan Abdülmecid’e nispet edilir; eski adı “Sultan Abdülmecid Kapısı”dır.',
      en: 'Named after the Ottoman Sultan Abdulmejid I, who had the mosque largely rebuilt.',
      ar: 'نسبة إلى السلطان العثماني عبد المجيد الأول الذي جدد بناء المسجد.',
    ),
    ipucu: L10nText(
      tr: 'Kadınlar bölümüne giriş için kullanılır.',
      en: 'Used as an entrance to the women’s section.',
      ar: 'يستخدم مدخلاً لمصلى النساء.',
    ),
    point: LatLng(24.469481, 39.609162), // OSM "Bab Sultan Abdul Majid - 12, 13, 14"
  ),

  // OSM "Omar Bin Al Khattab Gates 16, 17 - Women Entrance" + "Gate 18".
  HaremKapisi(
    id: 'n_omer',
    mescid: KapiMescid.nebevi,
    no: '16–18',
    ad: L10nText(tr: 'Hz. Ömer Kapısı', en: 'Umar ibn al-Khattab Gate', ar: 'باب عمر بن الخطاب'),
    yakin: L10nText(
      tr: 'Kuzey duvarı, batı uç · kadınlar bölümü',
      en: 'North wall, west end · women’s section',
      ar: 'الجدار الشمالي الطرف الغربي · مصلى النساء',
    ),
    konum: L10nText(
      tr: 'Kuzey duvarının batı ucundadır. 16 ve 17 numaralı girişler kadınlar bölümüne açılır; yakınında kadınlar kütüphanesi vardır.',
      en: 'At the western end of the north wall. Entrances 16 and 17 lead to the women’s section; the women’s library is nearby.',
      ar: 'في الطرف الغربي للجدار الشمالي، والمدخلان 16 و17 للنساء، وبقربه مكتبة النساء.',
    ),
    anlam: L10nText(
      tr: 'İkinci halife Hz. Ömer bin Hattâb’ın adını taşır.',
      en: 'Named after the second caliph, Umar ibn al-Khattab.',
      ar: 'سمي باسم الخليفة الثاني عمر بن الخطاب رضي الله عنه.',
    ),
    point: LatLng(24.469925, 39.609917), // OSM "Omar Bin Al Khattab Gates 16, 17"
  ),

  // OSM "باب بدر -19". [MP]: tek girişli, üstünde Hicr 15:46 yazılı.
  HaremKapisi(
    id: 'n_bedir',
    mescid: KapiMescid.nebevi,
    no: '19',
    ad: L10nText(tr: 'Bedir Kapısı', en: 'Badr Gate', ar: 'باب بدر'),
    yakin: L10nText(
      tr: 'Kuzey duvarı · Hz. Ömer ile Kral Fahd kapıları arası',
      en: 'North wall · between Umar and King Fahd gates',
      ar: 'الجدار الشمالي · بين باب عمر وباب الملك فهد',
    ),
    konum: L10nText(
      tr: 'Kuzey duvarında, Hz. Ömer Kapısı ile Kral Fahd Kapısı arasında tek girişli bir kapıdır.',
      en: 'A single-portal gate on the north wall, between Umar Gate and King Fahd Gate.',
      ar: 'باب ذو مدخل واحد في الجدار الشمالي.',
    ),
    anlam: L10nText(
      tr: 'Müslümanların ilk büyük zaferi olan Bedir Savaşı’nı (2/624) hatırlatır.',
      en: 'Recalls the Battle of Badr (624), the first major victory of the Muslims.',
      ar: 'يذكّر بغزوة بدر الكبرى.',
    ),
    tarih: L10nText(
      tr: 'Kapının üzerinde mermere “Oraya selâmetle, güven içinde girin” anlamındaki âyet (Hicr 15:46) işlenmiştir.',
      en: 'Above the gate the verse "Enter it in peace, secure" (al-Hijr 15:46) is carved in marble.',
      ar: 'نقشت فوقه الآية: ﴿ادْخُلُوهَا بِسَلَامٍ آمِنِينَ﴾.',
    ),
    point: LatLng(24.469837, 39.610538), // OSM "باب بدر -19"
  ),

  // OSM "باب الملك فهد - 20, 21, 22". [MP]: en büyük kapı, iki minare, yedi kapı, beş kubbe.
  HaremKapisi(
    id: 'n_fahd',
    mescid: KapiMescid.nebevi,
    no: '20–22',
    ad: L10nText(tr: 'Kral Fahd Kapısı', en: 'King Fahd Gate', ar: 'باب الملك فهد'),
    yakin: L10nText(
      tr: 'Kuzey cephe · ana giriş',
      en: 'North façade · main entrance',
      ar: 'الواجهة الشمالية · المدخل الرئيس',
    ),
    konum: L10nText(
      tr: 'Mescidin kuzey cephesinin ortasındaki ana giriştir. Mescidin en büyük kapısıdır: iki minare, yedi giriş ve üstünde beş kubbe.',
      en: 'The main entrance in the middle of the north façade and the largest gate: two minarets, seven doors and five domes above.',
      ar: 'المدخل الرئيس في وسط الواجهة الشمالية وأكبر الأبواب، بمئذنتين وسبعة مداخل.',
    ),
    anlam: L10nText(
      tr: 'Mescidi büyük ölçüde genişleten Kral Fahd bin Abdülaziz’in adını taşır.',
      en: 'Named after King Fahd, who greatly expanded the mosque.',
      ar: 'سمي باسم الملك فهد الذي وسع المسجد توسعة كبرى.',
    ),
    ipucu: L10nText(
      tr: 'Kuzey taraftaki otellerden gelenler için en kolay giriştir. Kalabalıkta buluşma noktası olarak kapı numarasını kullanın.',
      en: 'The easiest entrance from the northern hotels. Use the gate number as a meeting point.',
      ar: 'أسهل مدخل للقادمين من فنادق الجهة الشمالية.',
    ),
    point: LatLng(24.469925, 39.611156), // OSM "باب الملك فهد - 20, 21, 22"
  ),

  // OSM "Ohud Gate - 23 - Women Entrance".
  HaremKapisi(
    id: 'n_uhud',
    mescid: KapiMescid.nebevi,
    no: '23',
    ad: L10nText(tr: 'Uhud Kapısı', en: 'Uhud Gate', ar: 'باب أحد'),
    yakin: L10nText(
      tr: 'Kuzey duvarı · kadınlar bölümü, Uhud yönü',
      en: 'North wall · women’s section, towards Uhud',
      ar: 'الجدار الشمالي · مصلى النساء باتجاه أحد',
    ),
    konum: L10nText(
      tr: 'Kuzey duvarında, Kral Fahd Kapısı ile Hz. Osman Kapısı arasındadır; Uhud dağına bakar.',
      en: 'On the north wall between King Fahd Gate and Uthman Gate, facing Mount Uhud.',
      ar: 'في الجدار الشمالي بين باب الملك فهد وباب عثمان، ويقابل جبل أحد.',
    ),
    anlam: L10nText(
      tr: 'Adını Uhud dağından ve Uhud Savaşı’ndan (3/625) alır.',
      en: 'Named after Mount Uhud and the Battle of Uhud (625).',
      ar: 'سمي باسم جبل أحد وغزوة أحد.',
    ),
    ipucu: L10nText(
      tr: 'Kadınlar bölümüne giriş için kullanılır.',
      en: 'Used as an entrance to the women’s section.',
      ar: 'يستخدم مدخلاً لمصلى النساء.',
    ),
    point: LatLng(24.469865, 39.611753), // OSM "Ohud Gate - 23"
  ),

  // OSM "Othman Bin Affan Gates - 24, 25, 26 - Women Entrance". [MP]: kuzeydoğu kadınlar bölümüne doğrudan giriş.
  HaremKapisi(
    id: 'n_osman',
    mescid: KapiMescid.nebevi,
    no: '24–26',
    ad: L10nText(tr: 'Hz. Osman Kapısı', en: 'Uthman ibn Affan Gate', ar: 'باب عثمان بن عفان'),
    yakin: L10nText(
      tr: 'Kuzeydoğu · kadınlar bölümü',
      en: 'Northeast · women’s section',
      ar: 'الشمال الشرقي · مصلى النساء',
    ),
    konum: L10nText(
      tr: 'Kuzey duvarının doğu ucundadır; iki büyük, beş küçük girişi vardır. Kuzeydoğudaki kadınlar bölümüne doğrudan açılır.',
      en: 'At the eastern end of the north wall, with two large and five smaller portals; opens directly to the northeastern women’s section.',
      ar: 'في الطرف الشرقي للجدار الشمالي، ويفتح مباشرة على مصلى النساء الشمالي الشرقي.',
    ),
    anlam: L10nText(
      tr: 'Üçüncü halife Hz. Osman bin Affân’ın adını taşır.',
      en: 'Named after the third caliph, Uthman ibn Affan.',
      ar: 'سمي باسم الخليفة الثالث عثمان بن عفان رضي الله عنه.',
    ),
    ipucu: L10nText(
      tr: 'Kadınlar bölümüne giriş için kullanılır.',
      en: 'Used as an entrance to the women’s section.',
      ar: 'يستخدم مدخلاً لمصلى النساء.',
    ),
    point: LatLng(24.46994, 39.612376), // OSM "Othman Bin Affan Gates - 24, 25, 26"
  ),

  // OSM "Bab Ali Bin Abu Talib - 28, 29, 30 - Women Entrance".
  HaremKapisi(
    id: 'n_ali',
    mescid: KapiMescid.nebevi,
    no: '28–30',
    ad: L10nText(tr: 'Hz. Ali Kapısı', en: 'Ali ibn Abi Talib Gate', ar: 'باب علي بن أبي طالب'),
    yakin: L10nText(
      tr: 'Doğu cephe, kuzey uç · kadınlar bölümü',
      en: 'East façade, north end · women’s section',
      ar: 'الواجهة الشرقية الطرف الشمالي · مصلى النساء',
    ),
    konum: L10nText(
      tr: 'Doğu cephesinin kuzey ucundadır; mescidin en büyük kapılarındandır.',
      en: 'At the northern end of the eastern façade; one of the largest gates.',
      ar: 'في الطرف الشمالي للواجهة الشرقية، ومن أكبر الأبواب.',
    ),
    anlam: L10nText(
      tr: 'Dördüncü halife Hz. Ali bin Ebû Tâlib’in adını taşır.',
      en: 'Named after the fourth caliph, Ali ibn Abi Talib.',
      ar: 'سمي باسم الخليفة الرابع علي بن أبي طالب رضي الله عنه.',
    ),
    ipucu: L10nText(
      tr: 'Kadınlar bölümüne giriş için kullanılır.',
      en: 'Used as an entrance to the women’s section.',
      ar: 'يستخدم مدخلاً لمصلى النساء.',
    ),
    point: LatLng(24.469455, 39.613162), // OSM "Bab Ali Bin Abu Talib - 28, 29, 30"
  ),

  // OSM "King Abdul Aziz Gates - 33, 34, 35".
  HaremKapisi(
    id: 'n_abdulaziz',
    mescid: KapiMescid.nebevi,
    no: '33–35',
    ad: L10nText(tr: 'Kral Abdülaziz Kapısı', en: 'King Abdulaziz Gate', ar: 'باب الملك عبد العزيز'),
    yakin: L10nText(
      tr: 'Doğu cephe, güneydoğu köşe · Bakî tarafı',
      en: 'East façade, southeast corner · Baqi side',
      ar: 'الواجهة الشرقية الركن الجنوبي الشرقي · جهة البقيع',
    ),
    konum: L10nText(
      tr: 'Kral Fahd genişletmesinin güneydoğu köşesindedir; Cennetü’l-Bakî’ye giden doğu avlusuna açılır.',
      en: 'At the southeast corner of the King Fahd extension, opening onto the eastern courtyard towards Jannat al-Baqi.',
      ar: 'في الركن الجنوبي الشرقي لتوسعة الملك فهد، ويفتح على الساحة الشرقية باتجاه البقيع.',
    ),
    anlam: L10nText(
      tr: 'Suudi Arabistan’ın kurucusu Kral Abdülaziz’in adını taşır.',
      en: 'Named after King Abdulaziz, founder of Saudi Arabia.',
      ar: 'سمي باسم الملك عبد العزيز مؤسس المملكة.',
    ),
    point: LatLng(24.468276, 39.613198), // OSM "King Abdul Aziz Gates - 33, 34, 35"
  ),

  // OSM "Bab Makkah - 37". [MP]: Mekke yönünde, üç kemerli.
  HaremKapisi(
    id: 'n_mekke',
    mescid: KapiMescid.nebevi,
    no: '37',
    ad: L10nText(tr: 'Mekke Kapısı', en: 'Makkah Gate', ar: 'باب مكة'),
    yakin: L10nText(
      tr: 'Güney (kıble) duvarı · Mekke yönü',
      en: 'South (qibla) wall · towards Mecca',
      ar: 'الجدار الجنوبي (القبلة) · باتجاه مكة',
    ),
    konum: L10nText(
      tr: 'Kral Fahd genişletmesinin güney (kıble) duvarındadır; üç kemerlidir.',
      en: 'On the southern (qibla) wall of the King Fahd extension; triple-arched.',
      ar: 'في الجدار الجنوبي (القبلي) لتوسعة الملك فهد، وله ثلاثة عقود.',
    ),
    anlam: L10nText(
      tr: 'Mekke yönüne (kıbleye) baktığı için “Mekke Kapısı” adını alır.',
      en: 'Named "Makkah Gate" because it faces Mecca (the qibla).',
      ar: 'سمي بذلك لأنه يقابل جهة مكة.',
    ),
    point: LatLng(24.467769, 39.612475), // OSM "Bab Makkah - 37"
  ),

  // OSM "Bab Bilal - 38".
  HaremKapisi(
    id: 'n_bilal',
    mescid: KapiMescid.nebevi,
    no: '38',
    ad: L10nText(tr: 'Bilâl Kapısı', en: 'Bilal Gate', ar: 'باب بلال'),
    yakin: L10nText(
      tr: 'Güneydoğu · Nisâ Kapısı’nın doğusu',
      en: 'Southeast · east of Bab al-Nisa',
      ar: 'الجنوب الشرقي · شرق باب النساء',
    ),
    konum: L10nText(
      tr: 'Mescidin güneydoğusunda, Nisâ Kapısı ile Mekke Kapısı arasındadır.',
      en: 'In the southeast, between Bab al-Nisa and Makkah Gate.',
      ar: 'في الجنوب الشرقي بين باب النساء وباب مكة.',
    ),
    anlam: L10nText(
      tr: 'Peygamber Efendimizin müezzini Hz. Bilâl-i Habeşî’nin adını taşır.',
      en: 'Named after Bilal ibn Rabah, the Prophet’s muezzin.',
      ar: 'سمي باسم بلال بن رباح مؤذن النبي ﷺ.',
    ),
    point: LatLng(24.467844, 39.611789), // OSM "Bab Bilal - 38"
  ),

  // OSM "An-Nisa Gate - 39". [MP]: Hz. Ömer döneminde açıldı. Hadis: Ebû Dâvûd, Salât 17 (İbn Ömer rivayeti).
  HaremKapisi(
    id: 'n_nisa',
    mescid: KapiMescid.nebevi,
    no: '39',
    ad: L10nText(tr: 'Bâbü’n-Nisâ (Kadınlar Kapısı)', en: 'Bab al-Nisa', ar: 'باب النساء'),
    yakin: L10nText(
      tr: 'Doğu duvarı · Kabr-i Şerif’e yakın',
      en: 'East wall · near the Prophet’s grave',
      ar: 'الجدار الشرقي · قرب القبر الشريف',
    ),
    konum: L10nText(
      tr: 'Eski mescidin doğu duvarında, Cibrîl Kapısı’nın kuzeyindedir.',
      en: 'On the eastern wall of the old mosque, north of Bab Jibril.',
      ar: 'في الجدار الشرقي للمسجد القديم شمال باب جبريل.',
    ),
    anlam: L10nText(
      tr: '“Kadınlar Kapısı” demektir.',
      en: '"The Women’s Gate".',
      ar: 'أي باب النساء.',
    ),
    tarih: L10nText(
      tr: 'Ebû Dâvûd’un rivayetine göre Peygamber Efendimiz “Bu kapıyı kadınlara bıraksak” buyurdu; '
          'Abdullah bin Ömer de vefatına kadar bu kapıdan hiç girmedi. Kapı Hz. Ömer döneminde açıldı.',
      en: 'According to Abu Dawud, the Prophet said "If only we left this door for the women", and Ibn Umar never entered through it until he died. The gate was opened in the time of Umar.',
      ar: 'روى أبو داود أن النبي ﷺ قال: «لو تركنا هذا الباب للنساء»، فلم يدخل منه ابن عمر حتى مات. وفتح الباب في عهد عمر رضي الله عنه.',
    ),
    point: LatLng(24.46782, 39.611545), // OSM "An-Nisa Gate - 39"
  ),

  // OSM "Al-Jebreel Gate - 40". [MP]: Bâbü'n-Nebî adı ve Cebrail rivayeti.
  HaremKapisi(
    id: 'n_cibril',
    mescid: KapiMescid.nebevi,
    no: '40',
    ad: L10nText(tr: 'Bâb-ı Cibrîl (Cebrail Kapısı)', en: 'Bab Jibril', ar: 'باب جبريل'),
    yakin: L10nText(
      tr: 'Doğu duvarı · Hücre-i Saâdet’in yanı',
      en: 'East wall · next to the Prophet’s chamber',
      ar: 'الجدار الشرقي · بجوار الحجرة الشريفة',
    ),
    konum: L10nText(
      tr: 'Eski mescidin doğu duvarında, Bakî Kapısı ile Nisâ Kapısı arasındadır; Peygamber Efendimizin kabrinin bulunduğu Hücre-i Saâdet’e çok yakındır.',
      en: 'On the eastern wall of the old mosque between Al-Baqi Gate and Bab al-Nisa, very close to the Prophet’s chamber.',
      ar: 'في الجدار الشرقي بين باب البقيع وباب النساء، قريب جداً من الحجرة الشريفة.',
    ),
    anlam: L10nText(
      tr: 'Cebrail aleyhisselâma nispet edilir. Peygamber Efendimiz mescide bu kapıdan girip çıktığı için “Bâbü’n-Nebî” diye de anılır.',
      en: 'Named after the angel Gabriel; also called "Bab al-Nabi" as the Prophet used to enter through it.',
      ar: 'نسبة إلى جبريل عليه السلام، ويسمى أيضاً باب النبي.',
    ),
    tarih: L10nText(
      tr: 'Rivayete göre Cebrail aleyhisselâm Peygamber Efendimize bu kapıdan gelmiştir; kapı adını buradan alır. '
          'Genişletmeler sırasında doğuya taşınmıştır.',
      en: 'Tradition holds that Gabriel came to the Prophet through this gate, hence the name. It was moved eastward during the expansions.',
      ar: 'يروى أن جبريل عليه السلام أتى النبي ﷺ من هذا الباب، ونقل شرقاً في التوسعات.',
    ),
    point: LatLng(24.46774, 39.611598), // OSM "Al-Jebreel Gate - 40"
  ),

  // OSM "Exit - Al-Baqi Gate - 41". [MP]: Bakî'ye bakar, Bâbü's-Selâm ile aynı hizada.
  HaremKapisi(
    id: 'n_baki',
    mescid: KapiMescid.nebevi,
    no: '41',
    ad: L10nText(tr: 'Bakî Kapısı', en: 'Al-Baqi Gate', ar: 'باب البقيع'),
    yakin: L10nText(
      tr: 'Doğu duvarı · ziyaret çıkışı, Cennetü’l-Bakî yönü',
      en: 'East wall · visit exit, towards Jannat al-Baqi',
      ar: 'الجدار الشرقي · مخرج الزيارة باتجاه البقيع',
    ),
    konum: L10nText(
      tr: 'Eski mescidin doğu duvarının güney ucundadır; Kabr-i Şerif’e en yakın kapıdır ve Cennetü’l-Bakî kabristanına bakar. '
          'Bâbü’s-Selâm ile aynı hizadadır.',
      en: 'At the southern end of the old mosque’s eastern wall; the closest gate to the Prophet’s grave, facing Jannat al-Baqi. It is aligned with Bab al-Salam.',
      ar: 'في الطرف الجنوبي للجدار الشرقي، أقرب باب إلى القبر الشريف، ويقابل البقيع، وعلى استقامة باب السلام.',
    ),
    anlam: L10nText(
      tr: 'Karşısındaki Cennetü’l-Bakî kabristanına nispet edilir.',
      en: 'Named after Jannat al-Baqi cemetery opposite it.',
      ar: 'نسبة إلى مقبرة البقيع المقابلة له.',
    ),
    ipucu: L10nText(
      tr: 'Kabr-i Şerif ziyaretinden sonra buradan çıkılır. Çıkışta Cennetü’l-Bakî’yi ziyaret etmek kolaydır.',
      en: 'You exit here after visiting the Prophet’s grave; Jannat al-Baqi is easy to visit afterwards.',
      ar: 'يخرج منه بعد زيارة القبر الشريف، ويسهل بعدها زيارة البقيع.',
    ),
    point: LatLng(24.467451, 39.611599), // OSM "Al-Baqi Gate - 41"
  ),

  // OSM "Door 42" (access=no). [MP]: Bâbü'l-Eimme / Bâbü'l-Cenâiz, imamlar kullanır.
  HaremKapisi(
    id: 'n_eimme',
    mescid: KapiMescid.nebevi,
    no: '42',
    ad: L10nText(tr: 'Bâbü’l-Eimme (İmamlar Kapısı)', en: 'Bab al-A’immah', ar: 'باب الأئمة'),
    yakin: L10nText(
      tr: 'Güney (kıble) duvarı · imamlara ayrılmış',
      en: 'South (qibla) wall · reserved for the imams',
      ar: 'الجدار القبلي · مخصص للأئمة',
    ),
    konum: L10nText(
      tr: 'Eski mescidin kıble duvarındadır; Osmanlı mihrabının (Mihrâb-ı Osmânî) yakınına açılır.',
      en: 'On the qibla wall of the old mosque, opening near the Ottoman mihrab.',
      ar: 'في الجدار القبلي للمسجد القديم قرب المحراب العثماني.',
    ),
    anlam: L10nText(
      tr: '“İmamlar Kapısı” demektir; namaz kıldıran imamlar kullanır. Bâbü’l-Cenâiz (Cenazeler Kapısı) diye de anılır.',
      en: '"The Imams’ Gate", used by the imams; also called Bab al-Janaiz.',
      ar: 'يستخدمه الأئمة، ويعرف أيضاً بباب الجنائز.',
    ),
    ipucu: L10nText(
      tr: 'Ziyaretçilere açık değildir.',
      en: 'Not open to visitors.',
      ar: 'غير مفتوح للزوار.',
    ),
    point: LatLng(24.467333, 39.611149), // OSM "Door 42" (access=no)
  ),
];
