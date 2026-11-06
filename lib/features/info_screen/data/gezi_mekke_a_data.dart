import 'package:latlong2/latlong.dart';

import 'gezilecek_yerler_data.dart';
import 'l10n_text.dart';

// Mekke (A): Mescid-i Haram, Hira, Sevr, Cennetü'l-Muallâ, Arafat, Müzdelife, Mina.
//
// Tarihî ve dinî bilgiler: TDV İslâm Ansiklopedisi (Kâbe, Mescid-i Harâm,
// Makām-ı İbrâhim, Hacerülesved, Zemzem, Safâ ve Merve, Sa'y, Hira, Sevr
// Mağarası, Cennetü'l-Muallâ, Arafat, Müzdelife, Meş'ar-i Harâm, Mina, Cemre).
// Âyetler quran.com API (text_uthmani) ile, hadisler fawazahmed0/hadith-api
// Arapça baskılarıyla karşılaştırıldı (6 Kasım 2026). Koordinatlar
// OpenStreetMap (Overpass/Nominatim) nesnelerinden alındı.

const List<GeziYeri> kMekkeYerleriA = [
  // ---------------------------------------------------------------- 1
  GeziYeri(
    id: 'mescid_i_haram',
    bolge: GeziBolge.mekke,
    tur: GeziTur.kabe,
    ad: L10nText(
      tr: 'Mescid-i Haram ve Kâbe',
      en: 'Masjid al-Haram and the Kaaba',
      ar: 'المسجد الحرام والكعبة المشرفة',
    ),
    arapcaAd: L10nText.same('المسجد الحرام والكعبة المشرفة'),
    altBaslik: L10nText(
      tr: 'Kâbe, Hacerü\'l-Esved, Makam-ı İbrahim, Hicr, Zemzem, Safa ve Merve',
      en: 'The Kaaba, the Black Stone, Maqam Ibrahim, the Hijr, Zamzam, Safa and Marwah',
      ar: 'الكعبة والحجر الأسود ومقام إبراهيم والحِجر وزمزم والصفا والمروة',
    ),
    sehir: L10nText(tr: 'Mekke, merkez', en: 'Makkah, centre', ar: 'مكة المكرمة، المركز'),
    konum: LatLng(21.4225165, 39.826182), // OSM way 103914569 (الكعبة)
    genel: L10nText(
      tr: "Mescid-i Haram, Mekke'nin ortasında, Kâbe'yi çevreleyen ve yeryüzünün en kutsal mescidi kabul edilen ibadet alanıdır. Müslümanlar dünyanın her yerinden günde beş vakit namazda bu mescidin ortasındaki Kâbe'ye yönelir; umre ve haccın tavaf ve sa'y gibi temel ibadetleri burada yapılır. Kur'ân-ı Kerîm'de Kâbe için Beyt, Beytullah, el-Beytü'l-atîk ve el-Beytü'l-harâm gibi adlar kullanılır.\n\n"
          "Kâbe, dıştan dışa yaklaşık 10,70 × 12 metre ölçüsünde ve 15 metre yüksekliğinde, Mekke çevresindeki dağlardan getirilmiş taşlarla örülmüş küp biçiminde bir yapıdır. Doğu köşesinde tavafın başladığı Hacerü'l-Esved, kuzeybatı duvarının önünde yarım daire biçimli alçak bir duvarla (Hatîm) çevrili Hicr bulunur. Kâbe'nin kapısı ile Hacerü'l-Esved arasındaki yaklaşık iki metrelik bölüme Mültezem denir. Kâbe'nin karşısında, üzerinde Hz. İbrahim'in ayak izleri bulunduğu kabul edilen Makam-ı İbrahim taşı, biraz ötede Zemzem kuyusu, mescidin doğu kanadında ise sa'y yapılan Safa ve Merve tepeleri yer alır. Bugün sa'y alanı (Mes'â) da mescidin içindedir; Safa ile Merve arasındaki mesafe yaklaşık 394,5 metredir.",
      en: "Masjid al-Haram is the place of worship in the heart of Makkah that surrounds the Kaaba, regarded as the holiest mosque on earth. Muslims everywhere face the Kaaba at its centre in their five daily prayers, and the core rites of Umrah and Hajj, such as tawaf and sa'i, are performed here. The Qur'an calls the Kaaba al-Bayt, Baytullah, al-Bayt al-Atiq and al-Bayt al-Haram.\n\n"
          "The Kaaba is a cube-shaped building of roughly 10.70 × 12 metres and 15 metres high, built of stone brought from the mountains around Makkah. At its eastern corner is the Black Stone (al-Hajar al-Aswad), where tawaf begins; in front of its north-western wall is the Hijr, enclosed by a low semicircular wall (al-Hatim). The roughly two-metre stretch between the door and the Black Stone is called al-Multazam. Facing the Kaaba stands the Maqam Ibrahim, the stone believed to bear the footprints of Prophet Ibrahim; nearby is the Well of Zamzam, and on the eastern side of the mosque are the hills of Safa and Marwah, where sa'i is performed. Today the sa'i course (al-Mas'a) lies inside the mosque; the distance between Safa and Marwah is about 394.5 metres.",
      ar: 'المسجد الحرام هو المسجد الذي يحيط بالكعبة المشرفة في قلب مكة المكرمة، وهو أقدس مساجد الأرض. يتجه إليه المسلمون في صلواتهم الخمس من كل مكان، وفيه تُؤدّى أهم مناسك العمرة والحج كالطواف والسعي. وقد سمّى القرآن الكريم الكعبة بالبيت والبيت العتيق والبيت الحرام.\n\n'
          'والكعبة بناء مكعّب الشكل تبلغ أبعاده من الخارج نحو 10.70 × 12 مترًا وارتفاعه نحو 15 مترًا، بُنيت بحجارة جُلبت من جبال مكة. في ركنها الشرقي الحجر الأسود الذي يبدأ منه الطواف، وأمام جدارها الشمالي الغربي الحِجر المحاط بجدار منخفض نصف دائري يُسمّى الحطيم. وما بين باب الكعبة والحجر الأسود، وطوله نحو مترين، يُسمّى الملتزم. وقبالة الكعبة مقام إبراهيم، وهو الحجر الذي يُعتقد أن عليه أثر قدمي إبراهيم عليه السلام، وقريبًا منه بئر زمزم، وفي الجهة الشرقية من المسجد جبلا الصفا والمروة اللذان يُسعى بينهما. والمسعى اليوم داخل المسجد، وتبلغ المسافة بين الصفا والمروة نحو 394.5 مترًا.',
    ),
    tarihce: L10nText(
      tr: "Kur'an'a göre Kâbe, insanlar için kurulan ilk mabettir; temellerini Hz. İbrahim ile oğlu Hz. İsmail yükseltmiştir. Hz. İbrahim'in eşi Hz. Hacer, oğlu İsmail için su ararken Safa ile Merve arasında yedi kez gidip gelmiş, ardından Zemzem suyu çıkmıştır. Sa'y ibadeti bu olayın hatırasını yaşatır. Suyun çıkmasıyla Cürhüm kabilesi buraya yerleşmiş ve Mekke şehri doğmuştur. Zemzem kuyusu zamanla kapanmış, asırlar sonra Hz. Peygamber'in dedesi Abdülmuttalib tarafından yeniden açılmıştır.\n\n"
          "Kâbe tarih boyunca birkaç kez yeniden inşa edildi. Kureyş, 605 yılında Kâbe'yi yeniden yaptığında Hacerü'l-Esved'i yerine kimin koyacağı konusunda anlaşmazlık çıktı. Henüz peygamber olmamış Hz. Muhammed taşı bir örtünün üzerine koydu, kabile reisleri örtünün ucundan tutarak taşı kaldırdı ve taşı yerine kendisi yerleştirdi. Kureyş, helal kazançtan toplanan malzeme yetmediği için Hz. İbrahim'in temellerinin bir kısmını dışarıda bıraktı; Hicr bu kısımdır.\n\n"
          "Abdullah b. Zübeyr 684'te Kâbe'yi Hz. İbrahim'in temelleri üzerine yeniden yaptırdı; Haccâc 692'de bazı bölümlerini eski hâline döndürdü. 930 yılında Karmatîler Hacerü'l-Esved'i söküp götürdü; taş yaklaşık yirmi yıl sonra yerine konuldu. 1630'daki büyük sel Kâbe'nin duvarlarını yıkınca Osmanlı Sultanı IV. Murad döneminde bina aslına uygun olarak yeniden inşa edildi. Kâbe'nin bugünkü yapısı büyük ölçüde bu inşaya dayanır.\n\n"
          "Mescid-i Haram, Hz. Ömer döneminden başlayarak defalarca genişletildi. Bugün görülen kubbeli Osmanlı revakları 1576'da yapıldı. 1955'ten itibaren Suudi yönetiminin büyük genişletmeleriyle Safa–Merve arası mescide katıldı, mescit çok katlı hâle geldi ve milyonlarca kişiyi alabilecek bir büyüklüğe ulaştı.",
      en: "According to the Qur'an, the Kaaba is the first house of worship established for mankind; Prophet Ibrahim and his son Ismail raised its foundations. Hajar, the wife of Ibrahim, went back and forth seven times between Safa and Marwah in search of water for her son, after which the spring of Zamzam gushed forth. The rite of sa'i keeps the memory of this event alive. When water appeared, the tribe of Jurhum settled here and the city of Makkah was born. The well was later buried and lost, and centuries afterwards it was re-dug by Abd al-Muttalib, the Prophet's grandfather.\n\n"
          "The Kaaba was rebuilt several times in history. When the Quraysh rebuilt it in 605, a dispute arose over who would set the Black Stone back in its place. Muhammad, who had not yet received prophethood, placed the stone on a cloth, had the tribal chiefs lift it together by its edges, and set it in place with his own hands. Because the funds gathered from lawful earnings were not enough, the Quraysh left part of Ibrahim's foundations outside the building; this is the Hijr.\n\n"
          "In 684 Abdullah ibn al-Zubayr rebuilt the Kaaba on Ibrahim's foundations, and in 692 al-Hajjaj restored some parts to their former shape. In 930 the Qarmatians carried off the Black Stone; it was returned about twenty years later. When a great flood in 1630 brought down the Kaaba's walls, the building was faithfully rebuilt in the reign of the Ottoman Sultan Murad IV, and the present structure largely dates from that reconstruction.\n\n"
          "The mosque itself has been enlarged many times since the caliphate of Umar. The domed Ottoman arcades seen today were built in 1576. From 1955 onwards, major Saudi expansions brought the course between Safa and Marwah inside the mosque, added several storeys and enlarged it to hold millions of worshippers.",
      ar: 'الكعبة بنصّ القرآن أول بيت وُضع للناس، وقد رفع قواعدها إبراهيم وابنه إسماعيل عليهما السلام. وسعت هاجر زوج إبراهيم بين الصفا والمروة سبع مرات تلتمس الماء لابنها، فتفجّر ماء زمزم، والسعي يُحيي ذكرى هذا الحدث. ولما ظهر الماء نزلت قبيلة جُرهم بالوادي فنشأت مكة. ثم اندثرت البئر قرونًا حتى أعاد حفرها عبد المطلب جدّ النبي ﷺ.\n\n'
          'وأُعيد بناء الكعبة مرات عبر التاريخ. فلما جدّدت قريش بناءها سنة 605م اختلفوا فيمن يضع الحجر الأسود في موضعه، فوضعه محمد ﷺ، قبل البعثة، في ثوب وأمر زعماء القبائل أن يرفعوه من أطرافه، ثم وضعه بيده الشريفة في مكانه. ولما قصرت بقريش النفقة الطيبة تركوا جزءًا من قواعد إبراهيم خارج البناء، وهو الحِجر.\n\n'
          'وفي سنة 684م أعاد عبد الله بن الزبير بناء الكعبة على قواعد إبراهيم، ثم أعاد الحجاج سنة 692م بعض أجزائها إلى ما كانت عليه. وفي سنة 930م اقتلع القرامطة الحجر الأسود وحملوه، فلم يُردّ إلى موضعه إلا بعد نحو عشرين سنة. ولما هدم السيل العظيم سنة 1630م جدران الكعبة أُعيد بناؤها على هيئتها في عهد السلطان العثماني مراد الرابع، وإلى هذا البناء يرجع معظم بنائها الحالي.\n\n'
          'ووُسّع المسجد الحرام مرات كثيرة منذ عهد عمر بن الخطاب رضي الله عنه. والأروقة العثمانية ذات القباب التي تُرى اليوم بُنيت سنة 1576م. ومنذ سنة 1955م أدخلت التوسعات السعودية الكبرى المسعى في المسجد، وصار المسجد متعدد الطوابق يتّسع لملايين المصلين.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Hz. İbrahim dönemi', en: 'Time of Prophet Ibrahim', ar: 'عهد إبراهيم عليه السلام'),
        metin: L10nText(
          tr: "Hz. Hacer'in sa'yi ve Zemzem'in çıkışı; Hz. İbrahim ile Hz. İsmail'in Kâbe'nin temellerini yükseltmesi.",
          en: "Hajar's running between Safa and Marwah and the emergence of Zamzam; Ibrahim and Ismail raise the foundations of the Kaaba.",
          ar: 'سعي هاجر وتفجّر زمزم، ورفع إبراهيم وإسماعيل قواعد البيت.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '605', en: '605', ar: '605م'),
        metin: L10nText(
          tr: "Kureyş Kâbe'yi yeniden inşa eder; Hz. Muhammed Hacerü'l-Esved anlaşmazlığını çözer.",
          en: 'The Quraysh rebuild the Kaaba; Muhammad settles the dispute over the Black Stone.',
          ar: 'قريش تعيد بناء الكعبة، ومحمد ﷺ يحسم الخلاف في وضع الحجر الأسود.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Hicrî 8 (630)', en: 'AH 8 (630)', ar: '8هـ (630م)'),
        metin: L10nText(
          tr: "Mekke'nin fethi: Kâbe putlardan temizlenir, Hz. Peygamber içeride namaz kılar ve anahtarı yine Osman b. Talha'ya teslim eder.",
          en: "The conquest of Makkah: the Kaaba is cleansed of idols, the Prophet prays inside and hands the key back to Uthman ibn Talha.",
          ar: 'فتح مكة: تطهير الكعبة من الأصنام، وصلاة النبي ﷺ داخلها، وردّه المفتاح إلى عثمان بن طلحة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '638', en: '638', ar: '638م'),
        metin: L10nText(
          tr: 'Hz. Ömer çevredeki evleri satın alarak mescidi ilk kez genişletir ve etrafını duvarla çevirir.',
          en: 'Caliph Umar buys the surrounding houses, enlarges the mosque for the first time and encloses it with a wall.',
          ar: 'عمر بن الخطاب يشتري البيوت المجاورة ويوسّع المسجد لأول مرة ويحيطه بجدار.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '684 ve 692', en: '684 and 692', ar: '684م و692م'),
        metin: L10nText(
          tr: "Abdullah b. Zübeyr Kâbe'yi Hz. İbrahim'in temelleri üzerine yeniden yaptırır; Haccâc bazı bölümleri eski hâline döndürür.",
          en: "Abdullah ibn al-Zubayr rebuilds the Kaaba on Ibrahim's foundations; al-Hajjaj restores some parts to their former shape.",
          ar: 'ابن الزبير يعيد بناء الكعبة على قواعد إبراهيم، والحجاج يعيد بعض أجزائها إلى ما كانت عليه.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '930–951', en: '930–951', ar: '930–951م'),
        metin: L10nText(
          tr: "Karmatîler Hacerü'l-Esved'i söküp götürür; taş yaklaşık yirmi yıl sonra yerine konur.",
          en: 'The Qarmatians carry off the Black Stone; it is returned about twenty years later.',
          ar: 'القرامطة يقتلعون الحجر الأسود، ثم يُعاد إلى موضعه بعد نحو عشرين سنة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1576', en: '1576', ar: '1576م'),
        metin: L10nText(
          tr: 'Osmanlı döneminde mescidin düz ahşap çatısı yerine bugün de görülen kubbeli revaklar yapılır.',
          en: 'Under the Ottomans, the flat wooden roof is replaced by the domed arcades still seen today.',
          ar: 'في العهد العثماني تُستبدل الأسقف الخشبية المسطحة بالأروقة ذات القباب القائمة إلى اليوم.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1630–1631', en: '1630–1631', ar: '1630–1631م'),
        metin: L10nText(
          tr: "Büyük sel Kâbe'nin duvarlarını yıkar; Sultan IV. Murad döneminde Kâbe aslına uygun olarak yeniden inşa edilir.",
          en: "A great flood brings down the Kaaba's walls; it is faithfully rebuilt in the reign of Sultan Murad IV.",
          ar: 'سيل عظيم يهدم جدران الكعبة، فيُعاد بناؤها على هيئتها في عهد السلطان مراد الرابع.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1955 ve sonrası', en: '1955 onwards', ar: 'منذ 1955م'),
        metin: L10nText(
          tr: "Suudi genişletmeleri: Safa–Merve arası mescide katılır, mescit çok katlı hâle gelir.",
          en: 'Saudi expansions: the course between Safa and Marwah is brought inside, and the mosque becomes multi-storey.',
          ar: 'التوسعات السعودية: إدخال المسعى في المسجد وتعدّد طوابقه.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Kâbe Müslümanların kıblesidir ve Kur'an'da insanlar için kurulan ilk mabet olarak anılır. Hac, gücü yetenlere bu evi ziyaret etmek olarak farz kılınmıştır. Hz. Peygamber, Mescid-i Haram'da kılınan namazın başka mescitlerde kılınan yüz bin namazdan daha faziletli olduğunu bildirmiştir.\n\n"
          "Makam-ı İbrahim'in namazgâh edinilmesi Kur'an'da emredilmiştir; tavafın ardından mümkünse onun arkasında iki rekât namaz kılınır. Safa ve Merve, Kur'an'da Allah'ın nişanlarından (şeâir) sayılır. Zemzem hakkında Hz. Peygamber, onun hangi niyetle içilirse o niyete faydalı olacağını bildirmiştir.",
      en: "The Kaaba is the qibla of Muslims, and the Qur'an calls it the first house of worship established for mankind. Hajj to this house is made obligatory for those able to undertake it. The Prophet stated that a prayer in Masjid al-Haram is better than a hundred thousand prayers elsewhere.\n\n"
          "The Qur'an commands that the Station of Ibrahim be taken as a place of prayer; after tawaf, two rak'ahs are prayed behind it when possible. Safa and Marwah are counted in the Qur'an among the symbols of Allah. Of Zamzam the Prophet said that it serves the purpose for which it is drunk.",
      ar: 'الكعبة قبلة المسلمين، وقد وصفها القرآن بأنها أول بيت وُضع للناس، وفُرض حجّها على من استطاع إليه سبيلًا. وأخبر النبي ﷺ أن الصلاة في المسجد الحرام أفضل من مائة ألف صلاة فيما سواه.\n\n'
          'وأمر القرآن باتخاذ مقام إبراهيم مصلًّى، فيُصلّى خلفه ركعتان بعد الطواف عند التيسّر. وعدّ القرآن الصفا والمروة من شعائر الله. وقال النبي ﷺ في زمزم إنها لما شُربت له.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'إِنَّ أَوَّلَ بَيْتٍ وُضِعَ لِلنَّاسِ لَلَّذِى بِبَكَّةَ مُبَارَكًا وَهُدًى لِّلْعَـٰلَمِينَ',
        meal: L10nText(
          tr: "Şüphesiz insanlar için kurulan ilk ev, Mekke'deki o mübarek ve âlemlere hidayet kaynağı olan evdir.",
          en: 'Indeed, the first house established for mankind is the one at Bakkah, blessed and a guidance for the worlds.',
          ar: 'أي إن أول بيت بُني لعبادة الله في الأرض هو الكعبة بمكة.',
        ),
        kaynak: L10nText(tr: 'Âl-i İmrân 3/96', en: 'Al Imran 3:96', ar: 'آل عمران: 96'),
      ),
      GeziAlinti(
        arapca: 'وَٱتَّخِذُوا۟ مِن مَّقَامِ إِبْرَٰهِـۧمَ مُصَلًّى',
        meal: L10nText(
          tr: "İbrahim'in makamından bir namaz yeri edinin.",
          en: 'And take the Station of Ibrahim as a place of prayer.',
          ar: 'أمرٌ بالصلاة عند مقام إبراهيم، ولذلك تُصلّى ركعتا الطواف خلفه.',
        ),
        kaynak: L10nText(tr: 'Bakara 2/125', en: 'Al-Baqarah 2:125', ar: 'البقرة: 125'),
      ),
      GeziAlinti(
        arapca: 'إِنَّ ٱلصَّفَا وَٱلْمَرْوَةَ مِن شَعَآئِرِ ٱللَّهِ',
        meal: L10nText(
          tr: "Şüphesiz Safa ile Merve, Allah'ın nişanlarındandır.",
          en: 'Indeed, Safa and Marwah are among the symbols of Allah.',
          ar: 'الصفا والمروة من معالم دين الله، ويُسعى بينهما في الحج والعمرة.',
        ),
        kaynak: L10nText(tr: 'Bakara 2/158', en: 'Al-Baqarah 2:158', ar: 'البقرة: 158'),
      ),
      GeziAlinti(
        arapca: 'وَصَلاَةٌ فِي الْمَسْجِدِ الْحَرَامِ أَفْضَلُ مِنْ مِائَةِ أَلْفِ صَلاَةٍ فِيمَا سِوَاهُ',
        meal: L10nText(
          tr: 'Mescid-i Haram\'da kılınan bir namaz, başka yerlerde kılınan yüz bin namazdan daha faziletlidir.',
          en: 'A prayer in Masjid al-Haram is better than a hundred thousand prayers elsewhere.',
          ar: 'رواه ابن ماجه عن جابر رضي الله عنه.',
        ),
        kaynak: L10nText(tr: 'İbn Mâce, İkâmetü\'s-salât, 195 (1406)', en: 'Ibn Majah 1406', ar: 'ابن ماجه (1406)'),
      ),
      GeziAlinti(
        arapca: 'مَاءُ زَمْزَمَ لِمَا شُرِبَ لَهُ',
        meal: L10nText(
          tr: 'Zemzem suyu ne niyetle içilirse onun içindir.',
          en: 'The water of Zamzam is for whatever it is drunk for.',
          ar: 'رواه ابن ماجه عن جابر رضي الله عنه.',
        ),
        kaynak: L10nText(tr: 'İbn Mâce, Menâsik, 78 (3062)', en: 'Ibn Majah 3062', ar: 'ابن ماجه (3062)'),
      ),
    ],
    adab: [
      L10nText(
        tr: 'Mescide sağ ayakla, giriş duasıyla ve sükûnetle girin; Kâbe\'yi ilk gördüğünüzde dilediğiniz gibi dua edin.',
        en: 'Enter with your right foot, with the supplication for entering a mosque and with calm; make whatever supplication you wish on first seeing the Kaaba.',
        ar: 'ادخل المسجد بالرجل اليمنى مع دعاء دخول المسجد وبسكينة، وادعُ بما شئت عند رؤية الكعبة أول مرة.',
      ),
      L10nText(
        tr: "Tavafa Hacerü'l-Esved hizasından başlayın; kalabalıkta taşa dokunmak için itişmeyin, uzaktan elle işaret ederek istilam yeterlidir.",
        en: 'Begin tawaf in line with the Black Stone; do not push to touch it in crowds—pointing to it from a distance is enough.',
        ar: 'ابدأ الطواف من محاذاة الحجر الأسود، ولا تزاحم لاستلامه، فالإشارة إليه من بعيد تكفي.',
      ),
      L10nText(
        tr: "Tavaftan sonra Makam-ı İbrahim'in arkasında, orası kalabalıksa mescidin uygun bir yerinde iki rekât namaz kılın.",
        en: 'After tawaf pray two rak\'ahs behind the Station of Ibrahim, or anywhere suitable in the mosque if it is crowded.',
        ar: 'صلِّ ركعتين بعد الطواف خلف مقام إبراهيم، أو في أي موضع مناسب من المسجد عند الزحام.',
      ),
      L10nText(
        tr: 'Zemzemi kıbleye dönerek, besmeleyle ve dua ederek için; şişelerle yalnız izin verilen dağıtım noktalarından alın.',
        en: 'Drink Zamzam facing the qibla, saying Bismillah and making supplication; take bottles only from the permitted dispensing points.',
        ar: 'اشرب زمزم مستقبلًا القبلة مسمّيًا داعيًا، ولا تأخذ منها إلا من نقاط التوزيع المسموح بها.',
      ),
      L10nText(
        tr: 'Namaz kılanların önünden geçmeyin, yürüyüş yollarında oturmayın ve görevlilerin yönlendirmelerine uyun.',
        en: 'Do not walk in front of people praying, do not sit in the walkways, and follow the directions of the staff.',
        ar: 'لا تمرّ بين يدي المصلين، ولا تجلس في الممرات، والتزم بتوجيهات المنظّمين.',
      ),
      L10nText(
        tr: 'Kafileden ayrılırsanız buluşmak için bir kapı numarası belirleyin; Mescid-i Haram\'ın kapıları numaralıdır.',
        en: 'Agree on a gate number as a meeting point in case you get separated; the gates of the mosque are numbered.',
        ar: 'اتفق مع مجموعتك على رقم باب للالتقاء عند الافتراق، فأبواب المسجد الحرام مرقّمة.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Kalabalık dönemlerde Kâbe'nin çevresindeki zemin kat tavaf alanı (metaf) umre yapanlara ayrılabilir; umre yapmayanlar üst katlara yönlendirilir. Bebek arabaları metafa alınmayabilir. Ramazan gibi yoğun dönemlerde bazı uygulamalar için Nusuk üzerinden izin istenebilir. Hacerü'l-Esved ve Kâbe örtüsü çevresinde zaman zaman koruma bariyeri bulunur.",
      en: "At busy times the ground-floor tawaf area around the Kaaba (mataf) may be reserved for those performing Umrah; others are directed to the upper floors. Prams may not be allowed into the mataf. During peak periods such as Ramadan, a Nusuk permit may be required for some activities. There is sometimes a protective barrier around the Black Stone and the cover of the Kaaba.",
      ar: 'في أوقات الزحام قد يُخصَّص صحن المطاف في الدور الأرضي للمعتمرين، ويُوجَّه غيرهم إلى الأدوار العلوية. وقد لا يُسمح بعربات الأطفال في صحن المطاف. وفي المواسم كرمضان قد يُطلب تصريح عبر تطبيق نسك لبعض الأمور. وتوضع أحيانًا حواجز حول الحجر الأسود وكسوة الكعبة.',
    ),
    uygunSaat: L10nText(
      tr: 'Gece geç saatler ve kuşluk vakti daha sakindir',
      en: 'Late night and mid-morning are calmer',
      ar: 'آخر الليل ووقت الضحى أهدأ',
    ),
    ziyaretSuresi: L10nText(tr: 'Umre ile 2–4 saat', en: '2–4 hours with Umrah', ar: '2–4 ساعات مع العمرة'),
    anlatim: L10nText(
      tr: "Şu an yeryüzünün en kutsal mescidinde, Mescid-i Haram'dasınız. Karşınızda yükselen siyah örtülü yapı Kâbe'dir. Dünyanın dört bir yanındaki Müslümanlar her gün beş vakit namazda bu eve yönelir. Kur'an, insanlar için kurulan ilk evin Mekke'deki bu mübarek ev olduğunu haber verir.\n\n"
          "Hikâye çok eskilere, Hz. İbrahim'e uzanır. Hz. İbrahim, eşi Hacer'i ve küçük oğlu İsmail'i Allah'ın emriyle bu ıssız vadiye bıraktı. Su tükenince Hacer, oğluna su bulmak için Safa ile Merve tepeleri arasında yedi kez gidip geldi. Sonunda Allah'ın lütfuyla Zemzem suyu çıktı. Bugün sa'y yapan her mümin, bir annenin bu sabrını ve tevekkülünü adım adım yeniden yaşar. Yıllar sonra Hz. İbrahim ile oğlu İsmail, Kâbe'nin temellerini birlikte yükselttiler. Kâbe'nin karşısında gördüğünüz Makam-ı İbrahim, bu inşa sırasında kullanılan ve üzerinde Hz. İbrahim'in ayak izleri bulunduğu kabul edilen taştır.\n\n"
          "Kâbe'nin doğu köşesinde Hacerü'l-Esved bulunur. Tavaf bu taşın hizasından başlar. Kureyş, Hz. Peygamber'in gençlik yıllarında Kâbe'yi yeniden inşa ettiğinde bu taşı yerine kimin koyacağı konusunda kabileler birbirine girmek üzereydi. Henüz peygamberlik gelmemiş olan Hz. Muhammed taşı bir örtünün üzerine koydu, kabile reisleri örtüyü birlikte kaldırdı ve taşı yerine kendisi yerleştirdi. Böylece büyük bir çatışma önlendi.\n\n"
          "Kâbe'nin kuzeybatısındaki yarım daire biçimli alçak duvarın içi Hicr'dir. Kureyş helal kazançtan toplanan malzeme yetmeyince bu bölümü binanın dışında bırakmıştı. Mekke'nin fethinde Hz. Peygamber Kâbe'yi putlardan temizledi ve içinde namaz kıldı. Asırlar boyunca halifeler, sultanlar ve krallar bu mescidi genişletti. 1630'daki büyük selden sonra Osmanlı Sultanı Dördüncü Murad döneminde Kâbe aslına uygun olarak yeniden inşa edildi. Bugün gördüğünüz kubbeli revaklar da Osmanlı döneminden kalmadır.\n\n"
          "Hz. Peygamber, burada kılınan bir namazın başka yerlerde kılınan yüz bin namazdan daha faziletli olduğunu bildirmiştir. Tavafınızı sükûnetle yapın, kimseyi incitmeden ilerleyin. Zemzemi şifa niyetiyle için ve bu mübarek mekânda kendiniz, aileniz ve bütün ümmet için dua etmeyi unutmayın.",
      en: "You are now in the holiest mosque on earth, Masjid al-Haram. The black-draped building rising before you is the Kaaba. Five times a day, Muslims all over the world turn towards this house in prayer. The Qur'an tells us that the first house established for mankind is this blessed house in Makkah.\n\n"
          "The story goes back to Prophet Ibrahim. By the command of Allah, Ibrahim left his wife Hajar and his infant son Ismail in this barren valley. When their water ran out, Hajar went back and forth seven times between the hills of Safa and Marwah, searching for water for her son. At last, by the grace of Allah, the spring of Zamzam gushed forth. Every believer who performs sa'i today relives, step by step, the patience and trust of this mother. Years later, Ibrahim and his son Ismail raised the foundations of the Kaaba together. The Station of Ibrahim, facing the Kaaba, is the stone used during that building and believed to bear his footprints.\n\n"
          "At the eastern corner of the Kaaba is the Black Stone, and tawaf begins in line with it. When the Quraysh rebuilt the Kaaba in the Prophet's youth, the tribes almost came to blows over who would set this stone back in place. Muhammad, who had not yet received prophethood, laid the stone on a cloth, the chiefs lifted the cloth together, and he set the stone in place with his own hands. A serious conflict was averted.\n\n"
          "Inside the low semicircular wall on the north-western side lies the Hijr. When the lawful funds they had collected ran short, the Quraysh left this part outside the building. At the conquest of Makkah the Prophet cleansed the Kaaba of idols and prayed inside it. Over the centuries caliphs, sultans and kings enlarged this mosque. After the great flood of 1630, the Kaaba was faithfully rebuilt in the reign of the Ottoman Sultan Murad the Fourth. The domed arcades you see today also date from the Ottoman period.\n\n"
          "The Prophet taught that a prayer here is better than a hundred thousand prayers elsewhere. Perform your tawaf calmly and move on without hurting anyone. Drink Zamzam with the intention of healing, and do not forget to pray in this blessed place for yourself, your family and the whole community of believers.",
      ar: 'أنت الآن في أقدس مساجد الأرض، المسجد الحرام. وهذا البناء المكسوّ بالسواد أمامك هو الكعبة المشرفة. إليها يتوجّه المسلمون في كل أنحاء العالم خمس مرات كل يوم. وقد أخبر القرآن الكريم أن أول بيت وُضع للناس هو هذا البيت المبارك بمكة.\n\n'
          'وتبدأ القصة مع إبراهيم عليه السلام. فقد ترك زوجه هاجر وابنه الرضيع إسماعيل في هذا الوادي القفر بأمر الله. فلما نفد الماء سعت هاجر بين الصفا والمروة سبع مرات تلتمس الماء لابنها. ثم تفجّر ماء زمزم بفضل الله. وكل مؤمن يسعى اليوم يعيش خطوة بخطوة صبر هذه الأم وتوكّلها. وبعد سنين رفع إبراهيم وابنه إسماعيل قواعد البيت معًا. ومقام إبراهيم الذي تراه قبالة الكعبة هو الحجر الذي قام عليه أثناء البناء، ويُعتقد أن عليه أثر قدميه.\n\n'
          'وفي الركن الشرقي من الكعبة الحجر الأسود، ومن محاذاته يبدأ الطواف. ولما جدّدت قريش بناء الكعبة في شباب النبي صلى الله عليه وسلم كادت القبائل تقتتل على شرف وضع الحجر في مكانه. فوضعه محمد صلى الله عليه وسلم، قبل البعثة، في ثوب، ورفع زعماء القبائل الثوب جميعًا، ثم وضع الحجر بيده الشريفة في موضعه. وهكذا دُفعت فتنة عظيمة.\n\n'
          'وداخل الجدار المنخفض نصف الدائري في الجهة الشمالية الغربية يقع الحِجر. فقد قصرت بقريش النفقة الطيبة فتركوا هذا الجزء خارج البناء. وفي فتح مكة طهّر النبي صلى الله عليه وسلم الكعبة من الأصنام وصلّى داخلها. وعلى مرّ القرون وسّع الخلفاء والسلاطين والملوك هذا المسجد. وبعد السيل العظيم سنة ألف وستمائة وثلاثين أُعيد بناء الكعبة على هيئتها في عهد السلطان العثماني مراد الرابع. والأروقة ذات القباب التي تراها اليوم من العهد العثماني أيضًا.\n\n'
          'وقد أخبر النبي صلى الله عليه وسلم أن الصلاة هنا أفضل من مائة ألف صلاة فيما سواه. فطُف بسكينة، وامضِ دون أن تؤذي أحدًا. واشرب من زمزم بنية الشفاء، ولا تنسَ الدعاء في هذا المكان المبارك لنفسك ولأهلك وللأمة كلها.',
    ),
    kaynaklar: [
      GeziKaynak('TDV İslâm Ansiklopedisi – Kâbe', 'https://islamansiklopedisi.org.tr/kabe'),
      GeziKaynak('TDV İslâm Ansiklopedisi – Mescid-i Harâm', 'https://islamansiklopedisi.org.tr/mescid-i-haram'),
      GeziKaynak('TDV İslâm Ansiklopedisi – Hacerülesved', 'https://islamansiklopedisi.org.tr/hacerulesved'),
      GeziKaynak('TDV İslâm Ansiklopedisi – Makām-ı İbrâhim', 'https://islamansiklopedisi.org.tr/makam-i-ibrahim'),
      GeziKaynak('TDV İslâm Ansiklopedisi – Zemzem', 'https://islamansiklopedisi.org.tr/zemzem'),
      GeziKaynak('TDV İslâm Ansiklopedisi – Safâ ve Merve', 'https://islamansiklopedisi.org.tr/safa-ve-merve'),
      GeziKaynak("TDV İslâm Ansiklopedisi – Sa'y", 'https://islamansiklopedisi.org.tr/say'),
      GeziKaynak('Kur\'ân-ı Kerîm – Âl-i İmrân 3/96 (quran.com)', 'https://quran.com/3/96'),
      GeziKaynak('Hac ve Umre Bakanlığı – Tavaf düzenlemeleri', 'https://haj.gov.sa/en/Media-Center/Ministry-News/2026/Ministry-of-Hajj-and-Umrah-Adherence-to-Tawaf-Regulations-Enhances-Movement-Flow'),
      GeziKaynak('OpenStreetMap – Kâbe', 'https://www.openstreetmap.org/way/103914569'),
    ],
  ),

  // ---------------------------------------------------------------- 2
  GeziYeri(
    id: 'hira',
    bolge: GeziBolge.mekke,
    tur: GeziTur.dag,
    ad: L10nText(
      tr: 'Nur Dağı ve Hira Mağarası',
      en: 'Jabal al-Nour and the Cave of Hira',
      ar: 'جبل النور وغار حراء',
    ),
    arapcaAd: L10nText.same('جبل النور وغار حراء'),
    altBaslik: L10nText(
      tr: 'İlk vahyin indiği mağara',
      en: 'The cave of the first revelation',
      ar: 'الغار الذي نزل فيه أول الوحي',
    ),
    sehir: L10nText(
      tr: "Mekke, Kâbe'nin ~5 km kuzeydoğusu",
      en: 'Makkah, ~5 km north-east of the Kaaba',
      ar: 'مكة المكرمة، نحو 5 كم شمال شرق الكعبة',
    ),
    konum: LatLng(21.4573709, 39.8591955), // OSM node 3732559985 (غار حراء, cave_entrance)
    genel: L10nText(
      tr: "Hira, Mekke'nin kuzeydoğusunda, Kâbe'ye yaklaşık 5 km uzaklıktaki dağın adıdır; halk arasında Cebel-i Nur, yani Nur Dağı diye bilinir. Bu adın, vahiy nurunun bu dağdaki mağaraya inmesinden geldiği düşünülür. Çevresindeki dağlardan daha dik ve yüksek olan sivri tepesi uzaktan kolayca fark edilir.\n\n"
          "Ünlü mağara zirvenin yaklaşık 20 metre aşağısındadır. Aslında üst üste yığılmış kaya blokları arasında kalan, iki ucu açık, dar bir boşluktur. İçeride bir kişi ayakta durabilir ve uzanabilir. Mağaraya doğal kayalardan oluşan yüksek basamaklarla çıkılır ve dar bir düzlükten geçilerek girilir. Dağın eteğinde bugün Hira Kültür Bölgesi bulunur; burada vahyin hikâyesini anlatan bir sergi ve Kur'an müzesi yer alır.",
      en: "Hira is the mountain about 5 km north-east of the Kaaba, popularly known as Jabal al-Nour, the Mountain of Light. The name is thought to come from the light of revelation that descended in the cave on this mountain. Its sharp summit, steeper and higher than the surrounding hills, can easily be seen from afar.\n\n"
          "The famous cave lies about 20 metres below the summit. It is really a narrow gap between piled-up blocks of rock, open at both ends. Inside, one person can stand upright and lie down. The cave is reached by high steps of natural rock and entered through a narrow ledge. At the foot of the mountain is today's Hira Cultural District, with an exhibition telling the story of the revelation and a Qur'an museum.",
      ar: 'حراء جبل يقع شمال شرق مكة على بُعد نحو خمسة كيلومترات من الكعبة، ويُعرف عند الناس بجبل النور، ويُظن أن هذا الاسم جاءه من نور الوحي الذي نزل في غاره. وقمته المدبّبة أشدّ انحدارًا وأعلى مما حوله من الجبال، فتُرى من بعيد.\n\n'
          'ويقع الغار الشهير تحت القمة بنحو عشرين مترًا، وهو في الحقيقة فجوة ضيقة بين صخور متراكبة مفتوحة الطرفين، يستطيع الرجل أن يقف فيها وأن يضطجع. ويُصعد إليه عبر درجات صخرية عالية ويُدخل من ممرّ ضيق. وفي سفح الجبل اليوم حيّ حراء الثقافي، وفيه معرض يروي قصة الوحي ومتحف للقرآن الكريم.',
    ),
    tarihce: L10nText(
      tr: "İslam'dan önce Mekke'de, Ramazan gibi belirli aylarda inzivaya çekilen hanîfler vardı. Hz. Peygamber'in dedesi Abdülmuttalib de zaman zaman Hira'daki mağaraya çekilip ibadet ederdi. Hz. Muhammed de muhtemelen otuz beş yaşlarından itibaren Ramazan aylarında bu mağaraya çekilmeye, tefekküre dalmaya başladı. Yanına az bir azık alır, azığı bitince evine dönüp yenisini alır, dağdan her inişinde önce Kâbe'yi tavaf ederdi.\n\n"
          "Kırk yaşına geldiği 610 yılında, Ramazan ayının son on gününde, sonradan Kadir Gecesi adı verilen bir gece Cebrail mağaraya geldi ve Alak suresinin \"Oku!\" emriyle başlayan ilk beş ayeti indirildi. Büyük bir heyecanla evine dönen Hz. Peygamber'i eşi Hz. Hatice teselli etti ve onu amcasının oğlu Varaka b. Nevfel'e götürdü.\n\n"
          "Hira, başka hatıralara da tanıklık etti. Taif dönüşünde Hz. Peygamber, Mekke'ye girebilmek için himaye ararken bir süre burada bekledi. Bir rivayete göre de ashabıyla birlikte dağın üstündeyken dağ sallanmış, Hz. Peygamber \"Ey Hira, sakin ol!\" buyurmuştur. Mağaranın biraz yukarısında Osmanlı döneminde yapılmış bir su sarnıcının kalıntıları bulunur.",
      en: "Before Islam there were hanifs in Makkah who withdrew into seclusion in certain months such as Ramadan. The Prophet's grandfather Abd al-Muttalib also sometimes retreated to the cave on Hira to worship. Muhammad, probably from around the age of thirty-five, began to spend the months of Ramadan in this cave in contemplation. He took little food with him, went home for more when it ran out, and each time he came down the mountain he first went round the Kaaba before going home.\n\n"
          "In 610, when he was forty, during the last ten days of Ramadan, on a night later called the Night of Power, the angel Jibril came to the cave and the first five verses of Surah al-Alaq were revealed, beginning with the command \"Read!\". The Prophet returned home deeply shaken; his wife Khadijah comforted him and took him to her cousin Waraqah ibn Nawfal.\n\n"
          "Hira witnessed other memories too. Returning from Ta'if, the Prophet waited here for a while as he sought protection to re-enter Makkah. According to one narration, the mountain shook while he stood on it with some of his Companions, and he said, \"Be still, O Hira!\". A little above the cave are the remains of a water cistern built in the Ottoman period.",
      ar: 'كان في مكة قبل الإسلام حنفاء يعتزلون الناس في أشهر معيّنة كرمضان، وكان عبد المطلب جدّ النبي ﷺ يتحنّث أحيانًا في غار حراء. وبدأ محمد ﷺ، وهو في نحو الخامسة والثلاثين على الأرجح، يخلو بهذا الغار في رمضان متفكّرًا متعبّدًا. وكان يتزوّد بالقليل، فإذا نفد رجع إلى بيته فتزوّد، وكان إذا نزل من الجبل طاف بالكعبة قبل أن يدخل بيته.\n\n'
          'فلما بلغ الأربعين سنة 610م، في العشر الأواخر من رمضان، في ليلة سُمّيت بعدُ ليلة القدر، جاءه جبريل في الغار فنزلت الآيات الخمس الأولى من سورة العلق مبتدئة بالأمر «اقرأ». فرجع ﷺ إلى بيته يرجف فؤاده، فطمأنته خديجة رضي الله عنها وذهبت به إلى ابن عمها ورقة بن نوفل.\n\n'
          'وشهد حراء ذكريات أخرى؛ فبعد العودة من الطائف انتظر النبي ﷺ فيه مدة يلتمس من يجيره ليدخل مكة. ويُروى أن الجبل اهتزّ وهو ﷺ عليه مع بعض أصحابه فقال: «اثبت حراء». وفوق الغار بقليل بقايا صهريج ماء بُني في العهد العثماني.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: '~605 sonrası', en: 'After c. 605', ar: 'بعد نحو 605م'),
        metin: L10nText(
          tr: 'Hz. Muhammed Ramazan aylarında Hira mağarasında inzivaya çekilmeye başlar.',
          en: 'Muhammad begins to spend the months of Ramadan in seclusion in the Cave of Hira.',
          ar: 'محمد ﷺ يبدأ التحنّث في غار حراء في شهر رمضان.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Ramazan 610', en: 'Ramadan 610', ar: 'رمضان 610م'),
        metin: L10nText(
          tr: "Kadir Gecesi'nde Cebrail aracılığıyla Alak suresinin ilk beş ayeti iner; peygamberlik başlar.",
          en: 'On the Night of Power the first five verses of Surah al-Alaq are revealed through Jibril; prophethood begins.',
          ar: 'في ليلة القدر تنزل الآيات الخمس الأولى من سورة العلق بواسطة جبريل، وتبدأ البعثة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '619–620', en: '619–620', ar: '619–620م'),
        metin: L10nText(
          tr: "Taif dönüşünde Hz. Peygamber, Mut'im b. Adî'nin himayesini kabul ettiği haberi gelene kadar Hira'da bekler.",
          en: "Returning from Ta'if, the Prophet waits at Hira until word comes that Mut'im ibn Adi has granted him protection.",
          ar: 'بعد العودة من الطائف ينتظر النبي ﷺ في حراء حتى يبلغه قبول المطعم بن عدي إجارته.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Osmanlı dönemi', en: 'Ottoman period', ar: 'العهد العثماني'),
        metin: L10nText(
          tr: 'Mağaranın biraz yukarısına bir su sarnıcı yapılır; kalıntıları bugün de görülür.',
          en: 'A water cistern is built just above the cave; its remains can still be seen.',
          ar: 'بناء صهريج ماء فوق الغار بقليل، ولا تزال بقاياه ظاهرة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Günümüz', en: 'Today', ar: 'اليوم'),
        metin: L10nText(
          tr: "Dağın eteğinde Vahiy Sergisi ve Kur'an Müzesi'nin bulunduğu Hira Kültür Bölgesi açılmıştır.",
          en: "The Hira Cultural District, with the Revelation Exhibition and a Qur'an museum, has opened at the foot of the mountain.",
          ar: 'افتتاح حيّ حراء الثقافي في سفح الجبل، وفيه معرض الوحي ومتحف القرآن الكريم.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Hira, Kur'an'ın ilk ayetlerinin indiği ve Hz. Peygamber'in peygamberlik görevinin başladığı yerdir. Bu yüzden Müslümanların gönlünde ayrı bir yeri vardır. Hz. Peygamber'in burada geçirdiği sade ve tefekkür dolu günler, inzivanın ve kendini ibadete vermenin örneği olarak anılır.\n\n"
          "Hira'yı ziyaret etmek hac veya umrenin bir parçası değildir; burada özel bir ibadet de emredilmemiştir. Ziyaretçi, ilk vahyin \"Oku!\" emriyle başladığını hatırlayarak ilme, okumaya ve tefekküre verilen değeri düşünebilir.",
      en: "Hira is where the first verses of the Qur'an were revealed and the Prophet's mission began, so it holds a special place in Muslim hearts. The simple days of contemplation the Prophet spent here are remembered as an example of retreat and devotion.\n\n"
          "Visiting Hira is not part of Hajj or Umrah, and no particular act of worship is prescribed here. The visitor may reflect on the fact that revelation began with the command \"Read!\" and on the value Islam gives to knowledge, reading and reflection.",
      ar: 'حراء هو الموضع الذي نزلت فيه أولى آيات القرآن وبدأت فيه رسالة النبي ﷺ، فله في قلوب المسلمين منزلة خاصة. وتُذكر أيامه ﷺ فيه، بما فيها من بساطة وتفكّر، مثالًا للخلوة والانقطاع إلى العبادة.\n\n'
          'وزيارة حراء ليست من مناسك الحج أو العمرة، ولم تُشرع فيه عبادة مخصوصة. ويمكن للزائر أن يتأمّل كيف بدأ الوحي بالأمر «اقرأ»، وما للعلم والقراءة والتفكّر من مكانة في الإسلام.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'ٱقْرَأْ بِٱسْمِ رَبِّكَ ٱلَّذِى خَلَقَ ۝ خَلَقَ ٱلْإِنسَـٰنَ مِنْ عَلَقٍ ۝ ٱقْرَأْ وَرَبُّكَ ٱلْأَكْرَمُ ۝ ٱلَّذِى عَلَّمَ بِٱلْقَلَمِ ۝ عَلَّمَ ٱلْإِنسَـٰنَ مَا لَمْ يَعْلَمْ',
        meal: L10nText(
          tr: "Yaratan Rabbinin adıyla oku! O, insanı alaktan yarattı. Oku! Rabbin en büyük kerem sahibidir. O, kalemle öğretendir. İnsana bilmediğini öğretti.",
          en: 'Read in the name of your Lord who created. He created man from a clinging substance. Read, and your Lord is the Most Generous, who taught by the pen, taught man what he did not know.',
          ar: 'أول ما نزل من القرآن على النبي ﷺ في غار حراء.',
        ),
        kaynak: L10nText(tr: 'Alak 96/1-5', en: 'Al-Alaq 96:1–5', ar: 'العلق: 1–5'),
      ),
    ],
    adab: [
      L10nText(
        tr: 'Tırmanış dik ve yorucudur; sağlık durumunuz elvermiyorsa çıkmayın, dağın eteğinden ve Hira Kültür Bölgesi\'nden de ziyaret edebilirsiniz.',
        en: 'The climb is steep and tiring; if your health does not allow it, do not climb—you can also visit from the foot of the mountain and the Hira Cultural District.',
        ar: 'الصعود شاق ومنحدر، فلا تصعد إن لم تسمح صحتك، ويمكنك الاكتفاء بالزيارة من السفح وحيّ حراء الثقافي.',
      ),
      L10nText(
        tr: 'Sıcakta çıkmayın; sabah erken veya ikindiden sonra, bol su ve kaymayan ayakkabıyla gidin.',
        en: 'Do not climb in the heat; go early in the morning or after the afternoon prayer, with plenty of water and non-slip shoes.',
        ar: 'تجنّب الصعود في الحر، واذهب في الصباح الباكر أو بعد العصر، ومعك ماء كافٍ وحذاء لا ينزلق.',
      ),
      L10nText(
        tr: 'Mağara çok dardır; sıra bekleyin, itişmeyin, başkalarına da yer açın.',
        en: 'The cave is very narrow; wait your turn, do not push, and make room for others.',
        ar: 'الغار ضيق جدًا، فانتظر دورك ولا تزاحم، وأفسح لغيرك.',
      ),
      L10nText(
        tr: 'Kayalara yazı yazmayın, taş veya toprak almayın, çöpünüzü geri götürün.',
        en: 'Do not write on the rocks or take stones or soil; carry your rubbish back with you.',
        ar: 'لا تكتب على الصخور ولا تأخذ منها حجرًا أو ترابًا، واحمل مخلّفاتك معك.',
      ),
      L10nText(
        tr: 'Ziyareti bir ibadet şartı gibi görmeden, ilk vahyi tefekkür ederek yapın.',
        en: 'Make the visit as a moment of reflection on the first revelation, not as a required rite.',
        ar: 'اجعل الزيارة تأمّلًا في بدء الوحي، لا نسكًا مفروضًا.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Mağaraya çıkış serbesttir ancak yol diktir ve tırmanış tek yön için yaklaşık 1–1,5 saat sürebilir. Dağın eteğindeki Hira Kültür Bölgesi'ndeki Vahiy Sergisi ve Kur'an Müzesi biletlidir; açılış saatleri değişebilir.",
      en: "Climbing to the cave is permitted, but the path is steep and one way can take about 1–1.5 hours. The Revelation Exhibition and the Qur'an museum in the Hira Cultural District at the foot of the mountain require tickets; opening hours may change.",
      ar: 'الصعود إلى الغار مسموح، لكن الطريق شديد الانحدار وقد يستغرق الصعود وحده ساعة إلى ساعة ونصف. ودخول معرض الوحي ومتحف القرآن في حيّ حراء الثقافي بتذاكر، وقد تتغير مواعيد العمل.',
    ),
    uygunSaat: L10nText(
      tr: 'Sabah erken veya ikindiden sonra',
      en: 'Early morning or after the afternoon prayer',
      ar: 'الصباح الباكر أو بعد العصر',
    ),
    ziyaretSuresi: L10nText(tr: 'Tırmanışla 2,5–3 saat', en: '2.5–3 hours with the climb', ar: '2.5–3 ساعات مع الصعود'),
    anlatim: L10nText(
      tr: "Önünüzde yükselen sivri tepeli dağ Hira'dır. Halk arasında Nur Dağı diye bilinir. Bu ad, vahyin nurunun bu dağdaki küçük bir mağaraya inmesinden gelir. Mağara, zirvenin hemen altında, kaya blokları arasında kalmış dar bir boşluktur. İçinde ancak birkaç kişi durabilir.\n\n"
          "Hz. Muhammed, peygamberlikten önceki yıllarda Mekke'nin gürültüsünden uzaklaşmak için bu mağaraya çekilirdi. Özellikle Ramazan aylarını burada geçirir, yanına az bir azık alır, günlerce tefekküre dalardı. Azığı bitince evine iner, dağdan her inişinde önce Kâbe'yi tavaf ederdi. Bazen eşi Hz. Hatice de onunla birlikte gelirdi.\n\n"
          "Kırk yaşına geldiği yıl, Ramazan ayının son on gününde bir gece, Cebrail mağarada ona göründü ve \"Oku!\" dedi. Böylece Alak suresinin ilk beş ayeti indi. Yaratan Rabbinin adıyla oku, diye başlayan bu ayetler, insanlığa kalemle öğreten Rabbi haber veriyordu. O gece, sonradan Kadir Gecesi diye anılacaktı. Hz. Peygamber büyük bir heyecanla dağdan inip evine döndü. Hz. Hatice onu sevgiyle karşıladı, teselli etti ve ona inanan ilk insan oldu.\n\n"
          "Hira daha sonra da önemli bir sığınak oldu. Taif yolculuğundan dönen Hz. Peygamber, Mekke'ye girebilmek için himaye ararken bir süre burada bekledi. Bir rivayete göre ashabıyla birlikte dağın üstündeyken dağ sallanmış, o da \"Ey Hira, sakin ol\" buyurmuştu.\n\n"
          "Bugün dağın eteğinde vahyin hikâyesini anlatan bir sergi ve Kur'an müzesi bulunuyor. Mağaraya tırmanmak dik ve yorucudur. Gücünüz yetiyorsa serin saatlerde, bol suyla çıkın. Yetmiyorsa aşağıdan bakmak da yeter. Asıl olan, ilk emrin oku olduğunu hatırlamak ve bu mesajı hayatımıza taşımaktır.",
      en: "The sharp-peaked mountain rising before you is Hira, known popularly as the Mountain of Light. The name comes from the light of revelation that descended in a small cave on this mountain. The cave is a narrow gap between rocks just below the summit, with room for only a few people.\n\n"
          "In the years before his prophethood, Muhammad would retreat to this cave, away from the bustle of Makkah. He spent the months of Ramadan especially here, taking a little food and spending days in contemplation. When his food ran out he came down to his home, and each time he descended he first went round the Kaaba. Sometimes his wife Khadijah came with him.\n\n"
          "In the year he turned forty, on a night in the last ten days of Ramadan, the angel Jibril appeared to him in the cave and said, \"Read!\". So the first five verses of Surah al-Alaq were revealed. Beginning with the words, read in the name of your Lord who created, these verses spoke of the Lord who taught mankind by the pen. That night would later be known as the Night of Power. The Prophet came down the mountain deeply shaken and returned home. Khadijah received him with love, comforted him, and became the first person to believe in him.\n\n"
          "Hira later became a refuge once more. Returning from his journey to Ta'if, the Prophet waited here for a while as he sought protection to re-enter Makkah. According to one narration, the mountain trembled while he stood on it with his Companions, and he said, \"Be still, O Hira\".\n\n"
          "Today, at the foot of the mountain, there is an exhibition about the story of the revelation and a Qur'an museum. The climb to the cave is steep and tiring. If you are able, climb in the cool hours with plenty of water. If not, looking up from below is enough. What matters is to remember that the first command was to read, and to carry that message into our lives.",
      ar: 'هذا الجبل ذو القمة المدبّبة أمامك هو حراء، ويعرفه الناس بجبل النور. وقد جاءه هذا الاسم من نور الوحي الذي نزل في غار صغير فيه. والغار فجوة ضيقة بين الصخور تحت القمة مباشرة، لا تتّسع إلا لنفر قليل.\n\n'
          'كان محمد صلى الله عليه وسلم قبل البعثة يخلو بهذا الغار بعيدًا عن صخب مكة. وكان يقضي فيه شهر رمضان خاصة، يتزوّد بالقليل ويمكث أيامًا متفكّرًا. فإذا نفد زاده نزل إلى بيته، وكان إذا نزل بدأ بالطواف بالكعبة. وربما صحبته زوجه خديجة رضي الله عنها.\n\n'
          'وفي العام الذي بلغ فيه الأربعين، في ليلة من العشر الأواخر من رمضان، جاءه جبريل في الغار فقال له: اقرأ. فنزلت الآيات الخمس الأولى من سورة العلق. اقرأ باسم ربك الذي خلق، آيات تُعرّف الإنسان بربه الذي علّم بالقلم. وتلك الليلة هي التي عُرفت بعدُ بليلة القدر. فنزل النبي صلى الله عليه وسلم من الجبل يرجف فؤاده حتى دخل بيته. فاستقبلته خديجة بالحب والطمأنينة، وكانت أول من آمن به.\n\n'
          'وصار حراء بعد ذلك ملجأً مرة أخرى. فحين عاد النبي صلى الله عليه وسلم من الطائف انتظر فيه مدة يلتمس من يجيره ليدخل مكة. ويُروى أن الجبل اهتزّ وهو عليه مع أصحابه فقال: اثبت حراء.\n\n'
          'وفي سفح الجبل اليوم معرض يروي قصة الوحي ومتحف للقرآن الكريم. والصعود إلى الغار شاقّ ومنحدر. فإن استطعت فاصعد في الساعات الباردة ومعك ماء كافٍ. وإن لم تستطع فالنظر إليه من الأسفل يكفي. والمهم أن نتذكّر أن أول أمر نزل هو اقرأ، وأن نحمل هذه الرسالة في حياتنا.',
    ),
    kaynaklar: [
      GeziKaynak('TDV İslâm Ansiklopedisi – Hira', 'https://islamansiklopedisi.org.tr/hira'),
      GeziKaynak('TDV İslâm Ansiklopedisi – Nur Dağı', 'https://islamansiklopedisi.org.tr/nur-dagi'),
      GeziKaynak("Kur'ân-ı Kerîm – Alak 96/1-5 (quran.com)", 'https://quran.com/96/1-5'),
      GeziKaynak('Visit Saudi – Hira Cultural District', 'https://visitsaudi.com/en/makkah/attractions/hira-cultural-district-tour'),
      GeziKaynak('OpenStreetMap – Hira Mağarası', 'https://www.openstreetmap.org/node/3732559985'),
    ],
  ),

  // ---------------------------------------------------------------- 3
  GeziYeri(
    id: 'sevr',
    bolge: GeziBolge.mekke,
    tur: GeziTur.magara,
    ad: L10nText(
      tr: 'Sevr Dağı ve Mağarası',
      en: 'Mount Thawr and its Cave',
      ar: 'جبل ثور وغار ثور',
    ),
    arapcaAd: L10nText.same('جبل ثور وغار ثور'),
    altBaslik: L10nText(
      tr: 'Hicret yolunda üç gecelik sığınak',
      en: 'The three-night refuge on the road of the Hijrah',
      ar: 'ملجأ الليالي الثلاث في طريق الهجرة',
    ),
    sehir: L10nText(
      tr: "Mekke, Mescid-i Haram'ın ~4–5 km güneyi",
      en: 'Makkah, ~4–5 km south of Masjid al-Haram',
      ar: 'مكة المكرمة، نحو 4–5 كم جنوب المسجد الحرام',
    ),
    konum: LatLng(21.3771192, 39.8498158), // OSM node 4394613601 (غار ثور, cave_entrance)
    genel: L10nText(
      tr: "Sevr Dağı, Mescid-i Haram'ın güneyinde yer alan yüksek ve kayalık bir dağdır. Hz. Peygamber ile Hz. Ebû Bekir'in hicret sırasında üç gece saklandıkları mağara, dağın zirvesine yakın, Mekke'ye bakan yamaçta, büyük bir kayanın altında kalan küçük ve doğal bir boşluktur.\n\n"
          "Mağaranın biri batıda, biri doğuda iki girişi vardır. Hz. Peygamber'in girdiği batıdaki giriş dar ve yerden biraz yüksektir; doğudaki giriş ise bir insanın rahatça girip çıkabileceği büyüklüktedir. Günümüzde Mekke'nin yerleşimi dağın kuzey eteklerine kadar ulaşmıştır.",
      en: "Mount Thawr is a high, rocky mountain south of Masjid al-Haram. The cave in which the Prophet and Abu Bakr hid for three nights during the Hijrah is a small natural hollow beneath a large rock, near the summit on the slope facing Makkah.\n\n"
          "The cave has two openings, one to the west and one to the east. The western opening, through which the Prophet entered, is narrow and slightly above the ground, while the eastern one is large enough for a person to pass through easily. Today the city of Makkah has spread up to the northern foothills of the mountain.",
      ar: 'جبل ثور جبل صخري مرتفع جنوب المسجد الحرام. والغار الذي اختبأ فيه النبي ﷺ وأبو بكر رضي الله عنه ثلاث ليال في الهجرة تجويف طبيعي صغير تحت صخرة كبيرة قرب قمة الجبل، في السفح المطلّ على مكة.\n\n'
          'وللغار فتحتان: غربية وشرقية. والغربية التي دخل منها النبي ﷺ ضيقة ومرتفعة قليلًا عن الأرض، أما الشرقية فواسعة يدخلها الإنسان بسهولة. وقد امتدّ عمران مكة اليوم إلى سفوح الجبل الشمالية.',
    ),
    tarihce: L10nText(
      tr: "Müslümanlar Medine'ye hicret etmeye başlayınca Mekke müşrikleri Dârünnedve'de toplanıp Hz. Peygamber'i öldürmeye karar verdi. Bundan haberdar olan Hz. Peygamber, Hz. Ebû Bekir'in evinde hicret planını hazırladı. Yolu iyi bilen Abdullah b. Uraykıt kılavuz olarak tutuldu ve develeri üç gün sonra Sevr'in eteğine getirmesi kararlaştırıldı. Hz. Ali, müşrikleri yanıltmak için Hz. Peygamber'in yatağında yattı.\n\n"
          "Gece yarısı Hz. Peygamber ile Hz. Ebû Bekir, Medine yolunun tam ters yönündeki Sevr Dağı'na tırmanıp mağaraya sığındılar. Müşrikler onları daha çok Medine yolunda arayacağı için bu seçim takipçileri şaşırtmak içindi. Bir grup müşrik iz sürücülerle mağaranın ağzına kadar geldi. Endişelenen Hz. Ebû Bekir'e Hz. Peygamber, \"Üzülme, Allah bizimle beraberdir\" diyerek teselli verdi. Bu an Tevbe suresinin 40. ayetinde anlatılır.\n\n"
          "Üç gece boyunca Hz. Ebû Bekir'in oğlu Abdullah gündüz Mekke'deki haberleri toplayıp akşam getirdi. Çoban Âmir b. Füheyre koyunlarını mağaranın yakınına sürerek hem süt sağladı hem de izleri sildi. Üçüncü gecenin sabahında kılavuz develeri getirdi ve kafile Medine'ye doğru yola çıktı. Mağara girişinde örümceğin ağ örmesi ve güvercinlerin yuva yapması gibi bilinen rivayetlerin bir kısmı, hadis âlimlerince sened yönünden eleştirilmiştir.",
      en: "As Muslims began to emigrate to Madinah, the Makkan polytheists met at Dar al-Nadwah and decided to kill the Prophet. Learning of this, the Prophet planned the emigration at the house of Abu Bakr. Abdullah ibn Urayqit, who knew the routes well, was hired as a guide and asked to bring the camels to the foot of Thawr three days later. Ali slept in the Prophet's bed to mislead the polytheists.\n\n"
          "At midnight the Prophet and Abu Bakr climbed Mount Thawr, in the opposite direction from the Madinah road, and took refuge in the cave. Since the pursuers would search mostly along the road to Madinah, this choice was meant to mislead them. A group of polytheists, led by trackers, came right up to the mouth of the cave. When Abu Bakr grew anxious, the Prophet reassured him: \"Do not grieve; Allah is with us.\" This moment is described in verse 40 of Surah al-Tawbah.\n\n"
          "For three nights Abu Bakr's son Abdullah gathered news in Makkah by day and brought it in the evening. The shepherd Amir ibn Fuhayrah drove his sheep near the cave, providing milk and erasing the footprints. On the morning after the third night the guide brought the camels and the party set out for Madinah. Some of the well-known narrations, such as the spider spinning a web and doves nesting at the entrance, have been criticised by hadith scholars for their chains of transmission.",
      ar: 'لما بدأ المسلمون الهجرة إلى المدينة اجتمع مشركو مكة في دار الندوة وأجمعوا على قتل النبي ﷺ. فلما علم بذلك أعدّ خطة الهجرة في بيت أبي بكر رضي الله عنه، واستأجرا عبد الله بن أريقط دليلًا عارفًا بالطرق، على أن يأتي بالراحلتين إلى سفح ثور بعد ثلاث. ونام علي رضي الله عنه في فراش النبي ﷺ تعميةً على المشركين.\n\n'
          'وفي جوف الليل صعد النبي ﷺ وأبو بكر جبل ثور، في عكس اتجاه طريق المدينة، فاختبآ في الغار؛ لأن المشركين سيطلبونهما في طريق المدينة. وجاء نفر من المشركين يقودهم قائفون حتى وقفوا على فم الغار، فقلق أبو بكر، فطمأنه النبي ﷺ قائلًا: «لا تحزن إن الله معنا»، وقد حكى القرآن ذلك في الآية الأربعين من سورة التوبة.\n\n'
          'ومكثا ثلاث ليال، وكان عبد الله بن أبي بكر يتسقّط الأخبار في مكة نهارًا ويأتيهما بها مساءً، وكان عامر بن فهيرة يرعى الغنم قرب الغار فيسقيهما من لبنها ويعفّي على الآثار. وفي صبيحة الليلة الثالثة جاء الدليل بالراحلتين فانطلقوا نحو المدينة. أما ما اشتهر من نسج العنكبوت وتعشيش الحمام على باب الغار فبعض رواياته منتقدة الإسناد عند المحدّثين.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: '622', en: '622', ar: '622م'),
        metin: L10nText(
          tr: "Müşrikler Dârünnedve'de Hz. Peygamber'i öldürme kararı alır; hicret planı Hz. Ebû Bekir'in evinde hazırlanır.",
          en: "The polytheists decide at Dar al-Nadwah to kill the Prophet; the emigration is planned at Abu Bakr's house.",
          ar: 'المشركون يقرّرون قتل النبي ﷺ في دار الندوة، وتُعدّ خطة الهجرة في بيت أبي بكر.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Hicret gecesi', en: 'Night of the Hijrah', ar: 'ليلة الهجرة'),
        metin: L10nText(
          tr: "Hz. Ali Hz. Peygamber'in yatağında yatar; Hz. Peygamber ile Hz. Ebû Bekir Sevr mağarasına sığınır.",
          en: "Ali sleeps in the Prophet's bed; the Prophet and Abu Bakr take refuge in the Cave of Thawr.",
          ar: 'علي ينام في فراش النبي ﷺ، والنبي ﷺ وأبو بكر يأويان إلى غار ثور.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Üç gece', en: 'Three nights', ar: 'ثلاث ليال'),
        metin: L10nText(
          tr: 'Takipçiler mağaranın ağzına kadar gelir ama içeri bakmadan döner. "Üzülme, Allah bizimle beraberdir."',
          en: 'The pursuers reach the mouth of the cave but leave without looking inside. "Do not grieve; Allah is with us."',
          ar: 'الطالبون يبلغون فم الغار ثم ينصرفون دون أن ينظروا فيه. «لا تحزن إن الله معنا».',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1 Rebîülevvel / Eylül 622', en: '1 Rabi al-Awwal / September 622', ar: '1 ربيع الأول / سبتمبر 622م'),
        metin: L10nText(
          tr: "Kılavuz Abdullah b. Uraykıt develeri getirir; kafile Medine'ye doğru yola çıkar.",
          en: 'The guide Abdullah ibn Urayqit brings the camels and the party sets out for Madinah.',
          ar: 'الدليل عبد الله بن أريقط يأتي بالراحلتين، وينطلق الركب نحو المدينة.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Sevr mağarası, hicretin ve Allah'ın Resulünü korumasının sembolüdür. Kur'an bu anı anlatarak Hz. Ebû Bekir'i \"iki kişiden ikincisi\" diye anar; bu yüzden Türk ve İran edebiyatında Hz. Ebû Bekir \"yâr-ı gār\", yani mağara dostu diye bilinir.\n\n"
          "Mağarayı ziyaret etmek dinî bir vecibe değildir. Burası, en zor anda bile Allah'a tevekkül etmeyi, tedbiri elden bırakmamayı ve sadakatli dostluğu hatırlatan bir yerdir.",
      en: "The Cave of Thawr is a symbol of the Hijrah and of Allah's protection of His Messenger. Describing this moment, the Qur'an refers to Abu Bakr as \"the second of two\"; for this reason he is known in Turkish and Persian literature as the \"friend of the cave\".\n\n"
          "Visiting the cave is not a religious obligation. It is a place that reminds us of trust in Allah in the hardest moments, of taking every precaution, and of loyal friendship.",
      ar: 'غار ثور رمز للهجرة ولحفظ الله رسوله ﷺ. وقد ذكر القرآن أبا بكر رضي الله عنه بأنه «ثاني اثنين»، ولذلك يُعرف في الأدبين التركي والفارسي بـ«صاحب الغار».\n\n'
          'وزيارة الغار ليست واجبًا دينيًا، وإنما هو مكان يذكّر بالتوكل على الله في أشدّ اللحظات مع الأخذ بالأسباب، وبالصحبة الوفيّة.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'ثَانِىَ ٱثْنَيْنِ إِذْ هُمَا فِى ٱلْغَارِ إِذْ يَقُولُ لِصَـٰحِبِهِۦ لَا تَحْزَنْ إِنَّ ٱللَّهَ مَعَنَا ۖ فَأَنزَلَ ٱللَّهُ سَكِينَتَهُۥ عَلَيْهِ',
        meal: L10nText(
          tr: "O, iki kişiden ikincisiydi. Hani ikisi mağaradaydı; o, arkadaşına \"Üzülme, Allah bizimle beraberdir\" diyordu. Allah da ona sükûnetini indirdi.",
          en: 'He was the second of two, when they were in the cave and he said to his companion, "Do not grieve; indeed Allah is with us." Then Allah sent down His tranquillity upon him.',
          ar: 'تصف الآية حال النبي ﷺ وأبي بكر رضي الله عنه في غار ثور يوم الهجرة.',
        ),
        kaynak: L10nText(tr: 'Tevbe 9/40', en: 'Al-Tawbah 9:40', ar: 'التوبة: 40'),
      ),
    ],
    adab: [
      L10nText(
        tr: 'Sevr\'e tırmanış Hira\'dan daha uzun ve zordur; yalnızca sağlığınız yerindeyse, rehberle ya da grupla çıkın.',
        en: 'The climb up Thawr is longer and harder than Hira; go only if you are fit, and with a guide or a group.',
        ar: 'صعود ثور أطول وأشقّ من حراء، فلا تصعده إلا إن كنت لائقًا صحيًا، ومع مرشد أو مجموعة.',
      ),
      L10nText(
        tr: 'Gün doğmadan veya sabah erken başlayın; öğle sıcağında kesinlikle tırmanmayın.',
        en: 'Start before sunrise or early in the morning; never climb in the midday heat.',
        ar: 'ابدأ قبل الشروق أو في الصباح الباكر، ولا تصعد في حرّ الظهيرة أبدًا.',
      ),
      L10nText(
        tr: 'Yanınıza bol su, şapka ve el feneri alın; inişte kayalar kaygan olabilir.',
        en: 'Take plenty of water, a hat and a torch; the rocks may be slippery on the way down.',
        ar: 'خذ ماءً كافيًا وقبعة ومصباحًا، فالصخور قد تكون زلقة عند النزول.',
      ),
      L10nText(
        tr: 'Mağarada sıra bekleyin; kayalara yazı yazmayın, çöp bırakmayın.',
        en: 'Wait your turn at the cave; do not write on the rocks or leave litter.',
        ar: 'انتظر دورك عند الغار، ولا تكتب على الصخور ولا تترك مخلّفات.',
      ),
      L10nText(
        tr: 'Tırmanamayanlar için dağı aşağıdan görmek ve hicret yolunu tefekkür etmek de yeterlidir.',
        en: 'For those who cannot climb, seeing the mountain from below and reflecting on the Hijrah is enough.',
        ar: 'ومن لم يستطع الصعود فيكفيه أن يرى الجبل من أسفله ويتأمّل طريق الهجرة.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: 'Dağda resmî bir ziyaret tesisi yoktur; tırmanış tek yön için 1,5–2 saat sürebilir ve yol yer yer bakımsızdır. Yetkililer zaman zaman güvenlik nedeniyle tırmanışı kısıtlayabilir.',
      en: 'There are no official visitor facilities on the mountain; one way can take 1.5–2 hours and the path is poorly maintained in places. The authorities may restrict climbing at times for safety reasons.',
      ar: 'لا توجد على الجبل مرافق رسمية للزوّار، وقد يستغرق الصعود وحده ساعة ونصفًا إلى ساعتين، والطريق غير ممهّد في بعض أجزائه. وقد تقيّد الجهات المختصة الصعود أحيانًا لدواعٍ أمنية.',
    ),
    uygunSaat: L10nText(tr: 'Gün doğumundan önce', en: 'Before sunrise', ar: 'قبل شروق الشمس'),
    ziyaretSuresi: L10nText(tr: 'Tırmanışla 3–4 saat', en: '3–4 hours with the climb', ar: '3–4 ساعات مع الصعود'),
    anlatim: L10nText(
      tr: "Karşınızdaki yüksek ve kayalık dağ Sevr'dir. Zirvesine yakın bir yerde, büyük bir kayanın altında küçük bir mağara vardır. İslam tarihinin en heyecanlı gecelerinden biri burada yaşandı.\n\n"
          "Müslümanlar Medine'ye hicret etmeye başlayınca Mekke'nin ileri gelenleri Hz. Peygamber'i öldürmeye karar verdi. Hz. Peygamber bu plandan haberdar oldu ve Hz. Ebû Bekir'le birlikte hicret hazırlığı yaptı. O gece Hz. Ali, müşrikleri yanıltmak için Hz. Peygamber'in yatağında yattı. Hz. Peygamber ile Hz. Ebû Bekir ise gece yarısı Mekke'den gizlice çıktılar. Kuzeydeki Medine yoluna değil, tam ters yöne, güneydeki bu dağa yöneldiler. Çünkü takipçiler onları önce Medine yolunda arayacaktı.\n\n"
          "Mağarada üç gece kaldılar. Bir gün iz sürücüler mağaranın ağzına kadar geldi. Ayak sesleri duyuluyordu. Hz. Ebû Bekir endişeyle, eğilip baksalar bizi görecekler, dedi. Hz. Peygamber ise sakin bir sesle, üzülme, Allah bizimle beraberdir, diye karşılık verdi. Takipçiler içeri bakmadan geri döndüler. Kur'an bu anı anlatır ve Hz. Ebû Bekir'i iki kişiden ikincisi diye anar. Bu yüzden ona mağara dostu da denir.\n\n"
          "Bu üç gün boyunca Hz. Ebû Bekir'in oğlu Abdullah gündüz Mekke'deki konuşmaları dinledi, akşam gelip haber verdi. Çoban Âmir b. Füheyre koyunlarını mağaranın yakınına getirerek onlara süt sağladı ve ayak izlerini sildi. Üçüncü günün sabahında kılavuz develeri getirdi ve kutlu yolculuk Medine'ye doğru başladı.\n\n"
          "Sevr, tevekkül ile tedbirin bir arada olduğunu öğretir. Her şey en ince ayrıntısına kadar planlanmış, sonra Allah'a güvenilmişti. Tırmanış zordur. Gücünüz yetmiyorsa dağı aşağıdan seyretmek ve bu sadakatli dostluğu hatırlamak da yeter.",
      en: "The high, rocky mountain before you is Thawr. Near its summit, beneath a great rock, is a small cave. One of the most dramatic nights in Islamic history took place here.\n\n"
          "As Muslims began emigrating to Madinah, the leaders of Makkah decided to kill the Prophet. He learned of their plan and prepared to emigrate together with Abu Bakr. That night Ali slept in the Prophet's bed to mislead the polytheists. The Prophet and Abu Bakr slipped out of Makkah at midnight. They headed not north towards the Madinah road but in the opposite direction, south, to this mountain, because the pursuers would first search the road to Madinah.\n\n"
          "They stayed in the cave for three nights. One day the trackers came right up to its mouth. Their footsteps could be heard. Abu Bakr whispered anxiously that if they bent down and looked, they would see them. The Prophet replied calmly, do not grieve, Allah is with us. The pursuers turned back without looking inside. The Qur'an tells of this moment and calls Abu Bakr the second of two. That is why he is also called the friend of the cave.\n\n"
          "During those three days, Abu Bakr's son Abdullah listened to the talk in Makkah by day and came to report in the evening. The shepherd Amir ibn Fuhayrah brought his sheep near the cave, giving them milk and wiping out their footprints. On the morning of the third day the guide brought the camels, and the blessed journey to Madinah began.\n\n"
          "Thawr teaches that trust in Allah and careful planning go together. Everything had been planned in detail, and then they relied on Allah. The climb is hard. If you are not able, watching the mountain from below and remembering this loyal friendship is enough.",
      ar: 'هذا الجبل الصخري المرتفع أمامك هو جبل ثور. وقرب قمته، تحت صخرة عظيمة، غار صغير. وفيه وقعت ليلة من أعظم ليالي التاريخ الإسلامي.\n\n'
          'لما بدأ المسلمون يهاجرون إلى المدينة قرّر كبراء مكة قتل النبي صلى الله عليه وسلم. فعلم بمكرهم، وتهيّأ للهجرة مع أبي بكر رضي الله عنه. ونام علي رضي الله عنه تلك الليلة في فراشه تعميةً على المشركين. وخرج النبي صلى الله عليه وسلم وصاحبه من مكة خفية في جوف الليل. ولم يتّجها شمالًا إلى طريق المدينة، بل جنوبًا إلى هذا الجبل، لأن الطالبين سيبحثون عنهما أولًا في طريق المدينة.\n\n'
          'ومكثا في الغار ثلاث ليال. وفي يوم جاء القائفون حتى وقفوا على فم الغار، وكانت أصوات أقدامهم تُسمع. فقال أبو بكر قلقًا: لو نظر أحدهم تحت قدميه لرآنا. فقال النبي صلى الله عليه وسلم بسكينة: لا تحزن إن الله معنا. فانصرف الطالبون دون أن ينظروا في الغار. وقد حكى القرآن هذا المشهد ووصف أبا بكر بأنه ثاني اثنين، ولذلك سُمّي صاحب الغار.\n\n'
          'وفي تلك الأيام الثلاثة كان عبد الله بن أبي بكر يسمع ما يقوله الناس في مكة نهارًا ثم يأتيهما بالخبر مساءً. وكان عامر بن فهيرة يرعى الغنم قرب الغار فيسقيهما من لبنها ويعفّي على آثار الأقدام. وفي صبيحة اليوم الثالث جاء الدليل بالراحلتين، فبدأت الرحلة المباركة إلى المدينة.\n\n'
          'إن ثورًا يعلّمنا أن التوكل على الله والأخذ بالأسباب يجتمعان. فقد دُبّر كل شيء بدقة، ثم كان الاعتماد على الله. والصعود شاقّ، فإن لم تستطع فيكفيك أن تتأمّل الجبل من أسفله وتتذكّر هذه الصحبة الوفيّة.',
    ),
    kaynaklar: [
      GeziKaynak('TDV İslâm Ansiklopedisi – Sevr Mağarası', 'https://islamansiklopedisi.org.tr/sevr-magarasi'),
      GeziKaynak("Kur'ân-ı Kerîm – Tevbe 9/40 (quran.com)", 'https://quran.com/9/40'),
      GeziKaynak('OpenStreetMap – Sevr Mağarası', 'https://www.openstreetmap.org/node/4394613601'),
      GeziKaynak('OpenStreetMap – Sevr Dağı', 'https://www.openstreetmap.org/node/1236462352'),
    ],
  ),
  // ---------------------------------------------------------------- 4
  GeziYeri(
    id: 'cennetul_mualla',
    bolge: GeziBolge.mekke,
    tur: GeziTur.mezarlik,
    ad: L10nText(
      tr: "Cennetü'l-Muallâ",
      en: "Jannat al-Mu'alla",
      ar: 'مقبرة المعلاة',
    ),
    arapcaAd: L10nText.same('مقبرة المعلاة'),
    altBaslik: L10nText(
      tr: "Hz. Hatice'nin medfun olduğu tarihî Mekke mezarlığı",
      en: 'The historic cemetery of Makkah where Khadijah is buried',
      ar: 'مقبرة مكة التاريخية التي دُفنت فيها خديجة رضي الله عنها',
    ),
    sehir: L10nText(
      tr: "Mekke, Harem'in ~2 km kuzeyi (Hacûn)",
      en: 'Makkah, ~2 km north of the Haram (al-Hajun)',
      ar: 'مكة المكرمة، نحو 2 كم شمال الحرم (الحَجون)',
    ),
    konum: LatLng(21.4351319, 39.8288069), // OSM relation 6046910 (مقبرة المعلاة)
    genel: L10nText(
      tr: "Cennetü'l-Muallâ, Câhiliye döneminden bugüne kadar Mekke'nin mezarlığı olarak kullanılan, Mescid-i Haram'ın yaklaşık 2 km kuzeyinde, Mescid-i Cin'in yakınında bulunan tarihî kabristandır. Erken dönem kaynaklarda Hacûn adıyla geçer; zamanla Ma'lât olarak anılmış, Türkler arasında Cennetü'l-Muallâ adıyla meşhur olmuştur.\n\n"
          "Burada Hz. Peygamber'in eşi Hz. Hatice, dedesi Abdülmuttalib, amcası Ebû Tâlib ve atalarından Kusay'ın defnedildiği bilinir. Bugün mezarlıkta türbe veya kitabeli mezar taşı bulunmaz; kabirler sade taşlarla işaretlenmiştir ve mezarlık hâlâ kullanılmaktadır.",
      en: "Jannat al-Mu'alla is the historic cemetery of Makkah, in use from pre-Islamic times to the present, about 2 km north of Masjid al-Haram near Masjid al-Jinn. Early sources call it al-Hajun; in time it became known as al-Ma'la, and among Turks as Jannat al-Mu'alla.\n\n"
          "It is known that the Prophet's wife Khadijah, his grandfather Abd al-Muttalib, his uncle Abu Talib and his ancestor Qusayy were buried here. Today there are no mausoleums or inscribed tombstones; graves are marked with plain stones, and the cemetery is still in use.",
      ar: 'مقبرة المعلاة مقبرة مكة التاريخية منذ الجاهلية إلى اليوم، تقع على بُعد نحو كيلومترين شمال المسجد الحرام قرب مسجد الجن. وتُسمّى في المصادر الأولى «الحَجون»، ثم عُرفت بالمعلاة، واشتهرت عند الأتراك باسم «جنة المعلّى».\n\n'
          'ومن المعلوم أنه دُفن فيها خديجة زوج النبي ﷺ، وجدّه عبد المطلب، وعمّه أبو طالب، وجدّه الأعلى قُصيّ. ولا توجد فيها اليوم قباب ولا شواهد مكتوبة، بل تُعلَّم القبور بحجارة بسيطة، ولا يزال الدفن فيها قائمًا.',
    ),
    tarihce: L10nText(
      tr: "İslam'dan önce Mekke, Ma'lât (yukarı) ve Mesfele (aşağı) diye iki kısma ayrılırdı; mezarlık, şehrin ileri gelenlerinin oturduğu yukarı mahalledeydi. Rivayete göre Kusay buraya defnedildikten sonra bu alan mezarlık olarak kullanılmaya başlandı. Mekke'nin fethinde Hz. Peygamber çadırını Hacûn'a kurdurmuştu. Müsned'de geçen bir rivayete göre Hz. Peygamber bu kabristanı göstererek \"Bu kabristan ne güzeldir\" buyurmuştur.\n\n"
          "Hz. Hatice'nin kabrinin yerinin uzun süre bilinmediği, 1328-29 yılında görülen bir rüya üzerine belirlendiği rivayet edilir. Kanûnî Sultan Süleyman 1543-44'te bu kabrin üzerine yüksek kubbeli bir türbe yaptırmıştı. Evliya Çelebi, mezarlıkta yetmiş beş kubbeli kabir bulunduğunu yazar.\n\n"
          "Mekke 1925'te Suudi yönetimine geçtikten sonra 1926'da mezarlıktaki türbeler yıkıldı ve mezar taşları kaldırıldı. Mezarlık bugün sade bir hâlde kullanılmaya devam etmektedir.",
      en: "Before Islam, Makkah was divided into al-Ma'lat (upper) and al-Masfalah (lower); the cemetery lay in the upper quarter where the city's notables lived. According to some narrations, the area began to be used as a cemetery after Qusayy was buried there. At the conquest of Makkah the Prophet had his tent pitched at al-Hajun. According to a narration in the Musnad, he pointed to this cemetery and said, \"What a fine cemetery this is.\"\n\n"
          "It is narrated that the location of Khadijah's grave was unknown for a long time and was identified in 1328-29 after a dream. Sultan Suleyman the Magnificent built a high-domed mausoleum over it in 1543-44. Evliya Celebi wrote that there were seventy-five domed tombs in the cemetery.\n\n"
          "After Makkah came under Saudi rule in 1925, the mausoleums were demolished and the tombstones removed in 1926. The cemetery remains in use today in a simple form.",
      ar: 'كانت مكة قبل الإسلام قسمين: المعلاة في أعلاها والمسفلة في أسفلها، وكانت المقبرة في الحيّ الأعلى حيث يسكن أشراف مكة. ويُروى أن الدفن فيها بدأ بعد أن دُفن فيها قُصيّ. وفي فتح مكة ضُربت قبة النبي ﷺ بالحجون. وفي رواية في المسند أنه ﷺ أشار إلى هذه المقبرة وقال: «نِعم المقبرة هذه».\n\n'
          'ويُروى أن موضع قبر خديجة رضي الله عنها لم يكن معروفًا زمنًا طويلًا حتى عُيّن سنة 729هـ على إثر رؤيا. وبنى السلطان سليمان القانوني عليه قبة عالية سنة 950هـ. وذكر أوليا جلبي أن في المقبرة خمسًا وسبعين قبة.\n\n'
          'وبعد دخول مكة في الحكم السعودي سنة 1925م أُزيلت القباب وشواهد القبور سنة 1926م، ولا تزال المقبرة تُستعمل اليوم على هيئة بسيطة.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'İslam öncesi', en: 'Pre-Islamic era', ar: 'قبل الإسلام'),
        metin: L10nText(
          tr: "Rivayete göre Kusay'ın defniyle Hacûn mezarlık olarak kullanılmaya başlar; Abdülmuttalib de buraya defnedilir.",
          en: "According to some narrations, al-Hajun becomes a cemetery after Qusayy's burial; Abd al-Muttalib is also buried here.",
          ar: 'يُروى أن الحجون صار مقبرة بعد دفن قصيّ، ودُفن فيه عبد المطلب أيضًا.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '619–620 (Hüzün Yılı)', en: '619–620 (Year of Sorrow)', ar: '619–620م (عام الحزن)'),
        metin: L10nText(
          tr: 'Hz. Hatice ve Ebû Tâlib vefat eder ve buraya defnedilir.',
          en: 'Khadijah and Abu Talib pass away and are buried here.',
          ar: 'وفاة خديجة رضي الله عنها وأبي طالب ودفنهما في الحجون.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Hicrî 8 (630)', en: 'AH 8 (630)', ar: '8هـ (630م)'),
        metin: L10nText(
          tr: "Mekke'nin fethinde Hz. Peygamber'in çadırı Hacûn'a kurulur.",
          en: "At the conquest of Makkah the Prophet's tent is pitched at al-Hajun.",
          ar: 'في فتح مكة تُضرب قبة النبي ﷺ بالحجون.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1543–1544', en: '1543–1544', ar: '950هـ (1543م)'),
        metin: L10nText(
          tr: "Kanûnî Sultan Süleyman, Hz. Hatice'nin kabri olarak bilinen yere kubbeli türbe yaptırır.",
          en: "Sultan Suleyman builds a domed mausoleum over the place known as Khadijah's grave.",
          ar: 'السلطان سليمان القانوني يبني قبة على الموضع المعروف بقبر خديجة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1926', en: '1926', ar: '1926م'),
        metin: L10nText(
          tr: 'Mezarlıktaki türbeler yıkılır, mezar taşları kaldırılır.',
          en: 'The mausoleums in the cemetery are demolished and the tombstones removed.',
          ar: 'إزالة القباب وشواهد القبور في المقبرة.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Kabir ziyareti, ölümü ve âhireti hatırlatması sebebiyle Hz. Peygamber tarafından tavsiye edilmiştir. Cennetü'l-Muallâ, Hz. Peygamber'e ilk iman eden ve en zor yıllarında ona destek olan Hz. Hatice'nin burada yatması sebebiyle Müslümanlar için ayrı bir anlam taşır.\n\n"
          "Ziyaretçi burada yatanlara selam verir, onlar için dua eder ve Kur'an okur. Kabirlerden bir şey istemek, kabirlere yüz sürmek gibi davranışlardan sakınılır; dua yalnız Allah'a yapılır.",
      en: "The Prophet encouraged visiting graves because it reminds one of death and the hereafter. Jannat al-Mu'alla has a special meaning for Muslims because Khadijah, the first to believe in the Prophet and his support in his hardest years, rests here.\n\n"
          "The visitor greets those buried here, prays for them and recites the Qur'an. One should avoid asking anything of the graves or rubbing one's face on them; supplication is made to Allah alone.",
      ar: 'رغّب النبي ﷺ في زيارة القبور لأنها تذكّر بالموت والآخرة. ولمقبرة المعلاة مكانة خاصة عند المسلمين لأن فيها خديجة رضي الله عنها، أول من آمن بالنبي ﷺ وسنده في أشدّ سنيه.\n\n'
          'ويُسلّم الزائر على أهلها، ويدعو لهم، ويقرأ القرآن. ويتجنّب سؤال الأموات أو التمسّح بالقبور، فالدعاء لله وحده.',
    ),
    adab: [
      L10nText(
        tr: "Girişte kabir ehline selam verin: \"Esselâmü aleyküm ey bu diyarın mümin ve Müslüman sakinleri.\"",
        en: 'Greet the people of the graves on entering: "Peace be upon you, O believing and Muslim dwellers of these abodes."',
        ar: 'سلّم على أهل القبور عند الدخول: «السلام عليكم أهل الديار من المؤمنين والمسلمين».',
      ),
      L10nText(
        tr: 'Kabirlerin üzerine basmayın, oturmayın; yalnızca açık yollarda yürüyün.',
        en: 'Do not step or sit on graves; walk only on the open paths.',
        ar: 'لا تطأ القبور ولا تجلس عليها، وامشِ في الممرات المفتوحة فقط.',
      ),
      L10nText(
        tr: 'Sesinizi alçak tutun; fotoğraf çekmek yasak olabilir, görevlilerin uyarılarına uyun.',
        en: 'Keep your voice low; photography may be prohibited—follow the staff\'s instructions.',
        ar: 'اخفض صوتك، وقد يُمنع التصوير، فالتزم بتعليمات المسؤولين.',
      ),
      L10nText(
        tr: 'Kabirlerin yerleri işaretli olmadığından belirli bir kabri arayıp tartışmaya girmeyin; dua için bulunduğunuz yer yeterlidir.',
        en: 'Since the graves are unmarked, do not search for or argue over a particular grave; where you stand is enough for prayer.',
        ar: 'القبور غير معلَّمة، فلا تتكلّف البحث عن قبر بعينه ولا تجادل فيه، ويكفيك الدعاء حيث أنت.',
      ),
      L10nText(
        tr: "Hz. Hatice ve burada yatan bütün Müslümanlar için Fatiha okuyup dua edin.",
        en: 'Recite al-Fatihah and pray for Khadijah and all the Muslims buried here.',
        ar: 'اقرأ الفاتحة وادعُ لخديجة رضي الله عنها ولجميع المسلمين المدفونين هنا.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: 'Kadınlar genellikle mezarlığın içine alınmaz; selam ve duayı dış duvarın yanından yapabilirler. Erkekler için kapılar çoğunlukla namaz vakitlerinden sonra belirli saatlerde açılır. Saatler hac, Ramazan ve cenaze definlerine göre değişebilir.',
      en: 'Women are generally not admitted inside the cemetery; they may offer greetings and prayers from beside the outer wall. For men, the gates usually open at certain times after the prayers. Hours may change during Hajj, Ramadan and burials.',
      ar: 'لا يُسمح للنساء عادةً بدخول المقبرة، ويمكنهن السلام والدعاء من جوار السور الخارجي. أما الرجال فتُفتح لهم الأبواب غالبًا في أوقات محددة بعد الصلوات. وقد تتغير المواعيد في الحج ورمضان وأثناء الدفن.',
    ),
    uygunSaat: L10nText(tr: 'Sabah namazından sonra', en: 'After the dawn prayer', ar: 'بعد صلاة الفجر'),
    ziyaretSuresi: L10nText(tr: '20–30 dakika', en: '20–30 minutes', ar: '20–30 دقيقة'),
    anlatim: L10nText(
      tr: "Şu an Mekke'nin tarihî mezarlığı Cennetü'l-Muallâ'nın önündesiniz. Burası İslam'dan önce de Mekke halkının kabristanıydı ve eski kaynaklarda Hacûn adıyla anılır. Mescid-i Haram'ın yaklaşık iki kilometre kuzeyinde, şehrin yukarı kesimindedir.\n\n"
          "Bu toprakta Hz. Peygamber'in en sevdiklerinden bazıları yatmaktadır. Onun ilk eşi ve ona ilk iman eden kişi olan Hz. Hatice buradadır. Hz. Hatice, ilk vahyin geldiği gece titreyerek eve dönen Hz. Peygamber'i teselli etmiş, malını ve hayatını İslam'a adamıştı. Hz. Peygamber'i küçük yaşta himayesine alan dedesi Abdülmuttalib ve yıllarca onu düşmanlarına karşı koruyan amcası Ebû Tâlib de bu mezarlıkta defnedilmiştir. Hz. Hatice ile Ebû Tâlib'in aynı yıl vefat etmesi Hz. Peygamber'i öyle derinden etkiledi ki o yıl Hüzün Yılı diye anıldı.\n\n"
          "Mekke'nin fethedildiği gün Hz. Peygamber'in çadırı da bu mezarlığın bulunduğu Hacûn'a kurulmuştu. Yıllar geçtikçe mezarlığa türbeler yapıldı. Kanûnî Sultan Süleyman, Hz. Hatice'nin kabri olarak bilinen yerin üzerine kubbeli bir türbe yaptırdı. 1926'da bu türbeler kaldırıldı. Bugün kabirler sade taşlarla işaretlidir ve Hz. Hatice'nin kabrinin yeri de kesin olarak bilinmez.\n\n"
          "Hz. Peygamber kabir ziyaretini, ölümü ve âhireti hatırlattığı için tavsiye etmiştir. Burada yatanlara selam verin. Hz. Hatice'yi, sadakatini ve fedakârlığını hatırlayın. Onun ve burada yatan bütün Müslümanların ruhuna Fatiha okuyun. Duanızı yalnızca Allah'a yöneltin. Kadınlar genellikle içeri alınmadığından selam ve dualarını duvarın yanından yapabilirler.",
      en: "You are now in front of Jannat al-Mu'alla, the historic cemetery of Makkah. Even before Islam this was the burial ground of the people of Makkah, mentioned in early sources as al-Hajun. It lies about two kilometres north of Masjid al-Haram, in the upper part of the city.\n\n"
          "Some of those dearest to the Prophet rest in this ground. Here lies Khadijah, his first wife and the first person to believe in him. On the night of the first revelation, when the Prophet came home trembling, it was Khadijah who comforted him, and she devoted her wealth and her life to Islam. His grandfather Abd al-Muttalib, who took him into his care as a child, and his uncle Abu Talib, who protected him from his enemies for years, are also buried here. Khadijah and Abu Talib died in the same year, and the Prophet was so deeply affected that it became known as the Year of Sorrow.\n\n"
          "On the day Makkah was conquered, the Prophet's tent was pitched here at al-Hajun. Over the years mausoleums were built in the cemetery. Sultan Suleyman the Magnificent built a domed tomb over the place known as Khadijah's grave. In 1926 these mausoleums were removed. Today the graves are marked with plain stones, and the exact location of Khadijah's grave is not known with certainty.\n\n"
          "The Prophet encouraged visiting graves because it reminds us of death and the hereafter. Greet those who rest here. Remember Khadijah, her loyalty and her sacrifice. Recite al-Fatihah for her soul and for all the Muslims buried here. Direct your prayers to Allah alone. Since women are generally not admitted inside, they may offer their greetings and prayers from beside the wall.",
      ar: 'أنت الآن أمام مقبرة المعلاة، مقبرة مكة التاريخية. وكانت مدفن أهل مكة قبل الإسلام أيضًا، وتُسمّى في المصادر القديمة الحجون. وتقع على بُعد نحو كيلومترين شمال المسجد الحرام، في أعلى مكة.\n\n'
          'وفي هذا الثرى يرقد بعض أحبّ الناس إلى النبي صلى الله عليه وسلم. فهنا خديجة رضي الله عنها، زوجه الأولى وأول من آمن به. وهي التي طمأنته ليلة نزول الوحي حين رجع إليها يرجف فؤاده، وبذلت مالها ونفسها للإسلام. وهنا أيضًا جدّه عبد المطلب الذي كفله صغيرًا، وعمّه أبو طالب الذي حماه من أعدائه سنين طويلة. وقد تُوفّيت خديجة وأبو طالب في عام واحد، فحزن النبي صلى الله عليه وسلم حزنًا شديدًا حتى سُمّي ذلك العام عام الحزن.\n\n'
          'ويوم فتح مكة ضُربت قبة النبي صلى الله عليه وسلم هنا بالحجون. ومع مرور السنين بُنيت في المقبرة قباب، وبنى السلطان سليمان القانوني قبة على الموضع المعروف بقبر خديجة. ثم أُزيلت هذه القباب سنة ألف وتسعمائة وست وعشرين. والقبور اليوم معلَّمة بحجارة بسيطة، ولا يُعرف موضع قبر خديجة على وجه اليقين.\n\n'
          'وقد رغّب النبي صلى الله عليه وسلم في زيارة القبور لأنها تذكّر بالموت والآخرة. فسلّم على من يرقدون هنا. وتذكّر خديجة ووفاءها وتضحيتها. واقرأ الفاتحة لها ولجميع المسلمين المدفونين هنا. واجعل دعاءك لله وحده. ولأن النساء لا يُسمح لهن عادةً بالدخول، فبإمكانهن السلام والدعاء من جوار السور.',
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Cennetü'l-Muallâ", 'https://islamansiklopedisi.org.tr/cennetul-mualla'),
      GeziKaynak("Wikipedia – Jannat al-Mu'alla", 'https://en.wikipedia.org/wiki/Jannat_al-Mu%27alla'),
      GeziKaynak('OpenStreetMap – Maqbara al-Mu\'alla', 'https://www.openstreetmap.org/relation/6046910'),
    ],
  ),

  // ---------------------------------------------------------------- 5
  GeziYeri(
    id: 'arafat',
    bolge: GeziBolge.mekke,
    tur: GeziTur.ova,
    ad: L10nText(
      tr: 'Arafat ve Cebel-i Rahme',
      en: 'Arafat and Jabal al-Rahmah',
      ar: 'عرفات وجبل الرحمة',
    ),
    arapcaAd: L10nText.same('عرفات وجبل الرحمة'),
    altBaslik: L10nText(
      tr: 'Haccın en büyük rüknü vakfenin yapıldığı ova',
      en: 'The plain of the standing, the greatest pillar of Hajj',
      ar: 'صعيد الوقوف، الركن الأعظم في الحج',
    ),
    sehir: L10nText(
      tr: "Mekke'nin ~20 km doğusu",
      en: '~20 km east of Makkah',
      ar: 'نحو 20 كم شرق مكة المكرمة',
    ),
    konum: LatLng(21.3547998, 39.9841015), // OSM node 1236463804 (جبل الرحمة, peak)
    genel: L10nText(
      tr: "Arafat, Mekke'nin yaklaşık 21 km doğusunda, eski Taif yolu üzerinde, üç yanı dağlarla çevrili geniş bir ovadır. Doğudan batıya yaklaşık 6,5 km, kuzeyden güneye 11-12 km uzanır. Harem sınırlarının dışında, Hil bölgesindedir; sınırları bugün büyük sınır taşları ve levhalarla işaretlenmiştir. Ovanın batı kenarında Nemire Mescidi bulunur.\n\n"
          "Ovanın kuzeyinde, granit kayalardan oluşan küçük bir tepe olan Cebel-i Rahme (Rahmet Dağı) yükselir. Halk arasında Arafat Dağı da denir. Hz. Peygamber Veda Haccı'nda vakfeyi bu tepenin eteğindeki kayalıkların yanında yapmıştır. Ancak vakfe Arafat'ın her yerinde yapılabilir. Arafat'ın büyük bölümü bugün ağaçlandırılmış; yollar, su ve sağlık tesisleriyle hac günlerine hazırlanmış bir alandır.",
      en: "Arafat is a wide plain about 21 km east of Makkah on the old road to Ta'if, surrounded on three sides by mountains. It stretches about 6.5 km from east to west and 11-12 km from north to south. It lies outside the boundaries of the Haram, and its limits are marked today with large boundary stones and signs. Namirah Mosque stands on its western edge.\n\n"
          "In the north of the plain rises Jabal al-Rahmah, the Mount of Mercy, a small hill of granite boulders, popularly also called Mount Arafat. During the Farewell Pilgrimage the Prophet performed the standing beside the rocks at its foot. Yet the standing may be performed anywhere in Arafat. Much of Arafat has been planted with trees and equipped with roads, water and health facilities for the days of Hajj.",
      ar: 'عرفات سهل واسع على بُعد نحو 21 كيلومترًا شرق مكة على طريق الطائف القديم، تحيط به الجبال من ثلاث جهات. يمتدّ نحو 6.5 كيلومترات من الشرق إلى الغرب، و11 إلى 12 كيلومترًا من الشمال إلى الجنوب. وهو خارج حدود الحرم، في الحِلّ، وحدوده اليوم معلَّمة بأعلام ولوحات كبيرة. وفي طرفه الغربي مسجد نمرة.\n\n'
          'وفي شماله جبل الرحمة، وهو تلّ صغير من صخور الغرانيت، ويسمّيه الناس جبل عرفات. وقد وقف النبي ﷺ في حجة الوداع عند الصخرات في سفحه، لكن الوقوف جائز في عرفة كلها. وقد شُجّر كثير من عرفات اليوم، وجُهّز بالطرق والمياه والمرافق الصحية لأيام الحج.',
    ),
    tarihce: L10nText(
      tr: "Arafat adının nereden geldiği kesin olarak bilinmez. Kaynaklarda farklı açıklamalar geçer: Rivayete göre Cebrail, Hz. İbrahim'e hac menasikini öğretirken burada \"Öğrendin mi?\" diye sormuş, o da \"Öğrendim\" demiştir. Hz. Âdem ile Hz. Havva'nın yeryüzünde burada buluşup tanıştıkları da rivayet edilir. Ayrıca insanların burada birbirleriyle tanışması ve günahlarını itiraf edip af dilemesi de bu adın sebebi olarak gösterilir.\n\n"
          "Câhiliye döneminde Kureyş, kendini Harem ehli sayarak vakfeyi Harem dışındaki Arafat'ta değil, Müzdelife'de yapardı. İslam bu ayrıcalığı kaldırdı; bütün hacılar Arafat'ta vakfeye durdu. Hicretin 10. yılında Hz. Peygamber Veda Haccı'nda burada vakfe yaptı ve Urene vadisinde, devesinin üzerinden insan hakları, can, mal ve namus dokunulmazlığı ile kadın haklarını vurgulayan Veda Hutbesi'ni okudu.\n\n"
          "Tarih boyunca Arafat'ta hacılar için havuzlar ve su kanalları yapıldı; Osmanlı döneminde Ayn-ı Zübeyde'den borularla su getiriliyordu. Bugün ova ağaçlandırılmış, Müzdelife'ye giden çok sayıda yol, otoparklar ve hizmet binalarıyla donatılmıştır.",
      en: "The origin of the name Arafat is not known for certain, and the sources give different explanations. According to one narration, while teaching Prophet Ibrahim the rites of Hajj, Jibril asked him here, \"Have you learned?\", and he replied, \"I have learned.\" It is also narrated that Adam and Eve met and recognised each other here on earth. Others link the name to people meeting one another here and confessing their sins in search of forgiveness.\n\n"
          "In pre-Islamic times the Quraysh, regarding themselves as the people of the Haram, did not stand at Arafat, which lies outside the Haram, but at Muzdalifah. Islam abolished this privilege, and all pilgrims stood at Arafat. In the tenth year after the Hijrah, during the Farewell Pilgrimage, the Prophet stood here and, from his camel in the valley of Uranah, delivered the Farewell Sermon, which stressed the sanctity of life, property and honour and the rights of women.\n\n"
          "Over the centuries pools and water channels were built at Arafat for the pilgrims; in the Ottoman period water was piped here from the spring of Zubaydah. Today the plain is planted with trees and equipped with many roads to Muzdalifah, car parks and service buildings.",
      ar: 'لا يُعرف أصل تسمية عرفات على وجه القطع، وتذكر المصادر في ذلك أقوالًا: فيُروى أن جبريل لما علّم إبراهيم المناسك قال له هنا: «أعرفت؟» فقال: «عرفت». ويُروى كذلك أن آدم وحواء تعارفا فيه بعد الهبوط إلى الأرض. وقيل لتعارف الناس فيه واعترافهم بذنوبهم طلبًا للمغفرة.\n\n'
          'وكانت قريش في الجاهلية تعدّ نفسها أهل الحرم فلا تقف بعرفة لأنها خارج الحرم، بل تقف بمزدلفة. فألغى الإسلام هذا الامتياز ووقف الحجاج كلهم بعرفة. وفي السنة العاشرة للهجرة وقف النبي ﷺ هنا في حجة الوداع، وخطب على راحلته في بطن عُرَنة خطبة الوداع التي أكّد فيها حرمة الدماء والأموال والأعراض وحقوق النساء.\n\n'
          'وبُنيت في عرفات عبر القرون برك وقنوات للحجاج، وكان الماء يُجلب إليها في العهد العثماني بالأنابيب من عين زبيدة. وقد شُجّر السهل اليوم وجُهّز بطرق كثيرة إلى مزدلفة ومواقف للسيارات ومبانٍ للخدمات.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Câhiliye dönemi', en: 'Pre-Islamic era', ar: 'الجاهلية'),
        metin: L10nText(
          tr: "Kureyş vakfeyi Arafat'ta değil Müzdelife'de yapar; diğer Araplar Arafat'ta durur.",
          en: 'The Quraysh stand at Muzdalifah rather than Arafat; the other Arabs stand at Arafat.',
          ar: 'قريش تقف بمزدلفة لا بعرفة، وسائر العرب يقفون بعرفة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '9 Zilhicce 10 (632)', en: '9 Dhu al-Hijjah AH 10 (632)', ar: '9 ذي الحجة 10هـ (632م)'),
        metin: L10nText(
          tr: "Hz. Peygamber Veda Haccı'nda Arafat'ta vakfe yapar ve Veda Hutbesi'ni okur.",
          en: 'During the Farewell Pilgrimage the Prophet stands at Arafat and delivers the Farewell Sermon.',
          ar: 'النبي ﷺ يقف بعرفة في حجة الوداع ويخطب خطبة الوداع.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Aynı gün', en: 'The same day', ar: 'اليوم نفسه'),
        metin: L10nText(
          tr: "Buhârî'nin rivayetine göre \"Bugün sizin için dininizi kemale erdirdim\" ayeti (Mâide 5/3) Arafat'ta, Cuma günü iner.",
          en: 'According to al-Bukhari, the verse "This day I have perfected your religion for you" (al-Ma\'idah 5:3) is revealed at Arafat on a Friday.',
          ar: 'في رواية البخاري نزلت آية ﴿اليوم أكملت لكم دينكم﴾ (المائدة: 3) بعرفة يوم جمعة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Osmanlı dönemi', en: 'Ottoman period', ar: 'العهد العثماني'),
        metin: L10nText(
          tr: "Hac zamanı Ayn-ı Zübeyde'den borularla doldurulan havuzlar hacılara hizmet eder.",
          en: 'Pools filled by pipeline from the spring of Zubaydah serve the pilgrims during Hajj.',
          ar: 'برك تُملأ بالأنابيب من عين زبيدة تخدم الحجاج في الموسم.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Günümüz', en: 'Today', ar: 'اليوم'),
        metin: L10nText(
          tr: "Ova ağaçlandırılır; Arafat'ı Müzdelife'ye bağlayan çok sayıda yol ve Meşair treni hacıların ulaşımını kolaylaştırır.",
          en: 'The plain has been planted with trees; many roads and the Mashaer train link Arafat with Muzdalifah.',
          ar: 'تشجير السهل، وطرق كثيرة وقطار المشاعر تربط عرفات بمزدلفة.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Arafat'ta vakfe haccın en önemli rüknüdür; Hz. Peygamber \"Hac Arafat'tır\" buyurmuştur. Vakfe zamanı içinde bir an bile Arafat'ta bulunmayan kişinin haccı geçerli olmaz. Vakfe, Zilhiccenin dokuzuncu günü (arefe) öğleden sonra başlar ve bayram sabahı şafağa kadar sürer; güneş batıncaya kadar Arafat'ta kalmak vaciptir.\n\n"
          "Hz. Peygamber, Allah'ın kullarını cehennemden en çok âzat ettiği günün Arefe günü olduğunu bildirmiştir. Arafat dua, tövbe ve bağışlanma yeridir. Umre yolculuğunda Arafat'ı görmek ibadet değildir, fakat haccı ve Veda Hutbesi'ni tefekkür etmek için güzel bir fırsattır.",
      en: "Standing at Arafat is the most important pillar of Hajj; the Prophet said, \"Hajj is Arafah.\" A pilgrim who is not present at Arafat for at least a moment during the standing time has no valid Hajj. The standing begins after midday on the ninth of Dhu al-Hijjah (the Day of Arafah) and lasts until dawn of the day of Eid; remaining at Arafat until sunset is obligatory.\n\n"
          "The Prophet said that there is no day on which Allah frees more of His servants from the Fire than the Day of Arafah. Arafat is a place of supplication, repentance and forgiveness. Seeing Arafat during an Umrah trip is not an act of worship, but it is a fine opportunity to reflect on Hajj and the Farewell Sermon.",
      ar: 'الوقوف بعرفة ركن الحج الأعظم، وقد قال النبي ﷺ: «الحج عرفة». ومن لم يقف بعرفة ولو لحظة في وقت الوقوف فلا حجّ له. ويبدأ الوقوف بعد زوال يوم التاسع من ذي الحجة، ويمتدّ إلى فجر يوم النحر، ويجب البقاء بعرفة حتى غروب الشمس.\n\n'
          'وأخبر النبي ﷺ أنه ما من يوم أكثر من أن يعتق الله فيه عبدًا من النار من يوم عرفة. فعرفات موطن الدعاء والتوبة والمغفرة. ورؤيتها في رحلة العمرة ليست عبادة، لكنها فرصة طيبة للتأمّل في الحج وفي خطبة الوداع.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'الْحَجُّ عَرَفَةُ',
        meal: L10nText(
          tr: "Hac Arafat'tır.",
          en: 'Hajj is Arafah.',
          ar: 'رواه الترمذي والنسائي عن عبد الرحمن بن يعمر رضي الله عنه.',
        ),
        kaynak: L10nText(tr: 'Tirmizî, Hac, 57 (889); Nesâî, Menâsik, 203 (3016)', en: 'Al-Tirmidhi 889; al-Nasa\'i 3016', ar: 'الترمذي (889)، النسائي (3016)'),
      ),
      GeziAlinti(
        arapca: 'مَا مِنْ يَوْمٍ أَكْثَرَ مِنْ أَنْ يُعْتِقَ اللَّهُ فِيهِ عَبْدًا مِنَ النَّارِ مِنْ يَوْمِ عَرَفَةَ',
        meal: L10nText(
          tr: "Allah'ın, kullarını cehennemden Arefe gününden daha çok âzat ettiği bir gün yoktur.",
          en: 'There is no day on which Allah frees more servants from the Fire than the Day of Arafah.',
          ar: 'رواه مسلم عن عائشة رضي الله عنها.',
        ),
        kaynak: L10nText(tr: 'Müslim, Hac, 436 (1348)', en: 'Muslim 1348', ar: 'مسلم (1348)'),
      ),
    ],
    adab: [
      L10nText(
        tr: "Arafat'ı ziyaret ederken Veda Hutbesi'ni ve vakfeyi hatırlayın; dua ve istiğfarla vakit geçirin.",
        en: 'When visiting Arafat, remember the Farewell Sermon and the standing; spend your time in supplication and seeking forgiveness.',
        ar: 'تذكّر خطبة الوداع والوقوف عند زيارة عرفات، واشغل وقتك بالدعاء والاستغفار.',
      ),
      L10nText(
        tr: "Cebel-i Rahme'ye çıkmak ibadet değildir; çıkarsanız kayalarda dikkatli olun ve kalabalıkta itişmeyin.",
        en: 'Climbing Jabal al-Rahmah is not an act of worship; if you climb, be careful on the rocks and do not push in crowds.',
        ar: 'صعود جبل الرحمة ليس عبادة، فإن صعدت فاحذر على الصخور ولا تزاحم.',
      ),
      L10nText(
        tr: 'Tepedeki beyaz sütuna yazı yazmayın, taşlara ip veya bez bağlamayın.',
        en: 'Do not write on the white pillar at the top or tie strings or cloth to the rocks.',
        ar: 'لا تكتب على العمود الأبيض في القمة ولا تربط خيوطًا أو قطع قماش بالصخور.',
      ),
      L10nText(
        tr: 'Güneşe karşı şapka/şemsiye ve su bulundurun; yaz aylarında öğle saatlerinden kaçının.',
        en: 'Carry a hat or umbrella and water against the sun; avoid the midday hours in summer.',
        ar: 'احمل قبعة أو مظلة وماءً للوقاية من الشمس، وتجنّب ساعات الظهيرة صيفًا.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Hac günleri dışında Arafat'a otobüs veya taksiyle gidilebilir; kafileler genellikle Mekke ziyaret turunda Arafat, Müzdelife ve Mina'yı birlikte gezer. Hac döneminde ise bölgeye yalnızca hac izni (tasrih) olanlar girebilir.",
      en: 'Outside the days of Hajj, Arafat can be reached by bus or taxi; groups usually visit Arafat, Muzdalifah and Mina together on a Makkah ziyarah tour. During the Hajj season only those holding a Hajj permit (tasrih) may enter the area.',
      ar: 'في غير أيام الحج يمكن الوصول إلى عرفات بالحافلة أو سيارة الأجرة، وتزور المجموعات عادةً عرفات ومزدلفة ومنى معًا في جولة المزارات. أما في موسم الحج فلا يدخل المنطقة إلا من يحمل تصريح الحج.',
    ),
    uygunSaat: L10nText(tr: 'Sabah erken saatler', en: 'Early morning', ar: 'الصباح الباكر'),
    ziyaretSuresi: L10nText(tr: '45–60 dakika', en: '45–60 minutes', ar: '45–60 دقيقة'),
    anlatim: L10nText(
      tr: "Şu an Arafat'tasınız. Mekke'nin yaklaşık yirmi kilometre doğusunda, dağlarla çevrili bu geniş ova, haccın kalbidir. Kuzeyde gördüğünüz kayalık küçük tepe Cebel-i Rahme, yani Rahmet Dağı'dır.\n\n"
          "Hz. Peygamber, hac ibadetinin özünü tek bir cümleyle anlatmıştır: Hac Arafat'tır. Her yıl Zilhicce ayının dokuzuncu günü, öğleden sonra milyonlarca hacı burada bir araya gelir. Aynı beyaz örtülere bürünmüş, zengin ile fakir, siyah ile beyaz yan yana durur. Güneş batana kadar dua edilir, gözyaşı dökülür, bağışlanma dilenir. Bu vakfeye yetişemeyen kişinin haccı olmaz.\n\n"
          "Hicretin onuncu yılında Hz. Peygamber, hayatındaki tek haccını yaptı. Arafat'ta, devesinin üzerinden kalabalık sahabe topluluğuna seslendi. Bu konuşma Veda Hutbesi diye bilinir. Canın, malın ve namusun dokunulmaz olduğunu, kadınlara iyi davranılmasını ve Allah'ın kitabına sımsıkı sarılmayı öğütledi. Buhârî'nin rivayetine göre, dininizi bugün kemale erdirdim ayeti de o gün Arafat'ta indi.\n\n"
          "Arafat adının nereden geldiği kesin olarak bilinmez. Rivayete göre Cebrail Hz. İbrahim'e hac menasikini öğretirken burada, öğrendin mi diye sormuş, o da öğrendim demiştir. Hz. Âdem ile Hz. Havva'nın burada buluştuğu da rivayet edilir. Hz. Peygamber vakfeyi Rahmet Dağı'nın eteğindeki kayalıkların yanında yapmıştır, ama vakfe Arafat'ın her yerinde geçerlidir. Tepeye çıkmak bir ibadet değildir.\n\n"
          "Hz. Peygamber, Allah'ın kullarını cehennemden en çok âzat ettiği günün Arefe günü olduğunu bildirmiştir. Umre yolculuğunda burada bulunmak hac yerine geçmez. Fakat bu ovada bir an durup tövbe etmek, haccı ve bu büyük buluşmayı yüreğinizde hissetmek için güzel bir fırsattır.",
      en: "You are now at Arafat. This wide plain, ringed by mountains about twenty kilometres east of Makkah, is the heart of Hajj. The small rocky hill you see to the north is Jabal al-Rahmah, the Mount of Mercy.\n\n"
          "The Prophet summed up the essence of Hajj in a single sentence: Hajj is Arafah. Every year, on the afternoon of the ninth of Dhu al-Hijjah, millions of pilgrims gather here. Wrapped in the same white cloth, rich and poor, black and white stand side by side. Until sunset they pray, weep and seek forgiveness. Whoever misses this standing has no Hajj.\n\n"
          "In the tenth year after the Hijrah, the Prophet performed the only Hajj of his life. At Arafat, from the back of his camel, he addressed the great gathering of his Companions. This address is known as the Farewell Sermon. He declared that life, property and honour are inviolable, urged kindness to women, and advised holding fast to the Book of Allah. According to al-Bukhari, the verse, this day I have perfected your religion for you, was revealed at Arafat on that very day.\n\n"
          "The origin of the name Arafat is not known for certain. According to one narration, while Jibril was teaching Prophet Ibrahim the rites of Hajj, he asked him here, have you learned, and Ibrahim answered, I have learned. It is also narrated that Adam and Eve met here. The Prophet performed his standing beside the rocks at the foot of the Mount of Mercy, but the standing is valid anywhere in Arafat. Climbing the hill is not an act of worship.\n\n"
          "The Prophet said that there is no day on which Allah frees more of His servants from the Fire than the Day of Arafah. Being here during an Umrah journey does not take the place of Hajj. Yet pausing for a moment on this plain to repent and to feel Hajj and this great gathering in your heart is a precious opportunity.",
      ar: 'أنت الآن في عرفات. هذا السهل الواسع الذي تحيط به الجبال، على بُعد نحو عشرين كيلومترًا شرق مكة، هو قلب الحج. والتلّ الصخري الصغير الذي تراه في الشمال هو جبل الرحمة.\n\n'
          'لقد لخّص النبي صلى الله عليه وسلم جوهر الحج في كلمتين: الحج عرفة. ففي عصر اليوم التاسع من ذي الحجة من كل عام يجتمع هنا ملايين الحجاج. يلبسون الثياب البيضاء نفسها، ويقف الغني بجانب الفقير، والأسود بجانب الأبيض. ويدعون ويبكون ويستغفرون حتى تغرب الشمس. ومن فاته هذا الوقوف فاته الحج.\n\n'
          'وفي السنة العاشرة للهجرة حجّ النبي صلى الله عليه وسلم حجّته الوحيدة. ووقف بعرفة يخطب على راحلته في جموع أصحابه. وتُعرف هذه الخطبة بخطبة الوداع. فأعلن فيها حرمة الدماء والأموال والأعراض، وأوصى بالنساء خيرًا، وبالاعتصام بكتاب الله. وفي رواية البخاري أن قوله تعالى: اليوم أكملت لكم دينكم، نزل بعرفة في ذلك اليوم.\n\n'
          'ولا يُعرف أصل تسمية عرفات على وجه القطع. فيُروى أن جبريل لما علّم إبراهيم عليه السلام المناسك قال له هنا: أعرفت؟ فقال: عرفت. ويُروى كذلك أن آدم وحواء تعارفا هنا. وقد وقف النبي صلى الله عليه وسلم عند الصخرات في سفح جبل الرحمة، لكن الوقوف صحيح في أي موضع من عرفة. وصعود الجبل ليس عبادة.\n\n'
          'وقد أخبر النبي صلى الله عليه وسلم أنه ما من يوم أكثر من أن يعتق الله فيه عبدًا من النار من يوم عرفة. ووجودك هنا في رحلة العمرة لا يقوم مقام الحج. لكن الوقوف لحظة في هذا السهل للتوبة، واستشعار الحج وهذا الجمع العظيم في قلبك، فرصة ثمينة.',
    ),
    kaynaklar: [
      GeziKaynak('TDV İslâm Ansiklopedisi – Arafat', 'https://islamansiklopedisi.org.tr/arafat'),
      GeziKaynak('Sunan al-Tirmidhi 889 (sunnah.com)', 'https://sunnah.com/tirmidhi:889'),
      GeziKaynak('Sahih Muslim 1348 (sunnah.com)', 'https://sunnah.com/muslim:1348'),
      GeziKaynak('OpenStreetMap – Cebel-i Rahme', 'https://www.openstreetmap.org/node/1236463804'),
    ],
  ),
  // ---------------------------------------------------------------- 6
  GeziYeri(
    id: 'muzdelife',
    bolge: GeziBolge.mekke,
    tur: GeziTur.ova,
    ad: L10nText(
      tr: "Müzdelife ve Meş'ar-i Haram",
      en: "Muzdalifah and al-Mash'ar al-Haram",
      ar: 'مزدلفة والمشعر الحرام',
    ),
    arapcaAd: L10nText.same('مزدلفة والمشعر الحرام'),
    altBaslik: L10nText(
      tr: 'Arafat ile Mina arasında bayram gecesinin geçirildiği vadi',
      en: 'The valley between Arafat and Mina where the night of Eid is spent',
      ar: 'الوادي بين عرفات ومنى حيث تُقضى ليلة العيد',
    ),
    sehir: L10nText(
      tr: 'Mekke, Arafat ile Mina arası',
      en: 'Makkah, between Arafat and Mina',
      ar: 'مكة المكرمة، بين عرفات ومنى',
    ),
    konum: LatLng(21.3862106, 39.9124862), // OSM way 457318293 (مسجد المشعر الحرام)
    genel: L10nText(
      tr: "Müzdelife, Arafat ile Mina arasında, Harem sınırları içinde bulunan bir vadidir. Doğu-batı yönünde yaklaşık 4,4 km uzanır ve 963 hektarlık bir alanı kaplar. Batıda Muhassir vadisiyle Mina'dan, doğuda dar geçitlerle Arafat'tan ayrılır; sınırları bugün levhalarla işaretlenmiştir. Adının, Arafat'tan inen hacıların burada toplanıp zikir ve dua ile Allah'a yaklaşmasından geldiği söylenir. Akşam ve yatsı namazları burada birlikte kılındığı için Cem' (toplanma) diye de anılır.\n\n"
          "Kur'an'da geçen Meş'ar-i Haram, âlimlerin bir kısmına göre Müzdelife'nin tamamı, fıkıh âlimlerinin çoğuna göre ise Müzdelife'deki Kuzah tepesidir. Bugün bu bölgede büyük Meş'ar-i Haram Mescidi bulunur.",
      en: "Muzdalifah is a valley between Arafat and Mina, inside the boundaries of the Haram. It stretches about 4.4 km from east to west and covers 963 hectares. To the west it is separated from Mina by the valley of Muhassir, to the east from Arafat by narrow passes; its limits are marked with signs today. Its name is said to come from pilgrims coming down from Arafat, gathering here and drawing near to Allah through remembrance and supplication. Because the sunset and night prayers are combined here, it is also called Jam' (the gathering).\n\n"
          "Some scholars hold that al-Mash'ar al-Haram, mentioned in the Qur'an, is the whole of Muzdalifah, while most jurists consider it to be the hill of Quzah within Muzdalifah. Today the large Mash'ar al-Haram Mosque stands in this area.",
      ar: 'مزدلفة وادٍ بين عرفات ومنى داخل حدود الحرم، يمتدّ نحو 4.4 كيلومترات من الشرق إلى الغرب، ومساحته 963 هكتارًا. يفصله عن منى غربًا وادي محسِّر، وعن عرفات شرقًا مضائق ضيقة، وحدوده اليوم معلَّمة باللوحات. وقيل سُمّي بذلك لازدلاف الحجاج إليه من عرفات واقترابهم من الله بالذكر والدعاء. ويُسمّى «جَمْعًا» لاجتماع الناس فيه وجمع المغرب والعشاء.\n\n'
          'والمشعر الحرام الذي ذكره القرآن هو مزدلفة كلها عند بعض العلماء، وهو جبل قُزَح في مزدلفة عند أكثر الفقهاء. ويقوم في هذه البقعة اليوم مسجد المشعر الحرام الكبير.',
    ),
    tarihce: L10nText(
      tr: "Câhiliye döneminde Kureyş ve müttefikleri kendilerini Harem ehli sayar, vakfeyi Arafat'ta değil Müzdelife'deki Kuzah tepesinde yapardı. Diğer Araplar ise Arafat'tan sonra Müzdelife'ye gelirdi. Müzdelife'den ayrılmak için güneşin doğmasını beklerlerdi.\n\n"
          "İslam ile birlikte Arafat vakfesi haccın rüknü, Müzdelife vakfesi ise vacibi oldu. Hz. Peygamber Veda Haccı'nda Arafat'tan sonra Müzdelife'ye geldi, akşam ile yatsıyı birlikte kıldı, hasta ve güçsüzlerin geceden Mina'ya gitmesine izin verdi. Sabah namazını erkenden kıldıktan sonra Meş'ar-i Haram'a gelip kıbleye döndü; tekbir, tehlil ve dua ile ortalık iyice ağarıncaya kadar vakfe yaptı. Câhiliye âdetinin aksine güneş doğmadan Mina'ya hareket etti.\n\n"
          "Müzdelife ile Mina arasındaki Muhassir vadisinden hızlıca geçmek sünnettir. Bugün Müzdelife hac gecesi milyonlarca hacının açık havada geceyi geçirdiği bir alandır; tuvaletler, aydınlatma ve Meşair treninin durakları bulunur.",
      en: "In pre-Islamic times the Quraysh and their allies, regarding themselves as the people of the Haram, stood not at Arafat but on the hill of Quzah in Muzdalifah. The other Arabs came to Muzdalifah after Arafat. They used to wait for sunrise before leaving Muzdalifah.\n\n"
          "With Islam, the standing at Arafat became a pillar of Hajj and the stay at Muzdalifah an obligation. During the Farewell Pilgrimage the Prophet came to Muzdalifah after Arafat, combined the sunset and night prayers, and allowed the sick and weak to go on to Mina during the night. After praying the dawn prayer early he came to al-Mash'ar al-Haram, faced the qibla and remained in takbir, tahlil and supplication until the sky was bright. Unlike the pre-Islamic custom, he set off for Mina before sunrise.\n\n"
          "It is Sunnah to pass quickly through the valley of Muhassir between Muzdalifah and Mina. Today Muzdalifah is where millions of pilgrims spend the night of Hajj in the open air, with toilets, lighting and stations of the Mashaer train.",
      ar: 'كانت قريش وحلفاؤها في الجاهلية يعدّون أنفسهم أهل الحرم، فيقفون على قزح بمزدلفة لا بعرفة، وكان سائر العرب يأتون مزدلفة بعد عرفة، وكانوا لا يفيضون منها حتى تطلع الشمس.\n\n'
          'فلما جاء الإسلام صار الوقوف بعرفة ركنًا والوقوف بمزدلفة واجبًا. وفي حجة الوداع أتى النبي ﷺ مزدلفة بعد عرفة فجمع بين المغرب والعشاء، وأذن للضعفة في الدفع إلى منى ليلًا. ثم صلى الفجر مبكرًا وأتى المشعر الحرام فاستقبل القبلة، فكبّر وهلّل ودعا حتى أسفر جدًّا، ثم دفع إلى منى قبل طلوع الشمس مخالفًا أهل الجاهلية.\n\n'
          'ومن السنّة الإسراع في وادي محسِّر بين مزدلفة ومنى. ومزدلفة اليوم مبيت ملايين الحجاج في العراء ليلة النحر، وفيها دورات مياه وإنارة ومحطات لقطار المشاعر.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Câhiliye dönemi', en: 'Pre-Islamic era', ar: 'الجاهلية'),
        metin: L10nText(
          tr: "Kureyş vakfeyi Kuzah tepesinde yapar; hacılar Müzdelife'den güneş doğduktan sonra ayrılır.",
          en: 'The Quraysh stand on the hill of Quzah; pilgrims leave Muzdalifah only after sunrise.',
          ar: 'قريش تقف على قزح، والحجاج لا يفيضون من مزدلفة إلا بعد طلوع الشمس.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '9–10 Zilhicce 10 (632)', en: '9–10 Dhu al-Hijjah AH 10 (632)', ar: '9–10 ذي الحجة 10هـ (632م)'),
        metin: L10nText(
          tr: "Hz. Peygamber Müzdelife'de akşam ile yatsıyı birlikte kılar, geceyi geçirir ve sabah Meş'ar-i Haram'da vakfe yapar.",
          en: "The Prophet combines the sunset and night prayers at Muzdalifah, spends the night, and at dawn stands at al-Mash'ar al-Haram.",
          ar: 'النبي ﷺ يجمع المغرب والعشاء بمزدلفة ويبيت بها، ثم يقف بالمشعر الحرام صباحًا.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Aynı sabah', en: 'The same morning', ar: 'صباح اليوم نفسه'),
        metin: L10nText(
          tr: "Hz. Peygamber güneş doğmadan Mina'ya hareket eder.",
          en: 'The Prophet sets off for Mina before sunrise.',
          ar: 'النبي ﷺ يدفع إلى منى قبل طلوع الشمس.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Günümüz', en: 'Today', ar: 'اليوم'),
        metin: L10nText(
          tr: "Sınırlar levhalarla belirlenir; Meş'ar-i Haram Mescidi ve Meşair treni hacılara hizmet eder.",
          en: "The boundaries are marked with signs; the Mash'ar al-Haram Mosque and the Mashaer train serve the pilgrims.",
          ar: 'تعليم الحدود باللوحات، ومسجد المشعر الحرام وقطار المشاعر في خدمة الحجاج.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Kur'an, Arafat'tan akın akın dönüldüğünde Meş'ar-i Haram'da Allah'ın anılmasını emreder. Hanefîlere göre bayram sabahı fecirden sonra Müzdelife'de bir süre vakfe yapmak haccın vaciplerindendir; diğer mezheplerde burada geceleme ön plana çıkar.\n\n"
          "Hz. Peygamber'in Arafat'ta ümmetinin bağışlanması için yaptığı duayı Müzdelife'de tekrarladığı rivayet edilir. Şeytan taşlamada kullanılacak taşların Müzdelife'den toplanması da yaygın bir uygulamadır.",
      en: "The Qur'an commands that Allah be remembered at al-Mash'ar al-Haram when pilgrims pour down from Arafat. According to the Hanafis, standing for a while at Muzdalifah after dawn on the morning of Eid is an obligation of Hajj; in the other schools the emphasis is on spending the night there.\n\n"
          "It is narrated that the Prophet repeated at Muzdalifah the prayer he had made at Arafat for the forgiveness of his community. Collecting the pebbles for the stoning from Muzdalifah is also a common practice.",
      ar: 'أمر القرآن بذكر الله عند المشعر الحرام عند الإفاضة من عرفات. والوقوف بمزدلفة بعد الفجر يوم النحر واجب من واجبات الحج عند الحنفية، ويبرز المبيت بها في المذاهب الأخرى.\n\n'
          'ويُروى أن النبي ﷺ أعاد بمزدلفة دعاءه بعرفة لمغفرة أمته. ومن المعتاد جمع حصى الجمار من مزدلفة.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'فَإِذَآ أَفَضْتُم مِّنْ عَرَفَـٰتٍ فَٱذْكُرُوا۟ ٱللَّهَ عِندَ ٱلْمَشْعَرِ ٱلْحَرَامِ ۖ وَٱذْكُرُوهُ كَمَا هَدَىٰكُمْ',
        meal: L10nText(
          tr: "Arafat'tan akın akın döndüğünüzde Meş'ar-i Haram'da Allah'ı anın. O'nu, size gösterdiği şekilde anın.",
          en: "When you depart from Arafat, remember Allah at al-Mash'ar al-Haram, and remember Him as He has guided you.",
          ar: 'أمر بذكر الله عند المشعر الحرام بعد الإفاضة من عرفات.',
        ),
        kaynak: L10nText(tr: 'Bakara 2/198', en: 'Al-Baqarah 2:198', ar: 'البقرة: 198'),
      ),
    ],
    adab: [
      L10nText(
        tr: "Umre yolculuğunda Müzdelife genellikle Arafat–Mina turunda otobüsle geçilerek görülür; Meş'ar-i Haram Mescidi'nin önünde kısa bir mola verilebilir.",
        en: "On an Umrah trip Muzdalifah is usually seen by bus on the Arafat–Mina tour; a short stop can be made at the Mash'ar al-Haram Mosque.",
        ar: 'في رحلة العمرة تُرى مزدلفة غالبًا من الحافلة في جولة عرفات ومنى، ويمكن التوقف قليلًا عند مسجد المشعر الحرام.',
      ),
      L10nText(
        tr: 'Burada zikir, tekbir ve dua ile Hz. Peygamber\'in hac yolculuğunu hatırlayın.',
        en: "Remember the Prophet's Hajj journey here with dhikr, takbir and supplication.",
        ar: 'تذكّر هنا حجّ النبي ﷺ بالذكر والتكبير والدعاء.',
      ),
      L10nText(
        tr: 'Hac dışında burada taş toplamanın bir ibadet değeri yoktur; hatıra olarak taş almayın.',
        en: 'Outside Hajj, collecting pebbles here has no ritual value; do not take stones as souvenirs.',
        ar: 'لا معنى تعبديًا لجمع الحصى هنا في غير الحج، فلا تأخذ منه للذكرى.',
      ),
      L10nText(
        tr: 'Alanı temiz bırakın; çöplerinizi yanınızda götürün.',
        en: 'Leave the area clean; take your rubbish with you.',
        ar: 'اترك المكان نظيفًا واحمل مخلّفاتك معك.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: 'Hac döneminde bölgeye yalnızca hac izni (tasrih) olanlar girebilir. Hac dışında Müzdelife\'ye araçla ulaşılabilir; mescit her zaman açık olmayabilir.',
      en: 'During the Hajj season only those with a Hajj permit (tasrih) may enter the area. Outside Hajj, Muzdalifah can be reached by car; the mosque may not always be open.',
      ar: 'في موسم الحج لا يدخل المنطقة إلا من يحمل تصريح الحج. وفي غير الحج يمكن الوصول إلى مزدلفة بالسيارة، وقد لا يكون المسجد مفتوحًا دائمًا.',
    ),
    ziyaretSuresi: L10nText(tr: '15–30 dakika', en: '15–30 minutes', ar: '15–30 دقيقة'),
    anlatim: L10nText(
      tr: "Şu an Arafat ile Mina arasında uzanan Müzdelife vadisindesiniz. Her yıl hac mevsiminde, Arafat'ta güneş battıktan sonra milyonlarca hacı akın akın bu vadiye iner. Kur'an bu anı şöyle anlatır: Arafat'tan akın akın döndüğünüzde Meş'ar-i Haram'da Allah'ı anın.\n\n"
          "Müzdelife adı, yaklaşmak anlamına gelen bir kökten gelir. Hacılar burada toplanır ve zikir ile dua ederek Allah'a yaklaşır. Akşam ile yatsı namazı burada birlikte kılındığı için bu vadiye toplanma anlamında Cem' de denir. Hacılar geceyi açık havada, yıldızların altında geçirir. Ertesi gün Mina'da atılacak küçük taşları da çoğunlukla buradan toplar.\n\n"
          "İslam'dan önce Mekke'nin Kureyş kabilesi, kendini ayrıcalıklı sayar ve Arafat'a çıkmazdı. Vakfelerini burada, Kuzah tepesinde yaparlardı. İslam bu ayrıcalığı kaldırdı ve bütün insanlar Arafat'ta eşit olarak durdu.\n\n"
          "Hz. Peygamber Veda Haccı'nda Arafat'tan sonra buraya geldi. Akşam ile yatsıyı birlikte kıldı ve geceyi burada geçirdi. Hasta ve güçsüzlerin geceden Mina'ya geçmesine izin verdi. Sabah namazını erkenden kıldıktan sonra Meş'ar-i Haram'a geldi, kıbleye döndü, tekbir getirdi ve ortalık iyice ağarıncaya kadar dua etti. Sonra güneş doğmadan Mina'ya doğru yola çıktı. Bugün o bölgede büyük Meş'ar-i Haram Mescidi bulunuyor.\n\n"
          "Umre yolculuğunuzda burada bir an durun. Arafat'tan sonra bu vadiye inen milyonlarca hacıyı, onların sükûnetini ve tevazusunu düşünün. Allah'ı anın ve bir gün hac için buraya gelmeyi dileyin.",
      en: "You are now in the valley of Muzdalifah, stretching between Arafat and Mina. Every year in the Hajj season, after sunset at Arafat, millions of pilgrims pour down into this valley. The Qur'an describes this moment: when you depart from Arafat, remember Allah at al-Mash'ar al-Haram.\n\n"
          "The name Muzdalifah comes from a root meaning to draw near. Pilgrims gather here and draw near to Allah through remembrance and prayer. Because the sunset and night prayers are combined here, the valley is also called Jam', the gathering. Pilgrims spend the night in the open air under the stars. Most of them also collect here the small pebbles they will throw the next day at Mina.\n\n"
          "Before Islam, the Quraysh of Makkah considered themselves privileged and did not go up to Arafat. They made their standing here, on the hill of Quzah. Islam abolished this privilege, and all people stood equally at Arafat.\n\n"
          "During the Farewell Pilgrimage the Prophet came here after Arafat. He combined the sunset and night prayers and spent the night here. He allowed the sick and the weak to move on to Mina during the night. After praying the dawn prayer early, he came to al-Mash'ar al-Haram, faced the qibla, proclaimed Allah's greatness and prayed until the sky was bright. Then he set off for Mina before sunrise. Today the large Mash'ar al-Haram Mosque stands in that area.\n\n"
          "Pause here for a moment on your Umrah journey. Think of the millions of pilgrims who come down into this valley after Arafat, of their calm and their humility. Remember Allah, and ask Him that one day you may come here for Hajj.",
      ar: 'أنت الآن في وادي مزدلفة الممتدّ بين عرفات ومنى. ففي موسم الحج من كل عام، بعد غروب الشمس بعرفة، يفيض ملايين الحجاج إلى هذا الوادي. وقد وصف القرآن هذه اللحظة فقال: فإذا أفضتم من عرفات فاذكروا الله عند المشعر الحرام.\n\n'
          'واسم مزدلفة مأخوذ من الازدلاف، أي الاقتراب. فالحجاج يجتمعون هنا ويتقرّبون إلى الله بالذكر والدعاء. ويُسمّى الوادي جمعًا لأن المغرب والعشاء تُجمعان فيه. ويبيت الحجاج في العراء تحت النجوم. ويجمع أكثرهم هنا الحصى الصغيرة التي سيرمونها في منى في الغد.\n\n'
          'وقبل الإسلام كانت قريش ترى لنفسها امتيازًا فلا تخرج إلى عرفات. بل كانت تقف هنا على جبل قزح. فأبطل الإسلام هذا الامتياز، ووقف الناس جميعًا بعرفة سواء.\n\n'
          'وفي حجة الوداع جاء النبي صلى الله عليه وسلم إلى هنا بعد عرفة. فجمع بين المغرب والعشاء وبات بها. وأذن للضعفة والمرضى أن يمضوا إلى منى ليلًا. ثم صلى الفجر مبكرًا وأتى المشعر الحرام، فاستقبل القبلة وكبّر ودعا حتى أسفر جدًّا. ثم دفع إلى منى قبل طلوع الشمس. ويقوم في تلك البقعة اليوم مسجد المشعر الحرام الكبير.\n\n'
          'فتوقّف هنا لحظة في رحلة عمرتك. وتأمّل ملايين الحجاج الذين ينزلون هذا الوادي بعد عرفة، وسكينتهم وتواضعهم. واذكر الله، واسأله أن يكتب لك أن تأتي إلى هنا حاجًّا.',
    ),
    kaynaklar: [
      GeziKaynak('TDV İslâm Ansiklopedisi – Müzdelife', 'https://islamansiklopedisi.org.tr/muzdelife'),
      GeziKaynak("TDV İslâm Ansiklopedisi – Meş'ar-i Harâm", 'https://islamansiklopedisi.org.tr/mesar-i-haram'),
      GeziKaynak("Kur'ân-ı Kerîm – Bakara 2/198 (quran.com)", 'https://quran.com/2/198'),
      GeziKaynak("OpenStreetMap – Meş'ar-i Haram Mescidi", 'https://www.openstreetmap.org/way/457318293'),
    ],
  ),

  // ---------------------------------------------------------------- 7
  GeziYeri(
    id: 'mina',
    bolge: GeziBolge.mekke,
    tur: GeziTur.ova,
    ad: L10nText(
      tr: 'Mina ve Cemerât',
      en: 'Mina and the Jamarat',
      ar: 'منى والجمرات',
    ),
    arapcaAd: L10nText.same('منى والجمرات'),
    altBaslik: L10nText(
      tr: 'Şeytan taşlama, kurban ve çadırlar şehri',
      en: 'The stoning, the sacrifice and the city of tents',
      ar: 'رمي الجمار والنحر ومدينة الخيام',
    ),
    sehir: L10nText(
      tr: "Mekke, Mescid-i Haram'ın ~7 km doğusu",
      en: 'Makkah, ~7 km east of Masjid al-Haram',
      ar: 'مكة المكرمة، نحو 7 كم شرق المسجد الحرام',
    ),
    konum: LatLng(21.4207809, 39.8726799), // OSM way 440922995 (جسر الجمرات)
    genel: L10nText(
      tr: "Mina, Mekke ile Müzdelife arasında, Mescid-i Haram'ın yaklaşık 7 km doğusunda ve Harem sınırları içinde bulunan vadidir. Şer'î sınırı Mekke tarafında Akabe cemresi, doğu tarafında Muhassir vadisidir; kuzeyinde ve güneyinde iki dağ uzanır. Hac günlerinde şeytan taşlama, kurban kesme ve bayram günlerinde konaklama gibi ibadetler burada yapılır.\n\n"
          "Mina'nın en bilinen yerleri cemrelerdir: Mekke yönünden sırasıyla büyük cemre (Akabe), orta cemre ve küçük cemre. Bugün cemreler, izdihamı önlemek için yapılmış çok katlı Cemerât Köprüsü'nün içindedir. Vadinin büyük bölümü, hac günlerinde milyonlarca hacıyı barındıran, ateşe dayanıklı kaplamalı ve klimalı sabit çadırlarla kaplıdır; bu yüzden Mina'ya \"çadırlar şehri\" denir. Küçük cemrenin yakınında Mescid-i Hayf bulunur.",
      en: "Mina is the valley between Makkah and Muzdalifah, about 7 km east of Masjid al-Haram and inside the boundaries of the Haram. Its legal boundary is the Jamrat al-Aqabah on the Makkah side and the valley of Muhassir to the east, with mountains running along its north and south. During Hajj the stoning, the sacrifice and the stay on the days of Eid take place here.\n\n"
          "Mina's best-known sites are the Jamarat: from the Makkah side, the great Jamrah (al-Aqabah), the middle Jamrah and the small Jamrah. Today the Jamarat stand inside the multi-storey Jamarat Bridge, built to prevent crushes. Most of the valley is covered with permanent, air-conditioned tents with fire-resistant covering that house millions of pilgrims during Hajj, which is why Mina is called the \"city of tents\". Masjid al-Khayf stands near the small Jamrah.",
      ar: 'منى وادٍ بين مكة ومزدلفة على بُعد نحو سبعة كيلومترات شرق المسجد الحرام، داخل حدود الحرم. حدّها الشرعي من جهة مكة جمرة العقبة، ومن الشرق وادي محسِّر، ويمتدّ جبلان في شمالها وجنوبها. وفيها تُؤدّى في الحج مناسك الرمي والنحر والمبيت أيام التشريق.\n\n'
          'وأشهر معالم منى الجمرات: من جهة مكة جمرة العقبة الكبرى ثم الوسطى ثم الصغرى. وهي اليوم داخل جسر الجمرات متعدد الطوابق الذي أُنشئ لمنع الزحام. ويغطي معظمَ الوادي خيامٌ ثابتة مكيّفة مكسوّة بمادة مقاومة للحريق تأوي ملايين الحجاج في الموسم، ولذلك تُسمّى منى «مدينة الخيام». وقرب الجمرة الصغرى مسجد الخيف.',
    ),
    tarihce: L10nText(
      tr: "Bir hadiste rivayet edildiğine göre Hz. İbrahim, oğlu İsmail'i kurban etmeye götürürken şeytan Mina'nın üç yerinde önüne çıkmış, o da her seferinde şeytanı taşlamıştır. Şeytan taşlama, bu hatırayı yaşatır ve insanı günaha çağıran her şeye karşı bir direnişi temsil eder. Mina adının, kan akıtılmasından ya da Allah'ın burada kullarına lütufta bulunmasından geldiği de söylenir.\n\n"
          "Akabe cemresinin karşısındaki küçük vadide, 621 ve 622 yıllarında Medineli Müslümanlar Hz. Peygamber'e biat etti. Bu Akabe biatları hicretin yolunu açtı; o yerde bugün Mescid-i Bey'a bulunur. Buhârî'nin rivayetine göre Mürselât suresi, Mina'daki bir mağarada Hz. Peygamber'e indi. Hz. Peygamber Veda Haccı'nda cemrelere taş attı, kurbanlarını burada kesti ve hac menasikinin kendisinden öğrenilmesini istedi.\n\n"
          "Cemrelerin çevresi tarih boyunca defalarca düzenlendi. 1975'te cemrelerin bulunduğu alan iki katlı hâle getirildi. 2004'ten sonra eski yuvarlak sütunlar yerine daha uzun ve yüksek duvarlar yapıldı; eski köprü 2006'da yıkılarak yerine çok katlı yeni Cemerât Köprüsü inşa edildi. 1997'deki büyük yangından sonra Mina'daki çadırlar ateşe dayanıklı sabit çadırlarla değiştirildi.",
      en: "According to a hadith, as Prophet Ibrahim was taking his son Ismail to be sacrificed, Satan appeared before him at three places in Mina, and each time Ibrahim stoned him. The stoning keeps this memory alive and represents resistance against everything that calls a person to sin. The name Mina is said to come from the shedding of blood, or from Allah's bestowing favour on His servants here.\n\n"
          "In the small valley opposite the Jamrat al-Aqabah, Muslims from Madinah pledged allegiance to the Prophet in 621 and 622. These Pledges of Aqabah opened the way to the Hijrah; Masjid al-Bay'ah stands at that spot today. According to al-Bukhari, Surah al-Mursalat was revealed to the Prophet in a cave in Mina. During the Farewell Pilgrimage the Prophet stoned the Jamarat, offered his sacrifices here, and asked people to learn the rites of Hajj from him.\n\n"
          "The area around the Jamarat has been rearranged many times. In 1975 it was made two-storey. After 2004 the old round pillars were replaced by longer and taller walls; the old bridge was demolished in 2006 and the new multi-storey Jamarat Bridge was built. After the great fire of 1997, the tents of Mina were replaced by permanent fire-resistant tents.",
      ar: 'جاء في حديث أن إبراهيم عليه السلام لما ذهب بابنه إسماعيل ليذبحه عرض له الشيطان في ثلاثة مواضع من منى، فرماه في كل مرة. فرمي الجمار يُحيي هذه الذكرى، ويرمز إلى مقاومة كل ما يدعو إلى المعصية. وقيل سُمّيت منى لما يُمنى فيها من الدماء، أي يُراق، أو لما منّ الله فيها على عباده.\n\n'
          'وفي الشِّعب الصغير قبالة جمرة العقبة بايع مسلمو المدينة النبيَّ ﷺ سنتي 621 و622م، فكانت بيعتا العقبة تمهيدًا للهجرة، وفي ذلك الموضع اليوم مسجد البيعة. وفي رواية البخاري أن سورة المرسلات نزلت على النبي ﷺ في غار بمنى. ورمى النبي ﷺ الجمار في حجة الوداع، ونحر هديه هنا، وقال: «لتأخذوا مناسككم».\n\n'
          'وأُعيد تنظيم منطقة الجمرات مرات عديدة؛ ففي سنة 1975م جُعلت من طابقين، وبعد سنة 2004م استُبدلت بالأعمدة المستديرة القديمة جدران أطول وأعلى، ثم هُدم الجسر القديم سنة 2006م وبُني جسر الجمرات الجديد متعدد الطوابق. وبعد الحريق الكبير سنة 1997م استُبدلت بخيام منى خيامٌ ثابتة مقاومة للحريق.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Hz. İbrahim dönemi', en: 'Time of Prophet Ibrahim', ar: 'عهد إبراهيم عليه السلام'),
        metin: L10nText(
          tr: 'Hadiste rivayet edildiğine göre Hz. İbrahim, Mina\'da üç yerde önüne çıkan şeytanı taşlar.',
          en: 'According to a hadith, Ibrahim stones Satan, who appears before him at three places in Mina.',
          ar: 'في الحديث أن إبراهيم رمى الشيطان حين عرض له في ثلاثة مواضع بمنى.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '621 ve 622', en: '621 and 622', ar: '621م و622م'),
        metin: L10nText(
          tr: "Birinci ve ikinci Akabe biatları; Medineliler Hz. Peygamber'e bağlılık sözü verir.",
          en: 'The first and second Pledges of Aqabah; the people of Madinah pledge allegiance to the Prophet.',
          ar: 'بيعتا العقبة الأولى والثانية، وأهل المدينة يبايعون النبي ﷺ.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '10–13 Zilhicce 10 (632)', en: '10–13 Dhu al-Hijjah AH 10 (632)', ar: '10–13 ذي الحجة 10هـ (632م)'),
        metin: L10nText(
          tr: 'Hz. Peygamber Veda Haccı\'nda cemrelere taş atar, kurbanlarını keser ve Mina\'da kalır.',
          en: 'During the Farewell Pilgrimage the Prophet stones the Jamarat, offers his sacrifices and stays at Mina.',
          ar: 'النبي ﷺ يرمي الجمار في حجة الوداع وينحر هديه ويبيت بمنى.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1975', en: '1975', ar: '1975م'),
        metin: L10nText(
          tr: 'Cemrelerin bulunduğu alan iki katlı olarak yeniden düzenlenir.',
          en: 'The Jamarat area is rearranged on two levels.',
          ar: 'إعادة تنظيم منطقة الجمرات على طابقين.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1997 sonrası', en: 'After 1997', ar: 'بعد 1997م'),
        metin: L10nText(
          tr: 'Büyük yangından sonra Mina\'ya ateşe dayanıklı sabit çadırlar kurulur.',
          en: 'After a great fire, permanent fire-resistant tents are set up in Mina.',
          ar: 'بعد حريق كبير تُقام في منى خيام ثابتة مقاومة للحريق.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '2006–2007', en: '2006–2007', ar: '2006–2007م'),
        metin: L10nText(
          tr: 'Eski köprü yıkılır, yerine çok katlı yeni Cemerât Köprüsü yapılır.',
          en: 'The old bridge is demolished and replaced by the new multi-storey Jamarat Bridge.',
          ar: 'هدم الجسر القديم وإنشاء جسر الجمرات الجديد متعدد الطوابق.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Kur'an, Mina günleri olarak bilinen sayılı günlerde Allah'ın anılmasını emreder. Bayramın birinci günü yalnız Akabe cemresine, sonraki günlerde ise sırasıyla küçük, orta ve büyük cemreye yedişer taş atmak haccın vaciplerindendir. Kurbanın Mina'da kesilmesi ve tıraş olunması da Hz. Peygamber'in uygulaması sebebiyle daha faziletli kabul edilmiştir.\n\n"
          "Mina'daki ibadetler, Hz. İbrahim'in teslimiyetini ve şeytana karşı direnişini hatırlatır. Hz. Peygamber Mina'nın kimsenin özel mülkü olamayacağını, herkesin ortak ibadet yeri olduğunu bildirmiştir.",
      en: "The Qur'an commands that Allah be remembered on the appointed days known as the days of Mina. On the first day of Eid pilgrims throw seven pebbles only at the Jamrat al-Aqabah, and on the following days seven each at the small, middle and great Jamrah in order; this is an obligation of Hajj. Offering the sacrifice and shaving the head at Mina are considered more virtuous because the Prophet did so.\n\n"
          "The rites at Mina recall Ibrahim's submission and his resistance to Satan. The Prophet declared that Mina cannot become anyone's private property; it is a shared place of worship for all.",
      ar: 'أمر القرآن بذكر الله في الأيام المعدودات، وهي أيام منى. ورمي جمرة العقبة وحدها يوم النحر بسبع حصيات، ثم رمي الجمرات الثلاث بالترتيب، الصغرى فالوسطى فالكبرى، بسبع سبع في الأيام التالية، من واجبات الحج. والنحر والحلق بمنى أفضل لفعل النبي ﷺ.\n\n'
          'ومناسك منى تذكّر بإسلام إبراهيم واستسلامه لأمر ربه ومقاومته للشيطان. وقد بيّن النبي ﷺ أن منى لا تكون ملكًا لأحد، بل هي مناخ مشترك لكل الحجاج.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'وَٱذْكُرُوا۟ ٱللَّهَ فِىٓ أَيَّامٍ مَّعْدُودَٰتٍ ۚ فَمَن تَعَجَّلَ فِى يَوْمَيْنِ فَلَآ إِثْمَ عَلَيْهِ وَمَن تَأَخَّرَ فَلَآ إِثْمَ عَلَيْهِ ۚ لِمَنِ ٱتَّقَىٰ',
        meal: L10nText(
          tr: "Sayılı günlerde Allah'ı anın. Kim iki gün içinde acele edip dönerse ona günah yoktur; kim de geri kalırsa ona da günah yoktur. Bu, Allah'a karşı gelmekten sakınanlar içindir.",
          en: 'Remember Allah during the appointed days. Whoever hastens in two days, there is no sin upon him; and whoever delays, there is no sin upon him—for whoever fears Allah.',
          ar: 'نزلت في أيام منى وما يجوز فيها من التعجّل والتأخّر.',
        ),
        kaynak: L10nText(tr: 'Bakara 2/203', en: 'Al-Baqarah 2:203', ar: 'البقرة: 203'),
      ),
    ],
    adab: [
      L10nText(
        tr: 'Umre yolculuğunda Mina genellikle Arafat turunda otobüsten görülür; çadır alanlarına girmek çoğu zaman mümkün değildir.',
        en: 'On an Umrah trip Mina is usually seen from the bus on the Arafat tour; entering the tent areas is often not possible.',
        ar: 'في رحلة العمرة تُرى منى غالبًا من الحافلة في جولة عرفات، ودخول مناطق الخيام غير متاح في الغالب.',
      ),
      L10nText(
        tr: 'Hac dışında cemrelere taş atmanın bir ibadet değeri yoktur; taş atmayın.',
        en: 'Outside Hajj, throwing pebbles at the Jamarat has no ritual value; do not throw stones.',
        ar: 'لا معنى تعبديًا لرمي الجمرات في غير أيام الحج، فلا ترمِ.',
      ),
      L10nText(
        tr: 'Mescid-i Hayf açıksa orada namaz kılabilirsiniz; vakit dışında kapalı olabilir.',
        en: 'If Masjid al-Khayf is open you may pray there; it may be closed outside prayer times.',
        ar: 'إن كان مسجد الخيف مفتوحًا فصلِّ فيه، وقد يُغلق في غير أوقات الصلاة.',
      ),
      L10nText(
        tr: 'Hz. İbrahim\'in teslimiyetini ve Akabe biatlarını hatırlayarak dua edin.',
        en: "Pray while remembering Ibrahim's submission and the Pledges of Aqabah.",
        ar: 'ادعُ متذكّرًا استسلام إبراهيم لأمر ربه وبيعتي العقبة.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Hac döneminde Mina'ya yalnızca hac izni (tasrih) olanlar girebilir. Hac dışında Cemerât Köprüsü ve çadır alanlarına erişim kısıtlı olabilir; ziyaret genellikle çevredeki yollardan yapılır.",
      en: 'During the Hajj season only those with a Hajj permit (tasrih) may enter Mina. Outside Hajj, access to the Jamarat Bridge and the tent areas may be restricted; visits are usually made from the surrounding roads.',
      ar: 'في موسم الحج لا يدخل منى إلا من يحمل تصريح الحج. وفي غير الحج قد يكون الدخول إلى جسر الجمرات ومناطق الخيام مقيّدًا، وتكون الزيارة غالبًا من الطرق المحيطة.',
    ),
    ziyaretSuresi: L10nText(tr: '20–40 dakika', en: '20–40 minutes', ar: '20–40 دقيقة'),
    anlatim: L10nText(
      tr: "Şu an Mina'dasınız. Mescid-i Haram'ın yaklaşık yedi kilometre doğusundaki bu vadi, hac mevsiminde dünyanın en büyük çadır şehrine dönüşür. Gözünüzün alabildiğine uzanan beyaz çadırlar, hac günlerinde milyonlarca hacıyı barındırır.\n\n"
          "Mina'nın hikâyesi Hz. İbrahim'e uzanır. Bir hadiste anlatıldığına göre Hz. İbrahim, Allah'ın emriyle oğlu İsmail'i kurban etmeye götürürken şeytan üç ayrı yerde önüne çıktı ve onu vazgeçirmeye çalıştı. Hz. İbrahim her seferinde şeytanı taşladı. Bugün hacıların taş attığı üç cemre, bu yerleri temsil eder. Her taş, insanı kötülüğe çağıran her şeye karşı verilen bir cevaptır.\n\n"
          "Mina, İslam tarihinin dönüm noktalarından birine de tanıklık etti. Büyük cemrenin karşısındaki küçük vadide, hicretten önceki iki yılda Medineli Müslümanlar gece gizlice Hz. Peygamber'le buluştu ve ona bağlılık sözü verdi. Akabe biatları denilen bu sözler, hicretin ve Medine'deki İslam toplumunun temelini attı. Hz. Peygamber Veda Haccı'nda burada cemrelere taş attı, kurbanlarını kesti ve insanlara hac ibadetini kendisinden öğrenmelerini söyledi.\n\n"
          "Zamanla artan kalabalık nedeniyle cemrelerin çevresi defalarca yeniden düzenlendi. Bugün cemreler, birkaç katlı büyük bir köprünün içindedir. Bu sayede saatte yüz binlerce kişi güvenle taş atabilir. Küçük cemrenin yakınında, Hz. Peygamber'in namaz kıldığı yerde Mescid-i Hayf bulunur.\n\n"
          "Kur'an, sayılı günlerde Allah'ın anılmasını emreder. Umre yolculuğunuzda burada taş atılmaz, ama bu vadide Hz. İbrahim'in teslimiyetini düşünebilirsiniz. Allah'tan, hayatınızdaki kötülüklere karşı direnme gücü dileyin.",
      en: "You are now at Mina. This valley, about seven kilometres east of Masjid al-Haram, becomes the largest city of tents in the world during the Hajj season. The white tents stretching as far as the eye can see house millions of pilgrims in the days of Hajj.\n\n"
          "The story of Mina goes back to Prophet Ibrahim. According to a hadith, as Ibrahim was taking his son Ismail to be sacrificed by the command of Allah, Satan appeared before him at three places and tried to turn him back. Each time, Ibrahim stoned him. The three Jamarat at which pilgrims throw pebbles today represent those places. Every pebble is an answer to everything that calls a person to evil.\n\n"
          "Mina also witnessed a turning point in Islamic history. In the small valley opposite the great Jamrah, in the two years before the Hijrah, Muslims from Madinah met the Prophet secretly at night and pledged their loyalty to him. These Pledges of Aqabah laid the foundation for the Hijrah and for the Muslim community in Madinah. During the Farewell Pilgrimage the Prophet stoned the Jamarat here, offered his sacrifices, and told people to learn the rites of Hajj from him.\n\n"
          "As the crowds grew, the area around the Jamarat was rebuilt many times. Today the Jamarat stand inside a great bridge of several storeys, which allows hundreds of thousands of people an hour to perform the stoning safely. Near the small Jamrah, where the Prophet prayed, stands Masjid al-Khayf.\n\n"
          "The Qur'an commands that Allah be remembered on the appointed days. No pebbles are thrown here on an Umrah journey, but in this valley you can reflect on Ibrahim's submission. Ask Allah for the strength to resist the evils in your own life.",
      ar: 'أنت الآن في منى. هذا الوادي، على بُعد نحو سبعة كيلومترات شرق المسجد الحرام، يصير في موسم الحج أكبر مدينة للخيام في العالم. وهذه الخيام البيضاء الممتدّة على مدّ البصر تأوي ملايين الحجاج في أيام الحج.\n\n'
          'وتعود قصة منى إلى إبراهيم عليه السلام. فقد جاء في حديث أن إبراهيم لما ذهب بابنه إسماعيل ليذبحه امتثالًا لأمر الله، عرض له الشيطان في ثلاثة مواضع يريد أن يثنيه. فرماه إبراهيم في كل مرة. والجمرات الثلاث التي يرميها الحجاج اليوم تمثّل تلك المواضع. وكل حصاة جوابٌ على كل ما يدعو الإنسان إلى الشر.\n\n'
          'وشهدت منى منعطفًا من منعطفات التاريخ الإسلامي. ففي الشِّعب الصغير قبالة الجمرة الكبرى، في السنتين اللتين سبقتا الهجرة، التقى مسلمو المدينة بالنبي صلى الله عليه وسلم سرًّا في الليل وبايعوه. فكانت بيعتا العقبة أساسًا للهجرة ولمجتمع المسلمين في المدينة. وفي حجة الوداع رمى النبي صلى الله عليه وسلم الجمار هنا، ونحر هديه، وأمر الناس أن يأخذوا عنه مناسكهم.\n\n'
          'ومع ازدياد الحجاج أُعيد بناء منطقة الجمرات مرات كثيرة. والجمرات اليوم داخل جسر كبير متعدد الطوابق. يتيح لمئات الآلاف في الساعة أن يرموا بأمان. وقرب الجمرة الصغرى، حيث صلّى النبي صلى الله عليه وسلم، يقوم مسجد الخيف.\n\n'
          'وقد أمر القرآن بذكر الله في الأيام المعدودات. ولا رمي هنا في رحلة العمرة، لكن يمكنك أن تتأمّل في هذا الوادي استسلام إبراهيم لأمر ربه. واسأل الله القوة على مقاومة الشرور في حياتك.',
    ),
    kaynaklar: [
      GeziKaynak('TDV İslâm Ansiklopedisi – Mina', 'https://islamansiklopedisi.org.tr/mina'),
      GeziKaynak('TDV İslâm Ansiklopedisi – Cemre', 'https://islamansiklopedisi.org.tr/cemre'),
      GeziKaynak("Kur'ân-ı Kerîm – Bakara 2/203 (quran.com)", 'https://quran.com/2/203'),
      GeziKaynak('Wikipedia – Jamarat Bridge', 'https://en.wikipedia.org/wiki/Jamarat_Bridge'),
      GeziKaynak('Wikipedia – Mina, Saudi Arabia', 'https://en.wikipedia.org/wiki/Mina,_Saudi_Arabia'),
      GeziKaynak('OpenStreetMap – Cemerât Köprüsü', 'https://www.openstreetmap.org/way/440922995'),
    ],
  ),
];
