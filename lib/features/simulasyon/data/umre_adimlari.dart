import 'dart:math' as math;

import 'package:latlong2/latlong.dart';

import '../../dualar/data/dua_models.dart';
import '../../info_screen/data/l10n_text.dart';

/// Umre rota simülasyonundaki önemli yerler.
///
/// Koordinatlar OpenStreetMap / Nominatim aramasıyla doğrulandı (Kasım 2026).
/// Mescid-i Haram içindeki noktalar (Safa, Merve, Makam) OSM'deki
/// işaretlemelerdir; birkaç metrelik sapma olabilir.
class UmreYerleri {
  UmreYerleri._();

  /// Zülhuleyfe (Ebyâr-ı Ali) mikatı, Mescid-i Şecere. Nominatim: "مسجد ذو الحليفة".
  static const zulhuleyfe = LatLng(24.4136374, 39.5429910);

  /// Mescid-i Haram (OSM alanının orta noktası). Nominatim: "Masjid al-Haram".
  static const mescidiHaram = LatLng(21.4245589, 39.8248709);

  /// Kâbe. Nominatim: "الكعبة".
  static const kabe = LatLng(21.4225079, 39.8261890);

  /// Makam-ı İbrahim. Nominatim: "Maqam Ibrahim".
  static const makamIbrahim = LatLng(21.4225789, 39.8263055);

  /// Kral Abdülaziz Kapısı (1 numaralı kapı). OSM node 4755914231.
  static const kralAbdulazizKapisi = LatLng(21.421045, 39.825841);

  // Zemzem kuyusunun kesin konumu OSM'de işaretli değil (kuyu metafın altında,
  // 1964'ten beri halka kapalı). Tahmini koordinat kullanılmaz; zemzem adımı
  // Makam-ı İbrahim çevresinde gösterilir, zemzem Harem'deki sebillerden içilir.

  /// Safa tepesi. Nominatim: "الصفا" (21.4217996, 39.8274307).
  static const safa = LatLng(21.4217996, 39.8274307);

  /// Merve tepesi. Nominatim: "المروة" (21.4251754, 39.8271276).
  static const merve = LatLng(21.4251754, 39.8271276);

  /// Mikat ile Mekke arasındaki yolun şematik ara noktası (gerçek yol değil).
  static const yolOrtasi = LatLng(22.95, 39.70);
}

/// Yer kimlikleri (mantık bunlarla çalışır; ekranda [L10nText] ad gösterilir).
class YerId {
  YerId._();
  static const mikat = 'mikat';
  static const yol = 'yol';
  static const haram = 'haram';
  static const kapi = 'kapi';
  static const kabe = 'kabe';
  static const makam = 'makam';
  static const zemzem = 'zemzem';
  static const safa = 'safa';
  static const merve = 'merve';
}

/// Yer adları.
class YerAdlari {
  YerAdlari._();
  static const mikat = L10nText(tr: 'Zülhuleyfe (Mikat)', en: 'Dhul-Hulayfah (Miqat)', ar: 'ذو الحليفة (الميقات)');
  static const yol = L10nText(tr: 'Mekke yolu', en: 'Road to Makkah', ar: 'الطريق إلى مكة');
  static const haram = L10nText(tr: 'Mescid-i Haram', en: 'Masjid al-Haram', ar: 'المسجد الحرام');
  static const kapi = L10nText(tr: 'Kral Abdülaziz Kapısı', en: 'King Abdulaziz Gate', ar: 'باب الملك عبدالعزيز');
  static const kabe = L10nText(tr: 'Kâbe', en: 'Kaaba', ar: 'الكعبة');
  static const makam = L10nText(tr: 'Makam-ı İbrahim', en: 'Maqam Ibrahim', ar: 'مقام إبراهيم');
  static const zemzem = L10nText(tr: 'Zemzem sebilleri', en: 'Zamzam water points', ar: 'مشارب زمزم');
  static const safa = L10nText(tr: 'Safa', en: 'Safa', ar: 'الصفا');
  static const merve = L10nText(tr: 'Merve', en: 'Marwah', ar: 'المروة');
}

/// Haritada gösterilen sabit işaretler.
class HaritaNoktasi {
  const HaritaNoktasi(this.id, this.ad, this.konum, {this.yaklasik = false});
  final String id;
  final L10nText ad;
  final LatLng konum;
  final bool yaklasik;
}

const List<HaritaNoktasi> haritaNoktalari = [
  HaritaNoktasi(YerId.mikat, YerAdlari.mikat, UmreYerleri.zulhuleyfe),
  HaritaNoktasi(YerId.haram, YerAdlari.haram, UmreYerleri.mescidiHaram),
  HaritaNoktasi(YerId.kapi, YerAdlari.kapi, UmreYerleri.kralAbdulazizKapisi),
  HaritaNoktasi(YerId.kabe, YerAdlari.kabe, UmreYerleri.kabe),
  HaritaNoktasi(YerId.makam, YerAdlari.makam, UmreYerleri.makamIbrahim),
  HaritaNoktasi(YerId.safa, YerAdlari.safa, UmreYerleri.safa),
  HaritaNoktasi(YerId.merve, YerAdlari.merve, UmreYerleri.merve),
];

/// Adım kartındaki geçiş butonları.
enum AdimBaglantisi { tavafDualari, sayDualari, tavafSimulasyonu }

