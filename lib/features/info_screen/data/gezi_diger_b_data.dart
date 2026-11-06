import 'package:latlong2/latlong.dart';

import 'gezilecek_yerler_data.dart';
import 'l10n_text.dart';

/// Mekke ve Medine dışındaki önemli yerler, ikinci kısım (Hicr, Cuhfe, Tebük, Yenbu).
///
/// Bilgiler: TDV İslâm Ansiklopedisi ("Hicr" [Semûd], "Cuhfe", "Tebük Gazvesi",
/// "Uşeyre Gazvesi", "Yenbu"); destek olarak Vikipedi (ar: "مسجد التوبة (تبوك)",
/// "الجحفة"; en: "Hegra (Mada'in Salih)", "Yanbu").
/// Hadisler: Buhârî ve Müslim metinleri hadith-api (fawazahmed0) Arapça/İngilizce
/// baskılarından numarasıyla kontrol edildi: Buhârî 1524, 1889, 3378-3381, 4418, 4419;
/// Müslim 706 (Fedâil, 10), 2769, 2980-2981 (Zühd; TDV: Zühd, 38-40).
/// Ayetler: api.quran.com (text_uthmani), 6 Kasım 2026.
/// Koordinatlar: OpenStreetMap (Nominatim / Overpass), 6 Kasım 2026.
/// Uzaklıklar: OSM koordinatlarından kuş uçuşu hesap; yol mesafeleri TDV ve Vikipedi.
///
/// Not: Taif'teki Abdullah b. Abbas Camii, `gezi_diger_data.dart` içindeki 'taif'
/// kaydında ayrıntılı anlatıldığı için ayrı kayıt yapılmadı; yerine Tebük eklendi.
const List<GeziYeri> kDigerYerleriB = [
  // -------------------------------------------------------- HİCR (MEDÂİN-İ SÂLİH)
  GeziYeri(
    id: 'hicr_ula',
    bolge: GeziBolge.diger,
    tur: GeziTur.tarihiSehir,
    ad: L10nText(
      tr: "Hicr (Medâin-i Sâlih)",
      en: "Al-Hijr (Mada'in Salih, Hegra)",
      ar: "الحِجْر (مدائن صالح)",
    ),
    arapcaAd: L10nText.same("الحِجْر"),
    altBaslik: L10nText(
      tr: "Kur'an'da anılan Ashâbü'l-Hicr'in yurdu; Semûd kavmi ve Hz. Sâlih kıssası",
      en: "The land of the People of al-Hijr mentioned in the Qur'an; the story of Thamud and the Prophet Salih",
      ar: "ديار أصحاب الحجر المذكورين في القرآن، وقصة ثمود ونبي الله صالح عليه السلام",
    ),
    sehir: L10nText(tr: "el-Ulâ (Medine bölgesi)", en: "AlUla (Madinah Province)", ar: "العُلا (منطقة المدينة المنورة)"),
    konum: LatLng(26.7915149, 37.9575438), // OSM way 849621507 (الحجر (مدائن صالح), archaeological_site)
    uzaklik: L10nText(
      tr: "Medine'ye ~300 km (kuş uçuşu, kuzeybatı); el-Ulâ'ya ~20–25 km",
      en: "~300 km northwest of Madinah (straight line); ~20–25 km from AlUla",
      ar: "نحو 300 كم شمال غرب المدينة المنورة (خط مستقيم)، ونحو 20–25 كم من العُلا",
    ),
    uygunSaat: L10nText(
      tr: "Sabah erken ya da ikindiden sonra (turların saatine göre)",
      en: "Early morning or late afternoon (depending on tour times)",
      ar: "في الصباح الباكر أو بعد العصر (بحسب مواعيد الجولات)",
    ),
    ziyaretSuresi: L10nText(
      tr: "2–3 saat (rehberli tur; yol hariç)",
      en: "2–3 hours (guided tour; excluding travel)",
      ar: "ساعتان إلى ثلاث (جولة مصحوبة بمرشد، دون الطريق)",
    ),
    genel: L10nText(
      tr: "Hicr, Arap yarımadasının kuzeybatısında, eski Medine–Tebük–Şam yolu üzerinde, bugünkü el-Ulâ kasabasının yaklaşık 20 km kuzeyinde bulunan antik bir yerleşim alanıdır. Halk arasında “Sâlih'in şehirleri” anlamında Medâin-i Sâlih olarak da bilinir. İslâmî kaynaklarda burası, Kur'an'da “Ashâbü'l-Hicr” (Hicr halkı) diye anılan ve Hz. Sâlih'in gönderildiği Semûd kavminin yurdu olarak kabul edilir.\n\n"
          "Bugün ziyaretçilerin gördüğü anıtsal yapılar ise çoğunlukla Nebatîlere aittir. Kumtaşı tepelere oyulmuş, cepheleri sütun ve kornişlerle süslenmiş yüzü aşkın aile mezarı, Ürdün'deki Petra'yı andırır. Bunların en tanınmışı, tek başına bir kaya kütlesine oyulmuş Kasrü'l-Ferîd'dir. Vadiden ayrıca Hicaz Demiryolu geçer; eski istasyon binaları hâlâ ayaktadır. Hicr, 2008 yılında Suudi Arabistan'ın UNESCO Dünya Mirası Listesi'ne giren ilk yeri olmuştur.",
      en: "Al-Hijr is an ancient settlement in the northwest of the Arabian Peninsula, on the old Madinah–Tabuk–Syria road, about 20 km north of the present-day town of AlUla. It is also widely known as Mada'in Salih, “the towns of Salih”, and internationally as Hegra. In Islamic sources this place is regarded as the homeland of Thamud, the people to whom the Prophet Salih was sent, called in the Qur'an “the People of al-Hijr” (Ashab al-Hijr).\n\n"
          "The monumental structures that visitors see today, however, belong mostly to the Nabataeans. More than a hundred family tombs carved into sandstone outcrops, their façades decorated with pilasters and cornices, recall Petra in Jordan. The best known is Qasr al-Farid, carved into a single free-standing rock. The Hejaz Railway also runs through the valley, and its old station buildings still stand. In 2008 al-Hijr became Saudi Arabia's first site on the UNESCO World Heritage List.",
      ar: "الحِجر موقع أثري قديم في شمال غرب جزيرة العرب، على الطريق القديم بين المدينة وتبوك والشام، على بعد نحو 20 كيلومترًا شمال بلدة العُلا. ويُعرف أيضًا باسم مدائن صالح. وتعدّه المصادر الإسلامية ديار ثمود، قوم نبي الله صالح عليه السلام، الذين سمّاهم القرآن «أصحاب الحجر».\n\n"
          "أما المباني الضخمة التي يراها الزائر اليوم فأكثرها من آثار الأنباط؛ إذ تنتشر فيه أكثر من مئة مقبرة عائلية منحوتة في التلال الرملية، تزيّن واجهاتها أعمدة وأفاريز، وتشبه آثار البتراء في الأردن. وأشهرها قصر الفريد المنحوت في صخرة واحدة منفردة. ويمر بالوادي أيضًا خط سكة حديد الحجاز، ولا تزال مباني محطته القديمة قائمة. وفي سنة 2008 صار الحجر أول موقع سعودي يُدرج في قائمة التراث العالمي لليونسكو.",
    ),
    tarihce: L10nText(
      tr: "Kur'an'a göre Semûd kavmi, Âd kavminden sonra yeryüzünde güç ve bolluk verilmiş, ovalarında köşkler yapan ve dağları oyarak güven içinde evler edinen bir topluluktu (A'râf 7/74; Hicr 15/82). Allah onlara kendi içlerinden Hz. Sâlih'i peygamber olarak gönderdi. Hz. Sâlih onları yalnız Allah'a kulluğa çağırdı ve onlara bir mucize olarak gönderilen dişi deveye (nâka) dokunmamalarını, suyu onunla paylaşmalarını istedi. Kavmin ileri gelenleri bu uyarıyı dinlemedi, deveyi kestiler ve sabah vakti gelen korkunç bir sesle (sayha) helâk edildiler (Hicr 15/83; Hûd 11/67).\n\n"
          "Bölge daha sonra Lihyânîlerin ve özellikle Nebatîlerin elinde önemli bir kervan durağı oldu. Bugün ayakta olan anıtsal kaya mezarları büyük ölçüde milattan önce 1. yüzyıl ile milattan sonra 1. yüzyıl arasına tarihlenir. Coğrafyacı İstahrî 10. yüzyılın başında Hicr'i küçük bir köy olarak anlatır; İbn Battûta da hac yolculuğunda Semûd'un kayalara oyulmuş evlerini gördüğünü yazar.\n\n"
          "Hicretin 9. yılında Tebük seferine giden İslâm ordusu Hicr'den geçti. Hz. Peygamber burada ashabına Semûd'un kuyularından su içmemelerini, onunla abdest almamalarını emretti; o sudan hamur yoğurmuş olanlara hamuru develere yedirmelerini, aldıkları suyu dökmelerini söyledi ve sularını Hz. Sâlih'in devesinin su içtiği kuyudan almalarını istedi (Buhârî, Enbiyâ, 17, nr. 3378-3379; Müslim, Zühd, nr. 2981). Ayrıca “Kendilerine zulmedenlerin yurtlarına ancak ağlayarak girin; onlara isabet edenin size de isabet etmesinden sakının” buyurdu, başını örttü ve vadiyi geçinceye kadar hızlı yürüdü (Buhârî, Meğâzî, nr. 4419; Müslim, Zühd, nr. 2980).\n\n"
          "1876–1877'de İngiliz gezgin Charles Doughty, 1907'de de Fransız araştırmacılar Jaussen ve Savignac bölgeyi inceledi. 1901–1908 yıllarında Osmanlı Devleti'nin yaptırdığı Hicaz Demiryolu vadiden geçirildi. Kazı ve koruma çalışmaları 20. yüzyılın sonlarında hız kazandı ve 2008'de alan UNESCO Dünya Mirası Listesi'ne alındı.",
      en: "According to the Qur'an, Thamud were a people given power and plenty on earth after the people of Ad; they built palaces on the plains and carved homes out of the mountains, dwelling in security (al-A'raf 7:74; al-Hijr 15:82). Allah sent them the Prophet Salih from among themselves. Salih called them to worship Allah alone and asked them not to harm the she-camel sent to them as a sign and to share the water with her. The leaders of the people ignored the warning, slaughtered the camel, and were destroyed by a terrible blast (al-sayhah) that seized them in the morning (al-Hijr 15:83; Hud 11:67).\n\n"
          "The area later became an important caravan station under the Lihyanites and especially the Nabataeans. Most of the monumental rock-cut tombs standing today date from between the 1st century BC and the 1st century AD. The geographer al-Istakhri described al-Hijr in the early 10th century as a small village, and Ibn Battutah wrote that he saw the rock-cut dwellings of Thamud on his pilgrimage journey.\n\n"
          "In the ninth year of the Hijrah the Muslim army on its way to Tabuk passed through al-Hijr. Here the Prophet ordered his Companions not to drink from or make ablution with the water of Thamud's wells; he told those who had kneaded dough with it to feed the dough to the camels and pour the water away, and to draw their water from the well at which the she-camel of Salih used to drink (al-Bukhari, Ahadith al-Anbiya', 17, nos. 3378-3379; Muslim, al-Zuhd, no. 2981). He also said: “Do not enter the dwellings of those who wronged themselves except weeping, lest what befell them befall you.” Then he covered his head and hastened until he had crossed the valley (al-Bukhari, al-Maghazi, no. 4419; Muslim, al-Zuhd, no. 2980).\n\n"
          "In 1876–1877 the English traveller Charles Doughty, and in 1907 the French scholars Jaussen and Savignac, studied the site. Between 1901 and 1908 the Hejaz Railway built by the Ottoman State was laid through the valley. Excavation and conservation work gathered pace in the late 20th century, and in 2008 the site was inscribed on the UNESCO World Heritage List.",
      ar: "يخبر القرآن الكريم أن ثمود قوم مكّن الله لهم في الأرض بعد عاد، فاتخذوا من سهولها قصورًا ونحتوا الجبال بيوتًا آمنين (الأعراف 7/74؛ الحجر 15/82). فأرسل الله إليهم أخاهم صالحًا عليه السلام، فدعاهم إلى عبادة الله وحده، وأمرهم ألا يمسّوا الناقة التي جعلها الله لهم آية بسوء، وأن يقاسموها الماء. فلم يستجب الملأ منهم، وعقروا الناقة، فأخذتهم الصيحة مصبحين (الحجر 15/83؛ هود 11/67).\n\n"
          "ثم صار الموضع محطة مهمة للقوافل في عهد اللحيانيين ثم الأنباط خاصة. وترجع أكثر المقابر الصخرية الضخمة القائمة اليوم إلى ما بين القرن الأول قبل الميلاد والقرن الأول الميلادي. ووصف الإصطخري الحجر في أوائل القرن العاشر الميلادي بأنه قرية صغيرة، وذكر ابن بطوطة أنه رأى في رحلته إلى الحج بيوت ثمود المنحوتة في الصخر.\n\n"
          "وفي السنة التاسعة للهجرة مرّ الجيش الإسلامي بالحجر في طريقه إلى تبوك، فأمر النبي صلى الله عليه وسلم أصحابه ألا يشربوا من آبار ثمود ولا يتوضؤوا منها، وأمر من عجن بمائها أن يعلف العجين الإبل ويُهريق الماء، وأن يستقوا من البئر التي كانت تردها الناقة (البخاري، أحاديث الأنبياء، 17، رقم 3378-3379؛ مسلم، الزهد، رقم 2981). وقال: «لا تدخلوا مساكن الذين ظلموا أنفسهم أن يصيبكم ما أصابهم إلا أن تكونوا باكين»، ثم قنّع رأسه وأسرع السير حتى أجاز الوادي (البخاري، المغازي، رقم 4419؛ مسلم، الزهد، رقم 2980).\n\n"
          "وفي سنتي 1876–1877م زار الموقعَ الرحالة الإنجليزي تشارلز داوتي، وفي سنة 1907م درسه الباحثان الفرنسيان جوسان وسافينياك. وبين سنتي 1901 و1908م مُدّ في الوادي خط سكة حديد الحجاز الذي أنشأته الدولة العثمانية. ثم نشطت أعمال التنقيب والحماية في أواخر القرن العشرين، وفي سنة 2008م أُدرج الموقع في قائمة التراث العالمي لليونسكو.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Kadim dönem", en: "Ancient times", ar: "العصور القديمة"),
        metin: L10nText(
          tr: "Kur'an'a göre Hz. Sâlih Semûd kavmine gönderildi; kavim uyarıyı reddedip helâk oldu.",
          en: "According to the Qur'an, the Prophet Salih was sent to Thamud; the people rejected the warning and were destroyed.",
          ar: "بحسب القرآن الكريم أُرسل صالح عليه السلام إلى ثمود، فكذّبوه فأُهلكوا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "MÖ 1. yy – MS 1. yy", en: "1st century BC – 1st century AD", ar: "القرن الأول ق.م – القرن الأول م"),
        metin: L10nText(
          tr: "Nebatîler bugün görülen anıtsal kaya mezarlarını oydu.",
          en: "The Nabataeans carved the monumental rock tombs seen today.",
          ar: "نحت الأنباط المقابر الصخرية الضخمة التي تُرى اليوم.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Recep 9 / Ekim 630", en: "Rajab 9 AH / October 630", ar: "رجب 9هـ / أكتوبر 630م"),
        metin: L10nText(
          tr: "Tebük seferine giden Hz. Peygamber Hicr'den geçti; ashabına buranın suyunu kullanmamalarını ve buradan ağlayarak, ibretle geçmelerini öğretti.",
          en: "On the way to Tabuk the Prophet passed through al-Hijr and taught his Companions not to use its water and to pass by weeping and taking heed.",
          ar: "مرّ النبي صلى الله عليه وسلم بالحجر في طريقه إلى تبوك، وعلّم أصحابه ألا يستعملوا ماءه وأن يمرّوا به باكين معتبرين.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1876–1877", en: "1876–1877", ar: "1876–1877م"),
        metin: L10nText(
          tr: "Charles Doughty bölgeyi ziyaret edip ayrıntılı olarak tanıttı.",
          en: "Charles Doughty visited the site and described it in detail.",
          ar: "زار تشارلز داوتي الموقع ووصفه وصفًا مفصلًا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1901–1908", en: "1901–1908", ar: "1901–1908م"),
        metin: L10nText(
          tr: "Osmanlı'nın Hicaz Demiryolu vadiden geçirildi; burada bir istasyon kuruldu.",
          en: "The Ottoman Hejaz Railway was laid through the valley and a station was built here.",
          ar: "مُدّ خط سكة حديد الحجاز العثماني في الوادي وأُقيمت فيه محطة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("1907"),
        metin: L10nText(
          tr: "Jaussen ve Savignac ilk kapsamlı arkeolojik incelemeyi yaptı.",
          en: "Jaussen and Savignac carried out the first comprehensive archaeological survey.",
          ar: "أجرى جوسان وسافينياك أول دراسة أثرية شاملة للموقع.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("2008"),
        metin: L10nText(
          tr: "Hicr, Suudi Arabistan'ın UNESCO Dünya Mirası Listesi'ne giren ilk yeri oldu.",
          en: "Al-Hijr became Saudi Arabia's first UNESCO World Heritage Site.",
          ar: "صار الحجر أول موقع سعودي في قائمة التراث العالمي لليونسكو.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Hicr, faziletiyle değil, ibret yeri oluşuyla önem taşır. Kur'an, adını taşıyan Hicr sûresinde bu kavmin, dağları oyarak yaptıkları sağlam evlere rağmen helâkten kurtulamadığını, kazandıklarının kendilerine bir fayda sağlamadığını bildirir (Hicr 15/80-84). Semûd ve Hz. Sâlih kıssası ayrıca A'râf, Hûd, Şuarâ, Neml ve Şems sûrelerinde anlatılır.\n\n"
          "Hz. Peygamber'in buradan geçerken gösterdiği tavır, bu tür yerlerin nasıl ziyaret edileceğini öğretir: Azaba uğramış bir kavmin yurdu eğlence ve seyir yeri olarak değil, gözyaşı, korku ve tefekkürle geçilecek bir yerdir. Hz. Peygamber ashabına ağlayamıyorlarsa oraya girmemelerini söylemiş (Buhârî, Salât, nr. 433; Tefsîr, nr. 4702), kendisi de başını örterek vadiden hızla geçmiştir. Bu sebeple bazı âlimler buraya gezi amacıyla gitmeyi uygun görmemiştir. Ziyaret eden kişinin, büyüklenmenin ve nankörlüğün sonunu hatırlayıp Allah'a sığınması uygun olur.",
      en: "Al-Hijr is significant not for any special virtue but as a place of warning and reflection. In the surah that bears its name, the Qur'an states that this people could not escape destruction despite the solid homes they carved out of the mountains, and that what they had earned did not avail them (al-Hijr 15:80-84). The story of Thamud and the Prophet Salih is also told in the surahs al-A'raf, Hud, al-Shu'ara', al-Naml and al-Shams.\n\n"
          "The Prophet's conduct when passing through this place teaches how such places should be approached: the land of a people who were punished is not a place for entertainment and sightseeing, but one to be passed with tears, awe and reflection. The Prophet told his Companions not to enter if they could not weep (al-Bukhari, al-Salah, no. 433; al-Tafsir, no. 4702), and he himself covered his head and crossed the valley quickly. For this reason some scholars have considered it inappropriate to go there for tourism. Whoever visits should remember the end of arrogance and ingratitude and seek refuge in Allah.",
      ar: "لا يُعرف للحجر فضل، وإنما أهميته في أنه موضع عبرة. ففي السورة التي تحمل اسمه يخبر القرآن أن هؤلاء القوم لم ينجُهم ما نحتوه من الجبال بيوتًا آمنة، وأنه ما أغنى عنهم ما كانوا يكسبون (الحجر 15/80-84). وقصة ثمود وصالح عليه السلام مذكورة أيضًا في سور الأعراف وهود والشعراء والنمل والشمس.\n\n"
          "وهدي النبي صلى الله عليه وسلم حين مرّ بهذا الموضع يعلّم كيف تُزار مثل هذه الأماكن؛ فديار القوم المعذَّبين ليست موضع لهو وتنزّه، وإنما يُمرّ بها بالبكاء والخشية والتفكر. وقد قال لأصحابه: فإن لم تكونوا باكين فلا تدخلوا عليهم (البخاري، الصلاة، رقم 433؛ التفسير، رقم 4702)، وقنّع رأسه وأسرع حتى أجاز الوادي. ولذلك كره بعض العلماء الذهاب إليه للسياحة. وينبغي لمن زاره أن يتذكر عاقبة الكبر والجحود، وأن يستعيذ بالله.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "وَلَقَدْ كَذَّبَ أَصْحَـٰبُ ٱلْحِجْرِ ٱلْمُرْسَلِينَ ﴿٨٠﴾ وَءَاتَيْنَـٰهُمْ ءَايَـٰتِنَا فَكَانُوا۟ عَنْهَا مُعْرِضِينَ ﴿٨١﴾ وَكَانُوا۟ يَنْحِتُونَ مِنَ ٱلْجِبَالِ بُيُوتًا ءَامِنِينَ ﴿٨٢﴾ فَأَخَذَتْهُمُ ٱلصَّيْحَةُ مُصْبِحِينَ ﴿٨٣﴾ فَمَآ أَغْنَىٰ عَنْهُم مَّا كَانُوا۟ يَكْسِبُونَ ﴿٨٤﴾",
        meal: L10nText(
          tr: "Andolsun, Hicr halkı da peygamberleri yalanlamıştı. Onlara âyetlerimizi verdik, fakat onlar bunlardan yüz çevirdiler. Onlar dağlardan güven içinde evler yontarlardı. Nihayet sabaha çıkarlarken o korkunç ses onları yakaladı. Kazandıkları şeyler kendilerine hiçbir fayda sağlamadı.",
          en: "The People of al-Hijr also denied the messengers. We gave them Our signs, but they turned away from them. They used to carve homes out of the mountains, feeling secure. Then the blast seized them in the morning, and all that they had earned did not avail them.",
          ar: "يخبر الله أن أصحاب الحجر كذّبوا المرسلين وأعرضوا عن آياته، وكانوا ينحتون من الجبال بيوتًا يأمنون فيها، فأخذتهم الصيحة وقت الصباح، ولم ينفعهم ما كانوا يكسبون.",
        ),
        kaynak: L10nText(tr: "Hicr 15/80-84", en: "Al-Hijr 15:80-84", ar: "الحجر 15/80-84"),
      ),
      GeziAlinti(
        arapca: "وَإِلَىٰ ثَمُودَ أَخَاهُمْ صَـٰلِحًا ۗ قَالَ يَـٰقَوْمِ ٱعْبُدُوا۟ ٱللَّهَ مَا لَكُم مِّنْ إِلَـٰهٍ غَيْرُهُۥ ۖ قَدْ جَآءَتْكُم بَيِّنَةٌ مِّن رَّبِّكُمْ ۖ هَـٰذِهِۦ نَاقَةُ ٱللَّهِ لَكُمْ ءَايَةً ۖ فَذَرُوهَا تَأْكُلْ فِىٓ أَرْضِ ٱللَّهِ ۖ وَلَا تَمَسُّوهَا بِسُوٓءٍ فَيَأْخُذَكُمْ عَذَابٌ أَلِيمٌ",
        meal: L10nText(
          tr: "Semûd kavmine de kardeşleri Sâlih'i gönderdik. “Ey kavmim! Allah'a kulluk edin. Sizin O'ndan başka hiçbir ilâhınız yoktur. Size Rabbinizden açık bir delil gelmiştir. İşte Allah'ın şu devesi size bir mucizedir. Bırakın onu Allah'ın arzında otlasın. Ona hiçbir kötülük dokundurmayın; yoksa sizi elem dolu bir azap yakalar” dedi.",
          en: "And to Thamud We sent their brother Salih. He said: “O my people, worship Allah; you have no god other than Him. A clear proof has come to you from your Lord. This she-camel of Allah is a sign for you. So leave her to graze in Allah's land and do not harm her, or a painful punishment will seize you.”",
          ar: "يخبر الله أنه أرسل إلى ثمود أخاهم صالحًا يدعوهم إلى عبادته وحده، وجعل لهم الناقة آية بيّنة، وأمرهم أن يتركوها ترعى في أرض الله ولا يمسّوها بسوء، وحذّرهم عذابًا أليمًا إن خالفوا.",
        ),
        kaynak: L10nText(tr: "A'râf 7/73", en: "Al-A'raf 7:73", ar: "الأعراف 7/73"),
      ),
      GeziAlinti(
        arapca: "لاَ تَدْخُلُوا مَسَاكِنَ الَّذِينَ ظَلَمُوا أَنْفُسَهُمْ، أَنْ يُصِيبَكُمْ مَا أَصَابَهُمْ، إِلاَّ أَنْ تَكُونُوا بَاكِينَ",
        meal: L10nText(
          tr: "Hz. Peygamber Hicr'den geçerken şöyle buyurdu: “Kendilerine zulmeden kimselerin yurtlarına, onlara isabet edenin size de isabet etmesinden sakınarak, ancak ağlayarak girin.” Sonra başını örttü ve vadiyi geçinceye kadar hızlandı.",
          en: "When the Prophet passed by al-Hijr he said: “Do not enter the dwellings of those who wronged themselves, lest what befell them befall you, unless you are weeping.” Then he covered his head and hastened until he had crossed the valley.",
          ar: "قاله النبي صلى الله عليه وسلم لما مرّ بالحجر، ثم قنّع رأسه وأسرع السير حتى أجاز الوادي.",
        ),
        kaynak: L10nText(
          tr: "Buhârî, Meğâzî, nr. 4419; Müslim, Zühd, nr. 2980",
          en: "al-Bukhari, al-Maghazi, no. 4419; Muslim, al-Zuhd, no. 2980",
          ar: "البخاري، المغازي، رقم 4419؛ مسلم، الزهد، رقم 2980",
        ),
      ),
    ],
    adab: [
      L10nText(
        tr: "Bu yeri bir eğlence ve fotoğraf mekânı olarak değil, ibret yeri olarak düşünün; Hz. Peygamber'in “ancak ağlayarak girin” tavsiyesini hatırlayın.",
        en: "Think of this place not as a spot for entertainment and photographs but as a place of warning; remember the Prophet's advice to enter only weeping.",
        ar: "انظر إلى هذا الموضع على أنه موضع عبرة لا موضع لهو وتصوير، وتذكّر قول النبي صلى الله عليه وسلم: إلا أن تكونوا باكين.",
      ),
      L10nText(
        tr: "Ziyaret boyunca kalbinizi tefekküre verin; istiğfar edin, büyüklenmeden ve nankörlükten Allah'a sığının.",
        en: "Turn your heart to reflection throughout the visit; seek forgiveness and seek refuge in Allah from arrogance and ingratitude.",
        ar: "أقبل بقلبك على التفكر طوال الزيارة، وأكثر من الاستغفار، واستعذ بالله من الكبر والجحود.",
      ),
      L10nText(
        tr: "Gülüp eğlenmekten, yüksek sesle şakalaşmaktan kaçının; mümkünse alanda uzun süre oyalanmayın.",
        en: "Avoid laughter and loud joking, and if possible do not linger at the site.",
        ar: "اجتنب الضحك والمزاح بصوت مرتفع، ولا تُطِل المكث في الموقع ما استطعت.",
      ),
      L10nText(
        tr: "Hz. Peygamber'in öğrettiği gibi, oradan su alıp içmeyin ve yemek için kullanmayın; suyunuzu yanınızda getirin.",
        en: "As the Prophet taught, do not take water there for drinking or cooking; bring your own water with you.",
        ar: "اقتداءً بهدي النبي صلى الله عليه وسلم لا تستقِ من هناك ماءً للشرب أو الطبخ، واحمل ماءك معك.",
      ),
      L10nText(
        tr: "Nebatî mezarlarına tırmanmayın, kayalara yazı yazmayın ve dokunmayın; alan koruma altındadır.",
        en: "Do not climb the Nabataean tombs, write on or touch the rocks; the site is protected.",
        ar: "لا تتسلق المقابر النبطية ولا تكتب على الصخور ولا تلمسها، فالموقع محميّ.",
      ),
      L10nText(
        tr: "Çöl ikliminde güneş çok güçlüdür; su, şapka ve rahat ayakkabı bulundurun.",
        en: "The desert sun is very strong; carry water, a hat and comfortable shoes.",
        ar: "شمس الصحراء شديدة، فاحمل الماء وغطاء الرأس والبس حذاءً مريحًا.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Hicr arkeolojik alanına yalnız el-Ulâ yönetiminin (Experience AlUla) biletli ve rehberli turlarıyla girilebildiği bildirilmektedir; alan içinde serbest dolaşmaya izin verilmeyebilir. Tur saatleri ve fiyatları mevsime göre değişir, yaz aylarında program kısalabilir; önceden çevrim içi rezervasyon yapın. Medine'den gidiş-dönüş uzun bir yolculuktur; umre programınızı aksatmayacak şekilde planlayın.",
      en: "Entry to the al-Hijr (Hegra) archaeological site is reported to be possible only on the ticketed, guided tours of the AlUla authority (Experience AlUla); free roaming inside the site may not be allowed. Tour times and prices vary by season, and the programme may be shortened in summer; book online in advance. The round trip from Madinah is a long journey; plan it so that it does not disrupt your Umrah programme.",
      ar: "يُذكر أن دخول موقع الحجر الأثري لا يكون إلا ضمن جولات مصحوبة بمرشد وبتذاكر تنظمها جهة العُلا (Experience AlUla)، وقد لا يُسمح بالتجول الحر داخل الموقع. وتختلف مواعيد الجولات وأسعارها بحسب الموسم، وقد يُختصر البرنامج في الصيف، فاحجز مسبقًا عبر الإنترنت. والذهاب والعودة من المدينة رحلة طويلة، فخطط لها بحيث لا تُخلّ ببرنامج عمرتك.",
    ),
    anlatim: L10nText(
      tr: "Medine'den kuzeye, eski Şam yolu boyunca ilerlediğinizde, kızıl kumtaşı tepelerin yükseldiği geniş bir vadiye varırsınız. Rüzgârın ve zamanın yonttuğu bu kayaların arasında, Kur'an'ın adını andığı bir yer vardır: Hicr. Kur'an burada yaşamış olan topluluğu Ashâbü'l-Hicr, yani Hicr halkı diye anar.\n\n"
          "Kur'an'ın anlattığına göre Semûd kavmine büyük nimetler verilmişti. Ovalarda köşkler yapıyor, dağları oyarak kendilerine güven içinde evler ediniyorlardı. Allah onlara kendi içlerinden Hz. Sâlih'i gönderdi. Hz. Sâlih onları yalnız Allah'a kulluğa çağırdı ve onlara bir mucize olarak gönderilen dişi deveye dokunmamalarını istedi. Fakat kavmin ileri gelenleri büyüklendi, deveyi kestiler ve uyarıya kulak asmadılar. Bir sabah korkunç bir ses onları yakaladı. Hicr sûresi bunu şöyle haber verir: Dağları oyarak yaptıkları o sağlam evler, kazandıkları hiçbir şey onlara fayda vermedi.\n\n"
          "Bugün bu vadide gördüğünüz süslü kaya cepheleri ise çok sonraları burada yaşayan Nebatîlerin mezarlarıdır. Yüzü aşkın mezar, kayaların içine sabırla oyulmuş, sütunlarla ve kornişlerle süslenmiştir. Tek başına bir kayaya oyulmuş Kasrü'l-Ferîd, bunların en görkemlisidir. Ama ne kadar sağlam görünürlerse görünsünler, sahipleri çoktan bu dünyadan göçüp gitmiştir.\n\n"
          "Hicretin dokuzuncu yılında, Tebük seferine giden İslâm ordusu bu vadiden geçti. Bazı sahâbîler buradaki kuyulardan su alıp hamur yoğurmuştu. Hz. Peygamber bunu duyunca suyu dökmelerini, hamuru develere yedirmelerini emretti ve sularını yalnızca Hz. Sâlih'in devesinin su içtiği kuyudan almalarını istedi. Sonra ashabına şöyle dedi: Kendilerine zulmeden kimselerin yurtlarına, onların başına gelenin sizin de başınıza gelmesinden sakınarak, ancak ağlayarak girin. Ardından başını örttü ve vadiyi geçinceye kadar devesini hızlandırdı.\n\n"
          "Bu tavır, bu toprakların bize ne söylemek istediğini anlatır. Burası hayranlıkla seyredilecek bir yer değil, ibretle düşünülecek bir yerdir. Güç, servet ve sağlam evler, Allah'ın uyarısına kulak tıkayan bir topluluğu kurtaramamıştır.\n\n"
          "Bu vadiden geçerken kalbinizi yumuşatın. Rabbimizden bizi büyüklenmekten ve nankörlükten korumasını, nimetlerine şükreden kullarından eylemesini dileyelim.",
      en: "If you travel north from Madinah along the old road to Syria, you come to a wide valley where red sandstone hills rise from the sand. Among these rocks, carved by wind and time, is a place the Qur'an mentions by name: al-Hijr. The Qur'an calls the community that once lived here Ashab al-Hijr, the People of al-Hijr.\n\n"
          "As the Qur'an tells us, the people of Thamud had been given great blessings. They built palaces on the plains and carved homes for themselves out of the mountains, living in security. Allah sent them the Prophet Salih from among themselves. Salih called them to worship Allah alone and asked them not to harm the she-camel sent to them as a sign. But the leaders of the people grew arrogant, slaughtered the camel and paid no heed to the warning. One morning a terrible blast seized them. Surah al-Hijr tells us that the solid homes they had carved from the mountains, and all that they had earned, did not avail them.\n\n"
          "The ornate rock façades you see in this valley today, however, are the tombs of the Nabataeans who lived here much later. More than a hundred tombs were patiently carved into the rock and decorated with pilasters and cornices. Qasr al-Farid, carved into a single rock, is the most impressive of them. Yet however solid they appear, their owners left this world long ago.\n\n"
          "In the ninth year of the Hijrah, the Muslim army on its way to Tabuk passed through this valley. Some Companions had drawn water from the wells here and kneaded dough with it. When the Prophet heard of this, he ordered them to pour the water away and feed the dough to the camels, and told them to take water only from the well at which the she-camel of Salih used to drink. Then he said to his Companions: Do not enter the dwellings of those who wronged themselves except weeping, lest what befell them befall you. Then he covered his head and urged his camel on until he had crossed the valley.\n\n"
          "This conduct tells us what this land has to say to us. It is not a place to be admired as a spectacle, but a place for reflection and taking heed. Power, wealth and solid homes could not save a people who closed their ears to Allah's warning.\n\n"
          "As you pass through this valley, let your heart soften. Let us ask our Lord to protect us from arrogance and ingratitude and to make us among His servants who are thankful for His blessings.",
      ar: "إذا سرت من المدينة المنورة شمالًا على طريق الشام القديم، بلغت واديًا فسيحًا ترتفع فيه تلال من الحجر الرملي الأحمر. وبين هذه الصخور التي نحتتها الرياح والسنون موضع ذكره القرآن باسمه، هو الحِجر. ويسمّي القرآن من سكنوه أصحاب الحجر.\n\n"
          "يخبرنا القرآن أن ثمود أُوتوا نعمًا عظيمة، فكانوا يتخذون من السهول قصورًا وينحتون من الجبال بيوتًا آمنين. فأرسل الله إليهم أخاهم صالحًا عليه السلام يدعوهم إلى عبادة الله وحده، وأمرهم ألا يمسّوا الناقة التي جعلها الله لهم آية. لكن الملأ منهم استكبروا وعقروا الناقة ولم يلتفتوا إلى النذير، فأخذتهم الصيحة ذات صباح. وتخبر سورة الحجر أنه ما أغنى عنهم ما نحتوه من بيوت ولا ما كانوا يكسبون.\n\n"
          "أما الواجهات الصخرية المزخرفة التي تراها اليوم في الوادي فهي مقابر الأنباط الذين سكنوا هنا بعد ذلك بزمن طويل؛ أكثر من مئة مقبرة نُحتت في الصخر بصبر وزُيّنت بالأعمدة والأفاريز، وأعظمها قصر الفريد المنحوت في صخرة واحدة. ومهما بدت متينة فقد رحل أصحابها عن الدنيا منذ زمن بعيد.\n\n"
          "وفي السنة التاسعة للهجرة مرّ الجيش الإسلامي بهذا الوادي في طريقه إلى تبوك. وكان بعض الصحابة قد استقوا من آباره وعجنوا بمائها، فلما علم النبي صلى الله عليه وسلم أمرهم أن يُهريقوا الماء وأن يعلفوا العجين الإبل، وأن يستقوا من البئر التي كانت تردها الناقة. ثم قال لأصحابه: لا تدخلوا مساكن الذين ظلموا أنفسهم أن يصيبكم ما أصابهم إلا أن تكونوا باكين. ثم قنّع رأسه وأسرع براحلته حتى أجاز الوادي.\n\n"
          "هذا الهدي يبيّن ما تقوله لنا هذه الأرض؛ فهي ليست موضعًا للإعجاب والتنزّه، بل موضع للتفكر والاعتبار. فلم تُنجِ القوةُ ولا المال ولا البيوت المتينة قومًا أعرضوا عن نذير الله.\n\n"
          "وأنت تمرّ بهذا الوادي فليَرِقّ قلبك، ولنسأل ربنا أن يعيذنا من الكبر والجحود، وأن يجعلنا من عباده الشاكرين لنعمه.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Hicr (Semûd)", "https://islamansiklopedisi.org.tr/hicr--semud"),
      GeziKaynak("TDV İslâm Ansiklopedisi – Tebük Gazvesi", "https://islamansiklopedisi.org.tr/tebuk-gazvesi"),
      GeziKaynak("UNESCO – Al-Hijr Archaeological Site (Madâin Sâlih)", "https://whc.unesco.org/en/list/1293"),
      GeziKaynak("Wikipedia – Hegra (Mada'in Salih)", "https://en.wikipedia.org/wiki/Hegra_(Mada%27in_Salih)"),
      GeziKaynak("OpenStreetMap – الحجر (مدائن صالح) (way 849621507)", "https://www.openstreetmap.org/way/849621507"),
      GeziKaynak("OpenStreetMap – القصر الفريد (way 639423413)", "https://www.openstreetmap.org/way/639423413"),
      GeziKaynak("Quran.com – Hicr 15/80-84", "https://quran.com/15/80-84"),
      GeziKaynak("Quran.com – A'râf 7/73", "https://quran.com/7/73"),
    ],
  ),

  // ------------------------------------------------------------- CUHFE MİKATI
  GeziYeri(
    id: 'cuhfe',
    bolge: GeziBolge.diger,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Cuhfe Mikatı", en: "Miqat of al-Juhfah", ar: "ميقات الجحفة"),
    arapcaAd: L10nText.same("الجحفة"),
    altBaslik: L10nText(
      tr: "Şam, Mısır ve Türkiye yönünden gelenlerin mikatı; Rabiğ yakınındaki mikat mescidi",
      en: "The miqat for those coming from Syria, Egypt and Turkey; the miqat mosque near Rabigh",
      ar: "ميقات أهل الشام ومصر ومن جاء من جهة تركيا، ومسجد الميقات قرب رابغ",
    ),
    sehir: L10nText(tr: "Rabiğ (Mekke bölgesi)", en: "Rabigh (Makkah Province)", ar: "رابغ (منطقة مكة المكرمة)"),
    konum: LatLng(22.7053084, 39.146548), // OSM way 457494384 (Masjid Meeqat Al-Juhfah)
    uzaklik: L10nText(
      tr: "Mekke'ye ~160 km kuş uçuşu (karayoluyla ~185 km); Rabiğ'e ~16 km",
      en: "~160 km from Makkah in a straight line (~185 km by road); ~16 km from Rabigh",
      ar: "نحو 160 كم عن مكة خطًا مستقيمًا (نحو 185 كم بالطريق)، ونحو 16 كم عن رابغ",
    ),
    uygunSaat: L10nText(
      tr: "Kara yolculuğunda mikata varmadan önce",
      en: "When travelling by road, before reaching the miqat",
      ar: "في السفر البري قبل بلوغ الميقات",
    ),
    ziyaretSuresi: L10nText(
      tr: "30–45 dakika (gusül, ihram, iki rekât namaz)",
      en: "30–45 minutes (ghusl, ihram garments, two rak'ahs)",
      ar: "30–45 دقيقة (الاغتسال ولبس الإحرام وركعتان)",
    ),
    genel: L10nText(
      tr: "Cuhfe, Kızıldeniz kıyısına yaklaşık 9 km uzaklıkta, bugünkü Rabiğ şehrinin güneydoğusunda bulunan eski bir konak yeridir. Hz. Peygamber'in belirlediği beş mikattan biridir: Şam (Suriye) ve Mısır yönünden, dolayısıyla bu yönden gelen Türkiye ve Kuzey Afrika hacıları için ihrama girme sınırıdır. Hadiste bu mikatların, oranın halkı ve oradan geçen başka yerlerin halkı için geçerli olduğu bildirilmiştir.\n\n"
          "Bugün Cuhfe'de geniş bir mikat mescidi bulunur. Kara yoluyla bu güzergâhtan Mekke'ye giden hacılar burada gusleder, ihram örtülerini giyer, iki rekât namaz kılar ve niyet edip telbiyeye başlar. Türkiye'den gelen umrecilerin büyük kısmı ise uçakla doğrudan Cidde'ye indiği için bu mikata uğramaz; uçakları Cidde'ye inmeden önce mikat hizasından geçer. Bu yüzden onlar ihrama, uçak bu hizaya gelmeden girerler.",
      en: "Al-Juhfah is an old staging post about 9 km from the Red Sea coast, southeast of the present-day town of Rabigh. It is one of the five miqat points designated by the Prophet: the boundary for entering ihram for those coming from the direction of Syria (al-Sham) and Egypt, and therefore also for pilgrims from Turkey and North Africa who come that way. The hadith states that these miqats apply to their own people and to those of other lands who pass by them.\n\n"
          "Today there is a large miqat mosque at al-Juhfah. Pilgrims travelling by road along this route to Makkah perform ghusl here, put on the ihram garments, pray two rak'ahs, make their intention and begin the talbiyah. Most Umrah pilgrims from Turkey, however, fly directly to Jeddah and do not stop at this miqat; their plane crosses the line of the miqat before landing in Jeddah. They therefore enter ihram before the plane reaches that line.",
      ar: "الجحفة منزل قديم يقع على بعد نحو 9 كيلومترات من ساحل البحر الأحمر، جنوب شرق مدينة رابغ الحالية. وهي أحد المواقيت الخمسة التي وقّتها النبي صلى الله عليه وسلم، ميقاتُ من جاء من جهة الشام ومصر، ومن ثَمّ ميقات حجاج تركيا وشمال أفريقيا القادمين من هذا الطريق. وقد بيّن الحديث أن هذه المواقيت لأهلها ولمن أتى عليها من غير أهلها.\n\n"
          "ويوجد اليوم في الجحفة مسجد كبير للميقات، يغتسل فيه القادمون برًّا من هذا الطريق، ويلبسون ثياب الإحرام، ويصلون ركعتين، ثم ينوون ويبدؤون التلبية. أما أكثر المعتمرين القادمين من تركيا فيسافرون جوًّا إلى جدة مباشرة فلا يمرّون بالميقات نفسه، بل تعبر طائرتهم محاذاة الميقات قبل الهبوط في جدة، ولذلك يُحرمون قبل أن تبلغ الطائرة تلك المحاذاة.",
    ),
    tarihce: L10nText(
      tr: "Kaynaklara göre Cuhfe'nin eski adı Mehyea idi. Amâlika'nın yurtlarından çıkardığı Benî Akîl kabilesi buraya yerleşmiş; bir gece gelen sel çadırlarını ve hayvanlarını sürükleyip götürünce yere “Cuhfe” adı verilmiştir. Burası Mekke–Medine yolu üzerinde, Mısır ve Şam hacılarının konakladığı önemli bir duraktı.\n\n"
          "Abdullah b. Abbas'ın rivayetine göre Hz. Peygamber, Medine halkı için Zülhuleyfe'yi, Şam halkı için Cuhfe'yi, Necid halkı için Karnü'l-Menâzil'i, Yemen halkı için Yelemlem'i mikat olarak belirlemiştir (Buhârî, Hac, 7, nr. 1524). Hicretten sonra Medine'nin ağır sıtma iklimine karşı Hz. Peygamber'in, Medine'yi sevdirmesi ve hastalığını Cuhfe'ye nakletmesi için Allah'a dua ettiği de sahih kaynaklarda geçer (Buhârî, Fedâilü'l-Medîne, nr. 1889).\n\n"
          "Zamanla Cuhfe ıssızlaştı. 13. yüzyılda Yâkūt el-Hamevî burayı bir zamanlar cuma mescidi bulunan harap bir yer olarak anlatır. Bu dönemden sonra hacılar, Cuhfe'ye kuzeyden gelirken daha önce ulaşılan kıyıdaki Rabiğ'den ihrama girmeye başladı. Mikattan önce ihrama girmek caiz olduğu için Rabiğ uzun süre bu yönden gelenlerin fiilî ihram yeri oldu.\n\n"
          "Günümüzde Cuhfe'deki tarihî alanda bir mikat mescidi inşa edilmiş ve kara yolcuları için yeniden kullanılır hâle gelmiştir. TDV İslâm Ansiklopedisi, Medine–Mekke ve Cidde–Mekke otoyollarının Rabiğ ve Cuhfe'nin eski önemini azalttığını kaydeder.",
      en: "According to the sources, al-Juhfah was formerly called Mahya'ah. The tribe of Banu Aqil, driven from their lands by the Amalekites, settled here; when a flood one night swept away their tents and animals, the place came to be called “al-Juhfah”. It was an important stop on the Makkah–Madinah road where pilgrims from Egypt and Syria halted.\n\n"
          "According to the narration of Abdullah ibn Abbas, the Prophet designated Dhul-Hulayfah as the miqat for the people of Madinah, al-Juhfah for the people of al-Sham, Qarn al-Manazil for the people of Najd and Yalamlam for the people of Yemen (al-Bukhari, al-Hajj, 7, no. 1524). The authentic sources also record that after the Hijrah, because of Madinah's harsh fever climate, the Prophet prayed to Allah to make Madinah beloved to them and to transfer its fever to al-Juhfah (al-Bukhari, Fada'il al-Madinah, no. 1889).\n\n"
          "Over time al-Juhfah became deserted. In the 13th century Yaqut al-Hamawi described it as a ruined place that had once had a Friday mosque. After this period pilgrims began to enter ihram at Rabigh on the coast, which those coming from the north reach before al-Juhfah. Since entering ihram before the miqat is permissible, Rabigh served for a long time as the practical place of ihram for those coming from this direction.\n\n"
          "In modern times a miqat mosque has been built at the historic site of al-Juhfah, and it is once again used by road travellers. The TDV Encyclopaedia of Islam notes that the Madinah–Makkah and Jeddah–Makkah highways have reduced the former importance of Rabigh and al-Juhfah.",
      ar: "تذكر المصادر أن اسم الجحفة القديم مَهْيَعة، وأن بني عُقيل نزلوها بعد أن أخرجتهم العماليق من ديارهم، فجاءهم سيل ذات ليلة فاجتحف خيامهم وأنعامهم، فسُمّيت الجحفة. وكانت منزلًا مهمًا على طريق مكة والمدينة ينزله حجاج مصر والشام.\n\n"
          "وعن عبد الله بن عباس رضي الله عنهما أن النبي صلى الله عليه وسلم وقّت لأهل المدينة ذا الحليفة، ولأهل الشام الجحفة، ولأهل نجد قرن المنازل، ولأهل اليمن يلملم (البخاري، الحج، 7، رقم 1524). وثبت في الصحيح أيضًا أن النبي صلى الله عليه وسلم دعا بعد الهجرة، لما أصاب أصحابه من حُمّى المدينة، أن يحبّب الله إليهم المدينة وأن ينقل حُمّاها إلى الجحفة (البخاري، فضائل المدينة، رقم 1889).\n\n"
          "ثم خربت الجحفة مع الزمن، ووصفها ياقوت الحموي في القرن الثالث عشر الميلادي بأنها موضع خراب كان فيه مسجد جامع. وصار الحجاج بعد ذلك يُحرمون من رابغ على الساحل، وهي قبل الجحفة للقادم من الشمال. ولأن الإحرام قبل الميقات جائز، بقيت رابغ زمنًا طويلًا موضع الإحرام الفعلي للقادمين من هذه الجهة.\n\n"
          "وفي العصر الحديث بُني مسجد للميقات في موضع الجحفة التاريخي، فعاد الناس يُحرمون منه في السفر البري. وتذكر الموسوعة الإسلامية لوقف الديانة التركي (TDV) أن طريقي المدينة–مكة وجدة–مكة السريعين قلّلا من أهمية رابغ والجحفة القديمة.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "İslâm öncesi", en: "Before Islam", ar: "قبل الإسلام"),
        metin: L10nText(
          tr: "Mehyea adıyla bilinen yer, bir sel felaketinden sonra Cuhfe diye anılmaya başlandı.",
          en: "The place known as Mahya'ah came to be called al-Juhfah after a devastating flood.",
          ar: "صار الموضع المعروف بمهيعة يُسمّى الجحفة بعد سيل جارف.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hicretten sonra", en: "After the Hijrah", ar: "بعد الهجرة"),
        metin: L10nText(
          tr: "Hz. Peygamber Medine'nin sıtmasının Cuhfe'ye nakli için dua etti.",
          en: "The Prophet prayed for the fever of Madinah to be transferred to al-Juhfah.",
          ar: "دعا النبي صلى الله عليه وسلم أن تُنقل حُمّى المدينة إلى الجحفة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Asr-ı saadet", en: "The Prophet's lifetime", ar: "العهد النبوي"),
        metin: L10nText(
          tr: "Hz. Peygamber Cuhfe'yi Şam yönünden gelenlerin mikatı olarak belirledi.",
          en: "The Prophet designated al-Juhfah as the miqat for those coming from al-Sham.",
          ar: "وقّت النبي صلى الله عليه وسلم الجحفة ميقاتًا لأهل الشام.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "13. yüzyıl", en: "13th century", ar: "القرن الثالث عشر الميلادي"),
        metin: L10nText(
          tr: "Yâkūt el-Hamevî Cuhfe'yi harap bir yer olarak anlattı; hacılar Rabiğ'den ihrama girmeye başladı.",
          en: "Yaqut al-Hamawi described al-Juhfah as a ruin; pilgrims began entering ihram at Rabigh.",
          ar: "وصف ياقوت الحموي الجحفة بأنها خراب، وصار الحجاج يحرمون من رابغ.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Günümüz", en: "Today", ar: "اليوم"),
        metin: L10nText(
          tr: "Cuhfe'de yapılan mikat mescidi kara yolcularına hizmet veriyor.",
          en: "The miqat mosque built at al-Juhfah serves road travellers.",
          ar: "يخدم مسجد الميقات المبني في الجحفة المسافرين برًّا.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Mikatlar, Allah'ın Beyt'ine yönelen kulun dünyevî hâllerini geride bırakıp ihramla yeni bir hâle büründüğü sınırlardır. Hz. Peygamber'in bizzat belirlediği bu sınırlar, hac ve umreye niyet eden herkesin, hangi yönden gelirse gelsin, Harem'e belli bir edep ve hazırlıkla yaklaşmasını sağlar.\n\n"
          "Cuhfe'nin özel bir fazileti rivayet edilmez; önemi, Hz. Peygamber'in belirlediği beş mikattan biri olmasından gelir. Asırlar boyunca Mısır'dan, Şam'dan, Anadolu'dan ve Kuzey Afrika'dan gelen sayısız hacı burada ya da hizasında telbiyeye başlamıştır. Hac ve umreyi Allah için tamamlamayı emreden ayet (Bakara 2/196), bu yolculuğun samimiyetini hatırlatır.",
      en: "The miqats are the boundaries at which the servant heading for Allah's House leaves worldly states behind and enters a new state through ihram. These boundaries, set by the Prophet himself, ensure that everyone intending Hajj or Umrah, from whatever direction, approaches the Haram with a certain dignity and preparation.\n\n"
          "No special virtue is narrated for al-Juhfah itself; its importance comes from being one of the five miqats designated by the Prophet. Over the centuries countless pilgrims from Egypt, Syria, Anatolia and North Africa began their talbiyah here or in line with it. The verse commanding the completion of Hajj and Umrah for Allah (al-Baqarah 2:196) is a reminder of the sincerity this journey requires.",
      ar: "المواقيت حدود يترك عندها العبد القاصد بيت الله أحوال الدنيا، ويدخل في حال جديدة بالإحرام. وقد وقّتها النبي صلى الله عليه وسلم بنفسه ليقبل كل من أراد الحج أو العمرة، من أي جهة جاء، على الحرم بأدب واستعداد.\n\n"
          "ولم يُروَ للجحفة فضل خاص، وإنما أهميتها في كونها أحد المواقيت الخمسة التي وقّتها النبي صلى الله عليه وسلم. وعلى مرّ القرون بدأ فيها أو في محاذاتها التلبيةَ حجاجٌ لا يُحصَون من مصر والشام والأناضول وشمال أفريقيا. والآية التي تأمر بإتمام الحج والعمرة لله (البقرة 2/196) تذكّر بالإخلاص الذي تقتضيه هذه الرحلة.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "وَأَتِمُّوا۟ ٱلْحَجَّ وَٱلْعُمْرَةَ لِلَّهِ",
        meal: L10nText(
          tr: "Haccı ve umreyi Allah için tamamlayın.",
          en: "Complete the Hajj and the Umrah for Allah.",
          ar: "أمرٌ بإتمام الحج والعمرة خالصين لله تعالى.",
        ),
        kaynak: L10nText(tr: "Bakara 2/196 (ayetin başı)", en: "Al-Baqarah 2:196 (opening)", ar: "البقرة 2/196 (أول الآية)"),
      ),
      GeziAlinti(
        arapca: "إِنَّ النَّبِيَّ صلى الله عليه وسلم وَقَّتَ لأَهْلِ الْمَدِينَةِ ذَا الْحُلَيْفَةِ، وَلأَهْلِ الشَّأْمِ الْجُحْفَةَ، وَلأَهْلِ نَجْدٍ قَرْنَ الْمَنَازِلِ، وَلأَهْلِ الْيَمَنِ يَلَمْلَمَ، هُنَّ لَهُنَّ وَلِمَنْ أَتَى عَلَيْهِنَّ مِنْ غَيْرِهِنَّ، مِمَّنْ أَرَادَ الْحَجَّ وَالْعُمْرَةَ",
        meal: L10nText(
          tr: "İbn Abbas şöyle demiştir: Hz. Peygamber Medine halkı için Zülhuleyfe'yi, Şam halkı için Cuhfe'yi, Necid halkı için Karnü'l-Menâzil'i, Yemen halkı için Yelemlem'i mikat olarak belirledi. Bu mikatlar, hem oranın halkı hem de hac ve umre niyetiyle başka yerlerden gelip oralardan geçenler içindir.",
          en: "Ibn Abbas said: The Prophet designated Dhul-Hulayfah for the people of Madinah, al-Juhfah for the people of al-Sham, Qarn al-Manazil for the people of Najd and Yalamlam for the people of Yemen. These are for their own people and for those of other lands who pass by them intending Hajj or Umrah.",
          ar: "رواه ابن عباس رضي الله عنهما في بيان المواقيت المكانية للحج والعمرة.",
        ),
        kaynak: L10nText(tr: "Buhârî, Hac, 7 (nr. 1524)", en: "al-Bukhari, al-Hajj, 7 (no. 1524)", ar: "البخاري، الحج، 7 (رقم 1524)"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Kara yoluyla geliyorsanız mikata varmadan önce tırnak, bıyık ve vücut temizliğini yapın; mescitte gusledip ihram örtülerini giyin.",
        en: "If you are travelling by road, trim your nails and moustache and attend to personal hygiene before reaching the miqat; perform ghusl at the mosque and put on the ihram garments.",
        ar: "إن كنت مسافرًا برًّا فتعاهد نظافتك من قصّ الأظفار والشارب قبل بلوغ الميقات، واغتسل في المسجد والبس ثياب الإحرام.",
      ),
      L10nText(
        tr: "Kerahat vakti değilse iki rekât ihram namazı kılın, ardından umreye niyet edip telbiyeye başlayın.",
        en: "If it is not a disliked time for prayer, pray two rak'ahs, then make the intention for Umrah and begin the talbiyah.",
        ar: "إن لم يكن وقت كراهة فصلِّ ركعتين، ثم انوِ العمرة وابدأ التلبية.",
      ),
      L10nText(
        tr: "Uçakla doğrudan Cidde'ye gidiyorsanız ihram örtülerini evde ya da havalimanında giyin; niyet ve telbiyeyi uçak mikat hizasına gelmeden yapın. Kabin ekibinin anonsunu bekleyip kaçırmamak için birkaç dakika önce niyet etmek daha ihtiyatlıdır.",
        en: "If you are flying directly to Jeddah, put on the ihram garments at home or at the airport, and make the intention and talbiyah before the plane reaches the line of the miqat. It is more cautious to make the intention a few minutes early rather than risk missing the cabin announcement.",
        ar: "إن كنت مسافرًا جوًّا إلى جدة مباشرة فالبس ثياب الإحرام في بيتك أو في المطار، وانوِ ولبِّ قبل أن تحاذي الطائرة الميقات، والأحوط أن تنوي قبل ذلك بدقائق حتى لا يفوتك إعلان طاقم الطائرة.",
      ),
      L10nText(
        tr: "Cidde, dışarıdan gelenler için mikat değildir; ihramı Cidde'ye inene kadar ertelemeyin. Mikatı ihramsız geçtiyseniz kafilenizin din görevlisine danışın.",
        en: "Jeddah is not a miqat for those coming from outside; do not postpone ihram until you land in Jeddah. If you have passed the miqat without ihram, consult your group's religious guide.",
        ar: "جدة ليست ميقاتًا للقادمين من خارجها، فلا تؤخر الإحرام إلى الهبوط فيها. ومن جاوز الميقات بلا إحرام فليسأل مرشد مجموعته الديني.",
      ),
      L10nText(
        tr: "Önce Medine'ye gidip oradan Mekke'ye geçecekseniz mikatınız Cuhfe değil, Medine'deki Zülhuleyfe (Âbâr-ı Ali) olur.",
        en: "If you go to Madinah first and travel on to Makkah from there, your miqat is not al-Juhfah but Dhul-Hulayfah (Abyar Ali) in Madinah.",
        ar: "إن ذهبت إلى المدينة أولًا ثم توجهت منها إلى مكة فميقاتك ذو الحليفة (أبيار علي) لا الجحفة.",
      ),
      L10nText(
        tr: "İhrama girdikten sonra ihram yasaklarına dikkat edin ve yolculuk boyunca telbiyeyi sık sık tekrarlayın.",
        en: "After entering ihram, observe its prohibitions and repeat the talbiyah often throughout the journey.",
        ar: "بعد الإحرام احذر محظوراته، وأكثر من التلبية طوال الطريق.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Cuhfe mikat mescidinde genellikle abdest ve gusül alma yerleri ile ihram giyinme bölümleri bulunur; açık olma saatleri ve imkânlar değişebilir. Mescit Rabiğ'in güneydoğusundadır ve ana otoyoldan sapmayı gerektirebilir; otobüs şoförü ve rehberinizle önceden konuşun. Ayrıntılı ihram hükümleri için Diyanet'in hac ve umre rehberine ve kafile din görevlinize başvurun.",
      en: "The al-Juhfah miqat mosque usually has facilities for wudu and ghusl and areas for changing into ihram; opening hours and facilities may change. The mosque lies southeast of Rabigh and may require leaving the main highway; discuss this in advance with your bus driver and guide. For detailed rulings on ihram, consult a reliable Hajj and Umrah guide and your group's religious guide.",
      ar: "يضم مسجد ميقات الجحفة عادةً أماكن للوضوء والاغتسال ولبس الإحرام، وقد تتغير أوقات فتحه وخدماته. ويقع المسجد جنوب شرق رابغ وقد يتطلب الخروج من الطريق السريع، فاتفق مع سائق الحافلة ومرشدك مسبقًا. ولأحكام الإحرام المفصّلة ارجع إلى دليل موثوق للحج والعمرة وإلى المرشد الديني لمجموعتك.",
    ),
    anlatim: L10nText(
      tr: "Kızıldeniz kıyısına yakın, Rabiğ şehrinin biraz güneydoğusunda, asırlardır hacıların yolunun düştüğü bir yer var: Cuhfe. Buranın eski adı Mehyea idi. Rivayete göre bir gece gelen sel, burada yaşayan kabilenin çadırlarını ve hayvanlarını sürükleyip götürdü. O günden sonra bu yere, sürükleyip götüren anlamını hatırlatan Cuhfe adı verildi.\n\n"
          "Cuhfe'yi önemli kılan, Hz. Peygamber'in onu bir mikat olarak belirlemesidir. Abdullah bin Abbas anlatır: Hz. Peygamber Medine halkı için Zülhuleyfe'yi, Şam halkı için Cuhfe'yi, Necid halkı için Karnü'l-Menâzil'i, Yemen halkı için de Yelemlem'i mikat olarak belirledi. Bu mikatlar hem oranın halkı hem de hac ya da umre niyetiyle oradan geçen herkes içindir. Böylece Mısır'dan, Şam'dan ve Anadolu'dan gelen hacıların ihram kapısı burası oldu.\n\n"
          "Asırlar içinde Cuhfe ıssızlaştı. Kuzeyden gelen hacılar, Cuhfe'ye varmadan önce ulaştıkları kıyıdaki Rabiğ'de ihrama girmeye başladılar. Mikattan önce ihrama girmek caiz olduğu için bu uzun süre böyle devam etti. Bugün ise Cuhfe'de geniş bir mikat mescidi yükseliyor ve kara yoluyla gelen hacılar burada ihrama giriyor.\n\n"
          "Mikat, sıradan bir yol tabelası değildir. Burada insan gündelik elbisesini çıkarır, kefeni andıran iki parça beyaz örtüye bürünür. Zengin ile fakir, yönetici ile işçi aynı kıyafete girer. Ardından kalpten niyet edilir ve dile o eşsiz söz gelir: Lebbeyk Allahümme lebbeyk. Buyur Allahım, emrine geldim.\n\n"
          "Türkiye'den gelen umrecilerin çoğu bu mescide uğramaz; uçakları Cidde'ye inmeden önce bu mikatın hizasından geçer. Bu yüzden onlar ihram örtülerini evde ya da havalimanında giyer, uçak mikat hizasına gelmeden niyet edip telbiyeye başlarlar. Cidde, dışarıdan gelenler için mikat değildir.\n\n"
          "İster bu mescitte, ister gökyüzünde, bu sınırı geçerken kalbinizi de hazırlayın. Kur'an'ın emrettiği gibi, haccı ve umreyi yalnız Allah için tamamlamaya niyet edin ve telbiyenizi samimiyetle yükseltin.",
      en: "Near the Red Sea coast, a little southeast of the town of Rabigh, there is a place that pilgrims have passed for centuries: al-Juhfah. Its old name was Mahya'ah. According to tradition, a flood that came one night swept away the tents and animals of the tribe living here. From that day on the place was called al-Juhfah, a name that recalls something swept away.\n\n"
          "What makes al-Juhfah important is that the Prophet designated it as a miqat. Abdullah ibn Abbas relates that the Prophet designated Dhul-Hulayfah for the people of Madinah, al-Juhfah for the people of al-Sham, Qarn al-Manazil for the people of Najd and Yalamlam for the people of Yemen. These miqats are for their own people and for everyone who passes by them intending Hajj or Umrah. So this became the gateway of ihram for pilgrims coming from Egypt, Syria and Anatolia.\n\n"
          "Over the centuries al-Juhfah became deserted. Pilgrims coming from the north began to enter ihram at Rabigh on the coast, which they reached before al-Juhfah. Because it is permissible to enter ihram before the miqat, this continued for a long time. Today a large miqat mosque stands at al-Juhfah, and pilgrims travelling by road enter ihram here.\n\n"
          "A miqat is not an ordinary road sign. Here a person takes off everyday clothes and wraps themselves in two pieces of white cloth that recall the burial shroud. Rich and poor, ruler and worker put on the same garments. Then the intention is made in the heart, and those unique words come to the tongue: Labbayk Allahumma labbayk. Here I am, O Allah, at Your service.\n\n"
          "Most Umrah pilgrims from Turkey do not stop at this mosque; their plane crosses the line of this miqat before landing in Jeddah. So they put on the ihram garments at home or at the airport, and make their intention and begin the talbiyah before the plane reaches the miqat line. Jeddah is not a miqat for those coming from outside.\n\n"
          "Whether at this mosque or high in the sky, prepare your heart as you cross this boundary. As the Qur'an commands, intend to complete the Hajj and the Umrah for Allah alone, and raise your talbiyah with sincerity.",
      ar: "قرب ساحل البحر الأحمر، إلى الجنوب الشرقي قليلًا من مدينة رابغ، موضعٌ مرّ به الحجاج منذ قرون، هو الجحفة. وكان اسمها القديم مهيعة، ويُروى أن سيلًا جاء ذات ليلة فاجتحف خيام القبيلة التي كانت تسكنها وأنعامها، فسُمّيت من يومئذ الجحفة.\n\n"
          "وما جعل للجحفة شأنًا أن النبي صلى الله عليه وسلم وقّتها ميقاتًا. يروي عبد الله بن عباس أن النبي صلى الله عليه وسلم وقّت لأهل المدينة ذا الحليفة، ولأهل الشام الجحفة، ولأهل نجد قرن المنازل، ولأهل اليمن يلملم، وقال: هن لهن ولمن أتى عليهن من غير أهلهن ممن أراد الحج والعمرة. فصارت باب الإحرام للحجاج القادمين من مصر والشام والأناضول.\n\n"
          "ومع مرور القرون خربت الجحفة، فصار القادمون من الشمال يحرمون من رابغ على الساحل، وهم يبلغونها قبل الجحفة، ولأن الإحرام قبل الميقات جائز استمر ذلك زمنًا طويلًا. واليوم يقوم في الجحفة مسجد كبير للميقات يحرم منه المسافرون برًّا.\n\n"
          "الميقات ليس لوحة طريق عادية؛ ففيه يخلع المرء ثيابه المعتادة ويلتفّ بقطعتين بيضاوين تذكّران بالكفن، ويستوي في هذا اللباس الغني والفقير والأمير والعامل. ثم ينوي بقلبه، ويجري على لسانه ذلك النداء الفريد: لبيك اللهم لبيك.\n\n"
          "وأكثر المعتمرين القادمين من تركيا لا يمرون بهذا المسجد، لأن طائرتهم تحاذي هذا الميقات قبل أن تهبط في جدة، فيلبسون ثياب الإحرام في بيوتهم أو في المطار، وينوون ويلبّون قبل أن تحاذي الطائرة الميقات. وجدة ليست ميقاتًا للقادمين من خارجها.\n\n"
          "وسواء كنت في هذا المسجد أو في السماء، فهيّئ قلبك وأنت تعبر هذا الحد، وانوِ أن تتم الحج والعمرة لله وحده كما أمر القرآن، وارفع تلبيتك بإخلاص.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Cuhfe", "https://islamansiklopedisi.org.tr/cuhfe"),
      GeziKaynak("Vikipedi (Arapça) – الجحفة", "https://ar.wikipedia.org/wiki/%D8%A7%D9%84%D8%AC%D8%AD%D9%81%D8%A9"),
      GeziKaynak("OpenStreetMap – Masjid Meeqat Al-Juhfah (way 457494384)", "https://www.openstreetmap.org/way/457494384"),
      GeziKaynak("OpenStreetMap – ميقات الجحفة (way 456361985)", "https://www.openstreetmap.org/way/456361985"),
      GeziKaynak("Quran.com – Bakara 2/196", "https://quran.com/2/196"),
    ],
  ),

  // ------------------------------------------------------------------ TEBÜK
  GeziYeri(
    id: 'tebuk',
    bolge: GeziBolge.diger,
    tur: GeziTur.mescid,
    ad: L10nText(
      tr: "Tebük: Mescid-i Tevbe ve Tebük Kalesi",
      en: "Tabuk: Masjid al-Tawbah and Tabuk Castle",
      ar: "تبوك: مسجد التوبة وقلعة تبوك",
    ),
    arapcaAd: L10nText.same("تبوك"),
    altBaslik: L10nText(
      tr: "Hz. Peygamber'in son seferi olan Tebük Gazvesi'nin şehri",
      en: "The city of the Tabuk expedition, the Prophet's last campaign",
      ar: "مدينة غزوة تبوك، آخر غزوات النبي صلى الله عليه وسلم",
    ),
    sehir: L10nText(tr: "Tebük", en: "Tabuk", ar: "تبوك"),
    konum: LatLng(28.3840231, 36.5576568), // OSM way 848018918 (مسجد التوبة)
    uzaklik: L10nText(
      tr: "Medine'ye ~530 km kuş uçuşu (eski yol üzerinden ~700 km, kuzeybatı)",
      en: "~530 km from Madinah in a straight line (~700 km by the old route, to the northwest)",
      ar: "نحو 530 كم عن المدينة المنورة خطًا مستقيمًا (نحو 700 كم بالطريق القديم، شمالًا غربيًا)",
    ),
    uygunSaat: L10nText(
      tr: "Namaz vakitlerinde (mescit) ve gündüz (kale)",
      en: "At prayer times (mosque) and in the daytime (castle)",
      ar: "في أوقات الصلاة (المسجد) وفي النهار (القلعة)",
    ),
    ziyaretSuresi: L10nText(tr: "1–1,5 saat (şehir içinde)", en: "1–1.5 hours (within the city)", ar: "ساعة إلى ساعة ونصف (داخل المدينة)"),
    genel: L10nText(
      tr: "Tebük, Suudi Arabistan'ın kuzeybatısında, Ürdün sınırına yakın, Medine–Şam ticaret yolu üzerinde kurulmuş bir şehirdir. Adını İslâm tarihine, Hicretin 9. yılında Hz. Peygamber'in Bizans'a karşı çıktığı ve bizzat katıldığı son sefer olan Tebük Gazvesi ile yazdırmıştır.\n\n"
          "Şehrin eski merkezinde yan yana duran iki yapı ziyaretçilerin ilgisini çeker. Mescid-i Tevbe (Mescidü't-Tevbe), yerel gelenekte Hz. Peygamber'in Tebük'te kaldığı günlerde namaz kıldığı yere yapıldığı kabul edilen bir camidir; halk arasında “Mescidü'r-Resûl” diye de anılır. Hemen yakınındaki Tebük Kalesi ise eski hac yolunun konaklarından biridir; Osmanlı döneminde yenilenmiştir ve bugün küçük bir müze olarak ziyaret edilir.",
      en: "Tabuk is a city in the northwest of Saudi Arabia, near the Jordanian border, on the old Madinah–Syria trade route. It entered Islamic history through the Tabuk expedition of the ninth year of the Hijrah, the last campaign the Prophet led in person, against the Byzantines.\n\n"
          "Two buildings standing side by side in the old centre attract visitors. Masjid al-Tawbah is a mosque which local tradition holds was built where the Prophet prayed during his stay at Tabuk; locals also call it “the Prophet's Mosque”. Close by stands Tabuk Castle, one of the stations of the old pilgrim road; it was renovated in the Ottoman period and is now visited as a small museum.",
      ar: "تبوك مدينة في شمال غرب المملكة العربية السعودية قرب الحدود الأردنية، على طريق التجارة القديم بين المدينة والشام. ودخلت تاريخ الإسلام بغزوة تبوك في السنة التاسعة للهجرة، وهي آخر غزوة خرج فيها النبي صلى الله عليه وسلم بنفسه، وكانت إلى الروم.\n\n"
          "ويستوقف الزائرَ في وسطها القديم بناءان متجاوران: مسجد التوبة، الذي يقول أهل البلد إنه بُني في الموضع الذي صلى فيه النبي صلى الله عليه وسلم أيام مقامه بتبوك، ويسمّيه بعضهم «مسجد الرسول»؛ وقلعة تبوك القريبة منه، وهي إحدى محطات طريق الحج القديم، جُدّدت في العهد العثماني وتُزار اليوم متحفًا صغيرًا.",
    ),
    tarihce: L10nText(
      tr: "Hicretin 9. yılının recep ayında (Ekim 630) Bizans'ın Arabistan'ın kuzeyinde müslümanlara karşı hazırlık yaptığı haberi üzerine Hz. Peygamber sefer ilan etti. Kıtlık ve şiddetli sıcak günlerine denk gelen bu sefere “Ceyşü'l-usre” (zorluk ordusu) denildi. Hz. Osman 300 deve ve 1000 dinarla ordunun önemli bir kısmını donattı; Hz. Ebû Bekir bütün malını, Hz. Ömer malının yarısını getirdi. Yaklaşık 30.000 kişilik ordu Tebük'e doğru yola çıktı.\n\n"
          "Yolda Semûd kavminin yurdu Hicr'den geçildi. Tebük'e ulaşan ordu burada on beş–yirmi gün kaldı; ancak Bizans ordusu karşılarına çıkmadı ve savaş olmadı. Bu süre içinde Eyle (Akabe) piskoposu Yuhannâ b. Rü'be ile Cerbâ, Ezruh ve Maknâ halkı cizye ödemeyi kabul ederek antlaşma yaptı; Hz. Peygamber onlara can ve mal güvencesi veren ahidnâmeler yazdırdı. Hâlid b. Velîd 400 süvariyle Dûmetülcendel'e gönderildi ve oranın hükümdarı Ükeydir de antlaşma yaptı.\n\n"
          "Müslim'in Sahîh'inde Muâz b. Cebel'in anlattığına göre ordu Tebük pınarına vardığında pınar çok az su veriyordu. Hz. Peygamber bu sudan elini yüzünü yıkayıp suyu pınara geri döktürdü; pınar bol su vermeye başladı ve herkes ihtiyacını karşıladı. Hz. Peygamber de “Ey Muâz! Ömrün uzun olursa buranın bahçelerle dolduğunu göreceksin” buyurdu (Müslim, Fedâil, 10, nr. 706).\n\n"
          "Ordu yaklaşık elli gün süren seferden ramazan ayında (Aralık 630) Medine'ye döndü. Mazeretsiz olarak sefere katılmayan üç sahâbî, Kâ'b b. Mâlik, Mürâre b. Rebî' ve Hilâl b. Ümeyye, elli gün boyunca kimsenin onlarla konuşmadığı bir sınavdan geçti; sonunda tövbelerinin kabul edildiği Tevbe sûresinin 117-118. ayetlerinde bildirildi (Buhârî, Meğâzî, nr. 4418; Müslim, Tevbe, nr. 2769).\n\n"
          "Kaynaklara göre Tebük'teki mescit ilk olarak Ömer b. Abdülazîz'in Medine valiliği döneminde (706–712) taş ve kerpiçle yapılmış, Osmanlılar zamanında 1062 (1651-52) yılında ve Hicaz Demiryolu döneminde yenilenmiştir. Bugünkü bina, Kral Faysal'ın emriyle 1393–1395 (1973–1975) yıllarında Mescid-i Nebevî'nin üslubunda yeniden inşa edilmiştir. Bazı tarihçiler ve âlimler, mescidin doğrudan Hz. Peygamber'e nispet edilmesini kesin görmez. Yanındaki kalenin ise Kanûnî Sultan Süleyman döneminde, 967 (1559-60) yılında yenilendiği kaydedilir.",
      en: "In Rajab of the ninth year of the Hijrah (October 630), on hearing that the Byzantines were preparing against the Muslims in northern Arabia, the Prophet announced a campaign. Because it coincided with a time of scarcity and intense heat, it was called “Jaysh al-Usrah”, the army of hardship. Uthman equipped a large part of the army with 300 camels and 1,000 dinars; Abu Bakr brought all his wealth and Umar half of his. An army of about 30,000 set out for Tabuk.\n\n"
          "On the way they passed through al-Hijr, the land of Thamud. The army stayed at Tabuk for fifteen to twenty days, but the Byzantine army did not come out to meet them and there was no battle. During this time Yuhanna ibn Ru'bah, the bishop of Aylah (Aqaba), and the people of Jarba, Adhruh and Maqna made treaties agreeing to pay the jizyah, and the Prophet had covenants written guaranteeing the safety of their lives and property. Khalid ibn al-Walid was sent to Dumat al-Jandal with 400 horsemen, and its ruler Ukaydir also made a treaty.\n\n"
          "In Sahih Muslim, Mu'adh ibn Jabal relates that when the army reached the spring of Tabuk it was yielding very little water. The Prophet washed his hands and face with some of its water and had it poured back into the spring; the spring began to flow abundantly and everyone drew what they needed. The Prophet then said: “O Mu'adh, if you live long, you will see this place filled with gardens” (Muslim, al-Fada'il, 10, no. 706).\n\n"
          "After a campaign of about fifty days the army returned to Madinah in Ramadan (December 630). Three Companions who had stayed behind without excuse, Ka'b ibn Malik, Murarah ibn al-Rabi' and Hilal ibn Umayyah, went through a trial of fifty days during which no one spoke to them; finally the acceptance of their repentance was revealed in verses 117-118 of Surah al-Tawbah (al-Bukhari, al-Maghazi, no. 4418; Muslim, al-Tawbah, no. 2769).\n\n"
          "According to the sources, the mosque at Tabuk was first built of stone and mud brick during Umar ibn Abd al-Aziz's governorship of Madinah (706–712), and was renewed in Ottoman times in 1062 AH (1651-52) and in the period of the Hejaz Railway. The present building was rebuilt in the style of the Prophet's Mosque by order of King Faisal in 1393–1395 AH (1973–1975). Some historians and scholars do not regard the direct attribution of the mosque to the Prophet as certain. The castle beside it is recorded to have been renewed in the reign of Suleiman the Magnificent in 967 AH (1559-60).",
      ar: "في رجب من السنة التاسعة للهجرة (أكتوبر 630م) بلغ النبيَّ صلى الله عليه وسلم أن الروم يتجهزون لقتال المسلمين في شمال الجزيرة، فأعلن الخروج. ولأن ذلك وافق زمن عسرة وحر شديد سُمّي الجيش «جيش العسرة». وجهّز عثمان بن عفان جانبًا كبيرًا منه بثلاثمئة بعير وألف دينار، وجاء أبو بكر بماله كله، وعمر بنصف ماله. وخرج جيش من نحو ثلاثين ألفًا إلى تبوك.\n\n"
          "ومرّ الجيش في طريقه بالحجر ديار ثمود. وأقام بتبوك خمس عشرة إلى عشرين ليلة، فلم يخرج إليه الروم ولم يقع قتال. وفي أثناء ذلك صالح يوحنا بن رؤبة أسقف أيلة (العقبة) وأهل جرباء وأذرح ومقنا على الجزية، وكتب لهم النبي صلى الله عليه وسلم كتب أمان على أنفسهم وأموالهم. وبعث خالد بن الوليد في أربعمئة فارس إلى دومة الجندل، فصالح صاحبها أكيدر.\n\n"
          "وفي صحيح مسلم عن معاذ بن جبل أن الجيش لما بلغ عين تبوك كانت تبضّ بشيء قليل من الماء، فغسل النبي صلى الله عليه وسلم فيه يديه ووجهه ثم أعاده فيها، فجرت العين بماء غزير حتى استقى الناس، ثم قال: «يوشك يا معاذ إن طالت بك حياة أن ترى ما هاهنا قد ملئ جنانًا» (مسلم، الفضائل، 10، رقم 706).\n\n"
          "وعاد الجيش إلى المدينة في رمضان (ديسمبر 630م) بعد غزوة استغرقت نحو خمسين يومًا. وابتُلي ثلاثة من الصحابة تخلّفوا بلا عذر، هم كعب بن مالك ومرارة بن الربيع وهلال بن أمية، بخمسين ليلة لا يكلّمهم أحد، ثم نزلت توبتهم في الآيتين 117-118 من سورة التوبة (البخاري، المغازي، رقم 4418؛ مسلم، التوبة، رقم 2769).\n\n"
          "وتذكر المصادر أن مسجد تبوك بُني أول مرة بالحجارة واللبن في ولاية عمر بن عبد العزيز على المدينة (706–712م)، ثم جُدّد في العهد العثماني سنة 1062هـ وفي زمن سكة حديد الحجاز. وأُعيد بناؤه على طراز المسجد النبوي بأمر الملك فيصل بين سنتي 1393 و1395هـ. ولا يرى بعض المؤرخين والعلماء نسبة المسجد إلى النبي صلى الله عليه وسلم نسبة مقطوعًا بها. أما القلعة المجاورة فيُذكر أنها جُدّدت في عهد السلطان سليمان القانوني سنة 967هـ.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Recep 9 / Ekim 630", en: "Rajab 9 AH / October 630", ar: "رجب 9هـ / أكتوبر 630م"),
        metin: L10nText(
          tr: "Yaklaşık 30.000 kişilik “zorluk ordusu” Medine'den Tebük'e doğru yola çıktı.",
          en: "The “army of hardship”, about 30,000 strong, set out from Madinah for Tabuk.",
          ar: "خرج «جيش العسرة» في نحو ثلاثين ألفًا من المدينة إلى تبوك.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Yolda", en: "On the way", ar: "في الطريق"),
        metin: L10nText(
          tr: "Ordu Hicr'den geçti; Hz. Peygamber oranın suyunun kullanılmamasını emretti.",
          en: "The army passed through al-Hijr; the Prophet ordered that its water not be used.",
          ar: "مرّ الجيش بالحجر، وأمر النبي صلى الله عليه وسلم ألا يُستعمل ماؤه.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Tebük'te 15–20 gün", en: "15–20 days at Tabuk", ar: "15–20 يومًا في تبوك"),
        metin: L10nText(
          tr: "Savaş olmadı; Eyle, Cerbâ, Ezruh ve Maknâ ile antlaşmalar yapıldı, Hâlid b. Velîd Dûmetülcendel'e gönderildi.",
          en: "There was no battle; treaties were made with Aylah, Jarba, Adhruh and Maqna, and Khalid ibn al-Walid was sent to Dumat al-Jandal.",
          ar: "لم يقع قتال، وعُقد الصلح مع أيلة وجرباء وأذرح ومقنا، وبُعث خالد بن الوليد إلى دومة الجندل.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Ramazan 9 / Aralık 630", en: "Ramadan 9 AH / December 630", ar: "رمضان 9هـ / ديسمبر 630م"),
        metin: L10nText(
          tr: "Ordu yaklaşık elli günlük seferden Medine'ye döndü.",
          en: "The army returned to Madinah after a campaign of about fifty days.",
          ar: "عاد الجيش إلى المدينة بعد نحو خمسين يومًا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Dönüşten elli gün sonra", en: "Fifty days after the return", ar: "بعد العودة بخمسين ليلة"),
        metin: L10nText(
          tr: "Geride kalan üç sahâbînin tövbesinin kabulü Tevbe 9/117-118'de bildirildi.",
          en: "The acceptance of the repentance of the three Companions who stayed behind was revealed in al-Tawbah 9:117-118.",
          ar: "نزلت توبة الثلاثة الذين خُلّفوا في سورة التوبة 9/117-118.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "706–712", en: "706–712", ar: "706–712م"),
        metin: L10nText(
          tr: "Kaynaklara göre Tebük mescidi ilk olarak Ömer b. Abdülazîz döneminde yapıldı.",
          en: "According to the sources, the Tabuk mosque was first built in the time of Umar ibn Abd al-Aziz.",
          ar: "بحسب المصادر بُني مسجد تبوك أول مرة في عهد عمر بن عبد العزيز.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "967 / 1559-60", en: "967 AH / 1559-60", ar: "967هـ / 1559-1560م"),
        metin: L10nText(
          tr: "Tebük Kalesi Kanûnî Sultan Süleyman döneminde yenilendi.",
          en: "Tabuk Castle was renewed in the reign of Suleiman the Magnificent.",
          ar: "جُدّدت قلعة تبوك في عهد السلطان سليمان القانوني.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1393–1395 / 1973–1975", en: "1393–1395 AH / 1973–1975", ar: "1393–1395هـ / 1973–1975م"),
        metin: L10nText(
          tr: "Mescid-i Tevbe Kral Faysal'ın emriyle bugünkü hâliyle yeniden inşa edildi.",
          en: "Masjid al-Tawbah was rebuilt in its present form by order of King Faisal.",
          ar: "أُعيد بناء مسجد التوبة على هيئته الحالية بأمر الملك فيصل.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Tebük, Kur'an'ın uzun bir bölümünü ayırdığı bir seferin adıdır. Tevbe sûresinin önemli bir kısmı bu sefer etrafında nazil olmuştur: İmkânlarını Allah yolunda harcayanlar övülmüş, bahane uydurup geride kalan münafıkların hâli açığa çıkarılmış, “zorluk saatinde” Peygamber'e uyan muhacir ve ensarın tövbesinin kabul edildiği bildirilmiştir (Tevbe 9/117).\n\n"
          "Tebük'ün en dokunaklı dersi, Kâ'b b. Mâlik ve iki arkadaşının kıssasıdır. Onlar yalan bir mazeret uydurmak yerine doğruyu söylemiş, elli gün süren ağır bir yalnızlığa sabretmiş ve sonunda Allah tövbelerini kabul etmiştir (Tevbe 9/118). Kâ'b'ın kendi anlattığı bu kıssa, sahih hadis kitaplarında uzunca yer alır. Tebük'ü ziyaret, doğruluğun, fedakârlığın ve samimi tövbenin değerini hatırlamak için bir vesiledir. Mescide verilen “Tevbe” adı da bu hatırayı yaşatır.",
      en: "Tabuk is the name of a campaign to which the Qur'an devotes a long passage. A large part of Surah al-Tawbah was revealed in connection with it: those who spent their means in the way of Allah are praised, the state of the hypocrites who made excuses and stayed behind is exposed, and it is announced that Allah accepted the repentance of the Emigrants and Helpers who followed the Prophet “in the hour of hardship” (al-Tawbah 9:117).\n\n"
          "The most moving lesson of Tabuk is the story of Ka'b ibn Malik and his two companions. Instead of inventing a false excuse they told the truth, endured fifty days of painful isolation with patience, and in the end Allah accepted their repentance (al-Tawbah 9:118). This story, told by Ka'b himself, is related at length in the authentic hadith collections. A visit to Tabuk is an occasion to remember the value of truthfulness, sacrifice and sincere repentance. The name “al-Tawbah” (repentance) given to the mosque keeps this memory alive.",
      ar: "تبوك اسم غزوة أفرد لها القرآن حيّزًا واسعًا؛ فقد نزل جانب كبير من سورة التوبة في شأنها، ففيه الثناء على من أنفقوا في سبيل الله، وكشف حال المنافقين الذين تخلّفوا بالأعذار الكاذبة، والإخبار بأن الله تاب على المهاجرين والأنصار الذين اتبعوا النبي في ساعة العسرة (التوبة 9/117).\n\n"
          "وأبلغ دروس تبوك قصة كعب بن مالك وصاحبيه؛ فقد صدقوا ولم يعتذروا بالكذب، وصبروا على خمسين ليلة من الهجر الشديد، ثم تاب الله عليهم (التوبة 9/118). وقد روى كعب قصته بنفسه، وهي مروية بطولها في كتب الحديث الصحيحة. وزيارة تبوك فرصة لتذكّر قيمة الصدق والبذل والتوبة الصادقة، واسم «التوبة» الذي يحمله المسجد يُبقي هذه الذكرى حية.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "لَّقَد تَّابَ ٱللَّهُ عَلَى ٱلنَّبِىِّ وَٱلْمُهَـٰجِرِينَ وَٱلْأَنصَارِ ٱلَّذِينَ ٱتَّبَعُوهُ فِى سَاعَةِ ٱلْعُسْرَةِ مِنۢ بَعْدِ مَا كَادَ يَزِيغُ قُلُوبُ فَرِيقٍ مِّنْهُمْ ثُمَّ تَابَ عَلَيْهِمْ ۚ إِنَّهُۥ بِهِمْ رَءُوفٌ رَّحِيمٌ",
        meal: L10nText(
          tr: "Andolsun ki Allah, Peygamber'in ve içlerinden bir kısmının kalpleri neredeyse kaymak üzere iken, zorluk saatinde ona uyan muhacirlerin ve ensarın tövbelerini kabul etti. Sonra yine onların tövbelerini kabul etti. Çünkü O, onlara karşı çok şefkatli, çok merhametlidir.",
          en: "Allah has turned in mercy to the Prophet and to the Emigrants and the Helpers who followed him in the hour of hardship, after the hearts of some of them had almost swerved; then He turned to them in mercy. Surely He is Most Kind and Most Merciful to them.",
          ar: "يخبر الله أنه تاب على النبي والمهاجرين والأنصار الذين اتبعوه في غزوة العسرة (تبوك) بعد أن كادت قلوب فريق منهم تميل، ثم تاب عليهم رأفةً بهم ورحمة.",
        ),
        kaynak: L10nText(tr: "Tevbe 9/117", en: "Al-Tawbah 9:117", ar: "التوبة 9/117"),
      ),
      GeziAlinti(
        arapca: "وَعَلَى ٱلثَّلَـٰثَةِ ٱلَّذِينَ خُلِّفُوا۟ حَتَّىٰٓ إِذَا ضَاقَتْ عَلَيْهِمُ ٱلْأَرْضُ بِمَا رَحُبَتْ وَضَاقَتْ عَلَيْهِمْ أَنفُسُهُمْ وَظَنُّوٓا۟ أَن لَّا مَلْجَأَ مِنَ ٱللَّهِ إِلَّآ إِلَيْهِ ثُمَّ تَابَ عَلَيْهِمْ لِيَتُوبُوٓا۟ ۚ إِنَّ ٱللَّهَ هُوَ ٱلتَّوَّابُ ٱلرَّحِيمُ",
        meal: L10nText(
          tr: "Geri bırakılan o üç kişinin de tövbesini kabul etti. Öyle ki, yeryüzü bütün genişliğine rağmen onlara dar gelmiş, vicdanları kendilerini sıkıştırmış ve Allah'tan başka sığınak olmadığını anlamışlardı. Sonra eski hallerine dönmeleri için Allah onların tövbelerini kabul etti. Şüphesiz Allah, tövbeleri çok kabul edendir, çok merhametlidir.",
          en: "And also to the three who were left behind, until the earth, vast as it is, closed in on them, their own souls closed in on them, and they knew there was no refuge from Allah except in Him. Then He turned to them so that they might repent. Surely Allah is the Accepter of Repentance, the Most Merciful.",
          ar: "ويخبر الله أنه تاب أيضًا على الثلاثة الذين أُرجئ أمرهم حتى ضاقت عليهم الأرض مع سعتها وضاقت عليهم أنفسهم، وأيقنوا ألا ملجأ من الله إلا إليه، فتاب عليهم ليتوبوا.",
        ),
        kaynak: L10nText(tr: "Tevbe 9/118", en: "Al-Tawbah 9:118", ar: "التوبة 9/118"),
      ),
      GeziAlinti(
        arapca: "يُوشِكُ يَا مُعَاذُ إِنْ طَالَتْ بِكَ حَيَاةٌ أَنْ تَرَى مَا هَا هُنَا قَدْ مُلِئَ جِنَانًا",
        meal: L10nText(
          tr: "Tebük pınarı bol su vermeye başladıktan sonra Hz. Peygamber şöyle buyurdu: “Ey Muâz! Ömrün uzun olursa, buranın bahçelerle dolduğunu yakında görürsün.”",
          en: "After the spring of Tabuk began to flow abundantly, the Prophet said: “O Mu'adh, if your life is prolonged, you will soon see this place filled with gardens.”",
          ar: "قاله النبي صلى الله عليه وسلم بعد أن جرت عين تبوك بالماء الغزير.",
        ),
        kaynak: L10nText(tr: "Müslim, Fedâil, 10 (nr. 706)", en: "Muslim, al-Fada'il, 10 (no. 706)", ar: "مسلم، الفضائل، 10 (رقم 706)"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Mescid-i Tevbe'de vakit uygunsa namaz kılın; Tebük seferinin sabır ve fedakârlık derslerini tefekkür edin.",
        en: "If it is prayer time, pray at Masjid al-Tawbah, and reflect on the lessons of patience and sacrifice of the Tabuk campaign.",
        ar: "صلِّ في مسجد التوبة إن وافق وقت الصلاة، وتأمل دروس الصبر والبذل في غزوة تبوك.",
      ),
      L10nText(
        tr: "Mescidin bizzat Hz. Peygamber'e nispeti kesin değildir; buraya bereket umuduyla özel ibadetler yüklemekten, duvarlara yüz sürmekten kaçının.",
        en: "The direct attribution of the mosque to the Prophet is not certain; avoid attaching special rites to it in hope of blessing, or rubbing your face on its walls.",
        ar: "نسبة المسجد إلى النبي صلى الله عليه وسلم غير مقطوع بها، فاجتنب تخصيصه بعبادات للتبرك والتمسح بجدرانه.",
      ),
      L10nText(
        tr: "Ziyaretiniz vesilesiyle Tevbe sûresinin 117-118. ayetlerini okuyun; kendi tövbenizi yenileyin.",
        en: "On the occasion of your visit, read verses 117-118 of Surah al-Tawbah and renew your own repentance.",
        ar: "اقرأ بمناسبة زيارتك الآيتين 117-118 من سورة التوبة، وجدّد توبتك.",
      ),
      L10nText(
        tr: "Kalede sergilenen eserlere dokunmayın ve görevlilerin uyarılarına uyun.",
        en: "Do not touch the objects displayed in the castle, and follow the staff's instructions.",
        ar: "لا تلمس المعروضات في القلعة، والتزم بتعليمات العاملين.",
      ),
      L10nText(
        tr: "Tebük'ün iklimi kışın soğuk, yazın sıcaktır; mevsime uygun giyinin.",
        en: "Tabuk's climate is cold in winter and hot in summer; dress for the season.",
        ar: "مناخ تبوك بارد شتاءً حار صيفًا، فالبس ما يناسب الموسم.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Tebük, Mekke ve Medine'den çok uzaktır ve umre programlarında genellikle yer almaz; ziyaret ayrı bir yolculuk ya da uçuş gerektirir. Mescid-i Tevbe'nin namaz vakitleri dışında kapalı olabileceği, kale müzesinin ise belirli saatlerde açık olduğu bildirilmektedir; ziyaret öncesi güncel saatleri kontrol edin.",
      en: "Tabuk is very far from Makkah and Madinah and is not usually part of Umrah programmes; a visit requires a separate road trip or flight. Masjid al-Tawbah is reported to be closed at times outside prayer times, and the castle museum to be open only at set hours; check the current hours before visiting.",
      ar: "تبوك بعيدة جدًا عن مكة والمدينة، ولا تدخل عادة في برامج العمرة، وتتطلب زيارتها رحلة برية أو جوية مستقلة. ويُذكر أن مسجد التوبة قد يُغلق في غير أوقات الصلاة، وأن متحف القلعة يُفتح في ساعات محددة، فتحقق من المواعيد الحالية قبل الزيارة.",
    ),
    anlatim: L10nText(
      tr: "Medine'den kuzeye, Şam yönüne doğru yüzlerce kilometre uzanan çöl yolunun sonunda bir vaha şehri var: Tebük. Bugün modern bir şehir olan Tebük'ün eski merkezinde, beyaz kubbeli bir cami ile taş duvarlı küçük bir kale yan yana durur. Bu ikisi, İslâm tarihinin en zorlu yolculuklarından birini hatırlatır.\n\n"
          "Hicretin dokuzuncu yılıydı. Bizans'ın kuzeyde müslümanlara karşı hazırlık yaptığı haberi Medine'ye ulaştı. Hz. Peygamber sefer ilan etti. Mevsim yazdı, sıcak çok şiddetliydi, hurmalar olgunlaşmak üzereydi ve Medine'de kıtlık vardı. Bu yüzden bu orduya zorluk ordusu dendi. Hz. Osman ordunun önemli bir kısmını kendi malıyla donattı. Hz. Ebû Bekir bütün malını, Hz. Ömer malının yarısını getirdi. Gücü yetmeyip ağlayarak geri dönenler bile oldu. Sonunda otuz bin kişilik bir ordu yola koyuldu.\n\n"
          "Ordu Tebük'e ulaştığında buradaki pınar çok az su veriyordu. Muâz bin Cebel'in anlattığına göre Hz. Peygamber bu sudan elini yüzünü yıkadı ve suyu pınara geri döktürdü. Pınar bol bol akmaya başladı, herkes suyunu aldı. Hz. Peygamber de Muâz'a dönüp şöyle dedi: Ey Muâz, ömrün uzun olursa buranın bahçelerle dolduğunu göreceksin. Bugün etrafınızdaki tarlalara ve bahçelere bakarken bu sözü hatırlayabilirsiniz.\n\n"
          "Ordu Tebük'te yirmi gün kadar kaldı. Bizans ordusu karşılarına çıkmadı ve savaş olmadı. Çevredeki şehirler barış antlaşmaları yaptı. Ordu yaklaşık elli gün süren yolculuktan sonra Medine'ye döndü.\n\n"
          "Tebük'ün en dokunaklı hikâyesi ise Medine'de yaşandı. Kâ'b bin Mâlik ve iki arkadaşı bu sefere mazeretsiz olarak katılmamıştı. Hz. Peygamber döndüğünde başkaları yalan bahaneler uydururken onlar doğruyu söylediler. Elli gün boyunca kimse onlarla konuşmadı. Kur'an'ın ifadesiyle, yeryüzü bütün genişliğine rağmen onlara dar geldi. Sonunda Allah onların tövbesini kabul ettiğini bildiren ayetleri indirdi.\n\n"
          "Bu caminin adı Mescid-i Tevbe, yani tövbe mescidi. Rivayetlere göre bu mescit, Hz. Peygamber'in Tebük'te namaz kıldığı yerin hatırasına yapılmıştır. Burada dururken doğruluğun, fedakârlığın ve samimi tövbenin değerini düşünelim. Rabbimizden tövbelerimizi kabul etmesini dileyelim.",
      en: "At the end of a desert road that stretches hundreds of kilometres north from Madinah towards Syria lies an oasis city: Tabuk. In the old centre of what is today a modern city, a white-domed mosque and a small stone-walled castle stand side by side. Together they recall one of the most demanding journeys in Islamic history.\n\n"
          "It was the ninth year of the Hijrah. News reached Madinah that the Byzantines were preparing against the Muslims in the north. The Prophet announced a campaign. It was summer, the heat was intense, the dates were about to ripen and there was scarcity in Madinah. That is why this army was called the army of hardship. Uthman equipped a large part of the army from his own wealth. Abu Bakr brought all that he had, and Umar half of his wealth. Some who could not find the means turned back in tears. In the end an army of thirty thousand set out.\n\n"
          "When the army reached Tabuk, the spring here was yielding very little water. Mu'adh ibn Jabal relates that the Prophet washed his hands and face with some of its water and had it poured back into the spring. The spring began to flow abundantly and everyone took water. Then the Prophet turned to Mu'adh and said: O Mu'adh, if you live long, you will see this place filled with gardens. As you look at the fields and orchards around you today, you may remember these words.\n\n"
          "The army stayed at Tabuk for about twenty days. The Byzantine army did not come out to meet them, and there was no battle. The towns of the region made peace treaties. After a journey of about fifty days the army returned to Madinah.\n\n"
          "The most moving story of Tabuk, however, took place in Madinah. Ka'b ibn Malik and two of his companions had stayed behind from this campaign without excuse. When the Prophet returned, others made up false excuses, but they told the truth. For fifty days no one spoke to them. In the words of the Qur'an, the earth, vast as it is, closed in on them. Finally Allah revealed verses announcing that He had accepted their repentance.\n\n"
          "This mosque is called Masjid al-Tawbah, the mosque of repentance. According to tradition it was built in memory of the place where the Prophet prayed at Tabuk. As we stand here, let us reflect on the value of truthfulness, sacrifice and sincere repentance, and ask our Lord to accept our repentance.",
      ar: "في نهاية طريق صحراوي يمتد مئات الكيلومترات من المدينة المنورة شمالًا نحو الشام تقع مدينة واحة اسمها تبوك. وفي وسطها القديم، وهي اليوم مدينة حديثة، يقوم مسجد ذو قبة بيضاء وقلعة صغيرة بجدران حجرية متجاورين، يذكّران بواحدة من أشق الرحلات في تاريخ الإسلام.\n\n"
          "كان ذلك في السنة التاسعة للهجرة، حين بلغ المدينةَ أن الروم يتجهزون لقتال المسلمين في الشمال، فأعلن النبي صلى الله عليه وسلم الخروج. وكان الوقت صيفًا شديد الحر، والثمار قد طابت، وفي المدينة عسرة، فسُمّي الجيش جيش العسرة. وجهّز عثمان جانبًا كبيرًا منه من ماله، وجاء أبو بكر بماله كله، وعمر بنصف ماله، ورجع بعض من لم يجدوا ما يحملهم وأعينهم تفيض من الدمع. وخرج في النهاية جيش من ثلاثين ألفًا.\n\n"
          "ولما بلغ الجيش تبوك كانت عينها لا تجود إلا بقليل من الماء. يروي معاذ بن جبل أن النبي صلى الله عليه وسلم غسل يديه ووجهه بشيء من مائها ثم أعاده فيها، فجرت العين بماء غزير واستقى الناس، ثم قال لمعاذ: يوشك يا معاذ إن طالت بك حياة أن ترى ما هاهنا قد ملئ جنانًا. وأنت ترى المزارع والبساتين حولك اليوم، تذكّر هذه الكلمات.\n\n"
          "وأقام الجيش بتبوك نحو عشرين ليلة، فلم يخرج إليه الروم ولم يقع قتال، وصالحت مدن المنطقة. ثم عاد الجيش إلى المدينة بعد رحلة دامت نحو خمسين يومًا.\n\n"
          "أما أبلغ قصص تبوك فقد جرت في المدينة؛ فقد تخلّف كعب بن مالك وصاحبان له عن الغزوة بلا عذر، فلما رجع النبي صلى الله عليه وسلم اعتذر غيرهم بالكذب، وصدقوا هم. فلم يكلمهم أحد خمسين ليلة، وضاقت عليهم الأرض بما رحبت كما يقول القرآن، ثم أنزل الله توبتهم.\n\n"
          "ويُسمّى هذا المسجد مسجد التوبة، ويُروى أنه بُني في ذكرى الموضع الذي صلى فيه النبي صلى الله عليه وسلم بتبوك. ونحن نقف هنا فلنتأمل قيمة الصدق والبذل والتوبة الصادقة، ولنسأل ربنا أن يتقبل توبتنا.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Tebük Gazvesi", "https://islamansiklopedisi.org.tr/tebuk-gazvesi"),
      GeziKaynak("Vikipedi (Arapça) – مسجد التوبة (تبوك)",
          "https://ar.wikipedia.org/wiki/%D9%85%D8%B3%D8%AC%D8%AF_%D8%A7%D9%84%D8%AA%D9%88%D8%A8%D8%A9_(%D8%AA%D8%A8%D9%88%D9%83)"),
      GeziKaynak("OpenStreetMap – مسجد التوبة (way 848018918)", "https://www.openstreetmap.org/way/848018918"),
      GeziKaynak("OpenStreetMap – قلعة تبوك (node 5836365098)", "https://www.openstreetmap.org/node/5836365098"),
      GeziKaynak("Quran.com – Tevbe 9/117-118", "https://quran.com/9/117-118"),
    ],
  ),

  // ------------------------------------------------------------------ YENBU
  GeziYeri(
    id: 'yenbu',
    bolge: GeziBolge.diger,
    tur: GeziTur.tarihiSehir,
    ad: L10nText(tr: "Yenbu: Tarihî Şehir (Yenbu'l-Beled)", en: "Yanbu: Historic Town (Yanbu al-Balad)", ar: "ينبع: المنطقة التاريخية (ينبع البلد)"),
    arapcaAd: L10nText.same("ينبع"),
    altBaslik: L10nText(
      tr: "Medine'nin asırlık limanı; Uşeyre seferinin yaşandığı bölge",
      en: "Madinah's port for centuries; the region of the al-Ushayrah expedition",
      ar: "ميناء المدينة المنورة عبر القرون، والمنطقة التي كانت فيها غزوة العُشيرة",
    ),
    sehir: L10nText(tr: "Yenbu (Medine bölgesi)", en: "Yanbu (Madinah Province)", ar: "ينبع (منطقة المدينة المنورة)"),
    konum: LatLng(24.0789548, 38.0599286), // OSM way 1162769519 (منطقة ينبع التاريخية)
    uzaklik: L10nText(
      tr: "Medine'ye ~165 km kuş uçuşu (karayoluyla ~200 km, batı)",
      en: "~165 km from Madinah in a straight line (~200 km by road, to the west)",
      ar: "نحو 165 كم عن المدينة المنورة خطًا مستقيمًا (نحو 200 كم بالطريق، غربًا)",
    ),
    uygunSaat: L10nText(
      tr: "İkindiden sonra ve akşam serinliğinde",
      en: "Late afternoon and in the cool of the evening",
      ar: "بعد العصر وفي برودة المساء",
    ),
    ziyaretSuresi: L10nText(tr: "1–2 saat", en: "1–2 hours", ar: "ساعة إلى ساعتين"),
    genel: L10nText(
      tr: "Yenbu, Kızıldeniz kıyısında, Medine'nin batısında bulunan bir liman şehridir. Adını çok sayıdaki pınar ve kuyusundan alır; “yenbû” kelimesi “kaynayan, fışkıran” anlamına gelir. Orta çağ kaynakları iki Yenbu'dan söz eder: Cüheyne kabilesinin yurdu olan, hurmalıklarıyla tanınan iç kesimdeki Yenbu'n-Nahl ile kıyıdaki liman Yenbu'l-Bahr. Bugün şehrin bir de 1975'ten sonra kurulan sanayi kesimi vardır.\n\n"
          "Ziyaretçilerin uğradığı yer, liman kenarındaki eski şehir merkezi Yenbu'l-Beled'dir. Burada geleneksel Hicaz mimarisiyle yapılmış eski evler, dar sokaklar ve çarşılar bulunur; bir kısmı restore edilmektedir. Yenbu'nun özel bir dinî fazileti rivayet edilmez; önemi, yüzyıllar boyunca denizden gelen hacıların Medine'ye giden kapısı olmasından ve siyerde geçen olaylara yakınlığından gelir.",
      en: "Yanbu is a port city on the Red Sea coast, west of Madinah. It takes its name from its many springs and wells; the word “yanbu'” means “that which gushes forth”. Medieval sources speak of two Yanbus: Yanbu al-Nakhl inland, the homeland of the Juhaynah tribe and known for its date palms, and the port of Yanbu al-Bahr on the coast. Today the city also has an industrial district founded after 1975.\n\n"
          "The place visitors go to is the old town centre by the harbour, Yanbu al-Balad. Here there are old houses built in the traditional Hijazi style, narrow streets and souqs, some of which are being restored. No special religious virtue is narrated for Yanbu; its importance comes from having been, for centuries, the gateway to Madinah for pilgrims arriving by sea, and from its closeness to events of the Sirah.",
      ar: "ينبع مدينة ساحلية على البحر الأحمر غرب المدينة المنورة، وسُمّيت بذلك لكثرة ينابيعها وآبارها. وتذكر المصادر القديمة ينبعين: ينبع النخل في الداخل، وهي ديار جهينة المشهورة بنخيلها، وينبع البحر الميناء على الساحل. وللمدينة اليوم أيضًا قسم صناعي أُنشئ بعد سنة 1975م.\n\n"
          "والموضع الذي يقصده الزوار هو وسط المدينة القديم بجوار الميناء، ينبع البلد، وفيه بيوت قديمة على الطراز الحجازي وأزقة ضيقة وأسواق، ويجري ترميم بعضها. ولم يُروَ لينبع فضل ديني خاص، وإنما أهميتها في كونها قرونًا طويلة بوابة القادمين بحرًا إلى المدينة المنورة، وفي قربها من مواضع أحداث السيرة.",
    ),
    tarihce: L10nText(
      tr: "Yenbu bölgesi Suriye–Yemen ticaret yolu üzerindeydi. Bölgede yaşayan Cüheyne kabilesi erken dönemde müslüman oldu; Benî Müdlic de Kureyş'e karşı müslümanlara destek verdi. Hicretin 2. yılının cemâziyelevvel ya da cemâziyelâhir ayında (Kasım–Aralık 623) Hz. Peygamber, Şam'a giden Ebû Süfyân idaresindeki büyük Kureyş kervanını durdurmak için 150–200 muhacirle Medine'den çıktı. Sancağı Hz. Hamza taşıyordu. Kaynakların Yenbu bölgesinde, Medine'ye yaklaşık 210 km uzaklıkta gösterdiği Uşeyre'ye (Züluşeyre) varıldığında kervanın birkaç gün önce geçtiği anlaşıldı. Hz. Peygamber burada Benî Müdlic ve müttefikleri Benî Damre ile antlaşma yaparak Medine'ye döndü. Kervan, ertesi yıl Bedir Savaşı'na yol açan kervandı.\n\n"
          "Hz. Peygamber Yenbu'da Hz. Ali'ye arazi tahsis etmiş; Hz. Ali'nin soyundan gelenler burada uzun süre geniş mülklere sahip olmuştur. 12. yüzyılın sonlarında eski Câr limanı terk edilince Yenbu limanı, Medine'ye giden hacıların ve erzakın indiği başlıca iskele oldu. 1182'de Haçlı Renaud de Châtillon şehri yağmalayıp gemileri batırınca Selâhaddîn-i Eyyûbî Kızıldeniz'i korumak için donanma gönderdi.\n\n"
          "Osmanlı döneminde Yenbu Medine'nin limanı olarak önemini korudu. III. Murad zamanında (984/1576) camisi yenilendi ve liman çalışmaları yapıldı; Evliya Çelebi her yıl irili ufaklı yaklaşık 500 geminin buraya uğradığını yazar. 1811'de Tosun ve İbrâhim Paşalar bölgede Osmanlı idaresini yeniden sağladı. Birinci Dünya Savaşı sırasında (1916–1917) şehir Osmanlı idaresinden çıktı ve savaştan sonra Suudi Arabistan'a katıldı. 1975'ten itibaren Kral Hâlid döneminde büyük bir sanayi şehri olarak geliştirildi.",
      en: "The Yanbu region lay on the Syria–Yemen trade route. The Juhaynah tribe living in the area embraced Islam early, and Banu Mudlij also supported the Muslims against the Quraysh. In Jumada al-Ula or Jumada al-Akhirah of the second year of the Hijrah (November–December 623), the Prophet set out from Madinah with 150–200 Emigrants to intercept a large Quraysh caravan led by Abu Sufyan heading for Syria. Hamzah carried the banner. When they reached al-Ushayrah (Dhul-Ushayrah), which the sources place in the Yanbu region about 210 km from Madinah, they learned that the caravan had passed a few days earlier. Here the Prophet made a treaty with Banu Mudlij and their allies Banu Damrah and returned to Madinah. That caravan was the one that led to the Battle of Badr the following year.\n\n"
          "The Prophet granted land in Yanbu to Ali, and Ali's descendants held large estates here for a long time. When the old port of al-Jar was abandoned in the late 12th century, the port of Yanbu became the main landing place for pilgrims and provisions bound for Madinah. In 1182 the Crusader Reynald of Châtillon raided the town and sank ships, and Saladin sent a fleet to protect the Red Sea.\n\n"
          "In the Ottoman period Yanbu kept its importance as the port of Madinah. Under Murad III (984/1576) its mosque was renewed and harbour works were carried out; Evliya Çelebi wrote that some 500 ships large and small called here each year. In 1811 Tosun Pasha and Ibrahim Pasha restored Ottoman rule in the region. During the First World War (1916–1917) the town passed out of Ottoman control, and after the war it became part of Saudi Arabia. From 1975, under King Khalid, it was developed into a major industrial city.",
      ar: "كانت منطقة ينبع على طريق التجارة بين الشام واليمن، وأسلمت قبيلة جهينة التي تسكنها مبكرًا، وناصر بنو مدلج المسلمين على قريش. وفي جمادى الأولى أو جمادى الآخرة من السنة الثانية للهجرة (نوفمبر–ديسمبر 623م) خرج النبي صلى الله عليه وسلم من المدينة في مئة وخمسين إلى مئتين من المهاجرين لاعتراض قافلة كبيرة لقريش يقودها أبو سفيان متجهة إلى الشام، وحمل اللواء حمزة بن عبد المطلب. فلما بلغوا العُشيرة (ذا العُشيرة)، وتذكرها المصادر في ناحية ينبع على نحو 210 كيلومترات من المدينة، تبيّن أن القافلة مرّت قبل أيام. فوادع النبي صلى الله عليه وسلم هناك بني مدلج وحلفاءهم بني ضمرة ثم رجع إلى المدينة. وهذه القافلة هي التي كانت سببًا في غزوة بدر في العام التالي.\n\n"
          "وأقطع النبي صلى الله عليه وسلم عليًّا رضي الله عنه أرضًا في ينبع، وكان لذريته فيها أملاك واسعة زمنًا طويلًا. ولما هُجر ميناء الجار القديم في أواخر القرن الثاني عشر الميلادي صار ميناء ينبع المرفأ الرئيس الذي ينزل فيه الحجاج والمؤن المتجهة إلى المدينة. وفي سنة 1182م أغار الصليبي أرناط على البلدة وأغرق السفن، فأرسل صلاح الدين الأيوبي أسطولًا لحماية البحر الأحمر.\n\n"
          "وفي العهد العثماني حافظت ينبع على مكانتها ميناءً للمدينة؛ ففي عهد السلطان مراد الثالث (984هـ/1576م) جُدّد جامعها وأُجريت أعمال في الميناء، وذكر أوليا جلبي أن نحو خمسمئة سفينة كبيرة وصغيرة كانت ترسو فيها كل عام. وفي سنة 1811م أعاد طوسون باشا وإبراهيم باشا الحكم العثماني إلى المنطقة. وفي أثناء الحرب العالمية الأولى (1916–1917م) خرجت البلدة من الحكم العثماني، ثم صارت بعد الحرب جزءًا من المملكة العربية السعودية. ومنذ سنة 1975م طُوّرت في عهد الملك خالد لتصبح مدينة صناعية كبرى.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Cemâziyelevvel / Cemâziyelâhir 2 / Kasım–Aralık 623", en: "Jumada I / Jumada II 2 AH / November–December 623", ar: "جمادى الأولى / الآخرة 2هـ / نوفمبر–ديسمبر 623م"),
        metin: L10nText(
          tr: "Uşeyre seferi: Hz. Peygamber Yenbu bölgesine kadar geldi, Benî Müdlic ile antlaşma yaptı.",
          en: "The al-Ushayrah expedition: the Prophet came as far as the Yanbu region and made a treaty with Banu Mudlij.",
          ar: "غزوة العُشيرة: بلغ النبي صلى الله عليه وسلم ناحية ينبع ووادع بني مدلج.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Asr-ı saadet", en: "The Prophet's lifetime", ar: "العهد النبوي"),
        metin: L10nText(
          tr: "Hz. Peygamber Yenbu'da Hz. Ali'ye arazi tahsis etti.",
          en: "The Prophet granted land in Yanbu to Ali.",
          ar: "أقطع النبي صلى الله عليه وسلم عليًّا أرضًا في ينبع.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("1182"),
        metin: L10nText(
          tr: "Haçlı Renaud de Châtillon şehri yağmaladı; Selâhaddîn Kızıldeniz'e donanma gönderdi.",
          en: "The Crusader Reynald of Châtillon raided the town; Saladin sent a fleet to the Red Sea.",
          ar: "أغار الصليبي أرناط على البلدة، فأرسل صلاح الدين أسطولًا إلى البحر الأحمر.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "12. yüzyıl sonu", en: "Late 12th century", ar: "أواخر القرن الثاني عشر الميلادي"),
        metin: L10nText(
          tr: "Câr limanı terk edildi; Yenbu, Medine'nin başlıca limanı oldu.",
          en: "The port of al-Jar was abandoned; Yanbu became Madinah's main port.",
          ar: "هُجر ميناء الجار، وصارت ينبع الميناء الرئيس للمدينة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "984 / 1576", en: "984 AH / 1576", ar: "984هـ / 1576م"),
        metin: L10nText(
          tr: "III. Murad döneminde cami yenilendi, liman çalışmaları yapıldı.",
          en: "Under Murad III the mosque was renewed and harbour works were carried out.",
          ar: "في عهد مراد الثالث جُدّد الجامع وأُجريت أعمال في الميناء.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1916–1917", en: "1916–1917", ar: "1916–1917م"),
        metin: L10nText(
          tr: "Birinci Dünya Savaşı sırasında şehir Osmanlı idaresinden çıktı.",
          en: "During the First World War the town passed out of Ottoman control.",
          ar: "خرجت البلدة من الحكم العثماني في أثناء الحرب العالمية الأولى.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("1975"),
        metin: L10nText(
          tr: "Yenbu büyük bir sanayi şehri olarak geliştirilmeye başlandı.",
          en: "Yanbu began to be developed as a major industrial city.",
          ar: "بدأ تطوير ينبع مدينةً صناعية كبرى.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Yenbu'nun özel bir dinî fazileti rivayet edilmez. Önemi, Hz. Peygamber'in hicretten sonraki ilk yıllarında Medine'yi korumak için yaptığı seferlerin ve kurduğu ittifakların coğrafyasında yer almasından gelir. Uşeyre seferinde yapılan antlaşma, Hz. Peygamber'in çevre kabilelerle barış ve güven ilişkileri kurmaya verdiği önemi gösterir.\n\n"
          "Asırlar boyunca denizden gelen sayısız hacı Yenbu'da karaya çıkmış ve buradan Medine'ye, Mescid-i Nebevî'yi ziyarete yola koyulmuştur. Eski şehrin sokaklarında yürümek, Medine'ye kavuşma hasretiyle bu yolu tutan nesilleri hatırlamak için bir vesiledir.",
      en: "No special religious virtue is narrated for Yanbu. Its importance comes from lying within the geography of the expeditions and alliances the Prophet undertook in the first years after the Hijrah to protect Madinah. The treaty made during the al-Ushayrah expedition shows the importance the Prophet gave to building relations of peace and trust with the surrounding tribes.\n\n"
          "Over the centuries countless pilgrims arriving by sea landed at Yanbu and set out from here for Madinah to visit the Prophet's Mosque. Walking through the streets of the old town is an occasion to remember the generations who took this road with a longing to reach Madinah.",
      ar: "لم يُروَ لينبع فضل ديني خاص، وإنما أهميتها في وقوعها في ميدان الغزوات والأحلاف التي عقدها النبي صلى الله عليه وسلم في السنوات الأولى بعد الهجرة لحماية المدينة. ويدل صلح العُشيرة على عناية النبي صلى الله عليه وسلم ببناء علاقات السلم والأمان مع القبائل المجاورة.\n\n"
          "وعلى مرّ القرون نزل بينبع حجاج لا يُحصَون قدموا بحرًا، ومنها توجهوا إلى المدينة لزيارة المسجد النبوي. والتجول في أزقة البلدة القديمة فرصة لتذكّر الأجيال التي سلكت هذا الطريق شوقًا إلى المدينة.",
    ),
    adab: [
      L10nText(
        tr: "Eski şehirdeki tarihî binalara saygı gösterin; restorasyondaki yapılara girmeyin, ahşap cumbalara ve kapılara zarar vermeyin.",
        en: "Respect the historic buildings of the old town; do not enter buildings under restoration or damage the wooden bay windows and doors.",
        ar: "احترم المباني التاريخية في البلدة القديمة، ولا تدخل المباني التي تحت الترميم، ولا تُتلف الرواشين والأبواب الخشبية.",
      ),
      L10nText(
        tr: "Sokaklarda yaşayan halkın mahremiyetine dikkat edin; evlerin ve insanların izinsiz fotoğrafını çekmeyin.",
        en: "Respect the privacy of residents; do not photograph homes or people without permission.",
        ar: "راعِ خصوصية السكان، ولا تصوّر البيوت أو الناس دون إذن.",
      ),
      L10nText(
        tr: "Yerel geleneklere uygun, örtünmeye dikkat eden bir kıyafet tercih edin.",
        en: "Choose modest clothing that respects local customs.",
        ar: "اختر لباسًا محتشمًا يراعي أعراف البلد.",
      ),
      L10nText(
        tr: "Vakit girdiğinde yakındaki camilerden birinde namaz kılın.",
        en: "When prayer time comes, pray at one of the nearby mosques.",
        ar: "إذا حان وقت الصلاة فصلِّ في أحد المساجد القريبة.",
      ),
      L10nText(
        tr: "Kıyı iklimi nemli ve sıcaktır; gezi için akşam serinliğini seçin ve yanınızda su bulundurun.",
        en: "The coastal climate is humid and hot; choose the cool of the evening for your walk and carry water.",
        ar: "مناخ الساحل رطب وحار، فاختر برودة المساء للتجول واحمل الماء.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Yenbu umre programlarında genellikle yer almaz; Medine'den ayrı bir günübirlik gezi olarak planlanır. Tarihî bölgedeki bazı binalar restorasyon nedeniyle kapalı olabilir; etkinlik ve açık olma saatleri Suudi Turizm ve Kültür kurumlarının programına göre değişir. Uşeyre seferinin yaşandığı yer için işaretli bir ziyaret noktası bulunmayabilir; rehberinize danışın.",
      en: "Yanbu is not usually part of Umrah programmes; it is planned as a separate day trip from Madinah. Some buildings in the historic area may be closed for restoration; events and opening hours depend on the programmes of the Saudi tourism and culture authorities. There may be no marked visitor point for the site of the al-Ushayrah expedition; ask your guide.",
      ar: "لا تدخل ينبع عادة في برامج العمرة، وتُزار في رحلة يومية مستقلة من المدينة. وقد تكون بعض المباني في المنطقة التاريخية مغلقة للترميم، وتختلف الفعاليات وأوقات الفتح بحسب برامج الجهات السعودية المعنية بالسياحة والثقافة. وقد لا يوجد معلم مخصص للزيارة في موضع غزوة العُشيرة، فاسأل مرشدك.",
    ),
    anlatim: L10nText(
      tr: "Medine'den batıya, Kızıldeniz'e doğru iki yüz kilometre kadar gittiğinizde, pınarlarıyla ünlü bir kıyı şehrine varırsınız: Yenbu. Şehrin adı kaynayan, fışkıran anlamına gelir; çünkü burası eskiden beri suyu bol bir yerdi. Bugün büyük limanları ve fabrikalarıyla modern bir şehir olan Yenbu'nun eski merkezinde, dar sokaklar ve geleneksel Hicaz evleri hâlâ geçmişi anlatır.\n\n"
          "Yenbu'nun adı siyer kitaplarında da geçer. Hicretin ikinci yılında Hz. Peygamber, Şam'a giden büyük bir Kureyş kervanını durdurmak için yüz elli ile iki yüz arasında muhacirle Medine'den çıktı. Sancağı Hz. Hamza taşıyordu. Bir tek atları ve otuz develeri vardı; develere sırayla biniyorlardı. Yenbu bölgesindeki Uşeyre denilen yere vardıklarında kervanın birkaç gün önce geçtiğini öğrendiler.\n\n"
          "Ama bu yolculuk boşa gitmedi. Hz. Peygamber burada yaşayan Benî Müdlic kabilesi ve müttefikleriyle bir antlaşma yaptı. Böylece Medine'nin çevresinde güven ve barış halkası genişledi. Kaçırılan o kervan ise ertesi yıl Bedir Savaşı'na yol açacak olan kervandı.\n\n"
          "Asırlar geçtikçe Yenbu, Medine'nin denize açılan kapısı oldu. Denizden gelen hacılar bu limanda karaya çıkar, develere biner ve Mescid-i Nebevî'ye doğru yola koyulurdu. Osmanlılar döneminde her yıl yüzlerce gemi bu limana uğrardı. Medine'ye giden erzak da buradan taşınırdı.\n\n"
          "Eski şehrin sokaklarında yürürken, sizden önce bu kıyıya ayak basan hacıları düşünün. Onlar haftalarca süren deniz yolculuğundan sonra burada karaya çıkıyor, kalplerinde Medine'ye, Resûlullah'ın mescidine kavuşma hasretiyle yola koyuluyorlardı. Bizler de aynı sevgiyle Peygamberimize salât ve selam getirelim.",
      en: "If you travel west from Madinah towards the Red Sea for about two hundred kilometres, you reach a coastal city famous for its springs: Yanbu. The city's name means that which gushes forth, for it has always been a place rich in water. Today Yanbu is a modern city of large ports and factories, but in its old centre narrow streets and traditional Hijazi houses still tell of the past.\n\n"
          "Yanbu's name also appears in the books of the Sirah. In the second year of the Hijrah the Prophet set out from Madinah with between one hundred and fifty and two hundred Emigrants to intercept a large Quraysh caravan heading for Syria. Hamzah carried the banner. They had only one horse and thirty camels, which they rode in turns. When they reached a place called al-Ushayrah in the Yanbu region, they learned that the caravan had passed a few days earlier.\n\n"
          "But the journey was not in vain. Here the Prophet made a treaty with the tribe of Banu Mudlij, who lived in the area, and their allies. In this way the circle of security and peace around Madinah grew wider. And the caravan they had missed was the one that would lead to the Battle of Badr the following year.\n\n"
          "As the centuries passed, Yanbu became Madinah's gateway to the sea. Pilgrims arriving by sea landed at this port, mounted their camels and set out for the Prophet's Mosque. In Ottoman times hundreds of ships called at this port every year, and provisions for Madinah were carried from here.\n\n"
          "As you walk through the streets of the old town, think of the pilgrims who set foot on this shore before you. After weeks at sea they landed here and set out with hearts longing to reach Madinah and the mosque of the Messenger of Allah. Let us, with the same love, send blessings and peace upon our Prophet.",
      ar: "إذا سرت من المدينة المنورة غربًا نحو البحر الأحمر نحو مئتي كيلومتر بلغت مدينة ساحلية مشهورة بينابيعها، هي ينبع، وقد سُمّيت بذلك لأنها كانت منذ القدم كثيرة المياه. وينبع اليوم مدينة حديثة بموانئها الكبيرة ومصانعها، لكن أزقتها الضيقة وبيوتها الحجازية في وسطها القديم ما زالت تحكي الماضي.\n\n"
          "ويرد اسم ينبع في كتب السيرة أيضًا؛ ففي السنة الثانية للهجرة خرج النبي صلى الله عليه وسلم من المدينة في مئة وخمسين إلى مئتين من المهاجرين لاعتراض قافلة كبيرة لقريش متجهة إلى الشام، وحمل اللواء حمزة بن عبد المطلب. ولم يكن معهم إلا فرس واحد وثلاثون بعيرًا يتعاقبون ركوبها. فلما بلغوا العُشيرة في ناحية ينبع علموا أن القافلة مرّت قبل أيام.\n\n"
          "لكن هذه الرحلة لم تذهب سدى؛ فقد وادع النبي صلى الله عليه وسلم هناك بني مدلج وحلفاءهم، فاتسعت دائرة الأمان والسلم حول المدينة. وكانت تلك القافلة التي فاتتهم هي التي أفضت إلى غزوة بدر في العام التالي.\n\n"
          "ومع مرور القرون صارت ينبع باب المدينة المنورة إلى البحر، ينزل بمينائها الحجاج القادمون بحرًا، ثم يركبون الإبل متوجهين إلى المسجد النبوي. وفي العهد العثماني كانت مئات السفن ترسو فيها كل عام، ومنها كانت تُحمل المؤن إلى المدينة.\n\n"
          "وأنت تمشي في أزقة البلدة القديمة تذكّر الحجاج الذين نزلوا هذا الشاطئ قبلك بعد أسابيع في البحر، ثم مضوا وقلوبهم مشتاقة إلى المدينة ومسجد رسول الله صلى الله عليه وسلم. ولنصلِّ ونسلّم على نبينا بالمحبة نفسها.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Yenbu", "https://islamansiklopedisi.org.tr/yenbu"),
      GeziKaynak("TDV İslâm Ansiklopedisi – Uşeyre Gazvesi", "https://islamansiklopedisi.org.tr/useyre-gazvesi"),
      GeziKaynak("Wikipedia – Yanbu", "https://en.wikipedia.org/wiki/Yanbu"),
      GeziKaynak("OpenStreetMap – منطقة ينبع التاريخية (way 1162769519)", "https://www.openstreetmap.org/way/1162769519"),
    ],
  ),
];
