import 'package:latlong2/latlong.dart';

import 'l10n_text.dart';

/// Mikat mahalleri.
///
/// KOORDİNAT KAYNAĞI: OpenStreetMap Nominatim (nominatim.openstreetmap.org/search), 5-6 Kasım 2026.
///  - Zülhuleyfe : "ميقات ذي الحليفة" (historic=monument) 24.4137659, 39.5428138
///                 (aynı yerde "مسجد الشجرة" / Mescid-i Şecere 24.4136374, 39.5429910)
///  - Cuhfe      : "ميقات الجحفة" (historic=monument), Rabiğ ilçesi 22.7054153, 39.1469065
///  - Karnü'l-Menazil : "Masjid Meeqat Qarn Al Manaazil" (amenity=place_of_worship), es-Seyl 21.6329614, 40.4268647
///  - Yelemlem   : "Masjid Meeqat Yalamlam" (amenity=place_of_worship), Leys ilçesi 20.5171720, 39.8711474
///  - Zatü Irk   : "مسجد ميقات ذات عرق" (amenity=place_of_worship), Cumum ilçesi 21.9299673, 40.4255514
///
/// BİLGİ KAYNAĞI: Buhârî, Hac 7-12 (mikatların tayini hadisi); Diyanet İşleri Başkanlığı
/// Hac ve Umre rehberi (mikat ve uçakta ihram bilgisi). Mesafeler uygulamada koordinattan
/// kuş uçuşu hesaplanır; kara yolu daha uzundur.
class Mikat {
  const Mikat({
    required this.name,
    required this.altName,
    required this.point,
    required this.forWhom,
    required this.description,
    required this.mesafe,
    this.note,
  });

  /// Mekke'ye yaklaşık kara yolu uzaklığı (TDV İslâm Ansiklopedisi "Mîkāt";
  /// Zülhuleyfe için Wikipedia "Miqat"). Yollara göre kaynaklarda farklılık var.
  final L10nText mesafe;

  final L10nText name;
  final L10nText altName;
  final LatLng point;
  final L10nText forWhom;
  final L10nText description;
  final L10nText? note;
}