class UmreAdimi {
  const UmreAdimi({
    required this.baslik,
    required this.kisaBaslik,
    required this.yerId,
    required this.yer,
    required this.yapilacaklar,
    required this.dua,
    required this.dikkat,
    required this.yol,
    required this.gorunum,
    this.animasyonSaniye = 3,
    this.baglantilar = const [],
  });

  final L10nText baslik;
  final L10nText kisaBaslik;

  /// İşaretçinin bulunduğu yerin kimliği ([YerId]); haritada vurgulanır.
  final String yerId;

  /// İşaretçinin bulunduğu yerin adı.
  final L10nText yer;
  final List<L10nText> yapilacaklar;
  final DuaMetni dua;
  final List<L10nText> dikkat;

  /// Bu adımda işaretçinin izlediği yol (ilk nokta önceki adımın son noktası).
  final List<LatLng> yol;

  /// Kameranın sığdıracağı noktalar.
  final List<LatLng> gorunum;
  final double animasyonSaniye;
  final List<AdimBaglantisi> baglantilar;

  LatLng get sonNokta => yol.last;
}

/// Kâbe çevresinde saat yönünün tersine (yukarıdan bakınca) bir tur.
/// Hacerü'l-Esved'in bulunduğu doğu köşesinden başlar. Şematik, ~25 m yarıçap.
List<LatLng> _kabeTuru() {
  const r = 0.00023; // derece, yaklaşık 25 m
  const cosLat = 0.9309; // cos(21.42°)
  final pts = <LatLng>[];
  for (var i = 0; i <= 36; i++) {
    // Doğudan (0°) başlayıp kuzeye (90°) doğru: yukarıdan bakınca saat yönünün tersi.
    final a = i * 10 * math.pi / 180;
    pts.add(LatLng(
      UmreYerleri.kabe.latitude + r * math.sin(a),
      UmreYerleri.kabe.longitude + r * math.cos(a) / cosLat,
    ));
  }
  return pts;
}

