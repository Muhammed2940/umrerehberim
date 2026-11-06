import 'package:latlong2/latlong.dart';

import 'gezilecek_yerler_data.dart';
import 'l10n_text.dart';

/// Mekke (B): Nemire, Hayf, Cin, Ci'râne, Ten'îm mescitleri ve Harameyn
/// Mimari Sergisi.
///
/// Tarihî bilgiler TDV İslâm Ansiklopedisi'nin ilgili maddelerinden
/// (Mescid-i Nemire, Mescid-i Hayf, Mescid-i Cin, Ci'râne, Ten'îm) alındı.
/// Koordinatlar 6 Kasım 2026'da OpenStreetMap (Overpass) ile doğrulandı.
/// Ayetlerin Arapça metni api.quran.com (text_uthmani) ile doğrulandı.
const List<GeziYeri> kMekkeYerleriB = [
  // ---------------------------------------------------------------- Nemire
  GeziYeri(
    id: 'mescid_i_nemire',
    bolge: GeziBolge.mekke,
    tur: GeziTur.mescid,
    ad: L10nText(tr: 'Mescid-i Nemire', en: 'Namirah Mosque', ar: 'مسجد نمرة'),
    arapcaAd: L10nText.same('مسجد نمرة'),
    altBaslik: L10nText(
      tr: "Arafat'ta Vedâ hutbesinin okunduğu yerdeki büyük mescit",
      en: 'The great mosque at Arafat where the Farewell Sermon was delivered',
      ar: 'المسجد الكبير في عرفات حيث أُلقيت خطبة الوداع',
    ),
    sehir: L10nText(tr: 'Arafat, Mekke', en: 'Arafat, Makkah', ar: 'عرفات، مكة المكرمة'),
    konum: LatLng(21.35298, 39.96636), // OSM way 112317307
    genel: L10nText(
      tr: "Mescid-i Nemire, Arafat'ın batı kenarında, hacıların Arefe günü öğle ve ikindi namazlarını cem ederek "
          "kıldıkları büyük mescittir. Adını, Vedâ haccında Hz. Peygamber için kıldan bir çadırın kurulduğu Nemire "
          "adlı küçük tepeden alır. Kaynaklarda Mescid-i Arafe, Mescid-i İbrâhim, Mescid-i Urene ve Arafat Musallâsı "
          "adlarıyla da geçer.\n\n"
          "Mescidin kıble tarafı, Arafat sınırının hemen dışındaki Urene vadisine denk gelir. Bu yüzden mescidin "
          "batı ve kuzeydeki bir bölümü Arafat sınırının dışında kalır. Arafat'ta vakfe yapacak olanların, "
          "mescidin içinde bulunuyorlarsa Arafat sınırı içinde kalan bölümde durmaları gerekir; sınırlar mescidin "
          "içinde levhalarla gösterilmiştir. Bugünkü yapı yaklaşık 340 × 240 metre büyüklüğündedir, altı minaresi "
          "vardır ve aynı anda yaklaşık 300.000 kişinin namaz kılabileceği belirtilir.",
      en: 'Namirah Mosque stands on the western edge of Arafat. On the Day of Arafah, pilgrims gather here to pray '
          'the noon and afternoon prayers combined. It takes its name from Namirah, a small hill where a tent of '
          "hair was pitched for the Prophet during the Farewell Pilgrimage. Sources also call it the Mosque of "
          'Arafah, the Mosque of Ibrahim, the Mosque of Uranah and the prayer-ground of Arafat.\n\n'
          'The qibla side of the mosque lies in the valley of Uranah, just outside the boundary of Arafat. For this '
          'reason, part of the mosque on its western and northern sides is outside Arafat. Pilgrims who perform '
          'the standing (wuquf) inside the mosque should stay in the part that lies within Arafat; the boundary '
          'is marked with signs inside the building. Today the mosque measures about 340 × 240 metres, has six '
          'minarets and is said to hold about 300,000 worshippers at once.',
      ar: 'مسجد نمرة هو المسجد الكبير الواقع في الطرف الغربي من عرفات، يصلي فيه الحجاج يوم عرفة الظهر والعصر '
          'جمعًا. وقد سُمّي باسم نَمِرة، وهي ربوة صغيرة ضُربت عليها قبة من شعر للنبي صلى الله عليه وسلم في حجة '
          'الوداع. ويُعرف في المصادر أيضًا بمسجد عرفة ومسجد إبراهيم ومسجد عُرَنة ومُصلّى عرفات.\n\n'
          'ويقع الجانب القبلي من المسجد في وادي عُرَنة خارج حدود عرفات مباشرة، ولذلك يقع جزء من المسجد في جهتيه '
          'الغربية والشمالية خارج عرفات. وعلى من يقف بعرفة داخل المسجد أن يكون في الجزء الواقع ضمن حدودها، وقد '
          'وُضعت لوحات داخل المسجد تبيّن الحدود. وتبلغ مساحة المبنى الحالي نحو 340 × 240 مترًا، وله ست مآذن، '
          'ويتسع لنحو ثلاثمئة ألف مصلٍّ في وقت واحد.',
    ),
    tarihce: L10nText(
      tr: "Vedâ haccında Hz. Peygamber Arefe günü Nemire'de kurulan çadırında bir süre kaldı. Öğleye doğru Urene "
          "vadisine inerek devesinin üzerinden Vedâ hutbesini okudu, ardından öğle ve ikindi namazlarını cem-i "
          "takdimle kıldırdı ve vakfe yerine geçti. Bu olay Müslim'in Sahîh'inde Câbir b. Abdullah'tan uzun bir "
          "rivayetle aktarılır. Resûlullah'ın namaz kılıp hutbe okuduğu bu yere sonradan bir mescit yapılmıştır.\n\n"
          "Başlangıçta burası etrafı duvarsız, üstü açık düz bir alandı. Hz. Peygamber'in hitap etmesi için Urene'de "
          "küçük taşlardan bir minber yapılmıştı; sel suları bu minberi yıkınca Abdullah b. Zübeyr hurma kütüğünden "
          "yeni bir minber koydurdu. Emevîler döneminde alanın etrafı duvarla çevrildi.\n\n"
          "Mescit, Zengîler'in veziri Cemâleddin el-İsfahânî (ö. 1164) tarafından genişletildi. 1439'da Memlük "
          "Sultanı Çakmak onarım yaptırdı, 1479'da Sultan Kayıtbay kıble duvarına paralel iki revak ekletti. "
          "Osmanlı döneminde Yavuz Sultan Selim, Kanûnî Sultan Süleyman ve I. Ahmed zamanında bakım gördü; "
          "1661-62'de IV. Mehmed onarıp yeniledi. 1672'de buraya gelen Evliya Çelebi mescidi kale gibi dört köşe, "
          "minaresiz ve on dört kubbeli bir yapı olarak anlatır.\n\n"
          "Suudi hükümeti mescidi iki kez yıkıp yeniden inşa etti. İlk yeni yapı yaklaşık 150 × 120 metre iken, "
          "artan hacı sayısı nedeniyle 340 × 240 metreye genişletildi. Son hâlinde mescidin altı minaresi, üç "
          "kubbesi ve 64 kapısı vardır.",
      en: 'During the Farewell Pilgrimage, on the Day of Arafah, the Prophet stayed for a while in the tent pitched '
          'for him at Namirah. Towards noon he went down into the valley of Uranah and delivered the Farewell '
          'Sermon from his camel. He then led the noon and afternoon prayers together and moved on to the place '
          'of standing. This is narrated at length from Jabir ibn Abdullah in Sahih Muslim. A mosque was later '
          'built on the spot where he prayed and preached.\n\n'
          'At first the site was an open, flat area without walls. A small pulpit of stones had been made at '
          'Uranah for the Prophet to address the people; when floods destroyed it, Abdullah ibn al-Zubayr had a '
          'new pulpit of palm trunk placed there. In the Umayyad period the area was enclosed with a wall.\n\n'
          'The mosque was enlarged by Jamal al-Din al-Isfahani (d. 1164), a vizier of the Zengids. In 1439 the '
          'Mamluk Sultan Jaqmaq had it repaired, and in 1479 Sultan Qaytbay added two arcades parallel to the '
          'qibla wall. In the Ottoman period it was maintained under Selim I, Suleyman the Magnificent and '
          'Ahmed I, and in 1661-62 Mehmed IV restored it. Evliya Celebi, who saw it in 1672, describes a square, '
          'fortress-like building with fourteen domes and no minaret.\n\n'
          'The Saudi government demolished and rebuilt the mosque twice. The first new building measured about '
          '150 × 120 metres; because of the growing number of pilgrims it was then enlarged to 340 × 240 metres. '
          'In its present form it has six minarets, three domes and 64 doors.',
      ar: 'في حجة الوداع نزل النبي صلى الله عليه وسلم يوم عرفة في القبة التي ضُربت له بنمرة، فلما زالت الشمس نزل '
          'بطن وادي عُرَنة فخطب الناس على راحلته خطبة الوداع، ثم صلى الظهر والعصر جمع تقديم، ثم ركب حتى أتى '
          'الموقف. وقد روى ذلك مسلم في صحيحه من حديث جابر بن عبد الله الطويل. ثم بُني لاحقًا مسجد في الموضع الذي '
          'صلى فيه وخطب.\n\n'
          'وكان المكان في البداية ساحة مستوية مكشوفة بلا جدران. وقد صُنع للنبي صلى الله عليه وسلم في عُرَنة منبر صغير '
          'من الحجارة ليخطب عليه، فلما هدمته السيول وضع عبد الله بن الزبير منبرًا جديدًا من جذوع النخل. وفي العهد '
          'الأموي أُحيط المكان بجدار.\n\n'
          'ووسّع المسجدَ جمالُ الدين الأصفهاني وزير الزنكيين المتوفى سنة 1164م، ورمّمه السلطان المملوكي جقمق سنة '
          '1439م، وأضاف السلطان قايتباي سنة 1479م رواقين موازيين لجدار القبلة. وفي العهد العثماني عُني به في '
          'عهد السلطان سليم الأول وسليمان القانوني وأحمد الأول، وجدّده السلطان محمد الرابع سنة 1661-1662م. '
          'ووصفه الرحالة أوليا جلبي سنة 1672م بأنه بناء مربع كالقلعة بلا مئذنة وفيه أربع عشرة قبة.\n\n'
          'وقد هدمت الحكومة السعودية المسجد وأعادت بناءه مرتين؛ فكانت مساحة البناء الأول نحو 150 × 120 مترًا، ثم '
          'وُسّع إلى 340 × 240 مترًا لازدياد أعداد الحجاج. وله في شكله الأخير ست مآذن وثلاث قباب وأربعة وستون بابًا.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Hicrî 10 (632), Arefe günü', en: '10 AH (632), Day of Arafah', ar: 'سنة 10هـ (632م)، يوم عرفة'),
        metin: L10nText(
          tr: "Hz. Peygamber Urene vadisinde Vedâ hutbesini okudu, öğle ve ikindiyi cem ederek kıldırdı.",
          en: 'The Prophet delivered the Farewell Sermon in the valley of Uranah and combined the noon and afternoon prayers.',
          ar: 'خطب النبي صلى الله عليه وسلم خطبة الوداع في وادي عرنة وجمع بين الظهر والعصر.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Emevîler dönemi', en: 'Umayyad period', ar: 'العهد الأموي'),
        metin: L10nText(
          tr: 'Açık namaz alanının etrafı duvarla çevrildi.',
          en: 'The open prayer ground was enclosed with a wall.',
          ar: 'أُحيط المصلى المكشوف بجدار.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '12. yüzyıl', en: '12th century', ar: 'القرن السادس الهجري'),
        metin: L10nText(
          tr: 'Zengî veziri Cemâleddin el-İsfahânî mescidi genişletti.',
          en: 'The Zengid vizier Jamal al-Din al-Isfahani enlarged the mosque.',
          ar: 'وسّع الوزير الزنكي جمال الدين الأصفهاني المسجد.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1479', en: '1479', ar: '1479م'),
        metin: L10nText(
          tr: 'Memlük Sultanı Kayıtbay kıble duvarına paralel iki revak yaptırdı.',
          en: 'Mamluk Sultan Qaytbay added two arcades parallel to the qibla wall.',
          ar: 'أضاف السلطان المملوكي قايتباي رواقين موازيين لجدار القبلة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1611 ve 1661-62', en: '1611 and 1661-62', ar: '1611م و1661-1662م'),
        metin: L10nText(
          tr: 'Osmanlı sultanları I. Ahmed ve IV. Mehmed dönemlerinde onarıldı.',
          en: 'Repaired under the Ottoman sultans Ahmed I and Mehmed IV.',
          ar: 'رُمّم في عهد السلطانين العثمانيين أحمد الأول ومحمد الرابع.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Suudi dönemi', en: 'Saudi period', ar: 'العهد السعودي'),
        metin: L10nText(
          tr: 'İki kez yeniden inşa edildi ve 340 × 240 metreye genişletildi; yaklaşık 300.000 kişilik oldu.',
          en: 'Rebuilt twice and enlarged to 340 × 240 metres, holding about 300,000 worshippers.',
          ar: 'أُعيد بناؤه مرتين ووُسّع إلى 340 × 240 مترًا ليتسع لنحو ثلاثمئة ألف مصلٍّ.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Mescid-i Nemire, haccın en önemli rüknü olan Arafat vakfesinin başladığı yerdir. Hz. Peygamber'in "
          "Vedâ hutbesini burada okuması, mekâna ayrı bir hatıra değeri kazandırır. Bu hutbede can, mal ve "
          "namusun dokunulmazlığı, kadın haklarına riayet ve Allah'ın kitabına sarılmak öğütlenmiştir.\n\n"
          "Buhârî'nin rivayetine göre Mâide sûresinin üçüncü ayetinde yer alan “Bugün sizin için dininizi kemale "
          "erdirdim” ifadesi, Vedâ haccında Arefe günü, Hz. Peygamber Arafat'ta iken nâzil olmuştur. Bugün de her "
          "yıl Arefe günü öğle vaktinden önce hac hutbesi bu mescidin minberinden okunur.",
      en: 'Namirah Mosque is where the standing at Arafat, the most important pillar of Hajj, begins. That the '
          'Prophet delivered the Farewell Sermon here gives the place a special significance. In that sermon he '
          "stressed the sanctity of life, property and honour, kindness to women, and holding fast to God's Book.\n\n"
          'According to a narration in al-Bukhari, the words of the third verse of Surat al-Maidah, “This day I '
          'have perfected your religion for you”, were revealed on the Day of Arafah during the Farewell '
          'Pilgrimage, while the Prophet was at Arafat. Every year the Hajj sermon is still delivered from the '
          'pulpit of this mosque before the noon prayer on the Day of Arafah.',
      ar: 'مسجد نمرة هو الموضع الذي يبدأ منه الوقوف بعرفة، أعظم أركان الحج. وقد أكسبته خطبة النبي صلى الله عليه وسلم '
          'خطبة الوداع فيه منزلة خاصة؛ ففيها أكّد حرمة الدماء والأموال والأعراض، وأوصى بالنساء خيرًا، وبالاعتصام '
          'بكتاب الله.\n\n'
          'وفي رواية البخاري أن قوله تعالى في الآية الثالثة من سورة المائدة ﴿الْيَوْمَ أَكْمَلْتُ لَكُمْ دِينَكُمْ﴾ نزل '
          'يوم عرفة في حجة الوداع والنبي صلى الله عليه وسلم واقف بعرفة. ولا تزال خطبة الحج تُلقى كل عام من منبر هذا '
          'المسجد قبل صلاة الظهر يوم عرفة.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'ٱلْيَوْمَ أَكْمَلْتُ لَكُمْ دِينَكُمْ وَأَتْمَمْتُ عَلَيْكُمْ نِعْمَتِى وَرَضِيتُ لَكُمُ ٱلْإِسْلَـٰمَ دِينًا',
        meal: L10nText(
          tr: "Bugün sizin için dininizi kemale erdirdim, size nimetimi tamamladım ve size din olarak İslâm'ı beğendim.",
          en: 'This day I have perfected your religion for you, completed My favour upon you, and chosen Islam as your religion.',
          ar: 'الْيَوْمَ أَكْمَلْتُ لَكُمْ دِينَكُمْ وَأَتْمَمْتُ عَلَيْكُمْ نِعْمَتِي وَرَضِيتُ لَكُمُ الْإِسْلَامَ دِينًا.',
        ),
        kaynak: L10nText(
          tr: 'Mâide 5/3 (ayetin bir bölümü)',
          en: 'Al-Maidah 5:3 (part of the verse)',
          ar: 'المائدة 5/3 (جزء من الآية)',
        ),
      ),
    ],
    adab: [
      L10nText(
        tr: 'Arefe günü vakfe yapacaksanız mescidin içindeki Arafat sınırı levhalarına dikkat edin; vakfe sınırın içinde yapılmalıdır.',
        en: 'If you perform the standing here on the Day of Arafah, watch the Arafat boundary signs inside the mosque; the standing must be within the boundary.',
        ar: 'إذا وقفت هنا يوم عرفة فانتبه للوحات حدود عرفات داخل المسجد؛ فالوقوف يكون داخل الحدود.',
      ),
      L10nText(
        tr: 'Arefe günü mescit ve çevresi aşırı kalabalık olur; kafilenizin çadırından ayrılmadan önce rehberinize danışın.',
        en: 'On the Day of Arafah the mosque and its surroundings are extremely crowded; ask your guide before leaving your group tent.',
        ar: 'يشتد الزحام في المسجد وما حوله يوم عرفة؛ استشر مرشدك قبل مغادرة مخيم مجموعتك.',
      ),
      L10nText(
        tr: 'Hac dışında yapılan ziyaretlerde mescit genellikle dışarıdan, araçla geçerken görülür.',
        en: 'On visits outside Hajj the mosque is usually seen from the outside, while driving past.',
        ar: 'في الزيارات خارج موسم الحج يُشاهد المسجد غالبًا من الخارج أثناء المرور بالسيارة.',
      ),
      L10nText(
        tr: 'Arafat yaz aylarında çok sıcaktır; su, şemsiye ve güneş koruması yanınızda olsun.',
        en: 'Arafat is very hot in summer; carry water, an umbrella and sun protection.',
        ar: 'عرفات شديدة الحرارة صيفًا؛ احمل معك الماء والمظلة وواقي الشمس.',
      ),
      L10nText(
        tr: "Burada Vedâ hutbesinin öğütlerini hatırlamak, dua ve tövbe ile vakit geçirmek güzel olur.",
        en: 'It is fitting to remember the counsel of the Farewell Sermon here and to spend time in supplication and repentance.',
        ar: 'يحسن هنا تذكّر وصايا خطبة الوداع والإكثار من الدعاء والتوبة.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: 'Mescit yılda esas olarak Arefe günü açılır ve o gün hacılara hizmet verir. Hac dışında içine girilemeyebilir; '
          'Mekke yönetiminin ziyaret rehberi mescidin uzaktan, araçla görülebileceğini belirtir. Hac döneminde '
          'Arafat bölgesine yalnız hac izni olanlar girebilir.',
      en: 'The mosque is mainly opened on the Day of Arafah to serve pilgrims. Outside Hajj it may not be possible to '
          "go inside; Makkah's official visitor guide says it can be seen from a distance by car. During the Hajj "
          'season only those with a Hajj permit may enter the Arafat area.',
      ar: 'يُفتح المسجد أساسًا يوم عرفة لخدمة الحجاج، وقد لا يتاح دخوله خارج موسم الحج؛ ويذكر دليل الزيارة الرسمي '
          'لمكة أنه يمكن مشاهدته عن بُعد بالسيارة. وفي موسم الحج لا يدخل منطقة عرفات إلا من يحمل تصريح الحج.',
    ),
    uygunSaat: L10nText(
      tr: 'Hac dışında gündüz, araçla',
      en: 'Outside Hajj, by day, by car',
      ar: 'خارج موسم الحج نهارًا بالسيارة',
    ),
    ziyaretSuresi: L10nText(tr: '15-20 dakika (dışarıdan)', en: '15-20 minutes (from outside)', ar: '15-20 دقيقة (من الخارج)'),
    anlatim: L10nText(
      tr: "Şimdi Arafat'ın batı kenarındayız. Karşımızda altı minaresiyle yükselen bu büyük yapı, Mescid-i Nemire. "
          "Adını, Vedâ haccında Peygamber Efendimiz için çadır kurulan küçük bir tepeden alıyor.\n\n"
          "Hicretin onuncu yılı, Arefe günü. Peygamber Efendimiz sabahı Nemire'deki çadırında geçirdi. Güneş tepeden "
          "batıya kaymaya başlayınca devesine bindi ve Urene vadisine indi. Orada, kendisini dinleyen on binlerce "
          "insana Vedâ hutbesini okudu. Canların, malların ve namusların dokunulmaz olduğunu hatırlattı. Kadınların "
          "haklarını gözetmeyi öğütledi. Allah'ın kitabına sarılanların yolunu şaşırmayacağını bildirdi. Hutbeden "
          "sonra öğle ve ikindi namazlarını birlikte kıldırdı ve vakfe yerine geçti.\n\n"
          "Rivayete göre bu günün akşamına doğru, dinin tamamlandığını bildiren ayet nâzil oldu. Bugün sizin için "
          "dininizi kemale erdirdim, size nimetimi tamamladım ve size din olarak İslâm'ı beğendim. Bu yüzden Arefe "
          "günü, Müslümanların hafızasında ayrı bir yere sahiptir.\n\n"
          "Peygamber Efendimizin namaz kılıp hutbe okuduğu yerde zamanla bir mescit yapıldı. Önce açık bir namaz "
          "alanıydı, Emevîler döneminde etrafı duvarla çevrildi. Memlükler ve Osmanlılar burayı defalarca onardı. "
          "Evliya Çelebi on yedinci yüzyılda gördüğü mescidi kale gibi dört köşe bir yapı olarak anlatır. Suudi "
          "döneminde mescit iki kez yeniden inşa edildi ve bugün yaklaşık üç yüz bin kişiyi alabilecek büyüklüğe "
          "ulaştı.\n\n"
          "Mescidin ön kısmı Arafat sınırının dışında, Urene vadisinde kalır. Bu nedenle Arefe günü mescitte bulunan "
          "hacılar, içerideki levhalara bakarak Arafat sınırı içinde durmaya özen gösterir. Her yıl hac hutbesi "
          "hâlâ bu mescidin minberinden okunur.\n\n"
          "Hac mevsimi dışında mescit çoğunlukla kapalıdır ve dışarıdan görülür. Buradan geçerken Vedâ hutbesinin "
          "öğütlerini hatırlamak, bu mübarek ovada bir dua etmek, ziyaretin en güzel hatırası olacaktır.",
      en: 'We are now on the western edge of Arafat. The great building rising before us with its six minarets is '
          'Namirah Mosque. It takes its name from a small hill where a tent was pitched for the Prophet during the '
          'Farewell Pilgrimage.\n\n'
          'It is the tenth year after the Hijrah, the Day of Arafah. The Prophet spent the morning in his tent at '
          'Namirah. When the sun began to decline from its zenith, he mounted his camel and went down into the '
          'valley of Uranah. There, before tens of thousands of listeners, he delivered the Farewell Sermon. He '
          'reminded them that lives, property and honour are sacred. He urged them to respect the rights of women. '
          "He told them that those who hold fast to God's Book will not go astray. After the sermon he led the noon "
          'and afternoon prayers together and moved on to the place of standing.\n\n'
          'According to a narration, it was on this day that the verse announcing the completion of the religion was '
          'revealed. This day I have perfected your religion for you, completed My favour upon you, and chosen '
          'Islam as your religion. That is why the Day of Arafah holds a special place in the memory of Muslims.\n\n'
          'In time a mosque was built where the Prophet had prayed and preached. At first it was an open prayer '
          'ground; in the Umayyad period it was enclosed with a wall. The Mamluks and the Ottomans repaired it many '
          'times. Evliya Celebi, who saw it in the seventeenth century, describes a square building like a fortress. '
          'In the Saudi period the mosque was rebuilt twice, and today it can hold about three hundred thousand '
          'worshippers.\n\n'
          'The front of the mosque lies outside the boundary of Arafat, in the valley of Uranah. So on the Day of '
          'Arafah, pilgrims inside the mosque follow the signs to make sure they stand within Arafat. Every year the '
          'Hajj sermon is still delivered from the pulpit of this mosque.\n\n'
          'Outside the Hajj season the mosque is mostly closed and is seen from the outside. As you pass by, '
          'remembering the counsel of the Farewell Sermon and offering a prayer on this blessed plain will be the '
          'finest memory of your visit.',
      ar: 'نحن الآن في الطرف الغربي من عرفات، وهذا البناء الكبير الذي ترتفع منه ست مآذن هو مسجد نمرة. وقد أخذ اسمه '
          'من ربوة صغيرة ضُربت عليها قبة للنبي صلى الله عليه وسلم في حجة الوداع.\n\n'
          'إنها السنة العاشرة من الهجرة، ويوم عرفة. أمضى النبي صلى الله عليه وسلم الصباح في قبته بنمرة، فلما زالت '
          'الشمس ركب ناقته ونزل بطن وادي عرنة. وهناك خطب في عشرات الآلاف خطبة الوداع. فذكّرهم بأن الدماء والأموال '
          'والأعراض حرام. وأوصاهم بالنساء خيرًا. وأخبرهم أن من اعتصم بكتاب الله لن يضل. ثم صلى بهم الظهر والعصر '
          'جمعًا، ومضى إلى الموقف.\n\n'
          'وفي هذا اليوم، كما جاء في الرواية، نزلت الآية التي أعلنت كمال الدين. الْيَوْمَ أَكْمَلْتُ لَكُمْ دِينَكُمْ '
          'وَأَتْمَمْتُ عَلَيْكُمْ نِعْمَتِي وَرَضِيتُ لَكُمُ الْإِسْلَامَ دِينًا. ولهذا كان ليوم عرفة مكانة خاصة في '
          'ذاكرة المسلمين.\n\n'
          'ومع الزمن بُني مسجد في الموضع الذي صلى فيه النبي صلى الله عليه وسلم وخطب. كان في أول أمره مصلى مكشوفًا، '
          'ثم أُحيط بجدار في العهد الأموي، ورمّمه المماليك والعثمانيون مرات كثيرة. ووصفه أوليا جلبي في القرن '
          'السابع عشر بناءً مربعًا كأنه قلعة. وفي العهد السعودي أُعيد بناؤه مرتين حتى صار يتسع اليوم لنحو ثلاثمئة '
          'ألف مصلٍّ.\n\n'
          'ويقع مقدَّم المسجد خارج حدود عرفات في وادي عرنة، ولذلك يحرص الحجاج الذين في المسجد يوم عرفة على أن يقفوا '
          'داخل الحدود متبعين اللوحات الإرشادية. ولا تزال خطبة الحج تُلقى كل عام من منبر هذا المسجد.\n\n'
          'وفي غير موسم الحج يكون المسجد مغلقًا في الغالب ويُشاهد من الخارج. فإذا مررت به فتذكّر وصايا خطبة '
          'الوداع، وادعُ الله في هذا الصعيد المبارك، فتلك أجمل ذكرى لزيارتك.',
    ),
    kaynaklar: [
      GeziKaynak('TDV İslâm Ansiklopedisi: Mescid-i Nemire', 'https://islamansiklopedisi.org.tr/mescid-i-nemire'),
      GeziKaynak('TDV İslâm Ansiklopedisi: Arafat', 'https://islamansiklopedisi.org.tr/arafat'),
      GeziKaynak('Discover Makkah: Namira Mosque',
          'https://discovermakkah.sa/en/places-worth-visiting/the-grand-mosque-and-the-holy-sites/namira-mosque'),
      GeziKaynak('Quran.com: Mâide 5/3', 'https://quran.com/5/3'),
      GeziKaynak('OpenStreetMap: way 112317307', 'https://www.openstreetmap.org/way/112317307'),
    ],
  ),

  // ------------------------------------------------------------------ Hayf
  GeziYeri(
    id: 'mescid_i_hayf',
    bolge: GeziBolge.mekke,
    tur: GeziTur.mescid,
    ad: L10nText(tr: 'Mescid-i Hayf', en: 'Al-Khayf Mosque', ar: 'مسجد الخيف'),
    arapcaAd: L10nText.same('مسجد الخيف'),
    altBaslik: L10nText(
      tr: "Mina'da Hz. Peygamber'in namaz kıldırdığı yerdeki mescit",
      en: 'The mosque in Mina where the Prophet led the prayers',
      ar: 'المسجد الذي صلى فيه النبي صلى الله عليه وسلم بمنى',
    ),
    sehir: L10nText(tr: 'Mina, Mekke', en: 'Mina, Makkah', ar: 'منى، مكة المكرمة'),
    konum: LatLng(21.41514, 39.87803), // OSM way 372402102
    genel: L10nText(
      tr: "Mescid-i Hayf, Mina'da dağın eteğinde, birinci cemreye (küçük şeytan) çok yakın bir yerdedir. Adını, "
          "Arapça'da vadilerde su yatağının biraz yukarısındaki yerler için kullanılan “hayf” kelimesinden alır. "
          "Vedâ haccında Hz. Peygamber'in Mina günlerinde çadır kurduğu ve cemaatle namaz kıldırdığı yerde "
          "yapılmıştır.\n\n"
          "Bugünkü yapı Suudi hükümeti tarafından tamamen yeniden inşa edilmiş ve 1987'de tamamlanmıştır. Ek "
          "binalarıyla birlikte yaklaşık 25 dönümlük bir alanı kaplar; dört minaresi vardır. Teşrik günlerinde "
          "Mina'da kalan hacılar burada cemaatle namaz kılar.",
      en: 'Al-Khayf Mosque lies at the foot of a mountain in Mina, very close to the first Jamrah (the small '
          'pillar). Its name comes from the Arabic word khayf, used for ground slightly above the bed of a valley. '
          'It was built where the Prophet pitched his tent during the days of Mina in the Farewell Pilgrimage and '
          'led the congregational prayers.\n\n'
          'The present building was entirely rebuilt by the Saudi government and completed in 1987. With its '
          'annexes it covers about 25,000 square metres and has four minarets. Pilgrims staying in Mina during '
          'the days of Tashriq pray here in congregation.',
      ar: 'يقع مسجد الخيف في منى عند سفح الجبل، قريبًا جدًا من الجمرة الأولى (الصغرى). وسُمّي بالخيف لأن العرب '
          'تطلق هذا الاسم على ما ارتفع قليلًا عن مجرى الماء في الوادي. وقد بُني في الموضع الذي ضُربت فيه قبة النبي '
          'صلى الله عليه وسلم أيام منى في حجة الوداع، وصلى فيه بالناس جماعة.\n\n'
          'وقد أعادت الحكومة السعودية بناءه بالكامل وانتهى العمل فيه سنة 1987م، ويشغل مع ملحقاته نحو 25 ألف متر '
          'مربع، وله أربع مآذن. ويصلي فيه الحجاج المقيمون بمنى جماعةً في أيام التشريق.',
    ),
    tarihce: L10nText(
      tr: "Burası İslâm'dan önce de bir ibadet yeri olarak bilinirdi. Taberânî ve başkalarının naklettiği bir "
          "rivayete göre aralarında Hz. Mûsâ'nın da bulunduğu yetmiş peygamber bu mescidin yerinde namaz kılmıştır. "
          "Yine rivayete göre Hz. Peygamber buraya geldiğinde yüksekçe bir yer görmüş, Bilâl-i Habeşî'den orada ezan "
          "okumasını istemiş, sonradan oraya bir minare yapılmıştır. Hz. Peygamber burada namaz kıldırdıktan sonra "
          "insanlara hitap etmiştir.\n\n"
          "İlk dönemlerden itibaren Müslümanlar bu mescide büyük değer verdi. Hac mevsiminde âlimler burada toplanıp "
          "ilmî müzakereler yaptı; Ahmed b. Hanbel'in minaresine dayanarak hadis ve fıkıh dersleri verdiği "
          "kaydedilir. Mescit 842'de Abbâsî Halifesi Vâsik-Billâh, 870'te Halife Mu'temid tarafından imar edildi. "
          "Ezrakī'nin tarifine göre o dönemde yaklaşık 13,5 dönümlük bir alanı kaplayan, revaklı ve kandillerle "
          "aydınlatılan geniş bir yapıydı.\n\n"
          "Mescit 1164'te Cemâleddîn-i İsfahânî, daha sonra Yemen hâkimi el-Melikü'l-Mansûr Ömer (1275) ve "
          "başkaları tarafından onarıldı. 1469'da Sultan Kayıtbay'ın emriyle önemli bir imar yapıldı: büyük kapının "
          "üzerine bir minare, minber üzerine bir kubbe ve Hz. Peygamber'in çadırını kurup namaz kıldığı yere sekiz "
          "ayak üzerinde büyük bir kubbe inşa edildi. Osmanlılar döneminde de defalarca tamir gördü; IV. Mehmed "
          "zamanındaki imar bir kitâbeyle belgelenmiştir.\n\n"
          "Suudi hükümeti eski yapıyı tamamen yıkarak mescidi ek binalarıyla birlikte yeniden inşa ettirdi. 1987'de "
          "tamamlanan yeni mescidin dört minaresi, arka tarafında uzun gölgelikleri ve ön tarafında üç basık "
          "piramit çatısı vardır.",
      en: 'The site was known as a place of worship even before Islam. According to a narration reported by '
          'al-Tabarani and others, seventy prophets, among them Moses, prayed on the spot where the mosque stands. '
          'Another narration says that when the Prophet came here he saw a raised spot and asked Bilal to call the '
          'adhan from it, and a minaret was later built there. The Prophet led the prayer here and then addressed '
          'the people.\n\n'
          'From the earliest times Muslims held this mosque in great esteem. In the Hajj season scholars gathered '
          'here for learned discussions, and Ahmad ibn Hanbal is recorded as teaching hadith and law while leaning '
          'against its minaret. The mosque was rebuilt by the Abbasid caliph al-Wathiq in 842 and by the caliph '
          "al-Mu'tamid in 870. According to al-Azraqi's description, it was then a large building of about 13,500 "
          'square metres with arcades lit by lamps.\n\n'
          'It was repaired in 1164 by Jamal al-Din al-Isfahani, later by the Yemeni ruler al-Malik al-Mansur Umar '
          '(1275) and others. In 1469 Sultan Qaytbay ordered a major renovation: a minaret over the main gate, a '
          'dome over the mihrab and pulpit, and a large dome on eight piers over the place where the Prophet had '
          'pitched his tent and prayed. It was repaired many times under the Ottomans; the restoration under '
          'Mehmed IV is recorded in an inscription.\n\n'
          'The Saudi government demolished the old building completely and rebuilt the mosque with its annexes. '
          'The new mosque, completed in 1987, has four minarets, long shades at the back and three low pyramid '
          'roofs at the front.',
      ar: 'عُرف هذا الموضع مكانًا للعبادة قبل الإسلام. وفي رواية أوردها الطبراني وغيره أن سبعين نبيًّا منهم موسى '
          'عليه السلام صلّوا في موضع هذا المسجد. وفي رواية أخرى أن النبي صلى الله عليه وسلم لما أتى هذا المكان رأى '
          'موضعًا مرتفعًا فأمر بلالًا أن يؤذّن عليه، ثم بُنيت هناك مئذنة. وقد صلى النبي صلى الله عليه وسلم هنا بالناس '
          'ثم خطبهم.\n\n'
          'وعظّم المسلمون هذا المسجد منذ القرون الأولى؛ فكان العلماء يجتمعون فيه في موسم الحج للمذاكرة، ويُذكر أن '
          'الإمام أحمد بن حنبل كان يستند إلى مئذنته ويُدرّس الحديث والفقه. وعمّره الخليفة العباسي الواثق بالله سنة '
          '842م، ثم الخليفة المعتمد سنة 870م. وكان بحسب وصف الأزرقي بناءً واسعًا تبلغ مساحته نحو ثلاثة عشر ألفًا '
          'وخمسمئة متر مربع، ذا أروقة تضيئها القناديل.\n\n'
          'ورمّمه جمال الدين الأصفهاني سنة 1164م، ثم الملك المنصور عمر صاحب اليمن سنة 1275م وغيرهما. وفي سنة 1469م '
          'أمر السلطان قايتباي بعمارة كبيرة، فبُنيت مئذنة فوق الباب الكبير، وقبة فوق المحراب والمنبر، وقبة كبيرة '
          'على ثمانية أعمدة فوق الموضع الذي ضُربت فيه قبة النبي صلى الله عليه وسلم وصلى فيه. وجُدّد مرارًا في العهد '
          'العثماني، ومن ذلك عمارة السلطان محمد الرابع الموثقة بنقش.\n\n'
          'ثم هدمت الحكومة السعودية البناء القديم كليًّا وأعادت بناء المسجد مع ملحقاته، وانتهى العمل فيه سنة 1987م، '
          'وله أربع مآذن ومظلات طويلة في مؤخرته وثلاثة سقوف هرمية منخفضة في مقدمته.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Hicrî 10 (632)', en: '10 AH (632)', ar: 'سنة 10هـ (632م)'),
        metin: L10nText(
          tr: "Vedâ haccında Hz. Peygamber Mina günlerinde burada namaz kıldırdı ve insanlara hitap etti.",
          en: 'During the Farewell Pilgrimage the Prophet led the prayers here in the days of Mina and addressed the people.',
          ar: 'صلى النبي صلى الله عليه وسلم هنا أيام منى في حجة الوداع وخطب الناس.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '842 ve 870', en: '842 and 870', ar: '842م و870م'),
        metin: L10nText(
          tr: "Abbâsî halifeleri Vâsik-Billâh ve Mu'temid mescidi imar ettirdi.",
          en: "The Abbasid caliphs al-Wathiq and al-Mu'tamid rebuilt the mosque.",
          ar: 'عمّر الخليفتان العباسيان الواثق بالله والمعتمد المسجد.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1164', en: '1164', ar: '1164م'),
        metin: L10nText(
          tr: 'Cemâleddîn-i İsfahânî zeminini ve merdivenlerini mermerle kaplattı.',
          en: 'Jamal al-Din al-Isfahani had its floor and steps paved with marble.',
          ar: 'كسا جمال الدين الأصفهاني أرضيته ودرجه بالرخام.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1469', en: '1469', ar: '1469م'),
        metin: L10nText(
          tr: "Sultan Kayıtbay'ın emriyle minare ve kubbeler yapıldı.",
          en: 'A minaret and domes were built by order of Sultan Qaytbay.',
          ar: 'بُنيت المئذنة والقباب بأمر السلطان قايتباي.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1648-1687', en: '1648-1687', ar: '1648-1687م'),
        metin: L10nText(
          tr: 'Osmanlı Sultanı IV. Mehmed döneminde onarıldı.',
          en: 'Repaired in the reign of the Ottoman Sultan Mehmed IV.',
          ar: 'رُمّم في عهد السلطان العثماني محمد الرابع.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1987', en: '1987', ar: '1987م'),
        metin: L10nText(
          tr: 'Suudi hükümetinin yeniden inşa ettirdiği bugünkü mescit tamamlandı.',
          en: 'The present mosque, rebuilt by the Saudi government, was completed.',
          ar: 'اكتمل بناء المسجد الحالي الذي أعادت الحكومة السعودية تشييده.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Mescid-i Hayf, Hz. Peygamber'in hac sırasında namaz kıldığı yer olması sebebiyle önem taşır. Fıkıh "
          "âlimleri, onun uygulamasına uyarak Mina günlerinde bu mescitte cemaatle namaza katılmayı müstehap "
          "saymışlardır.\n\n"
          "Bazı rivayetlerde yetmiş peygamberin burada namaz kıldığı bildirilir. Yetmiş peygamberin burada medfun "
          "olduğu ya da Hz. Âdem'in burada gömülü bulunduğu şeklindeki rivayetler ise zayıf kabul edilir. “Ancak "
          "üç mescit için yolculuğa çıkılır” hadisinin Mescid-i Hayf'ı da sayan bir rivayetini Buhârî, sened "
          "zincirindeki kopukluk sebebiyle tenkit etmiştir.\n\n"
          "Buhârî'nin rivayetine göre Mürselât sûresi, Hz. Peygamber ashabıyla birlikte Mina'da bir mağarada iken "
          "nâzil olmuştur. Eski mescidin güney duvarındaki küçük bir kapının bu mağaraya açıldığı rivayet edilirdi.",
      en: "Al-Khayf Mosque is important because the Prophet prayed here during Hajj. Following his practice, "
          'jurists consider it recommended to join the congregational prayer in this mosque during the days of '
          'Mina.\n\n'
          'Some narrations state that seventy prophets prayed here. Narrations claiming that seventy prophets, or '
          'Adam, are buried here are considered weak. A version of the hadith “Journeys are undertaken only to '
          'three mosques” that also lists al-Khayf was criticised by al-Bukhari for a break in its chain.\n\n'
          'According to a narration in al-Bukhari, Surat al-Mursalat was revealed while the Prophet and his '
          'Companions were in a cave in Mina. A small door in the south wall of the old mosque was said to open '
          'onto this cave.',
      ar: 'تأتي أهمية مسجد الخيف من أن النبي صلى الله عليه وسلم صلى فيه في حجته، ولذلك استحب الفقهاء اقتداءً به '
          'شهود صلاة الجماعة فيه أيام منى.\n\n'
          'وفي بعض الروايات أن سبعين نبيًّا صلّوا فيه. أما الروايات التي تذكر أن سبعين نبيًّا دُفنوا فيه، أو أن آدم '
          'عليه السلام مدفون فيه، فهي ضعيفة. وقد انتقد البخاري روايةً لحديث «لا تُشدّ الرحال إلا إلى ثلاثة مساجد» '
          'ذُكر فيها مسجد الخيف، لانقطاع في سندها.\n\n'
          'وفي رواية البخاري أن سورة المرسلات نزلت والنبي صلى الله عليه وسلم مع أصحابه في غار بمنى. ويُروى أن بابًا '
          'صغيرًا في الجدار الجنوبي للمسجد القديم كان يُفضي إلى هذا الغار.',
    ),
    adab: [
      L10nText(
        tr: 'Mina günlerinde mescit çok kalabalık olur; çadırınızın yerini ve dönüş yolunu iyi bilin, grubunuzla birlikte gidin.',
        en: 'The mosque is very crowded during the days of Mina; know your tent location and the way back, and go with your group.',
        ar: 'يشتد الزحام في المسجد أيام منى؛ اعرف موقع مخيمك وطريق العودة، واذهب مع مجموعتك.',
      ),
      L10nText(
        tr: 'Cemerat yolları yoğun olduğundan mescide giderken ve dönerken güvenlik görevlilerinin yönlendirmelerine uyun.',
        en: 'Because the routes to the Jamarat are busy, follow the directions of the security staff when going to and from the mosque.',
        ar: 'لكثافة الطرق المؤدية إلى الجمرات اتبع توجيهات رجال الأمن في الذهاب إلى المسجد والعودة منه.',
      ),
      L10nText(
        tr: 'Ziyaret, Hz. Peygamber burada namaz kıldığı için yapılır; mescide girince iki rekât tahiyyetü\'l-mescid kılabilirsiniz.',
        en: 'The visit is made because the Prophet prayed here; on entering you may pray two rak‘ahs to greet the mosque.',
        ar: 'تُزار البقعة لأن النبي صلى الله عليه وسلم صلى فيها؛ وإذا دخلت المسجد فصلِّ ركعتي تحية المسجد.',
      ),
      L10nText(
        tr: 'Rivayetlere dayalı bilgileri kesin bilgi gibi aktarmaktan kaçının; ziyareti ibadet ve tefekkürle geçirin.',
        en: 'Avoid presenting narrations as certain facts; spend your visit in worship and reflection.',
        ar: 'تجنّب نقل الروايات على أنها حقائق قطعية، واجعل زيارتك عبادة وتأملًا.',
      ),
      L10nText(
        tr: 'Hac dışında Mina boş bir çadır kentidir; burayı ancak bir rehberle ve araçla gezmek uygundur.',
        en: 'Outside Hajj, Mina is an empty tent city; it is best visited by vehicle with a guide.',
        ar: 'منى خارج موسم الحج مدينة خيام خالية، والأنسب زيارتها بالسيارة مع مرشد.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: 'Mescit hac günlerinde hacılara hizmet verir; hac dışında kapalı olabilir. Hac döneminde Mina bölgesine '
          'yalnız hac izni olanlar girebilir. Umre ziyaretlerinde çoğunlukla Mina turu sırasında dışarıdan görülür.',
      en: 'The mosque serves pilgrims during the days of Hajj; outside Hajj it may be closed. During the Hajj season '
          'only those with a Hajj permit may enter Mina. On Umrah trips it is usually seen from outside during a tour '
          'of Mina.',
      ar: 'يخدم المسجد الحجاج في أيام الحج، وقد يكون مغلقًا في غيرها. وفي موسم الحج لا يدخل منى إلا من يحمل تصريح '
          'الحج. وفي رحلات العمرة يُشاهد غالبًا من الخارج أثناء جولة في منى.',
    ),
    uygunSaat: L10nText(tr: 'Gündüz, serin saatlerde', en: 'Daytime, in the cooler hours', ar: 'نهارًا في الساعات الأبرد'),
    ziyaretSuresi: L10nText(tr: '20-30 dakika', en: '20-30 minutes', ar: '20-30 دقيقة'),
    anlatim: L10nText(
      tr: "Mina vadisindeyiz. Bembeyaz çadırların arasında, dağın eteğinde dört minaresiyle duran bu yapı, Mescid-i "
          "Hayf. Birinci cemreye yalnızca birkaç yüz metre uzaklıkta. Adı, vadide su yatağından biraz yüksekte kalan "
          "yerlere verilen hayf kelimesinden geliyor.\n\n"
          "Hicretin onuncu yılında, Vedâ haccında, Peygamber Efendimiz Mina günlerini burada geçirdi. Çadırı bu "
          "yamaçta kuruldu, namazları burada cemaatle kıldırdı ve namazdan sonra insanlara hitap etti. Bir rivayete "
          "göre yüksekçe bir yer gördü ve Bilâl'den orada ezan okumasını istedi. Sonraki yüzyıllarda o noktaya bir "
          "minare yapıldı.\n\n"
          "Bazı rivayetlerde, aralarında Hazreti Mûsâ'nın da bulunduğu yetmiş peygamberin bu mekânda namaz kıldığı "
          "anlatılır. Bu rivayetler, buranın çok eski zamanlardan beri bir ibadet yeri olarak bilindiğini gösterir. "
          "Burada başka peygamberlerin gömülü olduğuna dair anlatımlar ise zayıf kabul edilir.\n\n"
          "Müslümanlar bu mescide her dönem değer verdi. Hac mevsiminde âlimler burada toplanır, ilim konuşurdu. "
          "İmam Ahmed bin Hanbel'in minareye yaslanarak ders verdiği nakledilir. Abbâsî halifeleri mescidi imar "
          "ettirdi. Memlük Sultanı Kayıtbay, Peygamber Efendimizin namaz kıldığı yerin üzerine büyük bir kubbe "
          "yaptırdı. Osmanlı sultanları da mescidi defalarca onardı.\n\n"
          "Bugün gördüğümüz yapı, Suudi hükümetinin eski binayı yıkarak yeniden inşa ettirdiği ve bin dokuz yüz "
          "seksen yedi yılında tamamlanan mescittir. Teşrik günlerinde Mina'da kalan hacılar, Peygamber Efendimizin "
          "sünnetine uyarak burada cemaatle namaz kılmaya çalışır.\n\n"
          "Hac mevsimi dışında Mina sessiz bir çadır kentine dönüşür ve mescit çoğu zaman kapalıdır. Buradan "
          "geçerken, aynı vadide milyonlarca insanın aynı kıbleye yöneldiğini hatırlamak ve bir dua etmek, ziyaretin "
          "anlamını tamamlar.",
      en: 'We are in the valley of Mina. Among the white tents, standing at the foot of the mountain with its four '
          'minarets, is Al-Khayf Mosque. It is only a few hundred metres from the first Jamrah. Its name comes from '
          'khayf, a word for ground a little above the bed of a valley.\n\n'
          'In the tenth year after the Hijrah, during the Farewell Pilgrimage, the Prophet spent the days of Mina '
          'here. His tent was pitched on this slope, he led the prayers here in congregation and addressed the '
          'people afterwards. According to a narration, he saw a raised spot and asked Bilal to call the adhan '
          'from it. In later centuries a minaret was built on that spot.\n\n'
          'Some narrations relate that seventy prophets, among them Moses, prayed at this place. These narrations '
          'show that it was known as a place of worship from very early times. Accounts that other prophets are '
          'buried here, however, are considered weak.\n\n'
          'Muslims valued this mosque in every age. In the Hajj season scholars gathered here to discuss knowledge. '
          'It is reported that Imam Ahmad ibn Hanbal taught while leaning against the minaret. Abbasid caliphs '
          'rebuilt the mosque. The Mamluk Sultan Qaytbay built a great dome over the place where the Prophet had '
          'prayed. Ottoman sultans also repaired it many times.\n\n'
          'The building we see today is the mosque the Saudi government rebuilt after demolishing the old one, '
          'completed in nineteen eighty-seven. During the days of Tashriq, pilgrims staying in Mina try to pray '
          'here in congregation, following the practice of the Prophet.\n\n'
          'Outside the Hajj season Mina becomes a silent city of tents, and the mosque is often closed. As you pass '
          'by, remembering that millions of people turn towards the same qibla in this valley, and offering a '
          'prayer, completes the meaning of the visit.',
      ar: 'نحن في وادي منى. وبين الخيام البيضاء، عند سفح الجبل، يقوم هذا البناء ذو المآذن الأربع، إنه مسجد الخيف. '
          'لا يبعد عن الجمرة الأولى إلا بضع مئات من الأمتار. واسمه مأخوذ من الخيف، وهو ما ارتفع قليلًا عن مجرى الماء '
          'في الوادي.\n\n'
          'في السنة العاشرة من الهجرة، في حجة الوداع، أقام النبي صلى الله عليه وسلم أيام منى هنا. ضُربت قبته على هذا '
          'السفح، وصلى بالناس جماعة، ثم خطبهم بعد الصلاة. وفي رواية أنه رأى موضعًا مرتفعًا فأمر بلالًا أن يؤذن عليه. '
          'وفي القرون اللاحقة بُنيت في ذلك الموضع مئذنة.\n\n'
          'وتذكر بعض الروايات أن سبعين نبيًّا منهم موسى عليه السلام صلّوا في هذا المكان. وهي تدل على أنه عُرف مكانًا '
          'للعبادة منذ زمن بعيد. أما ما يُروى من دفن أنبياء آخرين فيه فضعيف.\n\n'
          'وقد عظّم المسلمون هذا المسجد في كل عصر. كان العلماء يجتمعون فيه في موسم الحج للمذاكرة. ويُنقل أن الإمام '
          'أحمد بن حنبل كان يُدرّس مستندًا إلى مئذنته. وعمّره الخلفاء العباسيون. وبنى السلطان المملوكي قايتباي قبة '
          'كبيرة فوق الموضع الذي صلى فيه النبي صلى الله عليه وسلم. وجدّده السلاطين العثمانيون مرات عديدة.\n\n'
          'والبناء الذي نراه اليوم هو المسجد الذي أعادت الحكومة السعودية بناءه بعد هدم القديم، واكتمل سنة ألف '
          'وتسعمئة وسبع وثمانين. وفي أيام التشريق يحرص الحجاج المقيمون بمنى على الصلاة فيه جماعةً اقتداءً بالنبي '
          'صلى الله عليه وسلم.\n\n'
          'وفي غير موسم الحج تصبح منى مدينة خيام هادئة، ويكون المسجد مغلقًا في الغالب. فإذا مررت به فتذكّر أن '
          'الملايين يتجهون في هذا الوادي إلى قبلة واحدة، وادعُ الله، فبذلك يكتمل معنى الزيارة.',
    ),
    kaynaklar: [
      GeziKaynak('TDV İslâm Ansiklopedisi: Mescid-i Hayf', 'https://islamansiklopedisi.org.tr/mescid-i-hayf'),
      GeziKaynak('TDV İslâm Ansiklopedisi: Mina', 'https://islamansiklopedisi.org.tr/mina'),
      GeziKaynak('Discover Makkah: Al Khaif Mosque',
          'https://discovermakkah.sa/en/places-worth-visiting/landmarks/al-khaif-mosque'),
      GeziKaynak('OpenStreetMap: way 372402102', 'https://www.openstreetmap.org/way/372402102'),
    ],
  ),

  // ------------------------------------------------------------------- Cin
  GeziYeri(
    id: 'mescid_i_cin',
    bolge: GeziBolge.mekke,
    tur: GeziTur.mescid,
    ad: L10nText(tr: 'Mescid-i Cin', en: 'Masjid al-Jinn', ar: 'مسجد الجن'),
    arapcaAd: L10nText.same('مسجد الجن'),
    altBaslik: L10nText(
      tr: "Cennetü'l-Muallâ yakınında, cinlerin Kur'an dinlediği yer olarak anılan mescit",
      en: "Near Jannat al-Mu'alla; remembered as the place where the jinn listened to the Qur'an",
      ar: 'قرب مقبرة المعلاة، ويُذكر أنه موضع استماع الجن للقرآن',
    ),
    sehir: L10nText(tr: 'Mekke (Hacûn)', en: 'Makkah (al-Hajun)', ar: 'مكة المكرمة (الحجون)'),
    konum: LatLng(21.43339, 39.82892), // OSM way 443792238
    genel: L10nText(
      tr: "Mescid-i Cin, Mekke'nin tarihî mezarlığı Cennetü'l-Muallâ'nın yakınında, Mescid-i Haram'ın kuzeyinde "
          "Hacûn semtindedir. Kaynaklara göre Hz. Peygamber bir gece Abdullah b. Mes'ûd ile birlikte bu civara gelmiş, "
          "yere bir çizgi çekerek ondan çizgiyi aşmamasını istemiş ve çizginin ötesinde cinlere Kur'an okumuştur. Bu "
          "yüzden yere önce “Mevziu'l-hat” (çizgi yeri) denmiş, sonra burada yapılan mescide Mescid-i Cin adı "
          "verilmiştir.\n\n"
          "Mescit, eskiden gece bekçilerinin burada toplanıp nöbet değiştirmesi sebebiyle “Mescidü'l-Hares” (bekçiler "
          "mescidi) adıyla da bilinir. Cinlerin burada Hz. Peygamber'e biat ettiği de anlatıldığından “Mescidü'l-Bey'a” "
          "da denmiştir; ancak Akabe biatlarının yapıldığı yerdeki ayrı bir cami de aynı adı taşır. Bugünkü yapı 2000 "
          "yılında tamamen yeniden yapılmış, minareli modern bir camidir.",
      en: "Masjid al-Jinn is in the al-Hajun district, north of al-Masjid al-Haram, close to Jannat al-Mu'alla, "
          "the historic cemetery of Makkah. According to the sources, one night the Prophet came to this area with "
          "Abdullah ibn Mas'ud, drew a line on the ground, asked him not to cross it, and recited the Qur'an to the "
          'jinn beyond the line. The place was therefore first called “the place of the line”, and the mosque later '
          'built here was named Masjid al-Jinn.\n\n'
          'It is also known as the Mosque of the Guards, because night watchmen used to gather here to change '
          'shifts. Since it is also related that the jinn pledged allegiance to the Prophet here, it has been called '
          "the Mosque of the Pledge as well; however, a separate mosque at the site of the 'Aqabah pledges bears the "
          'same name. The present building is a modern mosque with a minaret, entirely rebuilt in 2000.',
      ar: 'يقع مسجد الجن في حي الحجون شمال المسجد الحرام، قريبًا من مقبرة المعلاة، مقبرة مكة التاريخية. وتذكر المصادر '
          'أن النبي صلى الله عليه وسلم أتى هذه الناحية ليلةً ومعه عبد الله بن مسعود، فخطّ له خطًّا وأمره ألا يتجاوزه، '
          'ثم قرأ القرآن على الجن وراء الخط. ولذلك سُمّي الموضع أولًا «موضع الخط»، ثم سُمّي المسجد الذي بُني فيه مسجد '
          'الجن.\n\n'
          'ويُعرف أيضًا بمسجد الحرس، لأن حرس الليل كانوا يجتمعون فيه ويتناوبون. ولما رُوي أن الجن بايعوا النبي صلى الله '
          'عليه وسلم هنا سُمّي كذلك مسجد البيعة، غير أن هناك مسجدًا آخر بهذا الاسم في موضع بيعة العقبة. والبناء الحالي '
          'مسجد حديث ذو مئذنة أُعيد بناؤه بالكامل سنة 2000م.',
    ),
    tarihce: L10nText(
      tr: "Hz. Peygamber, farklı zaman ve yerlerde cinlere vahyi tebliğ etmek için Kur'an okumuştur. Kur'an-ı "
          "Kerîm'de Ahkāf sûresinin 29. ayetinde ve Cin sûresinin başında cinlerden bir topluluğun Kur'an dinleyip "
          "iman ettiği haber verilir. Mekke tarihçisi Ezrakī, Hz. Peygamber'in Abdullah b. Mes'ûd ile Hacûn "
          "yakınına gelip çizginin ötesinde cinlere Kur'an okuduğunu nakleder. Mescit, işte bu hatıranın yaşadığı "
          "yere yapılmıştır.\n\n"
          "Dokuzuncu yüzyılda yazan Ezrakī ve Fâkihî, Hz. Peygamber'in cinlerle buluştuğu bir yerden söz eder ama "
          "orada bir yapı bulunduğunu belirtmez. On altıncı yüzyılda bu yerin Cennetü'l-Muallâ yakınındaki Ferhadiye "
          "denilen mevki olduğu kabul ediliyordu. Mekke halkı her yıl Zilhicce'nin bitmesine üç gün kala burada toplanıp "
          "geceyi geçirirdi. 1662'de burayı gören Faslı seyyah Ayyâşî tepenin ağaçlık olduğunu ve fakirlere yemek "
          "dağıtıldığını yazar.\n\n"
          "Mescidin ilk binası 1700 yılında İbrâhim Ağa adlı bir mimar tarafından, iki geniş cadde arasında, yer "
          "altında, kubbesiz ve minaresiz olarak yapıldı. 2000 yılında mescit tamamen yeniden inşa edildi; bugün yer "
          "üstünde, minareli modern bir camidir ve Cennetü'l-Muallâ ile birlikte Mekke'de en çok ziyaret edilen "
          "yerlerden biridir.",
      en: "The Prophet recited the Qur'an to the jinn at different times and places in order to convey the "
          "revelation to them. The Qur'an tells, in verse 29 of Surat al-Ahqaf and at the beginning of Surat "
          'al-Jinn, that a group of jinn listened to the Qur\'an and believed. The Makkan historian al-Azraqi '
          "relates that the Prophet came near al-Hajun with Abdullah ibn Mas'ud and recited the Qur'an to the jinn "
          'beyond the line he had drawn. The mosque was built where this memory lives on.\n\n'
          'Al-Azraqi and al-Fakihi, writing in the ninth century, mention a place where the Prophet met the jinn, '
          'but say nothing of a building there. In the sixteenth century the place was identified with a spot called '
          "al-Farhadiyyah near Jannat al-Mu'alla. Every year, three days before the end of Dhu al-Hijjah, the people "
          "of Makkah gathered here and spent the night. The Moroccan traveller al-'Ayyashi, who saw it in 1662, "
          'writes that the hill was wooded and that food was distributed to the poor.\n\n'
          'The first mosque building was erected in 1700 by an architect named Ibrahim Agha, between two wide '
          'streets, below ground level, without a dome or minaret. In 2000 the mosque was entirely rebuilt; today it '
          "stands above ground as a modern mosque with a minaret and, together with Jannat al-Mu'alla, is one of the "
          'most visited places in Makkah.',
      ar: 'كان النبي صلى الله عليه وسلم يقرأ القرآن على الجن في أوقات وأماكن مختلفة ليبلّغهم الوحي. وقد أخبر القرآن '
          'الكريم في الآية التاسعة والعشرين من سورة الأحقاف وفي مطلع سورة الجن أن نفرًا من الجن استمعوا القرآن فآمنوا. '
          'وروى مؤرخ مكة الأزرقي أن النبي صلى الله عليه وسلم جاء مع عبد الله بن مسعود إلى قرب الحجون، فقرأ القرآن على '
          'الجن وراء الخط الذي خطّه. وقد بُني المسجد في الموضع الذي تحيا فيه هذه الذكرى.\n\n'
          'ويذكر الأزرقي والفاكهي في القرن الثالث الهجري موضعًا لقي فيه النبي صلى الله عليه وسلم الجن، دون أن يذكرا '
          'بناءً فيه. وفي القرن العاشر الهجري كان يُعتقد أنه الموضع المسمى الفرهادية قرب المعلاة. وكان أهل مكة يجتمعون '
          'فيه كل عام قبل نهاية ذي الحجة بثلاثة أيام ويبيتون ليلتهم. وكتب الرحالة المغربي العياشي الذي رآه سنة 1662م '
          'أن الربوة كانت مشجرة وأن الطعام كان يوزَّع فيها على الفقراء.\n\n'
          'وأول بناء للمسجد شيّده معمار يُدعى إبراهيم آغا سنة 1700م بين شارعين واسعين، تحت مستوى الأرض، بلا قبة ولا '
          'مئذنة. وفي سنة 2000م أُعيد بناء المسجد بالكامل، فصار مسجدًا حديثًا فوق الأرض ذا مئذنة، وهو مع مقبرة المعلاة '
          'من أكثر الأماكن زيارة في مكة.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Mekke dönemi', en: 'Makkan period', ar: 'العهد المكي'),
        metin: L10nText(
          tr: "Hz. Peygamber, Abdullah b. Mes'ûd ile Hacûn yakınında cinlere Kur'an okudu (Ezrakī'nin rivayeti).",
          en: "The Prophet recited the Qur'an to the jinn near al-Hajun, accompanied by Abdullah ibn Mas'ud (as related by al-Azraqi).",
          ar: 'قرأ النبي صلى الله عليه وسلم القرآن على الجن قرب الحجون ومعه عبد الله بن مسعود (فيما رواه الأزرقي).',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '9. yüzyıl', en: '9th century', ar: 'القرن الثالث الهجري'),
        metin: L10nText(
          tr: 'Ezrakī ve Fâkihî yeri anar; henüz bir yapıdan söz edilmez.',
          en: 'Al-Azraqi and al-Fakihi mention the place; no building is yet recorded.',
          ar: 'يذكر الأزرقي والفاكهي الموضع دون ذكر بناء فيه.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1662', en: '1662', ar: '1662م'),
        metin: L10nText(
          tr: 'Seyyah Ayyâşî, Ferhadiye denilen ağaçlık tepede fakirlere yemek verildiğini yazar.',
          en: "The traveller al-'Ayyashi writes that food was given to the poor on the wooded hill called al-Farhadiyyah.",
          ar: 'يذكر الرحالة العياشي أن الطعام كان يوزَّع على الفقراء في الربوة المشجرة المسماة الفرهادية.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1700', en: '1700', ar: '1700م'),
        metin: L10nText(
          tr: 'Mimar İbrâhim Ağa ilk mescit binasını yer altında, kubbesiz ve minaresiz yaptı.',
          en: 'The architect Ibrahim Agha built the first mosque below ground, without dome or minaret.',
          ar: 'بنى المعمار إبراهيم آغا أول مبنى للمسجد تحت الأرض بلا قبة ولا مئذنة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '2000', en: '2000', ar: '2000م'),
        metin: L10nText(
          tr: 'Mescit yer üstünde, minareli modern bir cami olarak yeniden yapıldı.',
          en: 'The mosque was rebuilt above ground as a modern mosque with a minaret.',
          ar: 'أُعيد بناء المسجد فوق الأرض مسجدًا حديثًا ذا مئذنة.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Mescid-i Cin, Hz. Peygamber'in risaletinin yalnız insanlara değil cinlere de olduğunu hatırlatan bir "
          "mekândır. Kur'an-ı Kerîm, cinlerden bir topluluğun Kur'an'ı dinleyip “Biz hayret verici bir Kur'an dinledik” "
          "dediğini ve iman ettiğini haber verir.\n\n"
          "Bu mescide özel bir fazilet bildiren sahih bir hadis yoktur. Ziyaret, Peygamber Efendimizin hayatından bir "
          "hatırayı yâd etmek ve burada namaz kılıp dua etmek niyetiyle yapılır.",
      en: "Masjid al-Jinn is a reminder that the Prophet's mission was not only to humankind but also to the jinn. "
          "The Qur'an relates that a group of jinn listened to the Qur'an, said “We have heard a wondrous Qur'an”, "
          'and believed.\n\n'
          'There is no authentic hadith attributing a special virtue to this mosque. It is visited to recall an '
          "episode from the Prophet's life, and to pray and supplicate there.",
      ar: 'يذكّر مسجد الجن بأن رسالة النبي صلى الله عليه وسلم لم تكن للإنس وحدهم بل للجن أيضًا. وقد أخبر القرآن الكريم '
          'أن نفرًا من الجن استمعوا القرآن فقالوا ﴿إِنَّا سَمِعْنَا قُرْآنًا عَجَبًا﴾ فآمنوا به.\n\n'
          'ولم يرد حديث صحيح في فضل خاص لهذا المسجد، وإنما يُزار لاستحضار ذكرى من سيرة النبي صلى الله عليه وسلم، '
          'وللصلاة والدعاء فيه.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'قُلْ أُوحِىَ إِلَىَّ أَنَّهُ ٱسْتَمَعَ نَفَرٌ مِّنَ ٱلْجِنِّ فَقَالُوٓا۟ إِنَّا سَمِعْنَا قُرْءَانًا عَجَبًا ﴿١﴾ '
            'يَهْدِىٓ إِلَى ٱلرُّشْدِ فَـَٔامَنَّا بِهِۦ ۖ وَلَن نُّشْرِكَ بِرَبِّنَآ أَحَدًا ﴿٢﴾',
        meal: L10nText(
          tr: "De ki: Bana şu vahyolundu: Cinlerden bir grup Kur'an'ı dinledi de şöyle dediler: “Gerçekten biz, doğruya "
              "ileten hayret verici bir Kur'an dinledik. Biz de ona iman ettik. Artık hiç kimseyi Rabbimize asla ortak "
              "koşmayacağız.”",
          en: "Say: It has been revealed to me that a group of jinn listened and said, “We have heard a wondrous "
              "Qur'an that guides to right conduct, so we have believed in it, and we will never associate anyone "
              'with our Lord.”',
          ar: 'قُلْ أُوحِيَ إِلَيَّ أَنَّهُ اسْتَمَعَ نَفَرٌ مِنَ الْجِنِّ فَقَالُوا إِنَّا سَمِعْنَا قُرْآنًا عَجَبًا، يَهْدِي '
              'إِلَى الرُّشْدِ فَآمَنَّا بِهِ وَلَنْ نُشْرِكَ بِرَبِّنَا أَحَدًا.',
        ),
        kaynak: L10nText(tr: 'Cin 72/1-2', en: 'Al-Jinn 72:1-2', ar: 'الجن 72/1-2'),
      ),
      GeziAlinti(
        arapca: 'وَإِذْ صَرَفْنَآ إِلَيْكَ نَفَرًا مِّنَ ٱلْجِنِّ يَسْتَمِعُونَ ٱلْقُرْءَانَ فَلَمَّا حَضَرُوهُ قَالُوٓا۟ أَنصِتُوا۟ ۖ '
            'فَلَمَّا قُضِىَ وَلَّوْا۟ إِلَىٰ قَوْمِهِم مُّنذِرِينَ',
        meal: L10nText(
          tr: "Hani cinlerden bir grubu Kur'an'ı dinlemek üzere sana yöneltmiştik. Onlar Kur'an'ın okunuşunda hazır "
              "bulununca birbirlerine, “Susun!” dediler. Okunması bitince de uyarıcılar olarak kavimlerine döndüler.",
          en: "And when We directed to you a group of jinn to listen to the Qur'an: when they attended it they said, "
              '“Listen in silence!” And when it was finished, they went back to their people as warners.',
          ar: 'وَإِذْ صَرَفْنَا إِلَيْكَ نَفَرًا مِنَ الْجِنِّ يَسْتَمِعُونَ الْقُرْآنَ فَلَمَّا حَضَرُوهُ قَالُوا أَنْصِتُوا فَلَمَّا '
              'قُضِيَ وَلَّوْا إِلَى قَوْمِهِمْ مُنْذِرِينَ.',
        ),
        kaynak: L10nText(tr: 'Ahkāf 46/29', en: 'Al-Ahqaf 46:29', ar: 'الأحقاف 46/29'),
      ),
    ],
    adab: [
      L10nText(
        tr: "Mescit, Cennetü'l-Muallâ ile aynı caddededir; iki ziyaret tek seferde yapılabilir.",
        en: "The mosque is on the same road as Jannat al-Mu'alla; both can be visited on one trip.",
        ar: 'يقع المسجد على الطريق نفسه الذي تقع عليه مقبرة المعلاة، فيمكن زيارتهما معًا.',
      ),
      L10nText(
        tr: "Mescid-i Haram'dan yürüyerek yaklaşık 15-20 dakikadır; sıcakta taksi tercih edilebilir.",
        en: 'It is about a 15-20 minute walk from al-Masjid al-Haram; in the heat a taxi may be better.',
        ar: 'يبعد عن المسجد الحرام نحو 15-20 دقيقة سيرًا؛ ويحسن ركوب سيارة أجرة في الحر.',
      ),
      L10nText(
        tr: "Mescide girince iki rekât tahiyyetü'l-mescid kılabilir, Cin sûresini okuyup anlamını düşünebilirsiniz.",
        en: 'On entering you may pray two rak‘ahs to greet the mosque, and recite Surat al-Jinn and reflect on its meaning.',
        ar: 'إذا دخلت المسجد فصلِّ ركعتي تحية المسجد، ولك أن تقرأ سورة الجن وتتدبر معانيها.',
      ),
      L10nText(
        tr: 'Cinlerle ilgili halk arasındaki asılsız anlatımlara itibar etmeyin; ziyaretin konusu Kur\'an\'ın tebliğidir.',
        en: "Pay no attention to baseless popular tales about the jinn; the theme of the visit is the conveying of the Qur'an.",
        ar: 'لا تلتفت إلى الحكايات الشعبية التي لا أصل لها عن الجن؛ فموضوع الزيارة هو تبليغ القرآن.',
      ),
      L10nText(
        tr: 'Namaz vakitleri dışında mescit kapalı olabilir; vakit namazına yakın gitmek daha uygundur.',
        en: 'The mosque may be closed outside prayer times; it is better to go close to a prayer time.',
        ar: 'قد يُغلق المسجد خارج أوقات الصلاة، فالأفضل الذهاب قرب وقت صلاة.',
      ),
    ],
    uygunSaat: L10nText(tr: 'Vakit namazlarında', en: 'At prayer times', ar: 'في أوقات الصلوات'),
    ziyaretSuresi: L10nText(tr: '20-30 dakika', en: '20-30 minutes', ar: '20-30 دقيقة'),
    anlatim: L10nText(
      tr: "Mescid-i Haram'dan kuzeye doğru yürüdüğümüzde Hacûn semtine geliyoruz. Mekke'nin tarihî mezarlığı "
          "Cennetü'l-Muallâ'nın hemen yakınındaki bu minareli cami, Mescid-i Cin.\n\n"
          "Kur'an-ı Kerîm bize, cinlerden bir topluluğun Peygamber Efendimizden Kur'an dinlediğini ve iman ettiğini "
          "haber verir. Cin sûresi şöyle başlar. De ki: Bana vahyolundu ki cinlerden bir grup Kur'an'ı dinledi ve "
          "dediler ki, biz hayret verici bir Kur'an dinledik, o doğru yola iletiyor, biz de ona iman ettik.\n\n"
          "Mekke tarihçisi Ezrakī bir hatırayı nakleder. Peygamber Efendimiz bir gece sahabi Abdullah bin Mes'ûd ile "
          "birlikte bu civara geldi. Yere bir çizgi çekti ve Abdullah'tan bu çizgiyi geçmemesini istedi. Sonra çizginin "
          "ötesinde cinlere Kur'an okudu. Bu yüzden burası önce çizgi yeri diye anıldı, sonra burada yapılan mescide "
          "cinlerin mescidi denildi.\n\n"
          "Mescidin başka adları da var. Eskiden Mekke'nin gece bekçileri burada toplanıp nöbet değiştirdiği için "
          "bekçiler mescidi dendi. Cinlerin burada Peygamber Efendimize bağlılık sözü verdiği anlatıldığı için biat "
          "mescidi adıyla da anıldı.\n\n"
          "Yüzyıllar boyunca burada bir bina yoktu. Mekke halkı yılın son günlerinde bu tepede toplanır, fakirlere "
          "yemek dağıtırdı. İlk mescit bin yedi yüz yılında, yer seviyesinin altında, kubbesiz ve minaresiz olarak "
          "yapıldı. Bugün gördüğümüz modern bina ise iki bin yılında yeniden inşa edildi.\n\n"
          "Bu mescide özel bir fazilet bildiren sahih bir hadis yoktur. Ancak burası, Peygamber Efendimizin "
          "mesajının bütün varlıklara ulaştığını hatırlatan anlamlı bir yerdir. İçeride iki rekât namaz kılıp Cin "
          "sûresini okumak, bu ziyareti güzel bir tefekküre dönüştürür.",
      en: 'Walking north from al-Masjid al-Haram, we reach the district of al-Hajun. This mosque with its minaret, '
          "right next to Jannat al-Mu'alla, the historic cemetery of Makkah, is Masjid al-Jinn.\n\n"
          "The Qur'an tells us that a group of jinn listened to the Qur'an from the Prophet and believed. Surat "
          'al-Jinn begins like this. Say: It has been revealed to me that a group of jinn listened and said, we have '
          "heard a wondrous Qur'an, it guides to the right way, and we have believed in it.\n\n"
          'The Makkan historian al-Azraqi relates a memory. One night the Prophet came to this area with his '
          "Companion Abdullah ibn Mas'ud. He drew a line on the ground and asked Abdullah not to cross it. Then, "
          "beyond the line, he recited the Qur'an to the jinn. So the place was first called the place of the line, "
          'and the mosque later built here was called the Mosque of the Jinn.\n\n'
          'The mosque has other names too. Because the night watchmen of Makkah once gathered here to change shifts, '
          'it was called the Mosque of the Guards. And because it is related that the jinn pledged allegiance to the '
          'Prophet here, it was also known as the Mosque of the Pledge.\n\n'
          'For centuries there was no building here. In the last days of the year the people of Makkah gathered on '
          'this hill and gave food to the poor. The first mosque was built in the year seventeen hundred, below '
          'ground level, without a dome or minaret. The modern building we see today was rebuilt in the year two '
          'thousand.\n\n'
          'There is no authentic hadith attributing a special virtue to this mosque. Yet it is a meaningful place '
          "that reminds us the Prophet's message reached all of creation. Praying two rak‘ahs inside and reciting "
          'Surat al-Jinn turns this visit into a moment of beautiful reflection.',
      ar: 'إذا سرنا من المسجد الحرام شمالًا وصلنا إلى حي الحجون. وهذا المسجد ذو المئذنة، المجاور لمقبرة المعلاة، مقبرة '
          'مكة التاريخية، هو مسجد الجن.\n\n'
          'يخبرنا القرآن الكريم أن نفرًا من الجن استمعوا القرآن من النبي صلى الله عليه وسلم فآمنوا. وتبدأ سورة الجن '
          'بقوله تعالى: قُلْ أُوحِيَ إِلَيَّ أَنَّهُ اسْتَمَعَ نَفَرٌ مِنَ الْجِنِّ فَقَالُوا إِنَّا سَمِعْنَا قُرْآنًا عَجَبًا، '
          'يَهْدِي إِلَى الرُّشْدِ فَآمَنَّا بِهِ.\n\n'
          'ويروي مؤرخ مكة الأزرقي ذكرى من تلك الذكريات. فقد جاء النبي صلى الله عليه وسلم ليلةً إلى هذه الناحية ومعه '
          'الصحابي عبد الله بن مسعود. فخطّ له خطًّا على الأرض وأمره ألا يتجاوزه. ثم قرأ القرآن على الجن وراء الخط. '
          'ولذلك سُمّي المكان أولًا موضع الخط، ثم سُمّي المسجد الذي بُني فيه مسجد الجن.\n\n'
          'وللمسجد أسماء أخرى. فقد سُمّي مسجد الحرس لأن حرس الليل في مكة كانوا يجتمعون فيه ويتناوبون. وسُمّي مسجد '
          'البيعة لما رُوي من أن الجن بايعوا النبي صلى الله عليه وسلم فيه.\n\n'
          'ولم يكن في هذا الموضع بناء قرونًا طويلة. وكان أهل مكة يجتمعون على هذه الربوة في آخر أيام السنة ويطعمون '
          'الفقراء. ثم بُني أول مسجد سنة ألف وسبعمئة تحت مستوى الأرض بلا قبة ولا مئذنة. أما البناء الحديث الذي نراه '
          'اليوم فقد أُعيد تشييده سنة ألفين.\n\n'
          'ولم يرد حديث صحيح في فضل خاص لهذا المسجد. لكنه مكان ذو دلالة يذكّرنا بأن رسالة النبي صلى الله عليه وسلم '
          'بلغت الخلق جميعًا. فإذا صليت فيه ركعتين وقرأت سورة الجن صارت زيارتك لحظة تأمل جميلة.',
    ),
    kaynaklar: [
      GeziKaynak('TDV İslâm Ansiklopedisi: Mescid-i Cin', 'https://islamansiklopedisi.org.tr/mescid-i-cin'),
      GeziKaynak('Quran.com: Cin 72/1-2', 'https://quran.com/72/1-2'),
      GeziKaynak('Quran.com: Ahkāf 46/29', 'https://quran.com/46/29'),
      GeziKaynak('OpenStreetMap: way 443792238', 'https://www.openstreetmap.org/way/443792238'),
    ],
  ),

  // --------------------------------------------------------------- Ci'râne
  GeziYeri(
    id: 'cirane',
    bolge: GeziBolge.mekke,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Ci'râne Mescidi", en: "Ji'ranah Mosque", ar: 'مسجد الجعرانة'),
    arapcaAd: L10nText.same('مسجد الجعرانة'),
    altBaslik: L10nText(
      tr: "Hz. Peygamber'in Huneyn ganimetlerini dağıtıp umre için ihrama girdiği yer",
      en: 'Where the Prophet distributed the spoils of Hunayn and entered ihram for Umrah',
      ar: 'حيث قسم النبي صلى الله عليه وسلم غنائم حنين وأحرم بالعمرة',
    ),
    sehir: L10nText(
      tr: "Ci'râne, Mekke'nin kuzeydoğusu",
      en: "Al-Ji'ranah, northeast of Makkah",
      ar: 'الجعرانة، شمال شرق مكة',
    ),
    konum: LatLng(21.56818, 39.95114), // OSM node 12014256399
    genel: L10nText(
      tr: "Ci'râne, Mekke ile Tâif arasında, Harem sınırının dışında (Hil bölgesinde) bir yerdir. Mekke tarihçisi "
          "Ezrakī Mekke'ye uzaklığını 9 mil olarak verir; TDV İslâm Ansiklopedisi'ne göre bugünkü yollarla yaklaşık "
          "29 km'dir. Burada eskiden aynı adla anılan bir su kuyusu vardı. Kelime hadisçilerin çoğunca “Ciirrâne”, "
          "tarihçi ve dilcilerce “Ci'râne” diye okunmuştur.\n\n"
          "Ci'râne, Hz. Peygamber'in Huneyn Gazvesi'nden sonra ganimetleri burada dağıtması ve ardından buradan umre "
          "için ihrama girmesiyle tanınır. Bugün burada bu olayların hatırasına yapılmış bir mescit bulunur. Harem "
          "bölgesinde bulunanlar umre yapmak istediklerinde Hil'e çıkıp ihrama girmek zorunda olduklarından Ci'râne, "
          "Ten'îm ve Hudeybiye ile birlikte bu amaçla gidilen yerlerden biridir.",
      en: "Al-Ji'ranah lies between Makkah and Ta'if, outside the boundary of the Haram (in the area called Hill). "
          "The Makkan historian al-Azraqi gives its distance from Makkah as 9 miles; according to the TDV Encyclopaedia "
          'of Islam it is about 29 km by today\'s roads. There was once a well of the same name here. Most hadith '
          "scholars read the name as al-Ji'irranah, while historians and philologists read it al-Ji'ranah.\n\n"
          "Al-Ji'ranah is known as the place where the Prophet distributed the spoils after the Battle of Hunayn and "
          'then entered ihram for Umrah. Today a mosque built in memory of these events stands here. Since those '
          'inside the Haram must go out to the Hill to enter ihram for Umrah, al-Ji\'ranah is, together with '
          "al-Tan'im and al-Hudaybiyah, one of the places people go to for this purpose.",
      ar: 'الجعرانة موضع بين مكة والطائف، خارج حدود الحرم (في الحِلّ). ويذكر مؤرخ مكة الأزرقي أنها على تسعة أميال من '
          'مكة، وبحسب موسوعة الوقف الديني التركي للمعارف الإسلامية تبعد نحو 29 كم بالطرق الحالية. وكانت فيها قديمًا بئر '
          'تحمل الاسم نفسه. وأكثر المحدثين ينطقونها «الجِعِرّانة»، وينطقها المؤرخون وأهل اللغة «الجِعْرانة».\n\n'
          'وتُعرف الجعرانة بأن النبي صلى الله عليه وسلم قسم فيها غنائم غزوة حنين، ثم أحرم منها بالعمرة. وفيها اليوم '
          'مسجد بُني إحياءً لذكرى هذه الأحداث. ولأن من كان داخل الحرم يلزمه الخروج إلى الحل ليحرم بالعمرة، فالجعرانة '
          'مع التنعيم والحديبية من المواضع التي يُقصد إليها لذلك.',
    ),
    tarihce: L10nText(
      tr: "Hicretin 8. yılında (630) Mekke'nin fethinden kısa süre sonra Huneyn'de Hevâzin ve Sakīf kabileleri "
          "büyük bir yenilgiye uğradı. Bir kısmı Evtâs'a çekildi, bir kısmı Tâif Kalesi'ne sığındı. Hz. Peygamber, "
          "elde edilen ganimetleri ve esirleri Ci'râne'de bırakarak Tâif'e gitti ve şehri kuşattı.\n\n"
          "Kuşatma kaldırıldıktan sonra Ci'râne'ye dönen Hz. Peygamber, ganimetleri hemen dağıtmadı; Müslüman olarak "
          "gelecek Hevâzinliler'e iade etmeyi umarak bir süre bekledi. Heyet gecikince ganimetler dağıtıldı. Sonra "
          "gelen Hevâzin heyeti Müslüman olduklarını söyleyip esirlerin iadesini istedi; Hz. Peygamber ashabının "
          "rızasını alarak esirleri geri verdi.\n\n"
          "Hz. Peygamber ganimetten, kalpleri İslâm'a ısındırılmak istenen kimselere (müellefe-i kulûb) daha fazla pay "
          "verdi. Ensardan bazıları bundan incinince onları bir araya topladı, bu tasarrufun hikmetini anlattı, "
          "ensarın faziletini dile getirdi ve daima onlarla birlikte olacağını söyleyerek onlara ve çocuklarına dua "
          "etti. Ensar pişmanlıklarını ve ondan razı olduklarını bildirdi.\n\n"
          "Ganimetlerin taksiminden sonra Hz. Peygamber Ci'râne'de ihrama girdi ve gece Mekke'ye giderek umresini yaptı; "
          "ardından tekrar Ci'râne'ye dönüp buradan Medine'ye hareket etti. Bu umre Buhârî ve Müslim'de rivayet "
          "edilir. Olayların hatırasına burada bir mescit inşa edilmiştir.",
      en: "In the eighth year after the Hijrah (630), shortly after the conquest of Makkah, the tribes of Hawazin "
          "and Thaqif suffered a heavy defeat at Hunayn. Some withdrew to Awtas and some took refuge in the fortress "
          "of Ta'if. The Prophet left the spoils and captives at al-Ji'ranah, went on to Ta'if and besieged it.\n\n"
          "After lifting the siege he returned to al-Ji'ranah but did not distribute the spoils at once; he waited "
          'for a while, hoping to return them to the Hawazin if they came as Muslims. When their delegation was late, '
          'the spoils were distributed. The Hawazin delegation then came, declared their Islam and asked for the '
          'captives; the Prophet obtained the consent of his Companions and returned the captives.\n\n'
          'The Prophet gave a larger share to those whose hearts were being reconciled to Islam. When some of the '
          'Ansar were hurt by this, he gathered them, explained the wisdom of his decision, praised the Ansar, told '
          'them he would always be with them, and prayed for them and their children. The Ansar expressed their '
          'regret and said they were content with him.\n\n'
          "After the distribution, the Prophet entered ihram at al-Ji'ranah, went to Makkah by night and performed "
          "Umrah; he then returned to al-Ji'ranah and set out from there for Madinah. This Umrah is narrated by "
          'al-Bukhari and Muslim. A mosque was built here in memory of these events.',
      ar: 'في السنة الثامنة من الهجرة (630م)، بعد فتح مكة بقليل، انهزمت قبيلتا هوازن وثقيف هزيمة كبيرة في حنين؛ فانحاز '
          'بعضهم إلى أوطاس، وتحصّن بعضهم في حصن الطائف. فترك النبي صلى الله عليه وسلم الغنائم والسبي بالجعرانة، ومضى '
          'إلى الطائف فحاصرها.\n\n'
          'فلما رفع الحصار عاد إلى الجعرانة، ولم يقسم الغنائم على الفور، بل انتظر مدة رجاء أن يأتيه وفد هوازن مسلمين '
          'فيردّها عليهم. فلما أبطأ الوفد قُسمت الغنائم. ثم جاء وفد هوازن معلنين إسلامهم يسألون ردّ السبي، فاستطاب النبي '
          'صلى الله عليه وسلم نفوس أصحابه وردّ عليهم سبيهم.\n\n'
          'وأعطى النبي صلى الله عليه وسلم المؤلفة قلوبهم عطاءً أكثر، فوجد بعض الأنصار في أنفسهم، فجمعهم وبيّن لهم حكمة '
          'ذلك، وذكر فضل الأنصار، وأخبرهم أنه معهم أبدًا، ودعا لهم ولأبنائهم، فبكى الأنصار وقالوا: رضينا برسول الله '
          'قسمًا وحظًّا.\n\n'
          'وبعد قسمة الغنائم أحرم النبي صلى الله عليه وسلم من الجعرانة، وأتى مكة ليلًا فاعتمر، ثم رجع إلى الجعرانة ومنها '
          'توجّه إلى المدينة. وقد روى هذه العمرة البخاري ومسلم. وبُني هنا مسجد إحياءً لذكرى هذه الأحداث.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Şevval 8 (Şubat 630)', en: 'Shawwal 8 AH (February 630)', ar: 'شوال 8هـ (فبراير 630م)'),
        metin: L10nText(
          tr: "Huneyn Gazvesi; ganimet ve esirler Ci'râne'de bırakıldı.",
          en: "The Battle of Hunayn; the spoils and captives were left at al-Ji'ranah.",
          ar: 'غزوة حنين؛ وتُركت الغنائم والسبي بالجعرانة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Hicrî 8 (630)', en: '8 AH (630)', ar: '8هـ (630م)'),
        metin: L10nText(
          tr: "Tâif kuşatması; ardından Hz. Peygamber Ci'râne'ye döndü.",
          en: "The siege of Ta'if; afterwards the Prophet returned to al-Ji'ranah.",
          ar: 'حصار الطائف؛ ثم عاد النبي صلى الله عليه وسلم إلى الجعرانة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Zilkade 8 (630)', en: "Dhu al-Qa'dah 8 AH (630)", ar: 'ذو القعدة 8هـ (630م)'),
        metin: L10nText(
          tr: 'Ganimetler dağıtıldı; Hevâzin heyetine esirler iade edildi; Hz. Peygamber ensara hitap etti.',
          en: 'The spoils were distributed; the captives were returned to the Hawazin delegation; the Prophet addressed the Ansar.',
          ar: 'قُسمت الغنائم، ورُدّ السبي إلى وفد هوازن، وخطب النبي صلى الله عليه وسلم الأنصار.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Zilkade 8 (630)', en: "Dhu al-Qa'dah 8 AH (630)", ar: 'ذو القعدة 8هـ (630م)'),
        metin: L10nText(
          tr: "Hz. Peygamber Ci'râne'de ihrama girip gece Mekke'de umre yaptı, sonra Medine'ye döndü.",
          en: "The Prophet entered ihram at al-Ji'ranah, performed Umrah in Makkah by night, then returned to Madinah.",
          ar: 'أحرم النبي صلى الله عليه وسلم من الجعرانة واعتمر ليلًا في مكة، ثم عاد إلى المدينة.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Ci'râne, Hz. Peygamber'in umre için bizzat ihrama girdiği yer olması sebebiyle önem taşır. Harem "
          "bölgesinde bulunanların umre için Harem dışına çıkıp ihrama girmeleri gerekir. Şâfiîler'e ve Mâlikî ile "
          "Hanbelî mezheplerinden bazı âlimlere göre bu amaçla gidilecek yerlerin en faziletlisi Ci'râne'dir. "
          "Hanefîler'e, Hanbelîler'in çoğuna ve bazı Şâfiîler'e göre ise Ten'îm'den ihrama girmek daha faziletlidir.\n\n"
          "Ci'râne aynı zamanda Hz. Peygamber'in cömertliğini, esirleri iade ederken ashabının gönlünü almasını ve "
          "ensara olan vefasını gösteren olayların yaşandığı yerdir.",
      en: "Al-Ji'ranah is significant because the Prophet himself entered ihram for Umrah here. Those inside the "
          'Haram must go outside it to enter ihram for Umrah. According to the Shafi‘is and some Maliki and Hanbali '
          "scholars, al-Ji'ranah is the most virtuous of the places used for this purpose. According to the Hanafis, "
          "most Hanbalis and some Shafi‘is, entering ihram at al-Tan'im is more virtuous.\n\n"
          "Al-Ji'ranah is also where events took place that show the Prophet's generosity, his care to win his "
          "Companions' consent when returning the captives, and his loyalty to the Ansar.",
      ar: 'تأتي أهمية الجعرانة من أن النبي صلى الله عليه وسلم أحرم منها بنفسه للعمرة. ومن كان داخل الحرم يلزمه الخروج '
          'إلى الحل ليحرم بالعمرة؛ وأفضل هذه المواضع عند الشافعية وبعض المالكية والحنابلة الجعرانة، وعند الحنفية وأكثر '
          'الحنابلة وبعض الشافعية الإحرام من التنعيم أفضل.\n\n'
          'والجعرانة كذلك موضع أحداث تُظهر كرم النبي صلى الله عليه وسلم، وحرصه على استطابة نفوس أصحابه عند ردّ السبي، '
          'ووفاءه للأنصار.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'وَأَتِمُّوا۟ ٱلْحَجَّ وَٱلْعُمْرَةَ لِلَّهِ',
        meal: L10nText(
          tr: 'Haccı ve umreyi Allah için tamamlayın.',
          en: 'Complete the Hajj and the Umrah for the sake of God.',
          ar: 'وَأَتِمُّوا الْحَجَّ وَالْعُمْرَةَ لِلَّهِ.',
        ),
        kaynak: L10nText(
          tr: 'Bakara 2/196 (ayetin bir bölümü)',
          en: 'Al-Baqarah 2:196 (part of the verse)',
          ar: 'البقرة 2/196 (جزء من الآية)',
        ),
      ),
    ],
    adab: [
      L10nText(
        tr: "Ci'râne'den umre yapacaksanız ihram örtülerinizi yanınızda götürün; mescitte abdest ve gusül yerleri vardır.",
        en: "If you will perform Umrah from al-Ji'ranah, take your ihram garments with you; the mosque has ablution facilities.",
        ar: 'إذا أردت الإحرام من الجعرانة فخذ معك ثياب الإحرام؛ ففي المسجد أماكن للوضوء.',
      ),
      L10nText(
        tr: "İhrama girmeden önce iki rekât ihram namazı kılınır, sonra niyet edilip telbiye getirilir.",
        en: 'Before entering ihram, two rak‘ahs are prayed; then the intention is made and the Talbiyah recited.',
        ar: 'يصلّي المحرم ركعتين قبل الإحرام، ثم ينوي ويلبّي.',
      ),
      L10nText(
        tr: "Mekke merkezinden uzak olduğu için taksi ya da kafile aracıyla gidilir; dönüşü önceden planlayın.",
        en: 'Because it is far from central Makkah, go by taxi or group vehicle; plan your return in advance.',
        ar: 'لبعدها عن وسط مكة يُذهب إليها بسيارة أجرة أو بحافلة المجموعة؛ فخطّط للعودة مسبقًا.',
      ),
      L10nText(
        tr: "Burada Huneyn ve Tâif olaylarını, Hz. Peygamber'in ensara hitabını hatırlamak ziyareti anlamlı kılar.",
        en: "Recalling the events of Hunayn and Ta'if and the Prophet's address to the Ansar makes the visit meaningful.",
        ar: 'يزيد الزيارةَ معنى تذكّرُ أحداث حنين والطائف وخطبة النبي صلى الله عليه وسلم في الأنصار.',
      ),
      L10nText(
        tr: "Mezhepler arasında hangi yerin daha faziletli olduğu konusunda farklı görüşler vardır; rehberinizin ve "
            "Diyanet'in yönlendirmesine uyun.",
        en: "The schools of law differ on which place is more virtuous; follow your guide and the Diyanet's guidance.",
        ar: 'اختلفت المذاهب في أي المواضع أفضل، فاتبع توجيهات مرشدك ورئاسة الشؤون الدينية.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: 'Suudi düzenlemelerine göre umre için Nusuk uygulamasından umre izni alınması gerekir. Mekke\'deyken ikinci '
          'bir umre yapmak isteyenlerden de izin istenebilir; Ramazan gibi yoğun dönemlerde tekrar umreye izin '
          'verilmeyebilir.',
      en: 'Under Saudi regulations an Umrah permit must be obtained through the Nusuk app. A permit may also be '
          'required for a second Umrah while in Makkah; at busy times such as Ramadan, repeat Umrahs may not be '
          'permitted.',
      ar: 'بحسب الأنظمة السعودية يلزم استخراج تصريح العمرة عبر تطبيق نسك، وقد يُطلب التصريح أيضًا لمن أراد عمرة ثانية '
          'وهو في مكة، وقد لا يُسمح بتكرار العمرة في أوقات الذروة كرمضان.',
    ),
    uygunSaat: L10nText(
      tr: 'Sabah ya da ikindiden sonra',
      en: 'Morning or after the afternoon prayer',
      ar: 'صباحًا أو بعد العصر',
    ),
    ziyaretSuresi: L10nText(
      tr: '1-1,5 saat (yol dahil 2-3 saat)',
      en: '1-1.5 hours (2-3 hours with travel)',
      ar: 'ساعة إلى ساعة ونصف (2-3 ساعات مع الطريق)',
    ),
    anlatim: L10nText(
      tr: "Mekke'den kuzeydoğuya, Tâif yönüne doğru yol aldığımızda Ci'râne'ye varıyoruz. Burası Harem sınırının "
          "dışında, sakin bir vadide. Mescidin bulunduğu bu yer, Peygamber Efendimizin hayatındaki çok anlamlı "
          "günlere tanıklık etti.\n\n"
          "Hicretin sekizinci yılı. Mekke fethedilmiş, ardından Huneyn vadisinde Hevâzin ve Sakīf kabileleriyle büyük "
          "bir savaş yapılmıştı. Savaştan sonra pek çok esir ve büyük miktarda ganimet Ci'râne'ye getirildi. Peygamber "
          "Efendimiz bunları burada bırakarak Tâif'e gitti ve şehri kuşattı.\n\n"
          "Kuşatmadan dönünce ganimetleri hemen paylaştırmadı. Hevâzin kabilesinin Müslüman olarak gelmesini ve "
          "mallarını geri istemesini bekledi. Heyet gecikince ganimetler dağıtıldı. Sonra Hevâzinliler gelip "
          "Müslüman olduklarını söylediler ve ailelerini geri istediler. Peygamber Efendimiz ashabının gönlünü aldı "
          "ve esirleri ailelerine iade etti.\n\n"
          "Ganimetten, kalpleri İslâm'a yeni ısınan kimselere daha fazla pay verildi. Medineli ensardan bazıları "
          "buna gücendi. Peygamber Efendimiz onları topladı ve gönüllerini aldı. İnsanlar koyun ve develerle evlerine "
          "dönerken sizin Allah'ın Resûlü ile dönmeniz sizi hoşnut etmez mi, diye sordu. Ensar ağladı ve ondan razı "
          "olduklarını söyledi.\n\n"
          "Bütün bunlardan sonra Peygamber Efendimiz burada ihrama girdi. Gece Mekke'ye gitti, umresini yaptı ve "
          "sabah olmadan Ci'râne'ye geri döndü. Buradan da Medine'ye hareket etti.\n\n"
          "Bugün Harem bölgesinde bulunan pek çok kişi, umre için Ci'râne'ye gelip bu mescitten ihrama girer. Bazı "
          "âlimler, Peygamber Efendimiz buradan ihrama girdiği için burayı en faziletli yer kabul etmiştir. Burada iki "
          "rekât namaz kılarken Peygamber Efendimizin cömertliğini ve vefasını hatırlamak, bu ziyareti daha da "
          "anlamlı kılar.",
      en: "Travelling northeast from Makkah, towards Ta'if, we arrive at al-Ji'ranah. It lies outside the boundary "
          'of the Haram, in a quiet valley. The place where this mosque stands witnessed very meaningful days in the '
          "Prophet's life.\n\n"
          'It is the eighth year after the Hijrah. Makkah had been conquered, and then a great battle had been fought '
          'in the valley of Hunayn against the tribes of Hawazin and Thaqif. After the battle many captives and a vast '
          "amount of spoils were brought to al-Ji'ranah. The Prophet left them here, went on to Ta'if and besieged "
          'the city.\n\n'
          'When he returned from the siege he did not distribute the spoils at once. He waited for the Hawazin to '
          'come as Muslims and ask for their property. When their delegation was late, the spoils were distributed. '
          'Then the Hawazin came, declared that they had become Muslims and asked for their families back. The '
          'Prophet won the consent of his Companions and returned the captives to their families.\n\n'
          'A larger share of the spoils was given to people whose hearts had only recently warmed to Islam. Some of '
          'the Ansar of Madinah were hurt by this. The Prophet gathered them and comforted them. He asked whether '
          'they would not be content that others go home with sheep and camels while they go home with the '
          'Messenger of God. The Ansar wept and said they were content with him.\n\n'
          'After all this, the Prophet entered ihram here. He went to Makkah by night, performed his Umrah, and '
          "returned to al-Ji'ranah before morning. From here he set out for Madinah.\n\n"
          "Today many people staying within the Haram come to al-Ji'ranah to enter ihram for Umrah from this mosque. "
          'Some scholars consider it the most virtuous place for this, because the Prophet entered ihram here. As '
          "you pray two rak‘ahs here, remembering the Prophet's generosity and loyalty makes this visit all the more "
          'meaningful.',
      ar: 'إذا اتجهنا من مكة نحو الشمال الشرقي، في طريق الطائف، وصلنا إلى الجعرانة. وهي خارج حدود الحرم في وادٍ هادئ. '
          'وقد شهد هذا الموضع الذي يقوم فيه المسجد أيامًا عظيمة المعنى في حياة النبي صلى الله عليه وسلم.\n\n'
          'إنها السنة الثامنة من الهجرة. فُتحت مكة، ثم دارت في وادي حنين معركة كبيرة مع هوازن وثقيف. وبعد المعركة جيء '
          'بسبي كثير وغنائم وافرة إلى الجعرانة. فتركها النبي صلى الله عليه وسلم هنا ومضى إلى الطائف فحاصرها.\n\n'
          'فلما رجع من الحصار لم يقسم الغنائم على الفور. بل انتظر أن تأتي هوازن مسلمة فتسأل أموالها. فلما أبطأ الوفد '
          'قُسمت الغنائم. ثم جاءت هوازن فأعلنت إسلامها وسألت ردّ أهليها. فاستطاب النبي صلى الله عليه وسلم نفوس أصحابه '
          'وردّ السبي إلى أهله.\n\n'
          'وأُعطي من الغنائم عطاءً أكثر لمن كانت قلوبهم حديثة عهد بالإسلام. فوجد بعض الأنصار في أنفسهم. فجمعهم النبي '
          'صلى الله عليه وسلم وطيّب خواطرهم. وقال لهم: ألا ترضون أن يذهب الناس بالشاء والبعير وترجعون برسول الله إلى '
          'رحالكم؟ فبكى الأنصار وقالوا: رضينا برسول الله.\n\n'
          'وبعد ذلك كله أحرم النبي صلى الله عليه وسلم من هنا. ودخل مكة ليلًا فاعتمر، ثم عاد إلى الجعرانة قبل الصباح. '
          'ومنها توجّه إلى المدينة.\n\n'
          'واليوم يأتي كثير ممن هم داخل الحرم إلى الجعرانة ليحرموا من هذا المسجد للعمرة. وقد عدّه بعض العلماء أفضل '
          'المواضع لذلك لأن النبي صلى الله عليه وسلم أحرم منه. فإذا صليت هنا ركعتين فتذكّر كرم النبي صلى الله عليه وسلم '
          'ووفاءه، تزدد زيارتك معنى.',
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi: Ci'râne", 'https://islamansiklopedisi.org.tr/cirane'),
      GeziKaynak("TDV İslâm Ansiklopedisi: Ten'îm", 'https://islamansiklopedisi.org.tr/tenim'),
      GeziKaynak('Quran.com: Bakara 2/196', 'https://quran.com/2/196'),
      GeziKaynak('OpenStreetMap: node 12014256399', 'https://www.openstreetmap.org/node/12014256399'),
    ],
  ),

  // ---------------------------------------------------------------- Ten'îm
  GeziYeri(
    id: 'tenim',
    bolge: GeziBolge.mekke,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Ten'îm (Hz. Âişe Mescidi)", en: "Al-Tan'im (Aisha Mosque)", ar: 'مسجد التنعيم (مسجد عائشة)'),
    arapcaAd: L10nText.same('مسجد التنعيم'),
    altBaslik: L10nText(
      tr: "Mekke'de bulunanların umre için ihrama girdiği en yakın yer",
      en: 'The nearest place where those in Makkah enter ihram for Umrah',
      ar: 'أقرب موضع يُحرم منه من كان بمكة للعمرة',
    ),
    sehir: L10nText(
      tr: "Ten'îm, Mekke (Medine yolu)",
      en: "Al-Tan'im, Makkah (Madinah road)",
      ar: 'التنعيم، مكة المكرمة (طريق المدينة)',
    ),
    konum: LatLng(21.46771, 39.80137), // OSM way 431611519
    genel: L10nText(
      tr: "Ten'îm, Mekke'nin kuzeyinde, Medine yönünde Harem sınırının bittiği yerdir. Adını bölgedeki aynı "
          "kökten gelen dağ ve vadi isimlerinden alır. Sınırı gösteren işaret taşının Mescid-i Haram'a uzaklığı "
          "1901'deki bir ölçüme göre 6148 metredir; bugünkü yollarla bu mesafe 7-8 km'yi bulur.\n\n"
          "Buradaki büyük cami Mescidü Âişe, Mescidü'l-Umre ve Mescidü't-Ten'îm adlarıyla bilinir. Mekke'de ve Harem "
          "bölgesinde bulunanlar umre yapmak istediklerinde Harem sınırının dışına (Hil'e) çıkıp ihrama girmek "
          "zorundadır; Ten'îm, Mekke'ye en yakın olduğu için bu amaçla en çok kullanılan yerdir. Caminin geniş abdest "
          "ve gusül alanları, ihram hazırlığı için düzenlenmiştir. (Uzaktan gelenlerin uyması gereken beş mikat için "
          "Mikat Mahalleri bölümüne bakınız.)",
      en: "Al-Tan'im is the point north of Makkah, on the Madinah side, where the boundary of the Haram ends. It "
          'takes its name from mountain and valley names of the same root in the area. According to a measurement '
          'made in 1901, the boundary marker is 6,148 metres from al-Masjid al-Haram; by today\'s roads the '
          'distance is 7-8 km.\n\n'
          "The large mosque here is known as the Mosque of Aisha, the Mosque of Umrah and the Mosque of al-Tan'im. "
          'Those staying in Makkah and the Haram area who wish to perform Umrah must go outside the Haram (to the '
          "Hill) to enter ihram; being the nearest such place to Makkah, al-Tan'im is the one most used for this. "
          'The mosque has extensive ablution and washing facilities arranged for preparing ihram. (For the five '
          'Miqats that travellers from afar must observe, see the Miqat Stations section.)',
      ar: 'التنعيم هو الموضع الذي ينتهي عنده حدّ الحرم شمال مكة من جهة المدينة، وقد أخذ اسمه من أسماء جبال وأودية في '
          'المنطقة من الأصل نفسه. وكانت المسافة بين علم الحدّ والمسجد الحرام بحسب قياس سنة 1901م ستة آلاف ومئة وثمانية '
          'وأربعين مترًا، وتبلغ اليوم بالطرق القائمة 7-8 كم.\n\n'
          'ويُعرف المسجد الكبير هنا بمسجد عائشة ومسجد العمرة ومسجد التنعيم. ومن كان بمكة أو داخل الحرم وأراد العمرة '
          'لزمه الخروج إلى الحل ليحرم؛ والتنعيم لقربه من مكة أكثر المواضع استعمالًا لذلك. وفي المسجد مرافق واسعة '
          'للوضوء والاغتسال مهيأة للإحرام. (وللمواقيت الخمسة التي يلتزمها القادمون من بعيد انظر قسم المواقيت.)',
    ),
    tarihce: L10nText(
      tr: "Vedâ haccında Hz. Âişe, özel hâli sebebiyle haccından önce umresini tamamlayamamıştı. Hac bittikten "
          "sonra Hz. Peygamber'den ayrıca bir umre yapmak için izin istedi. Hz. Peygamber, kardeşi Abdurrahman b. "
          "Ebû Bekir'e onu Ten'îm'e götürmesini ve orada ihrama girmesini söyledi. Bu olay Buhârî ve Müslim'in "
          "Sahîh'lerinde rivayet edilir ve Mekke'de bulunanların umre için Harem dışına çıkması gerektiğinin temel "
          "delilidir.\n\n"
          "Mekke tarihçisi Ezrakī, tâbiîn âlimi Atâ b. Ebû Rebâh'ın Hz. Âişe'nin ihrama girdiği yeri tarif ettiğini ve "
          "buraya Muhammed b. Ali eş-Şâfiî tarafından bir mescit yaptırıldığını İbn Cüreyc'ten nakleder. Mescit tarih "
          "boyunca 922 ve 1222 yıllarında yapılan onarımlar gibi pek çok onarım gördü.\n\n"
          "Mescit 1847'de Osmanlı Sultanı Abdülmecid, 1984'te Kral Fehd tarafından yeniden inşa edildi. Caminin "
          "kıble yönünün solunda Harem sınırını gösteren iki işaret taşı (alem) bulunur; bunlar defalarca tamir "
          "görmüş ve son imar sırasında yeniden yapılmıştır.",
      en: "During the Farewell Pilgrimage, Aisha had been unable to complete her Umrah before the Hajj because of "
          'her menses. After the Hajj she asked the Prophet for permission to perform a separate Umrah. The Prophet '
          "told her brother Abd al-Rahman ibn Abi Bakr to take her to al-Tan'im and have her enter ihram there. "
          'This is narrated in the Sahih collections of al-Bukhari and Muslim, and it is the basic evidence that '
          'those in Makkah must go outside the Haram to enter ihram for Umrah.\n\n'
          "The Makkan historian al-Azraqi relates from Ibn Jurayj that the Successor Ata ibn Abi Rabah described "
          "the place where Aisha entered ihram, and that a mosque was built there by Muhammad ibn Ali al-Shafi'i. "
          'Over the centuries the mosque was repaired many times, including in 922 and 1222.\n\n'
          'The mosque was rebuilt in 1847 by the Ottoman Sultan Abdulmejid and in 1984 by King Fahd. To the left of '
          'its qibla side stand two markers showing the boundary of the Haram; they have been repaired many times '
          'and were rebuilt during the latest renovation.',
      ar: 'في حجة الوداع لم تتمكن أم المؤمنين عائشة رضي الله عنها من إتمام عمرتها قبل الحج لعذر الحيض، فلما انقضى '
          'الحج استأذنت النبي صلى الله عليه وسلم في عمرة مستقلة، فأمر أخاها عبد الرحمن بن أبي بكر أن يُخرجها إلى التنعيم '
          'فتُحرم منه. وقد روى ذلك البخاري ومسلم في صحيحيهما، وهو الأصل في أن من كان بمكة يخرج إلى الحل ليحرم بالعمرة.\n\n'
          'وروى مؤرخ مكة الأزرقي عن ابن جريج أن التابعي عطاء بن أبي رباح وصف الموضع الذي أحرمت منه عائشة، وأنه الموضع '
          'الذي بنى فيه محمد بن علي الشافعي مسجدًا. وقد رُمّم المسجد مرات كثيرة عبر التاريخ، منها ترميمان سنة 922م و1222م.\n\n'
          'وأعاد بناءه السلطان العثماني عبد المجيد سنة 1847م، ثم الملك فهد سنة 1984م. وعن يسار جهة القبلة علمان يحددان '
          'حدّ الحرم، جُدّدا مرارًا وأُعيد بناؤهما في العمارة الأخيرة.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Zilhicce 10 (632)', en: 'Dhu al-Hijjah 10 AH (632)', ar: 'ذو الحجة 10هـ (632م)'),
        metin: L10nText(
          tr: "Vedâ haccından sonra Hz. Âişe, Hz. Peygamber'in emriyle Ten'îm'den ihrama girip umre yaptı.",
          en: "After the Farewell Pilgrimage, Aisha entered ihram at al-Tan'im on the Prophet's instruction and performed Umrah.",
          ar: 'بعد حجة الوداع أحرمت عائشة رضي الله عنها من التنعيم بأمر النبي صلى الله عليه وسلم واعتمرت.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '922 ve 1222', en: '922 and 1222', ar: '922م و1222م'),
        metin: L10nText(
          tr: 'Kitâbelerle belgelenen onarımlar yapıldı.',
          en: 'Repairs recorded in inscriptions were carried out.',
          ar: 'أُجريت ترميمات موثقة بنقوش.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1847', en: '1847', ar: '1847م'),
        metin: L10nText(
          tr: 'Osmanlı Sultanı Abdülmecid mescidi yeniden inşa ettirdi.',
          en: 'The Ottoman Sultan Abdulmejid rebuilt the mosque.',
          ar: 'أعاد السلطان العثماني عبد المجيد بناء المسجد.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1901', en: '1901', ar: '1901م'),
        metin: L10nText(
          tr: "İbrâhim Rifat Paşa sınır taşının Mescid-i Haram'a uzaklığını 6148 m ölçtü.",
          en: 'Ibrahim Rifat Pasha measured the boundary marker as 6,148 m from al-Masjid al-Haram.',
          ar: 'قاس إبراهيم رفعت باشا المسافة بين علم الحد والمسجد الحرام فكانت 6148 مترًا.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1984', en: '1984', ar: '1984م'),
        metin: L10nText(
          tr: 'Kral Fehd döneminde bugünkü büyük cami inşa edildi.',
          en: 'The present large mosque was built in the reign of King Fahd.',
          ar: 'بُني المسجد الكبير الحالي في عهد الملك فهد.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Harem bölgesinde bulunanların umre için Harem dışına çıkıp ihrama girmeleri gerektiğinde bütün fakihler "
          "görüş birliği içindedir. Hanefî mezhebine, Hanbelî mezhebinde bir görüşe ve bazı Şâfiî âlimlere göre bu "
          "amaçla ihrama girmek için en faziletli yer Ten'îm'dir; çünkü Hz. Peygamber, Hz. Âişe'ye ve kardeşi "
          "Abdurrahman'a burada ihrama girmeyi bizzat emretmiştir. Şâfiî ve Mâlikî mezheplerine göre ise Ci'râne önce "
          "gelir, Ten'îm ikinci sıradadır.\n\n"
          "Ten'îm, Hz. Peygamber'in eşlerine gösterdiği ince anlayışın da bir hatırasıdır: Hz. Âişe'nin gönlü olsun "
          "diye hac sonrasında ona ayrı bir umre imkânı tanımıştır.",
      en: 'All jurists agree that those inside the Haram must go outside it to enter ihram for Umrah. According to '
          "the Hanafi school, one view in the Hanbali school and some Shafi'i scholars, the most virtuous place for "
          "this is al-Tan'im, because the Prophet himself instructed Aisha and her brother Abd al-Rahman to enter "
          "ihram here. According to the Shafi'i and Maliki schools, al-Ji'ranah comes first and al-Tan'im second.\n\n"
          "Al-Tan'im is also a reminder of the Prophet's gentle understanding towards his wives: to please Aisha, he "
          'gave her the chance to perform a separate Umrah after the Hajj.',
      ar: 'اتفق الفقهاء على أن من كان داخل الحرم وأراد العمرة يخرج إلى الحل فيحرم منه. والتنعيم أفضل المواضع لذلك عند '
          'الحنفية وفي رواية عند الحنابلة وعند بعض الشافعية، لأن النبي صلى الله عليه وسلم أمر عائشة وأخاها عبد الرحمن '
          'بالإحرام منه. أما عند الشافعية والمالكية فالجعرانة مقدَّمة، ثم التنعيم.\n\n'
          'والتنعيم كذلك ذكرى للطف النبي صلى الله عليه وسلم مع أزواجه؛ إذ أذن لعائشة رضي الله عنها بعمرة مستقلة بعد '
          'الحج تطييبًا لخاطرها.',
    ),
    alintilar: [
      GeziAlinti(
        arapca: 'وَأَتِمُّوا۟ ٱلْحَجَّ وَٱلْعُمْرَةَ لِلَّهِ',
        meal: L10nText(
          tr: 'Haccı ve umreyi Allah için tamamlayın.',
          en: 'Complete the Hajj and the Umrah for the sake of God.',
          ar: 'وَأَتِمُّوا الْحَجَّ وَالْعُمْرَةَ لِلَّهِ.',
        ),
        kaynak: L10nText(
          tr: 'Bakara 2/196 (ayetin bir bölümü)',
          en: 'Al-Baqarah 2:196 (part of the verse)',
          ar: 'البقرة 2/196 (جزء من الآية)',
        ),
      ),
    ],
    adab: [
      L10nText(
        tr: "Ten'îm'e otelden ihram örtülerini giyerek gelebilirsiniz; niyet ve telbiye mescitte, iki rekât namazdan sonra yapılır.",
        en: "You may come to al-Tan'im already wearing your ihram garments; the intention and Talbiyah are made at the mosque after two rak‘ahs.",
        ar: 'يمكنك القدوم إلى التنعيم لابسًا ثياب الإحرام من الفندق، وتكون النية والتلبية في المسجد بعد ركعتين.',
      ),
      L10nText(
        tr: "Mescid-i Haram çevresinden Ten'îm'e otobüs ve taksiyle kolayca gidilir; yolculuk trafiğe göre 15-30 dakika sürer.",
        en: "Buses and taxis run easily from around al-Masjid al-Haram to al-Tan'im; the ride takes 15-30 minutes depending on traffic.",
        ar: 'يسهل الوصول إلى التنعيم من محيط المسجد الحرام بالحافلات وسيارات الأجرة، وتستغرق الرحلة 15-30 دقيقة حسب الزحام.',
      ),
      L10nText(
        tr: 'Kadın ve erkek abdest ve gusül bölümleri ayrıdır; kalabalık saatlerde sıra olabileceğini hesaba katın.',
        en: 'Ablution and washing areas for men and women are separate; expect queues at busy times.',
        ar: 'أماكن الوضوء والاغتسال منفصلة للرجال والنساء، وقد تكون هناك طوابير في أوقات الزحام.',
      ),
      L10nText(
        tr: "İhrama girdikten sonra ihram yasaklarına dikkat edin ve doğrudan Mescid-i Haram'a gidip umrenizi yapın.",
        en: 'Once in ihram, observe its prohibitions and go straight to al-Masjid al-Haram to perform your Umrah.',
        ar: 'بعد الإحرام اجتنب محظوراته، واتجه مباشرة إلى المسجد الحرام لأداء عمرتك.',
      ),
      L10nText(
        tr: "Tekrar umre yapmadan önce kafile rehberinize ve Diyanet'in güncel önerilerine danışın; kalabalık dönemlerde sağlığınızı ve başkalarının hakkını gözetin.",
        en: "Before a repeat Umrah, consult your group guide and the Diyanet's current advice; at crowded times consider your health and the rights of others.",
        ar: 'قبل تكرار العمرة استشر مرشد مجموعتك وتوجيهات رئاسة الشؤون الدينية الحالية، وراعِ صحتك وحقوق الآخرين في أوقات الزحام.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: 'Suudi düzenlemelerine göre umre için Nusuk uygulamasından umre izni alınması gerekir. Mekke\'deyken ikinci '
          'bir umre yapmak isteyenlerden de izin istenebilir; Ramazan gibi yoğun dönemlerde tekrar umreye izin '
          'verilmeyebilir.',
      en: 'Under Saudi regulations an Umrah permit must be obtained through the Nusuk app. A permit may also be '
          'required for a second Umrah while in Makkah; at busy times such as Ramadan, repeat Umrahs may not be '
          'permitted.',
      ar: 'بحسب الأنظمة السعودية يلزم استخراج تصريح العمرة عبر تطبيق نسك، وقد يُطلب التصريح أيضًا لمن أراد عمرة ثانية '
          'وهو في مكة، وقد لا يُسمح بتكرار العمرة في أوقات الذروة كرمضان.',
    ),
    uygunSaat: L10nText(
      tr: 'Gece ya da sabah erken (umre için serin saatler)',
      en: 'Night or early morning (cooler hours for Umrah)',
      ar: 'ليلًا أو في الصباح الباكر (أوقات أبرد للعمرة)',
    ),
    ziyaretSuresi: L10nText(tr: '30-45 dakika', en: '30-45 minutes', ar: '30-45 دقيقة'),
    anlatim: L10nText(
      tr: "Mekke'den Medine yoluna doğru birkaç kilometre gittiğimizde, Harem sınırının bittiği yere geliyoruz. "
          "Burası Ten'îm. Karşımızdaki büyük cami, Hazreti Âişe Mescidi ya da halk arasındaki adıyla umre mescidi.\n\n"
          "Hicretin onuncu yılı, Vedâ haccı. Hazreti Âişe, Peygamber Efendimizle birlikte umre niyetiyle yola "
          "çıkmıştı. Ancak yolda özel hâli başladığı için umresini hacdan önce yapamadı ve haccını tamamladı. Hac "
          "bittiğinde içi buruktu. Herkes ayrı bir umreyle dönerken kendisinin dönmeyeceğini söyledi.\n\n"
          "Peygamber Efendimiz onun gönlünü kırmadı. Kardeşi Abdurrahman bin Ebû Bekir'e, Âişe'yi Ten'îm'e "
          "götürmesini ve orada ihrama girmesini söyledi. Hazreti Âişe burada ihrama girdi, Mekke'ye dönüp umresini "
          "yaptı. Bu olay Buhârî ve Müslim'in Sahîh'lerinde anlatılır.\n\n"
          "Bu hatıra, önemli bir hükmün de temeli oldu. Mekke'de bulunan biri umre yapmak isterse, önce Harem "
          "sınırının dışına çıkmalı ve orada ihrama girmelidir. Ten'îm, Mekke'ye en yakın Harem dışı nokta olduğu için "
          "yüzyıllardır bu amaçla kullanılıyor. Hanefî âlimler, Peygamber Efendimiz burayı bizzat gösterdiği için "
          "Ten'îm'i en faziletli yer saymıştır.\n\n"
          "Burada ilk mescidin, tâbiîn döneminden sonra yapıldığı nakledilir. Osmanlı Sultanı Abdülmecid bin sekiz yüz "
          "kırk yedide mescidi yeniden yaptırdı. Bugünkü geniş cami ise bin dokuz yüz seksen dörtte inşa edildi. "
          "Caminin yanında Harem sınırını gösteren iki işaret taşı hâlâ durur.\n\n"
          "Bugün burada gece gündüz ihramlı insanlar görürsünüz. Abdest alır, iki rekât namaz kılar, niyet edip "
          "telbiyeye başlarlar. Lebbeyk Allahümme lebbeyk sesleri arasında, Peygamber Efendimizin Hazreti Âişe'ye "
          "gösterdiği şefkati hatırlamak, bu yerin en güzel hatırasıdır.",
      en: "A few kilometres from Makkah along the Madinah road we reach the point where the boundary of the Haram "
          "ends. This is al-Tan'im. The large mosque before us is the Mosque of Aisha, popularly called the Umrah "
          'mosque.\n\n'
          'It is the tenth year after the Hijrah, the Farewell Pilgrimage. Aisha had set out with the Prophet '
          'intending Umrah. But her menses began on the way, so she could not perform her Umrah before the Hajj, and '
          'she completed her Hajj. When the Hajj was over she felt sad. She said that everyone else would return '
          'with a separate Umrah, but she would not.\n\n'
          'The Prophet did not leave her disappointed. He told her brother, Abd al-Rahman ibn Abi Bakr, to take her '
          "to al-Tan'im and have her enter ihram there. Aisha entered ihram here, returned to Makkah and performed her "
          'Umrah. This is narrated in the Sahih collections of al-Bukhari and Muslim.\n\n'
          'This memory became the basis of an important ruling. If someone in Makkah wishes to perform Umrah, they '
          "must first go outside the boundary of the Haram and enter ihram there. Because al-Tan'im is the nearest "
          'point outside the Haram, it has been used for this purpose for centuries. Hanafi scholars regard it as the '
          'most virtuous place, because the Prophet himself pointed to it.\n\n'
          'It is reported that the first mosque here was built after the era of the Successors. The Ottoman Sultan '
          'Abdulmejid rebuilt it in eighteen forty-seven. The spacious mosque of today was built in nineteen '
          'eighty-four. Beside it, two markers showing the boundary of the Haram still stand.\n\n'
          'Today you will see people in ihram here day and night. They perform ablution, pray two rak‘ahs, make '
          'their intention and begin the Talbiyah. Amid the voices calling Labbayk Allahumma labbayk, remembering '
          'the kindness the Prophet showed to Aisha is the finest memory of this place.',
      ar: 'إذا سرنا بضعة كيلومترات من مكة على طريق المدينة بلغنا الموضع الذي ينتهي عنده حدّ الحرم، إنه التنعيم. وهذا '
          'المسجد الكبير أمامنا هو مسجد عائشة، ويسميه الناس مسجد العمرة.\n\n'
          'إنها السنة العاشرة من الهجرة، حجة الوداع. خرجت أم المؤمنين عائشة رضي الله عنها مع النبي صلى الله عليه وسلم '
          'ناويةً العمرة. لكنها حاضت في الطريق فلم تتمكن من أداء عمرتها قبل الحج، فأتمّت حجها. فلما انقضى الحج حزنت. '
          'وقالت: يرجع الناس بحج وعمرة وأرجع بحج.\n\n'
          'فلم يردّها النبي صلى الله عليه وسلم خائبة. بل أمر أخاها عبد الرحمن بن أبي بكر أن يخرج بها إلى التنعيم فتُحرم '
          'منه. فأحرمت من هنا، ثم رجعت إلى مكة فأدّت عمرتها. وقد روى ذلك البخاري ومسلم في صحيحيهما.\n\n'
          'وصارت هذه الذكرى أصلًا لحكم مهم. فمن كان بمكة وأراد العمرة فعليه أن يخرج أولًا إلى خارج حدود الحرم فيحرم منه. '
          'ولأن التنعيم أقرب نقطة خارج الحرم فقد استُعمل لهذا الغرض قرونًا. وعدّه علماء الحنفية أفضل المواضع لأن النبي '
          'صلى الله عليه وسلم أرشد إليه بنفسه.\n\n'
          'ويُنقل أن أول مسجد هنا بُني بعد عصر التابعين. وأعاد السلطان العثماني عبد المجيد بناءه سنة ألف وثمانمئة وسبع '
          'وأربعين. أما المسجد الواسع الحالي فبُني سنة ألف وتسعمئة وأربع وثمانين. وبجواره لا يزال علمان يحددان حدّ الحرم.\n\n'
          'وترى هنا اليوم المحرمين ليلًا ونهارًا. يتوضؤون ويصلون ركعتين، ثم ينوون ويبدؤون التلبية. وبين أصوات لبيك اللهم '
          'لبيك، يبقى تذكّر رحمة النبي صلى الله عليه وسلم بعائشة أجمل ذكرى لهذا المكان.',
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi: Ten'îm", 'https://islamansiklopedisi.org.tr/tenim'),
      GeziKaynak('Wikipedia: Masjid at-Taneem', 'https://en.wikipedia.org/wiki/Masjid_at-Taneem'),
      GeziKaynak('Quran.com: Bakara 2/196', 'https://quran.com/2/196'),
      GeziKaynak('OpenStreetMap: way 431611519', 'https://www.openstreetmap.org/way/431611519'),
    ],
  ),

  // ------------------------------------------------------------------ Müze
  GeziYeri(
    id: 'mekke_muzesi',
    bolge: GeziBolge.mekke,
    tur: GeziTur.muze,
    ad: L10nText(
      tr: 'Harameyn Mimari Sergisi (Müzesi)',
      en: 'Two Holy Mosques Architecture Exhibition',
      ar: 'معرض عمارة الحرمين الشريفين',
    ),
    arapcaAd: L10nText.same('معرض عمارة الحرمين الشريفين'),
    altBaslik: L10nText(
      tr: "Kâbe ve Mescid-i Nebevî'nin tarihî eserlerinin sergilendiği müze",
      en: "Museum displaying historic artefacts of the Kaaba and the Prophet's Mosque",
      ar: 'متحف يعرض القطع التاريخية للكعبة والمسجد النبوي',
    ),
    sehir: L10nText(tr: "Ümmü'l-Cûd, Mekke", en: 'Umm al-Joud, Makkah', ar: 'أم الجود، مكة المكرمة'),
    konum: LatLng(21.43381, 39.75430), // OSM way 444240922
    genel: L10nText(
      tr: "Harameyn Mimari Sergisi, Mekke'nin batısındaki Ümmü'l-Cûd semtinde, Kâbe örtüsünün (kisve) dokunduğu "
          "Kral Abdülaziz Kompleksi'nin yakınındadır. Mescid-i Haram ile Mescid-i Nebevî'nin yaklaşık on dört asırlık "
          "mimari gelişimini anlatan eserleri bir araya getirir. Mescid-i Haram ve Mescid-i Nebevî İşleri Genel "
          "Başkanlığı tarafından işletilir.\n\n"
          "Yaklaşık 1.200 metrekarelik binada karşılama, Mescid-i Haram, Kâbe, fotoğraf, yazma eserler, Mescid-i "
          "Nebevî ve Zemzem salonları bulunur. Kâbe'nin eski bir ahşap sütunu, eski bir altın oluğu, ahşap merdiveni "
          "ve kapısı; iki mescidin maketleri, yazma eserler ve nadir fotoğraflar sergilenir.",
      en: "The Two Holy Mosques Architecture Exhibition is in the Umm al-Joud district in western Makkah, near the "
          'King Abdulaziz Complex where the covering of the Kaaba (kiswah) is woven. It brings together items that '
          "tell the story of about fourteen centuries of architectural development of al-Masjid al-Haram and the "
          "Prophet's Mosque. It is run by the General Presidency for the Affairs of the Grand Mosque and the "
          "Prophet's Mosque.\n\n"
          'The building of about 1,200 square metres has halls for reception, al-Masjid al-Haram, the Kaaba, '
          "photography, manuscripts, the Prophet's Mosque and Zamzam. On display are an old wooden pillar of the "
          'Kaaba, an old rain spout, a wooden staircase and a door of the Kaaba, models of the two mosques, '
          'manuscripts and rare photographs.',
      ar: 'يقع معرض عمارة الحرمين الشريفين في حي أم الجود غرب مكة، قرب مجمع الملك عبد العزيز لكسوة الكعبة المشرفة. '
          'ويجمع قطعًا تروي تطور عمارة المسجد الحرام والمسجد النبوي عبر نحو أربعة عشر قرنًا، وتشرف عليه الهيئة العامة '
          'للعناية بشؤون المسجد الحرام والمسجد النبوي.\n\n'
          'ويضم المبنى الذي تبلغ مساحته نحو 1200 متر مربع قاعات للاستقبال والمسجد الحرام والكعبة والتصوير والمخطوطات '
          'والمسجد النبوي وزمزم. ومن معروضاته عمود خشبي قديم من الكعبة، وميزاب قديم، وسلّم خشبي، وباب للكعبة، ومجسّمات '
          'للمسجدين، ومخطوطات وصور نادرة.',
    ),
    tarihce: L10nText(
      tr: "Sergi, 1 Şubat 2000'de Kral Fehd adına Prens Abdülmecid b. Abdülaziz tarafından açıldı. Amacı, iki "
          "kutsal mescidin mimari tarihini ziyaretçilere bir arada göstermekti. Binanın tasarımı Mescid-i Haram'ın "
          "mimari üslubunu yansıtacak şekilde yapılmıştır.\n\n"
          "Sergideki Kâbe eserleri arasında hicrî 65 yılına, Abdullah b. Zübeyr'in Kâbe'yi yeniden inşa ettiği "
          "döneme tarihlenen ahşap bir sütun; hicrî 1021'e tarihlenen ve Osmanlı sultanının adını taşıyan bir oluk "
          "(Mizâb-ı Rahmet); hicrî 1240'a tarihlenen ahşap bir merdiven ve hicrî 1363'e tarihlenen bir Kâbe kapısı "
          "bulunur. Zemzem salonunda kuyunun eski donanımına ait parçalar yer alır.\n\n"
          "Sergi, kapsamlı bir yenilemeden sonra Haziran 2025'te deneme işletmesine geçti. Yenilemede teknik altyapı, "
          "eserlerin sunum biçimi ve aydınlatma baştan düzenlendi.",
      en: 'The exhibition was opened on 1 February 2000 by Prince Abdul Majeed ibn Abdulaziz on behalf of King '
          'Fahd. Its purpose was to show visitors the architectural history of the two holy mosques in one place. '
          'The building was designed to reflect the architectural style of al-Masjid al-Haram.\n\n'
          "Among the Kaaba items are a wooden pillar dated to 65 AH, the time when Abdullah ibn al-Zubayr rebuilt "
          'the Kaaba; a rain spout (Mizab al-Rahmah) dated 1021 AH bearing the name of the Ottoman sultan; a wooden '
          'staircase dated 1240 AH; and a Kaaba door dated 1363 AH. The Zamzam hall holds pieces of the old '
          'equipment of the well.\n\n'
          'After a comprehensive renovation, the exhibition entered a trial operation phase in June 2025. The '
          'renovation overhauled its technical infrastructure, the way the artefacts are presented and its '
          'lighting.',
      ar: 'افتُتح المعرض في 1 فبراير 2000م، افتتحه الأمير عبد المجيد بن عبد العزيز نيابة عن الملك فهد، بهدف أن يعرض '
          'للزوار تاريخ عمارة الحرمين الشريفين في مكان واحد. وصُمّم المبنى ليعكس الطراز المعماري للمسجد الحرام.\n\n'
          'ومن قطع الكعبة المعروضة عمود خشبي يعود إلى سنة 65هـ في عهد إعادة عبد الله بن الزبير بناء الكعبة، وميزاب '
          '(ميزاب الرحمة) يعود إلى سنة 1021هـ ويحمل اسم السلطان العثماني، وسلّم خشبي يعود إلى سنة 1240هـ، وباب للكعبة '
          'يعود إلى سنة 1363هـ. وفي قاعة زمزم قطع من التجهيزات القديمة للبئر.\n\n'
          'وبعد تطوير شامل دخل المعرض مرحلة التشغيل التجريبي في يونيو 2025م، وشمل التطوير البنية التقنية وطرق عرض '
          'القطع والإضاءة.',
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: 'Hicrî 65 (684-685)', en: '65 AH (684-685)', ar: '65هـ (684-685م)'),
        metin: L10nText(
          tr: "Sergilenen ahşap Kâbe sütununun tarihlendiği dönem: Abdullah b. Zübeyr'in Kâbe'yi yeniden inşası.",
          en: 'The period of the displayed wooden Kaaba pillar: Abdullah ibn al-Zubayr rebuilding the Kaaba.',
          ar: 'العهد الذي يعود إليه العمود الخشبي المعروض: إعادة عبد الله بن الزبير بناء الكعبة.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Hicrî 1021 (1612)', en: '1021 AH (1612)', ar: '1021هـ (1612م)'),
        metin: L10nText(
          tr: 'Sergilenen Mizâb-ı Rahmet (Kâbe oluğu) yapıldı.',
          en: 'The displayed Mizab al-Rahmah (Kaaba spout) was made.',
          ar: 'صُنع ميزاب الرحمة المعروض.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: '1 Şubat 2000', en: '1 February 2000', ar: '1 فبراير 2000م'),
        metin: L10nText(
          tr: 'Sergi Kral Fehd adına açıldı.',
          en: 'The exhibition was opened on behalf of King Fahd.',
          ar: 'افتُتح المعرض نيابة عن الملك فهد.',
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: 'Haziran 2025', en: 'June 2025', ar: 'يونيو 2025م'),
        metin: L10nText(
          tr: 'Yenilenen sergi deneme işletmesine başladı; ziyaretler randevuyla yapılıyor.',
          en: 'The renovated exhibition began trial operation; visits are by appointment.',
          ar: 'بدأ المعرض بعد تطويره التشغيل التجريبي، والزيارة بموعد مسبق.',
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Burası bir ibadet yeri değil, bir müzedir; ziyaretine özel bir fazilet bildirilmemiştir. Ancak "
          "Kâbe'nin ve Mescid-i Nebevî'nin asırlar içinde nasıl korunup genişletildiğini görmek, bu mekânlara "
          "gösterilen hürmeti ve emeği anlamaya yardım eder.\n\n"
          "Kâbe'nin eski kapısını, oluğunu ve sütununu yakından görmek, tavaf ederken uzaktan baktığımız Beytullah'ın "
          "tarihine dair bilgimizi derinleştirir.",
      en: 'This is a museum, not a place of worship, and no special virtue is reported for visiting it. Yet seeing '
          "how the Kaaba and the Prophet's Mosque were preserved and enlarged over the centuries helps one "
          'understand the reverence and effort shown to these places.\n\n'
          'Seeing an old door, spout and pillar of the Kaaba up close deepens our knowledge of the history of the '
          'House of God that we look at from a distance during tawaf.',
      ar: 'هذا متحف وليس مكان عبادة، ولم يرد في زيارته فضل خاص. لكن رؤية كيف حُفظت الكعبة والمسجد النبوي ووُسّعا عبر '
          'القرون تعين على فهم ما بُذل لهذه الأماكن من تعظيم وجهد.\n\n'
          'ورؤية باب قديم للكعبة وميزابها وعمودها عن قرب تعمّق معرفتنا بتاريخ بيت الله الذي ننظر إليه من بعيد في الطواف.',
    ),
    adab: [
      L10nText(
        tr: 'Ziyaret için visits.alharamain.gov.sa adresinden önceden randevu alın.',
        en: 'Book an appointment in advance at visits.alharamain.gov.sa.',
        ar: 'احجز موعدًا مسبقًا عبر visits.alharamain.gov.sa.',
      ),
      L10nText(
        tr: "Sergi Mescid-i Haram'dan yaklaşık 8-9 km uzaktadır; taksi ya da kafile aracıyla gidilir.",
        en: 'The exhibition is about 8-9 km from al-Masjid al-Haram; go by taxi or group vehicle.',
        ar: 'يبعد المعرض عن المسجد الحرام نحو 8-9 كم، فيُذهب إليه بسيارة أجرة أو بحافلة المجموعة.',
      ),
      L10nText(
        tr: 'Fotoğraf çekmeden önce görevlilere danışın; eserlere dokunmayın.',
        en: 'Ask the staff before taking photographs; do not touch the exhibits.',
        ar: 'استأذن الموظفين قبل التصوير، ولا تلمس المعروضات.',
      ),
      L10nText(
        tr: 'Kisve fabrikası yakındadır; ziyaretleri birlikte planlamak için kafile rehberinize danışın.',
        en: 'The kiswah factory is nearby; ask your group guide about combining the visits.',
        ar: 'مصنع الكسوة قريب، فاستشر مرشد مجموعتك في الجمع بين الزيارتين.',
      ),
    ],
    ziyaretNotu: L10nText(
      tr: 'Yenilenen sergi Haziran 2025\'ten beri deneme işletmesindedir ve ziyaretler Harameyn İdaresi\'nin '
          'randevu portalı (visits.alharamain.gov.sa) üzerinden yapılır. Ziyaret saatleri dönemlere göre değişir.',
      en: 'The renovated exhibition has been in trial operation since June 2025, and visits are booked through the '
          'appointment portal of the Two Holy Mosques authority (visits.alharamain.gov.sa). Opening hours vary by '
          'season.',
      ar: 'المعرض بعد تطويره في مرحلة التشغيل التجريبي منذ يونيو 2025م، وتُحجز الزيارات عبر بوابة المواعيد التابعة '
          'للهيئة العامة للعناية بشؤون المسجد الحرام والمسجد النبوي (visits.alharamain.gov.sa)، وتختلف أوقات الزيارة '
          'باختلاف المواسم.',
    ),
    ziyaretSuresi: L10nText(tr: '45-60 dakika', en: '45-60 minutes', ar: '45-60 دقيقة'),
    anlatim: L10nText(
      tr: "Mekke'nin batısında, Ümmü'l-Cûd semtindeyiz. Kâbe örtüsünün dokunduğu tesislerin hemen yakınındaki bu "
          "zarif bina, Harameyn Mimari Sergisi. Burada iki kutsal mescidin, Mescid-i Haram ile Mescid-i Nebevî'nin, "
          "yaklaşık on dört asırlık hikâyesi anlatılıyor.\n\n"
          "Sergi, iki bin yılının şubat ayında açıldı. Binanın mimarisi bile Mescid-i Haram'ın üslubunu hatırlatacak "
          "şekilde tasarlandı. İçeride Mescid-i Haram, Kâbe, Mescid-i Nebevî ve Zemzem için ayrı salonlar, ayrıca "
          "yazma eserler ve eski fotoğraflar için bölümler bulunuyor.\n\n"
          "Kâbe salonunda durduğunuzda, tavafta uzaktan baktığınız Beytullah'ın parçalarını yakından görürsünüz. "
          "Burada hicretin altmış beşinci yılına, Abdullah bin Zübeyr'in Kâbe'yi yeniden inşa ettiği döneme "
          "tarihlenen ahşap bir sütun var. Yanında, Osmanlı döneminde yapılmış ve sultanın adını taşıyan eski bir "
          "Kâbe oluğu, yani Mizâb-ı Rahmet duruyor. Kâbe'ye çıkmak için kullanılan ahşap bir merdiven ve yirminci "
          "yüzyıldan kalma bir Kâbe kapısı da sergide yer alıyor.\n\n"
          "Maketler, iki mescidin nasıl adım adım genişlediğini gösteriyor. Peygamber Efendimizin hurma "
          "kütüklerinden yaptığı sade mescitten bugünün milyonlarca insanı ağırlayan yapısına uzanan yolculuğu "
          "burada görmek mümkün. Zemzem salonunda ise kuyunun eski donanımından parçalar sizi bekliyor.\n\n"
          "Sergi, kapsamlı bir yenilemeden sonra iki bin yirmi beşte yeniden ziyarete açıldı. Ziyaret için önceden "
          "randevu almak gerekiyor. Burası bir ibadet yeri değil, ama Mekke'ye yeniden döndüğünüzde Kâbe'ye "
          "bakışınızı değiştirecek bir hafıza yeri.",
      en: "We are in the Umm al-Joud district in the west of Makkah. This elegant building, right next to the "
          'facilities where the covering of the Kaaba is woven, is the Two Holy Mosques Architecture Exhibition. '
          "It tells the story of about fourteen centuries of the two holy mosques, al-Masjid al-Haram and the "
          "Prophet's Mosque.\n\n"
          'The exhibition opened in February of the year two thousand. Even the architecture of the building was '
          'designed to recall the style of al-Masjid al-Haram. Inside there are separate halls for al-Masjid '
          "al-Haram, the Kaaba, the Prophet's Mosque and Zamzam, as well as sections for manuscripts and old "
          'photographs.\n\n'
          'When you stand in the Kaaba hall, you see up close pieces of the House of God that you looked at from a '
          'distance during tawaf. Here is a wooden pillar dated to the sixty-fifth year after the Hijrah, the time '
          'when Abdullah ibn al-Zubayr rebuilt the Kaaba. Beside it stands an old rain spout of the Kaaba, the Mizab '
          'al-Rahmah, made in the Ottoman period and bearing the name of the sultan. A wooden staircase once used to '
          'climb up to the Kaaba and a Kaaba door from the twentieth century are also on display.\n\n'
          'Models show how the two mosques grew step by step. Here you can follow the journey from the simple mosque '
          'the Prophet built of palm trunks to the structure that welcomes millions today. In the Zamzam hall, '
          'pieces of the old equipment of the well await you.\n\n'
          'After a comprehensive renovation, the exhibition reopened to visitors in twenty twenty-five. An '
          'appointment must be made in advance. It is not a place of worship, but a place of memory that will change '
          'the way you look at the Kaaba when you return to Makkah.',
      ar: 'نحن في حي أم الجود غرب مكة. وهذا المبنى الأنيق القريب من المنشآت التي تُنسج فيها كسوة الكعبة هو معرض عمارة '
          'الحرمين الشريفين. وفيه تُروى قصة الحرمين، المسجد الحرام والمسجد النبوي، عبر نحو أربعة عشر قرنًا.\n\n'
          'افتُتح المعرض في شهر فبراير من سنة ألفين. وحتى عمارة المبنى صُمّمت لتذكّر بطراز المسجد الحرام. وفي داخله '
          'قاعات للمسجد الحرام والكعبة والمسجد النبوي وزمزم، وأقسام للمخطوطات والصور القديمة.\n\n'
          'إذا وقفت في قاعة الكعبة رأيت عن قرب قطعًا من بيت الله الذي كنت تنظر إليه من بعيد في الطواف. فهنا عمود خشبي '
          'يعود إلى السنة الخامسة والستين من الهجرة، حين أعاد عبد الله بن الزبير بناء الكعبة. وبجانبه ميزاب قديم للكعبة، '
          'ميزاب الرحمة، صُنع في العهد العثماني ويحمل اسم السلطان. ويُعرض كذلك سلّم خشبي كان يُصعد به إلى الكعبة، وباب '
          'للكعبة من القرن العشرين.\n\n'
          'وتُظهر المجسّمات كيف اتسع المسجدان خطوة بعد خطوة. فهنا يمكنك أن تتتبع الرحلة من المسجد البسيط الذي بناه النبي '
          'صلى الله عليه وسلم من جذوع النخل إلى البناء الذي يستقبل الملايين اليوم. وفي قاعة زمزم تنتظرك قطع من التجهيزات '
          'القديمة للبئر.\n\n'
          'وبعد تطوير شامل أُعيد فتح المعرض للزوار سنة ألفين وخمس وعشرين، ولا بد من حجز موعد مسبق. إنه ليس مكان عبادة، '
          'لكنه مكان ذاكرة سيغيّر نظرتك إلى الكعبة حين تعود إلى مكة.',
    ),
    kaynaklar: [
      GeziKaynak('Arab News: The development of the Two Holy Mosques Architecture Exhibition',
          'https://www.arabnews.com/node/1532146'),
      GeziKaynak('Arab News (2025): Two Holy Mosques Architecture Exhibition', 'https://www.arabnews.pk/node/2604424'),
      GeziKaynak('Wikipedia: The Two Holy Mosques Architecture Exhibition',
          'https://en.wikipedia.org/wiki/The_Two_Holy_Mosques_Architecture_Exhibition'),
      GeziKaynak('Randevu: visits.alharamain.gov.sa', 'https://visits.alharamain.gov.sa'),
      GeziKaynak('OpenStreetMap: way 444240922', 'https://www.openstreetmap.org/way/444240922'),
    ],
  ),
];