const kMikatlar = <Mikat>[
  Mikat(
    name: L10nText(tr: 'Zülhuleyfe', en: 'Dhul-Hulayfah', ar: 'ذو الحليفة'),
    altName: L10nText(tr: 'Ebyar Ali (Âbâr-ı Ali)', en: 'Abyar Ali', ar: 'أبيار علي'),
    point: LatLng(24.4137659, 39.5428138),
    forWhom: L10nText(
      tr: "Medine'den ve Medine yönünden Mekke'ye gelenler.",
      en: 'Those coming to Makkah from Madinah or from the direction of Madinah.',
      ar: 'القادمون إلى مكة من المدينة أو من جهتها.',
    ),
    mesafe: L10nText(
      tr: '~420-450 km (en uzak mikat)',
      en: '~420-450 km (the farthest Miqat)',
      ar: '~420-450 كم (أبعد المواقيت)',
    ),
    description: L10nText(
      tr: "Medine'nin güneybatısında, şehre yakındır. Mekke'ye en uzak mikattır. "
          "Burada Mescid-i Şecere (Mikat Mescidi) bulunur; hacı ve umreciler gusül/abdest alıp ihrama burada girer.",
      en: 'Located south-west of Madinah, close to the city. It is the Miqat farthest from Makkah. '
          'Masjid ash-Shajarah (the Miqat Mosque) is here; pilgrims perform ghusl/wudu and enter Ihram here.',
      ar: 'يقع جنوب غرب المدينة المنورة قريبًا منها، وهو أبعد المواقيت عن مكة. '
          'وفيه مسجد الشجرة (مسجد الميقات)؛ يغتسل الحجاج والمعتمرون أو يتوضؤون ويحرمون منه.',
    ),
    note: L10nText(
      tr: "Önce Medine'ye giden Türk kafileleri Mekke'ye geçerken ihrama genellikle burada girer.",
      en: 'Turkish groups that visit Madinah first usually enter Ihram here on their way to Makkah.',
      ar: 'المجموعات التركية التي تزور المدينة أولًا تُحرم عادةً من هنا في طريقها إلى مكة.',
    ),
  ),
  Mikat(
    name: L10nText(tr: 'Cuhfe', en: 'Al-Juhfah', ar: 'الجحفة'),
    altName: L10nText(tr: 'Rabiğ', en: 'Rabigh', ar: 'رابغ'),
    point: LatLng(22.7054153, 39.1469065),
    forWhom: L10nText(
      tr: "Şam, Mısır, Kuzey Afrika ve Türkiye yönünden gelenler.",
      en: 'Those coming from the direction of Damascus (the Levant), Egypt, North Africa and Türkiye.',
      ar: 'القادمون من جهة الشام ومصر وشمال أفريقيا وتركيا.',
    ),
    mesafe: L10nText(
      tr: '~187 km (Rabiğ ~186 km)',
      en: '~187 km (Rabigh ~186 km)',
      ar: '~187 كم (رابغ ~186 كم)',
    ),
    description: L10nText(
      tr: "Kızıldeniz kıyısındaki Rabiğ şehrinin yakınındadır. Eski Cuhfe yerleşimi zamanla terk edildiği için "
          "uzun süre ihrama Rabiğ'den girilmiştir; bugün Cuhfe'de mikat mescidi vardır.",
      en: 'It lies near the town of Rabigh on the Red Sea coast. Because the old settlement of Al-Juhfah was abandoned over time, '
          'pilgrims entered Ihram from Rabigh for a long period; today there is a Miqat mosque at Al-Juhfah.',
      ar: 'تقع قرب مدينة رابغ على ساحل البحر الأحمر. ولأن قرية الجحفة القديمة هُجرت مع الزمن '
          'ظل الناس يحرمون من رابغ مدة طويلة؛ واليوم يوجد مسجد للميقات في الجحفة.',
    ),
    note: L10nText(
      tr: "Türkiye'den doğrudan Cidde'ye uçanlar bu mikatın hizasından geçer; ihrama uçakta, bu hizaya gelmeden girilir.",
      en: 'Those flying directly from Türkiye to Jeddah pass the line of this Miqat; Ihram is entered on the plane before reaching it.',
      ar: 'المسافرون جوًا من تركيا إلى جدة مباشرةً يمرون بمحاذاة هذا الميقات؛ فيُحرمون في الطائرة قبل الوصول إلى محاذاته.',
    ),
  ),
  Mikat(
    name: L10nText(tr: "Karnü'l-Menazil", en: 'Qarn al-Manazil', ar: 'قرن المنازل'),
    altName: L10nText(tr: "Seylü'l-Kebir (es-Seyl)", en: 'As-Sayl al-Kabir', ar: 'السيل الكبير'),
    point: LatLng(21.6329614, 40.4268647),
    forWhom: L10nText(
      tr: "Necid, Taif, Riyad ve Körfez ülkeleri yönünden gelenler.",
      en: 'Those coming from the direction of Najd, Taif, Riyadh and the Gulf countries.',
      ar: 'القادمون من جهة نجد والطائف والرياض ودول الخليج.',
    ),
    mesafe: L10nText(tr: '~94 km', en: '~94 km', ar: '~94 كم'),
    description: L10nText(
      tr: "Taif yolu üzerindedir. "
          "Taif'ten Mekke'ye inen yol üzerinde Vadi Muhrim'deki mescit de aynı mikatın hizası kabul edilir.",
      en: 'It is on the Taif road. '
          'The mosque at Wadi Muhrim, on the road descending from Taif to Makkah, is also considered in line with the same Miqat.',
      ar: 'يقع على طريق الطائف. '
          'ويُعد المسجد في وادي محرم على الطريق النازل من الطائف إلى مكة محاذيًا لهذا الميقات أيضًا.',
    ),
  ),
  Mikat(
    name: L10nText(tr: 'Yelemlem', en: 'Yalamlam', ar: 'يلملم'),
    altName: L10nText(tr: "Sadiye (es-Sa'diyye)", en: "As-Sa'diyyah", ar: 'السعدية'),
    point: LatLng(20.5171720, 39.8711474),
    forWhom: L10nText(
      tr: "Yemen ve güney yönünden gelenler; Hindistan, Pakistan ve Güneydoğu Asya'dan deniz/hava yoluyla gelenler.",
      en: 'Those coming from Yemen and the south; those arriving by sea/air from India, Pakistan and South-East Asia.',
      ar: 'القادمون من اليمن ومن جهة الجنوب، والقادمون بحرًا أو جوًا من الهند وباكستان وجنوب شرق آسيا.',
    ),
    mesafe: L10nText(
      tr: "~54 km (Mekke'ye en yakın mikat)",
      en: '~54 km (the Miqat closest to Makkah)',
      ar: '~54 كم (أقرب المواقيت إلى مكة)',
    ),
    description: L10nText(
      tr: "Mekke'nin güneyinde, Leys yolu üzerindedir. Bölgedeki mikat mescidi bugün Sadiye olarak da anılır.",
      en: "It is south of Makkah, on the Al-Lith road. The Miqat mosque in the area is today also known as As-Sa'diyyah.",
      ar: 'يقع جنوب مكة على طريق الليث. ويُعرف مسجد الميقات في المنطقة اليوم أيضًا باسم السعدية.',
    ),
  ),
  Mikat(
    name: L10nText(tr: 'Zatü Irk', en: 'Dhat Irq', ar: 'ذات عرق'),
    altName: L10nText(tr: 'Darîbe', en: 'Ad-Dariba', ar: 'الضريبة'),
    point: LatLng(21.9299673, 40.4255514),
    forWhom: L10nText(
      tr: "Irak, İran ve kuzeydoğu yönünden gelenler.",
      en: 'Those coming from the direction of Iraq, Iran and the north-east.',
      ar: 'القادمون من جهة العراق وإيران والشمال الشرقي.',
    ),
    mesafe: L10nText(
      tr: '~94-110 km (kaynaklar farklı)',
      en: '~94-110 km (sources differ)',
      ar: '~94-110 كم (تختلف المصادر)',
    ),
    description: L10nText(
      tr: "Mekke'nin kuzeydoğusundadır. Bugün bu güzergâhta kara yolu az kullanıldığından, bu yönden gelenlerin "
          "çoğu Karnü'l-Menazil'den ihrama girer.",
      en: 'It is north-east of Makkah. Since the road on this route is rarely used today, most people coming from this direction '
          'enter Ihram at Qarn al-Manazil.',
      ar: 'يقع شمال شرق مكة. ولقلة استخدام الطريق البري على هذا المسار اليوم فإن أكثر القادمين من هذه الجهة '
          'يُحرمون من قرن المنازل.',
    ),
  ),
];