final List<UmreAdimi> umreAdimlari = [
  UmreAdimi(
    baslik: const L10nText(tr: 'Niyet ve İhram', en: 'Intention and Ihram', ar: 'النية والإحرام'),
    kisaBaslik: const L10nText(tr: 'İhram', en: 'Ihram', ar: 'الإحرام'),
    yerId: YerId.mikat,
    yer: YerAdlari.mikat,
    yapilacaklar: const [
      L10nText(
        tr: 'Mikata varmadan gusül veya abdest alınır, tırnak ve bıyık gibi temizlikler yapılır.',
        en: 'Before reaching the Miqat, perform ghusl or wudu and take care of personal hygiene such as trimming nails and moustache.',
        ar: 'قبل الوصول إلى الميقات يُغتسل أو يُتوضأ، وتُؤخذ سنن الفطرة كتقليم الأظافر وقص الشارب.',
      ),
      L10nText(
        tr: 'Erkekler dikişsiz iki parça ihram örtüsüne (izar ve rida) bürünür. Kadınlar tesettürlü normal elbiseleriyle ihrama girer; yüz ve eller açık kalır.',
        en: 'Men wrap themselves in the two unstitched pieces of Ihram (izar and rida). Women enter Ihram in their normal modest clothing; the face and hands stay uncovered.',
        ar: 'يلبس الرجال قطعتي الإحرام غير المخيطتين (الإزار والرداء). وتُحرم النساء بثيابهن الساترة المعتادة، ويبقى الوجه والكفان مكشوفين.',
      ),
      L10nText(
        tr: 'Kerahat vakti değilse iki rekât ihram namazı kılınır.',
        en: 'If it is not a disliked (makruh) time, two rak‘ahs of Ihram prayer are performed.',
        ar: 'إن لم يكن وقت كراهة يُصلّى ركعتا الإحرام.',
      ),
      L10nText(
        tr: 'Umreye niyet edilir ve telbiye getirilir. Niyet ve telbiye ile ihrama girilmiş olur; ihram yasakları başlar.',
        en: 'Make the intention for Umrah and recite the Talbiyah. With the intention and Talbiyah you enter Ihram, and the Ihram prohibitions begin.',
        ar: 'تُنوى العمرة وتُقال التلبية، وبالنية والتلبية يتم الدخول في الإحرام وتبدأ محظوراته.',
      ),
    ],
    dua: const DuaMetni(
      baslik: 'Umreye niyet',
      baslikEn: 'Intention for Umrah',
      baslikAr: 'نية العمرة',
      arapca: 'اللَّهُمَّ إِنِّي أُرِيدُ الْعُمْرَةَ فَيَسِّرْهَا لِي وَتَقَبَّلْهَا مِنِّي',
      okunus: 'Allâhümme innî ürîdü\'l-umrate fe yessirhâ lî ve tekabbelhâ minnî.',
      okunusEn: "Allahumma inni uridul-'umrata fa yassirha li wa taqabbalha minni.",
      anlam: 'Allah\'ım! Umre yapmak istiyorum. Onu bana kolaylaştır ve benden kabul eyle.',
      anlamEn: 'O Allah! I intend to perform Umrah. Make it easy for me and accept it from me.',
    ),
    dikkat: const [
      L10nText(
        tr: 'Mikat ihramsız geçilmez. Geçilirse geri dönüp ihrama girmek gerekir, dönülmezse ceza (dem) gerekir.',
        en: 'The Miqat must not be passed without Ihram. If it is passed, one must go back and enter Ihram; if one does not go back, a penalty (dam) is due.',
        ar: 'لا يجوز مجاوزة الميقات دون إحرام، فإن جاوزه وجب الرجوع للإحرام منه، فإن لم يرجع لزمه دم.',
      ),
      L10nText(
        tr: 'Zülhuleyfe, Medine yönünden gelenlerin mikatıdır. Türkiye\'den doğrudan uçakla gelenler mikat hizasını uçakta geçmeden ihrama girer.',
        en: 'Dhul-Hulayfah is the Miqat for those coming from the direction of Madinah. Those flying directly from Türkiye enter Ihram on the plane before passing the line of the Miqat.',
        ar: 'ذو الحليفة ميقات القادمين من جهة المدينة. ومن يأتي من تركيا جوًا مباشرةً يُحرم في الطائرة قبل مجاوزة محاذاة الميقات.',
      ),
      L10nText(
        tr: 'İhramlıyken saç-tıraş, tırnak kesmek, koku sürünmek, avlanmak ve eşler arası yakınlık yasaktır. Erkekler başını örtmez, dikişli elbise giymez.',
        en: 'While in Ihram, cutting or shaving hair, clipping nails, applying perfume, hunting and marital intimacy are prohibited. Men do not cover their heads or wear stitched clothing.',
        ar: 'يحرم على المحرم حلق الشعر أو قصه، وتقليم الأظافر، والتطيب، والصيد، والجماع ومقدماته. ولا يغطي الرجل رأسه ولا يلبس المخيط.',
      ),
    ],
    yol: const [UmreYerleri.zulhuleyfe],
    gorunum: const [UmreYerleri.zulhuleyfe, UmreYerleri.kabe],
    animasyonSaniye: 2,
  ),
  UmreAdimi(
    baslik: const L10nText(tr: 'Telbiye', en: 'Talbiyah', ar: 'التلبية'),
    kisaBaslik: const L10nText(tr: 'Telbiye', en: 'Talbiyah', ar: 'التلبية'),
    yerId: YerId.yol,
    yer: YerAdlari.yol,
    yapilacaklar: const [
      L10nText(
        tr: 'İhrama girerken telbiye en az bir kez söylenir (Hanefi\'de ihramın şartıdır).',
        en: 'The Talbiyah is said at least once when entering Ihram (in the Hanafi school it is a condition of Ihram).',
        ar: 'تُقال التلبية مرة واحدة على الأقل عند الإحرام (وهي شرط للإحرام عند الحنفية).',
      ),
      L10nText(
        tr: 'Yolculuk boyunca, yokuş çıkarken, inerken ve topluluklarla karşılaşınca telbiye sık sık tekrarlanır.',
        en: 'Throughout the journey, when going uphill or downhill and when meeting groups of people, the Talbiyah is repeated often.',
        ar: 'تُكرر التلبية كثيرًا طوال الطريق، عند الصعود والنزول وعند لقاء الجماعات.',
      ),
      L10nText(
        tr: 'Umrede telbiye, tavafa başlarken Hacerü\'l-Esved selamlanınca (istilam) kesilir.',
        en: 'In Umrah, the Talbiyah stops when the Black Stone (Hajar al-Aswad) is saluted (Istilam) at the start of Tawaf.',
        ar: 'تُقطع التلبية في العمرة عند استلام الحجر الأسود في بداية الطواف.',
      ),
    ],
    dua: const DuaMetni(
      baslik: 'Telbiye',
      baslikEn: 'Talbiyah',
      baslikAr: 'التلبية',
      arapca: 'لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ، لَبَّيْكَ لَا شَرِيكَ لَكَ لَبَّيْكَ، إِنَّ الْحَمْدَ وَالنِّعْمَةَ لَكَ وَالْمُلْكَ، لَا شَرِيكَ لَكَ',
      okunus: 'Lebbeyk Allâhümme lebbeyk, lebbeyke lâ şerîke leke lebbeyk. İnne\'l-hamde ve\'n-ni\'mete leke ve\'l-mülk, lâ şerîke lek.',
      okunusEn: "Labbayk Allahumma labbayk, labbayka la sharika laka labbayk. Innal-hamda wan-ni'mata laka wal-mulk, la sharika lak.",
      anlam: 'Buyur Allah\'ım, buyur! Buyur, senin ortağın yoktur, buyur! Hamd, nimet ve mülk sana aittir. Senin ortağın yoktur.',
      anlamEn: 'Here I am, O Allah, here I am! Here I am, You have no partner, here I am! Praise, blessings and sovereignty are Yours. You have no partner.',
      kaynak: 'Buhârî, Hac 26; Müslim, Hac 19',
      kaynakEn: 'Bukhari, Hajj 26; Muslim, Hajj 19',
      kaynakAr: 'البخاري، الحج ٢٦؛ مسلم، الحج ١٩',
    ),
    dikkat: const [
      L10nText(
        tr: 'Erkekler telbiyeyi sesli, kadınlar alçak sesle söyler.',
        en: 'Men say the Talbiyah aloud, women in a low voice.',
        ar: 'يجهر الرجال بالتلبية، وتخفض النساء أصواتهن بها.',
      ),
      L10nText(
        tr: 'Telbiyeden sonra salavat getirmek ve dua etmek sünnettir.',
        en: 'After the Talbiyah it is Sunnah to send blessings on the Prophet and to make supplication.',
        ar: 'يُسن بعد التلبية الصلاة على النبي ﷺ والدعاء.',
      ),
    ],
    yol: const [UmreYerleri.zulhuleyfe, UmreYerleri.yolOrtasi],
    gorunum: const [UmreYerleri.zulhuleyfe, UmreYerleri.kabe],
    animasyonSaniye: 3,
  ),
  UmreAdimi(
    baslik: const L10nText(
      tr: 'Mekke\'ye Varış ve Mescid-i Haram\'a Giriş',
      en: 'Arrival in Makkah and Entering Masjid al-Haram',
      ar: 'الوصول إلى مكة ودخول المسجد الحرام',
    ),
    kisaBaslik: const L10nText(tr: 'Varış', en: 'Arrival', ar: 'الوصول'),
    yerId: YerId.kapi,
    yer: YerAdlari.kapi,
    yapilacaklar: const [
      L10nText(
        tr: 'Otele yerleşilir, imkân varsa dinlenip abdest alınır.',
        en: 'Check in at the hotel; if possible, rest and perform wudu.',
        ar: 'يُنزل في الفندق، ويُستراح ويُتوضأ إن أمكن.',
      ),
      L10nText(
        tr: 'Mescid-i Haram\'a kapılardan birinden (ör. Saat Kulesi karşısındaki Kral Abdülaziz Kapısı) sağ ayakla, giriş duası okunarak girilir.',
        en: 'Enter Masjid al-Haram through one of its gates (e.g. King Abdulaziz Gate opposite the Clock Tower) with the right foot, reciting the supplication for entering.',
        ar: 'يُدخل المسجد الحرام من أحد أبوابه (مثل باب الملك عبدالعزيز مقابل برج الساعة) بالقدم اليمنى مع قراءة دعاء الدخول.',
      ),
      L10nText(
        tr: 'Kâbe ilk görüldüğünde tekbir ve tehlil getirilir, dua edilir.',
        en: 'On first seeing the Kaaba, say takbir and tahlil and make supplication.',
        ar: 'عند رؤية الكعبة أول مرة يُكبَّر ويُهلَّل ويُدعى.',
      ),
      L10nText(
        tr: 'Mescid-i Haram\'ın selamlaması tavaftır; doğrudan tavafa yönelinir.',
        en: 'The greeting of Masjid al-Haram is Tawaf; proceed directly to Tawaf.',
        ar: 'تحية المسجد الحرام الطواف، فيُتوجه إلى الطواف مباشرة.',
      ),
    ],
    dua: const DuaMetni(
      baslik: 'Mescide giriş duası',
      baslikEn: 'Supplication for entering the mosque',
      baslikAr: 'دعاء دخول المسجد',
      arapca: 'بِسْمِ اللَّهِ وَالصَّلَاةُ وَالسَّلَامُ عَلَى رَسُولِ اللَّهِ، اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ',
      okunus: 'Bismillâhi ve\'s-salâtü ve\'s-selâmü alâ Rasûlillâh. Allâhümme\'ftah lî ebvâbe rahmetik.',
      okunusEn: "Bismillahi was-salatu was-salamu 'ala Rasulillah. Allahummaftah li abwaba rahmatik.",
      anlam: 'Allah\'ın adıyla. Salât ve selam Allah\'ın Resûlüne olsun. Allah\'ım! Bana rahmet kapılarını aç.',
      anlamEn: 'In the name of Allah, and blessings and peace be upon the Messenger of Allah. O Allah! Open for me the gates of Your mercy.',
      kaynak: 'Müslim, Müsâfirîn 68',
      kaynakEn: 'Muslim, Musafirin 68',
      kaynakAr: 'مسلم، صلاة المسافرين ٦٨',
    ),
    dikkat: const [
      L10nText(
        tr: 'Kafileden ayrılmadan önce buluşma kapısını (kapı numarasını) öğrenin.',
        en: 'Before leaving your group, learn the meeting gate (gate number).',
        ar: 'اعرف باب الالتقاء (رقم الباب) قبل أن تفارق مجموعتك.',
      ),
      L10nText(
        tr: 'Ayakkabılarınızı poşete koyup yanınızda taşıyın; kapı numarasını not edin.',
        en: 'Put your shoes in a bag and carry them with you; note the gate number.',
        ar: 'ضع حذاءك في كيس واحمله معك، ودوّن رقم الباب.',
      ),
    ],
    yol: const [UmreYerleri.yolOrtasi, UmreYerleri.kralAbdulazizKapisi],
    gorunum: const [UmreYerleri.kralAbdulazizKapisi, UmreYerleri.safa, UmreYerleri.merve, UmreYerleri.mescidiHaram],
    animasyonSaniye: 3,
  ),
  UmreAdimi(
    baslik: const L10nText(tr: 'Tavaf (7 Şavt)', en: 'Tawaf (7 Circuits)', ar: 'الطواف (سبعة أشواط)'),
    kisaBaslik: const L10nText(tr: 'Tavaf', en: 'Tawaf', ar: 'الطواف'),
    yerId: YerId.kabe,
    yer: YerAdlari.kabe,
    yapilacaklar: const [
      L10nText(
        tr: 'Abdestli olarak Hacerü\'l-Esved hizasına gelinir, umre tavafına niyet edilir.',
        en: 'In a state of wudu, come in line with the Black Stone (Hajar al-Aswad) and make the intention for the Umrah Tawaf.',
        ar: 'يُؤتى محاذاة الحجر الأسود على وضوء، ويُنوى طواف العمرة.',
      ),
      L10nText(
        tr: 'Hacerü\'l-Esved\'e dönülüp eller kaldırılarak istilam edilir ve telbiye kesilir.',
        en: 'Face the Black Stone, raise your hands and perform Istilam; the Talbiyah stops.',
        ar: 'يُستقبل الحجر الأسود وتُرفع اليدان للاستلام، وتُقطع التلبية.',
      ),
      L10nText(
        tr: 'Kâbe sola alınarak, Hatim\'in (Hicr-i İsmail) dışından 7 şavt dönülür. Her şavt Hacerü\'l-Esved hizasında başlar ve biter.',
        en: 'With the Kaaba on your left, walk 7 circuits outside the Hatim (Hijr Ismail). Each circuit begins and ends in line with the Black Stone.',
        ar: 'تُجعل الكعبة عن اليسار ويُطاف سبعة أشواط من وراء الحطيم (حجر إسماعيل). ويبدأ كل شوط وينتهي بمحاذاة الحجر الأسود.',
      ),
      L10nText(
        tr: 'Erkekler tavaf boyunca ıztıba yapar, ilk 3 şavtta remel yapar (kısa adımlarla, omuzlar silkelenerek çalımlı yürüyüş).',
        en: 'Men perform Idtiba‘ throughout the Tawaf and Raml in the first 3 circuits (a brisk walk with short steps, moving the shoulders).',
        ar: 'يضطبع الرجال طوال الطواف، ويرملون في الأشواط الثلاثة الأولى (الإسراع في المشي مع مقاربة الخطى وهز الكتفين).',
      ),
    ],
    dua: OrtakDualar.rabbena,
    dikkat: const [
      L10nText(
        tr: 'Umre tavafı umrenin rüknüdür. Tavafta abdestli olmak Hanefî mezhebine göre vacip, Şâfiî mezhebine göre şarttır.',
        en: 'The Umrah Tawaf is a pillar of Umrah. Being in wudu during Tawaf is wajib according to the Hanafi school and a condition according to the Shafi‘i school.',
        ar: 'طواف العمرة ركن من أركانها. والطهارة في الطواف واجبة عند الحنفية وشرط عند الشافعية.',
      ),
      L10nText(
        tr: 'Tavafta abdesti bozulan kişi tavafı bırakıp abdest alır ve kaldığı şavttan devam eder; baştan başlamak şart değildir.',
        en: 'If a person’s wudu breaks during Tawaf, they stop, renew their wudu and continue from the circuit where they left off; starting again from the beginning is not required.',
        ar: 'من انتقض وضوؤه في الطواف قطعه وتوضأ ثم أكمل من الشوط الذي توقف عنده، ولا يُشترط أن يبدأ من جديد.',
      ),
      L10nText(
        tr: 'İstilamda "Bismillâhi Allâhu ekber" denir; yalnız "Allâhu ekber" demek de yeterlidir.',
        en: 'At Istilam say "Bismillahi Allahu akbar"; saying only "Allahu akbar" is also sufficient.',
        ar: 'يُقال عند الاستلام: «بسم الله الله أكبر»، ويكفي قول «الله أكبر» وحده.',
      ),
      L10nText(
        tr: 'Hacerü\'l-Esved\'i öpmek için kimseyi itmeyin; uzaktan el ile işaret etmek yeterlidir.',
        en: 'Do not push anyone to kiss the Black Stone; pointing to it with your hand from a distance is sufficient.',
        ar: 'لا تزاحم أحدًا لتقبيل الحجر الأسود، وتكفي الإشارة إليه باليد من بعيد.',
      ),
      L10nText(
        tr: 'Şavt sayısında şüphe olursa az olan sayı esas alınır.',
        en: 'If in doubt about the number of circuits, go by the lower number.',
        ar: 'إذا شك في عدد الأشواط بنى على الأقل.',
      ),
      L10nText(
        tr: 'Kadınlar remel ve ıztıba yapmaz.',
        en: 'Women do not perform Raml or Idtiba‘.',
        ar: 'لا ترمل النساء ولا يضطبعن.',
      ),
    ],
    yol: [UmreYerleri.kralAbdulazizKapisi, ..._kabeTuru()],
    gorunum: const [UmreYerleri.kabe, UmreYerleri.makamIbrahim, UmreYerleri.kralAbdulazizKapisi],
    animasyonSaniye: 5,
    baglantilar: const [AdimBaglantisi.tavafSimulasyonu, AdimBaglantisi.tavafDualari],
  ),
  UmreAdimi(
    baslik: const L10nText(tr: 'Tavaf Namazı', en: 'Tawaf Prayer', ar: 'ركعتا الطواف'),
    kisaBaslik: const L10nText(tr: 'Namaz', en: 'Prayer', ar: 'الصلاة'),
    yerId: YerId.makam,
    yer: YerAdlari.makam,
    yapilacaklar: const [
      L10nText(
        tr: 'Tavaftan sonra Makam-ı İbrahim\'in arkasında iki rekât tavaf namazı kılınır (Hanefi\'de vacip).',
        en: 'After Tawaf, two rak‘ahs of Tawaf prayer are performed behind Maqam Ibrahim (wajib in the Hanafi school).',
        ar: 'بعد الطواف تُصلّى ركعتا الطواف خلف مقام إبراهيم (وهما واجبتان عند الحنفية).',
      ),
      L10nText(
        tr: 'Sünnet olan, birinci rekâtta Kâfirûn, ikinci rekâtta İhlâs suresini okumaktır.',
        en: 'The Sunnah is to recite Surah al-Kafirun in the first rak‘ah and Surah al-Ikhlas in the second.',
        ar: 'السنة أن يُقرأ في الركعة الأولى سورة الكافرون، وفي الثانية سورة الإخلاص.',
      ),
      L10nText(
        tr: 'Namazdan önce ıztıba bırakılır, omuzlar örtülür.',
        en: 'Before the prayer, Idtiba‘ ends and the shoulders are covered.',
        ar: 'يُترك الاضطباع قبل الصلاة ويُغطى الكتفان.',
      ),
    ],
    dua: const DuaMetni(
      baslik: 'Makam-ı İbrahim\'e yaklaşırken',
      baslikEn: 'When approaching Maqam Ibrahim',
      baslikAr: 'عند الاقتراب من مقام إبراهيم',
      arapca: 'وَاتَّخِذُوا مِنْ مَقَامِ إِبْرَاهِيمَ مُصَلًّى',
      okunus: 'Vettehızû min makâmi İbrâhîme musallâ.',
      okunusEn: 'Wattakhidhu min maqami Ibrahima musalla.',
      anlam: 'İbrahim\'in makamından kendinize bir namaz yeri edinin.',
      anlamEn: 'And take, [O believers], from the standing place of Abraham a place of prayer.',
      kaynak: 'Bakara 2/125',
      kaynakEn: 'Al-Baqarah 2:125',
      kaynakAr: 'البقرة ١٢٥',
    ),
    dikkat: const [
      L10nText(
        tr: 'Kalabalıkta Makam\'ın hemen arkası şart değildir; Mescid-i Haram\'ın uygun her yerinde kılınabilir.',
        en: 'In crowds, praying directly behind the Maqam is not required; it can be performed anywhere suitable in Masjid al-Haram.',
        ar: 'لا يُشترط في الزحام أن تكون الصلاة خلف المقام مباشرة، بل تجوز في أي مكان مناسب من المسجد الحرام.',
      ),
      L10nText(
        tr: 'Kerahat vakti ise namaz bu vakit çıkınca kılınır.',
        en: 'If it is a disliked (makruh) time, the prayer is performed once that time has passed.',
        ar: 'إن كان وقت كراهة أُخّرت الصلاة حتى يخرج.',
      ),
      L10nText(
        tr: 'Tavaf edenlerin önünü kesmeyin.',
        en: 'Do not block the way of those performing Tawaf.',
        ar: 'لا تقطع طريق الطائفين.',
      ),
    ],
    yol: const [UmreYerleri.kabe, UmreYerleri.makamIbrahim],
    gorunum: const [UmreYerleri.kabe, UmreYerleri.makamIbrahim],
    animasyonSaniye: 2,
    baglantilar: const [AdimBaglantisi.tavafDualari],
  ),
  UmreAdimi(
    baslik: const L10nText(tr: 'Zemzem', en: 'Zamzam', ar: 'زمزم'),
    kisaBaslik: const L10nText(tr: 'Zemzem', en: 'Zamzam', ar: 'زمزم'),
    yerId: YerId.zemzem,
    yer: YerAdlari.zemzem,
    yapilacaklar: const [
      L10nText(
        tr: 'Kıbleye dönülerek, besmeleyle ve üç yudumda doyasıya zemzem içilir.',
        en: 'Facing the qibla, saying Bismillah, drink your fill of Zamzam in three sips.',
        ar: 'يُشرب ماء زمزم مستقبلًا القبلة، مع التسمية، على ثلاثة أنفاس حتى الارتواء.',
      ),
      L10nText(
        tr: 'İçerken dua edilir; zemzem hangi niyetle içilirse ona vesile olur.',
        en: 'Make supplication while drinking; Zamzam serves the intention with which it is drunk.',
        ar: 'يُدعى عند الشرب، فماء زمزم لما شُرب له.',
      ),
      L10nText(
        tr: 'Sa\'ye geçmeden önce imkân varsa Hacerü\'l-Esved tekrar istilam edilir.',
        en: "Before going on to Sa'i, perform Istilam of the Black Stone again if possible.",
        ar: 'قبل التوجه إلى السعي يُستلم الحجر الأسود مرة أخرى إن أمكن.',
      ),
    ],
    dua: const DuaMetni(
      baslik: 'Zemzem içerken okunabilecek dua',
      baslikEn: 'A supplication that may be recited while drinking Zamzam',
      baslikAr: 'دعاء يُقال عند شرب ماء زمزم',
      arapca: 'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا وَاسِعًا وَشِفَاءً مِنْ كُلِّ دَاءٍ',
      okunus: 'Allâhümme innî es\'elüke ilmen nâfian ve rızkan vâsian ve şifâen min külli dâin.',
      okunusEn: "Allahumma inni as'aluka 'ilman nafi'an wa rizqan wasi'an wa shifa'an min kulli da'.",
      anlam: 'Allah\'ım! Senden faydalı ilim, bol rızık ve her derde şifa istiyorum.',
      anlamEn: 'O Allah! I ask You for beneficial knowledge, abundant provision and healing from every illness.',
      kaynak: 'İbn Abbas\'tan (r.a.) rivayet; Dârekutnî, Sünen, II, 289; Hâkim, Müstedrek, I, 646',
      kaynakEn: "Narrated from Ibn 'Abbas (may Allah be pleased with him); al-Daraqutni, Sunan, II, 289; al-Hakim, al-Mustadrak, I, 646",
      kaynakAr: 'مروي عن ابن عباس رضي الله عنهما؛ الدارقطني، السنن ٢/٢٨٩؛ الحاكم، المستدرك ١/٦٤٦',
    ),
    dikkat: const [
      L10nText(
        tr: 'Zemzem kuyusu Kâbe\'nin yaklaşık 20 m doğusunda, metafın altındadır ve 1964\'ten beri ziyarete kapalıdır. '
            'Zemzem, Mescid\'in her yerindeki sebil ve termoslardan içilir.',
        en: 'The Well of Zamzam lies beneath the mataf, about 20 m east of the Kaaba, and has been closed to visitors since 1964. '
            'Zamzam is drunk from the water points and containers found throughout the mosque.',
        ar: 'تقع بئر زمزم تحت صحن المطاف على بعد نحو 20 مترًا شرق الكعبة، وهي مغلقة أمام الزوار منذ عام 1964. '
            'ويُشرب ماء زمزم من المشارب والحافظات المنتشرة في أرجاء المسجد.',
      ),
      L10nText(
        tr: 'Zemzem içmek müstehaptır; umrenin farzı veya vacibi değildir.',
        en: 'Drinking Zamzam is recommended (mustahabb); it is not an obligatory (fard) or necessary (wajib) part of Umrah.',
        ar: 'شرب ماء زمزم مستحب، وليس من فرائض العمرة ولا واجباتها.',
      ),
    ],
    yol: const [UmreYerleri.makamIbrahim],
    gorunum: const [UmreYerleri.kabe, UmreYerleri.makamIbrahim],
    animasyonSaniye: 2,
  ),
  UmreAdimi(
    baslik: const L10nText(
      tr: 'Sa\'y (Safa ile Merve Arası)',
      en: "Sa'i (Between Safa and Marwah)",
      ar: 'السعي (بين الصفا والمروة)',
    ),
    kisaBaslik: const L10nText(tr: 'Sa\'y', en: "Sa'i", ar: 'السعي'),
    yerId: YerId.safa,
    yer: YerAdlari.safa,
    yapilacaklar: const [
      L10nText(
        tr: 'Sa\'y Safa\'dan başlar. Safa\'ya çıkılır, Kâbe\'ye dönülür, eller kaldırılarak tekbir, tehlil ve dua yapılır.',
        en: "Sa'i starts at Safa. Climb Safa, face the Kaaba, raise your hands and say takbir and tahlil and make supplication.",
        ar: 'يبدأ السعي من الصفا؛ فيُرقى عليه ويُستقبل الكعبة وتُرفع اليدان بالتكبير والتهليل والدعاء.',
      ),
      L10nText(
        tr: 'Safa\'dan Merve\'ye gidiş 1, Merve\'den Safa\'ya dönüş 2. şavttır. 7. şavt Merve\'de biter.',
        en: 'Going from Safa to Marwah is the 1st lap, returning from Marwah to Safa is the 2nd. The 7th lap ends at Marwah.',
        ar: 'الذهاب من الصفا إلى المروة شوط، والعودة من المروة إلى الصفا شوط ثانٍ، وينتهي الشوط السابع عند المروة.',
      ),
      L10nText(
        tr: 'Erkekler yeşil ışıklar (Mîleyn-i Ahdarayn) arasında hızlı yürür (hervele). Kadınlar normal yürür.',
        en: 'Men walk quickly (harwalah) between the green lights (al-Milayn al-Akhdarayn). Women walk normally.',
        ar: 'يُسرع الرجال (الهرولة) بين العلمين الأخضرين، وتمشي النساء مشيًا عاديًا.',
      ),
      L10nText(
        tr: 'Her Safa ve Merve\'ye varışta Kâbe\'ye dönülüp dua edilir.',
        en: 'Each time you reach Safa or Marwah, face the Kaaba and make supplication.',
        ar: 'عند كل وصول إلى الصفا أو المروة تُستقبل الكعبة ويُدعى.',
      ),
    ],
    dua: OrtakDualar.rabbigfir,
    dikkat: const [
      L10nText(
        tr: 'Hanefi\'de sa\'y umrenin vacibidir. Tavaftan sonra yapılır.',
        en: "In the Hanafi school, Sa'i is a wajib of Umrah. It is performed after Tawaf.",
        ar: 'السعي واجب من واجبات العمرة عند الحنفية، ويكون بعد الطواف.',
      ),
      L10nText(
        tr: 'Abdestli olmak şart değildir ama müstehaptır.',
        en: 'Being in wudu is not a condition, but it is recommended.',
        ar: 'لا تُشترط الطهارة للسعي لكنها مستحبة.',
      ),
      L10nText(
        tr: 'Sa\'yde ıztıba ve remel yoktur.',
        en: "There is no Idtiba‘ or Raml in Sa'i.",
        ar: 'لا اضطباع ولا رمل في السعي.',
      ),
      L10nText(
        tr: 'Yorulunca ara verilebilir; tekerlekli sandalye ile de yapılabilir.',
        en: 'You may take a break when tired; it can also be performed in a wheelchair.',
        ar: 'يجوز الاستراحة عند التعب، ويجوز السعي بالكرسي المتحرك.',
      ),
    ],
    yol: const [
      UmreYerleri.makamIbrahim,
      UmreYerleri.safa,
      UmreYerleri.merve,
      UmreYerleri.safa,
      UmreYerleri.merve,
      UmreYerleri.safa,
      UmreYerleri.merve,
      UmreYerleri.safa,
      UmreYerleri.merve,
    ],
    gorunum: const [UmreYerleri.safa, UmreYerleri.merve, UmreYerleri.kabe],
    animasyonSaniye: 8,
    baglantilar: const [AdimBaglantisi.sayDualari],
  ),
  UmreAdimi(
    baslik: const L10nText(
      tr: 'Tıraş / Kısaltma ve İhramdan Çıkış',
      en: 'Halq / Taqsir and Leaving Ihram (Tahallul)',
      ar: 'الحلق / التقصير والتحلل من الإحرام',
    ),
    kisaBaslik: const L10nText(tr: 'Tıraş', en: 'Halq/Taqsir', ar: 'الحلق'),
    yerId: YerId.merve,
    yer: YerAdlari.merve,
    yapilacaklar: const [
      L10nText(
        tr: 'Sa\'y bitince Harem sınırları içinde saç tıraş edilir veya kısaltılır.',
        en: "When Sa'i is finished, the hair is shaved or shortened within the boundaries of the Haram.",
        ar: 'بعد انتهاء السعي يُحلق الشعر أو يُقصَّر داخل حدود الحرم.',
      ),
      L10nText(
        tr: 'Erkekler için başı tamamen tıraş etmek (halk) daha faziletlidir.',
        en: 'For men, shaving the whole head (Halq) is more virtuous.',
        ar: 'والحلق للرجال أفضل.',
      ),
      L10nText(
        tr: 'Kısaltmada (taksîr) Hanefî mezhebine göre başın en az dörtte birindeki saçların uçlarından en az parmak ucu kadar '
            '(yaklaşık 1-2 cm) kesilir. Şâfiî mezhebine göre başın farklı yerlerinden en az 3 tel saç kesilmesi yeterlidir.',
        en: 'For shortening (Taqsir), according to the Hanafi school, at least a fingertip’s length (about 1-2 cm) is cut from the ends of the hair '
            'on at least a quarter of the head. According to the Shafi‘i school, cutting at least 3 hairs from different parts of the head is sufficient.',
        ar: 'في التقصير عند الحنفية يُقص من أطراف شعر ربع الرأس على الأقل قدر أنملة '
            '(نحو 1-2 سم). وعند الشافعية يكفي قص ثلاث شعرات على الأقل من مواضع مختلفة من الرأس.',
      ),
      L10nText(
        tr: 'Kadınlar tıraş olmaz; saçlarının uçlarından parmak ucu kadar keserler.',
        en: 'Women do not shave; they cut a fingertip’s length from the ends of their hair.',
        ar: 'لا تحلق المرأة، بل تقص من أطراف شعرها قدر أنملة.',
      ),
      L10nText(
        tr: 'Tıraşla ihramdan çıkılır, ihram yasakları sona erer ve umre tamamlanır.',
        en: 'With Halq/Taqsir you leave Ihram (Tahallul), the Ihram prohibitions end and the Umrah is complete.',
        ar: 'وبالحلق أو التقصير يتحلل المعتمر من إحرامه، وتنتهي محظورات الإحرام، وتتم العمرة.',
      ),
    ],
    dua: const DuaMetni(
      baslik: 'Umre tamamlanınca',
      baslikEn: 'When the Umrah is completed',
      baslikAr: 'عند إتمام العمرة',
      arapca: 'الْحَمْدُ لِلَّهِ الَّذِي قَضَى عَنَّا نُسُكَنَا، اللَّهُمَّ تَقَبَّلْ مِنَّا',
      okunus: 'Elhamdülillâhillezî kadâ annâ nüsükenâ. Allâhümme tekabbel minnâ.',
      okunusEn: "Alhamdu lillahil-ladhi qada 'anna nusukana. Allahumma taqabbal minna.",
      anlam: 'İbadetimizi eda etmeyi nasip eden Allah\'a hamd olsun. Allah\'ım, bizden kabul eyle.',
      anlamEn: 'Praise be to Allah, who enabled us to complete our rites. O Allah, accept it from us.',
    ),
    dikkat: const [
      L10nText(
        tr: 'Tıraştan önce ihram yasakları devam eder; tıraş olmadan elbise giyilmez.',
        en: 'The Ihram prohibitions continue until Halq/Taqsir; normal clothes are not worn before it.',
        ar: 'تستمر محظورات الإحرام إلى الحلق أو التقصير، فلا تُلبس الثياب قبله.',
      ),
      L10nText(
        tr: 'Tıraş Harem sınırları dışında olunursa ceza gerekir.',
        en: 'If Halq/Taqsir is done outside the boundaries of the Haram, a penalty is due.',
        ar: 'إن كان الحلق أو التقصير خارج حدود الحرم لزمت الفدية.',
      ),
    ],
    yol: const [UmreYerleri.merve],
    gorunum: const [UmreYerleri.safa, UmreYerleri.merve, UmreYerleri.kabe],
    animasyonSaniye: 2,
  ),
];
