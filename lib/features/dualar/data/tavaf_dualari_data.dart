import 'dua_models.dart';

/// Tavaf duaları (yerel, çevrimdışı çalışır).
///
/// Metinler Kur'an âyetleri ve sahih hadislerde geçen bilinen dualardır.
/// Tavafta her şavt için okunması zorunlu belirli bir dua yoktur; bu dualar
/// yaygın olarak okunanlardan seçilmiştir. Görsel dosya adları orijinal
/// uygulamadaki sunucu dosyalarıdır.
///
/// İngilizce mealler: âyetlerde Sahih International.
const List<DuaBolumu> tavafDualari = [
  DuaBolumu(
    title: 'Tavafa Başlarken Dua',
    titleEn: 'Supplication When Starting Tawaf',
    titleAr: 'الدعاء عند بدء الطواف',
    kisaBaslik: 'Başlangıç',
    isZikirmatik: false,
    aciklama: 'Hacerü\'l-Esved hizasına gelinir, tavafa niyet edilir. Eller kaldırılarak '
        'Hacerü\'l-Esved selamlanır (istilam) ve tavafa başlanır. Her şavtın başında istilam tekrarlanır.',
    aciklamaEn: 'Stand in line with the Black Stone and make the intention for tawaf. Raise your hands to '
        'salute the Black Stone (istilam) and begin. Repeat the istilam at the start of every round.',
    aciklamaAr: 'يُحاذى الحجر الأسود وتُنوى الطواف، ثم يُستلم الحجر الأسود بالإشارة إليه باليد ويُبدأ الطواف. '
        'ويُكرَّر الاستلام في بداية كل شوط.',
    files: ['tavaf-baslangic.jpg'],
    dualar: [
      DuaMetni(
        baslik: 'Tavafa niyet',
        baslikEn: 'Intention for tawaf',
        baslikAr: 'نية الطواف',
        arapca: 'اللَّهُمَّ إِنِّي أُرِيدُ طَوَافَ بَيْتِكَ الْحَرَامِ فَيَسِّرْهُ لِي وَتَقَبَّلْهُ مِنِّي',
        okunus: 'Allâhümme innî ürîdü tavâfe beytike\'l-harâm, fe yessirhü lî ve tekabbelhü minnî.',
        okunusEn: 'Allahumma inni uridu tawafa baytikal-haram, fa yassirhu li wa taqabbalhu minni.',
        anlam: 'Allah\'ım! Senin Beyt-i Harâm\'ını tavaf etmek istiyorum. Onu bana kolaylaştır ve benden kabul eyle.',
        anlamEn: 'O Allah, I intend to perform tawaf of Your Sacred House, so make it easy for me and accept it from me.',
      ),
      DuaMetni(
        baslik: 'İstilam (Hacerü\'l-Esved\'i selamlarken)',
        baslikEn: 'Istilam (when saluting the Black Stone)',
        baslikAr: 'عند استلام الحجر الأسود',
        arapca: 'بِسْمِ اللَّهِ، اللَّهُ أَكْبَرُ',
        okunus: 'Bismillâhi Allâhu ekber.',
        okunusEn: 'Bismillahi Allahu akbar.',
        anlam: 'Allah\'ın adıyla, Allah en büyüktür. (Sadece "Allâhu ekber" demek de yeterlidir; '
            'bazı rivayetlerde "ve lillâhi\'l-hamd" eklenir.)',
        anlamEn: 'In the name of Allah, Allah is the Greatest. (Saying only "Allahu akbar" is also sufficient; '
            'some narrations add "wa lillahil-hamd".)',
        kaynak: 'Beyhakî',
        kaynakEn: 'Al-Bayhaqi',
        kaynakAr: 'البيهقي',
      ),
      DuaMetni(
        arapca: 'اللَّهُمَّ إِيمَانًا بِكَ وَتَصْدِيقًا بِكِتَابِكَ وَوَفَاءً بِعَهْدِكَ وَاتِّبَاعًا لِسُنَّةِ نَبِيِّكَ مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ',
        okunus: 'Allâhümme îmânen bike ve tasdîkan bi-kitâbike ve vefâen bi-ahdike vettibâan li-sünneti nebiyyike Muhammedin sallallâhu aleyhi ve sellem.',
        okunusEn: "Allahumma imanan bika wa tasdiqan bi-kitabika wa wafa'an bi-'ahdika wattiba'an li-sunnati "
            "nabiyyika Muhammadin sallallahu 'alayhi wa sallam.",
        anlam: 'Allah\'ım! Sana iman ederek, kitabını tasdik ederek, ahdine vefa göstererek ve Peygamberin Muhammed\'in (s.a.v.) sünnetine uyarak (tavafa başlıyorum).',
        anlamEn: 'O Allah, (I begin this tawaf) out of faith in You, affirming Your Book, fulfilling Your covenant '
            'and following the Sunnah of Your Prophet Muhammad (peace be upon him).',
        kaynak: 'Taberânî',
        kaynakEn: 'Al-Tabarani',
        kaynakAr: 'الطبراني',
      ),
    ],
  ),
  DuaBolumu(
    title: 'Tavafın 1. Şavtının Duası',
    titleEn: 'Supplication for the 1st Round of Tawaf',
    titleAr: 'دعاء الشوط الأول من الطواف',
    kisaBaslik: '1. Şavt',
    arabicFiles: ['tavaf-arabic-1.png'],
    turkishFiles: ['tavaf-turkish-1.png'],
    dualar: [
      DuaMetni(
        arapca: 'سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ وَلَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ',
        okunus: 'Sübhânallâhi ve\'l-hamdü lillâhi ve lâ ilâhe illallâhu vallâhu ekber, ve lâ havle ve lâ kuvvete illâ billâhi\'l-aliyyi\'l-azîm.',
        okunusEn: "Subhanallahi wal-hamdu lillahi wa la ilaha illallahu wallahu akbar, wa la hawla wa la quwwata "
            "illa billahil-'aliyyil-'azim.",
        anlam: 'Allah her türlü noksanlıktan uzaktır. Hamd Allah\'a mahsustur. Allah\'tan başka ilah yoktur. Allah en büyüktür. Güç ve kuvvet ancak yüce ve büyük olan Allah\'a aittir.',
        anlamEn: 'Glory be to Allah, all praise is due to Allah, there is no god but Allah, and Allah is the Greatest. '
            'There is no power and no strength except with Allah, the Most High, the Most Great.',
      ),
      OrtakDualar.rabbena,
    ],
  ),
  DuaBolumu(
    title: 'Tavafın 2. Şavtının Duası',
    titleEn: 'Supplication for the 2nd Round of Tawaf',
    titleAr: 'دعاء الشوط الثاني من الطواف',
    kisaBaslik: '2. Şavt',
    arabicFiles: ['tavaf-arabic-2.png'],
    turkishFiles: ['tavaf-turkish-2.png'],
    dualar: [
      DuaMetni(
        arapca: 'رَبَّنَا آمَنَّا فَاغْفِرْ لَنَا وَارْحَمْنَا وَأَنْتَ خَيْرُ الرَّاحِمِينَ',
        okunus: 'Rabbenâ âmennâ fağfir lenâ verhamnâ ve ente hayru\'r-râhimîn.',
        okunusEn: 'Rabbana amanna faghfir lana warhamna wa anta khayrur-rahimin.',
        anlam: 'Rabbimiz! İman ettik. Bizi bağışla, bize merhamet et. Sen merhamet edenlerin en hayırlısısın.',
        anlamEn: '…Our Lord, we have believed, so forgive us and have mercy upon us, and You are the best of the merciful.',
        kaynak: 'Mü\'minûn 23/109',
        kaynakEn: "Al-Mu'minun 23:109",
        kaynakAr: 'المؤمنون ١٠٩',
      ),
      OrtakDualar.rabbena,
    ],
  ),
  DuaBolumu(
    title: 'Tavafın 3. Şavtının Duası',
    titleEn: 'Supplication for the 3rd Round of Tawaf',
    titleAr: 'دعاء الشوط الثالث من الطواف',
    kisaBaslik: '3. Şavt',
    arabicFiles: ['tavaf-arabic-3.png'],
    turkishFiles: ['tavaf-turkish-3.png'],
    dualar: [
      DuaMetni(
        arapca: 'رَبَّنَا ظَلَمْنَا أَنْفُسَنَا وَإِنْ لَمْ تَغْفِرْ لَنَا وَتَرْحَمْنَا لَنَكُونَنَّ مِنَ الْخَاسِرِينَ',
        okunus: 'Rabbenâ zalemnâ enfüsenâ ve in lem tağfir lenâ ve terhamnâ lenekûnenne mine\'l-hâsirîn.',
        okunusEn: 'Rabbana zalamna anfusana wa in lam taghfir lana wa tarhamna lanakunanna minal-khasirin.',
        anlam: 'Rabbimiz! Biz kendimize zulmettik. Eğer bizi bağışlamaz ve bize merhamet etmezsen, mutlaka ziyana uğrayanlardan oluruz.',
        anlamEn: '…Our Lord, we have wronged ourselves, and if You do not forgive us and have mercy upon us, '
            'we will surely be among the losers.',
        kaynak: 'A\'râf 7/23',
        kaynakEn: "Al-A'raf 7:23",
        kaynakAr: 'الأعراف ٢٣',
      ),
      OrtakDualar.rabbena,
    ],
  ),
  DuaBolumu(
    title: 'Tavafın 4. Şavtının Duası',
    titleEn: 'Supplication for the 4th Round of Tawaf',
    titleAr: 'دعاء الشوط الرابع من الطواف',
    kisaBaslik: '4. Şavt',
    arabicFiles: ['tavaf-arabic-4.png'],
    turkishFiles: ['tavaf-turkish-4.png'],
    dualar: [
      DuaMetni(
        arapca: 'رَبِّ اجْعَلْنِي مُقِيمَ الصَّلَاةِ وَمِنْ ذُرِّيَّتِي رَبَّنَا وَتَقَبَّلْ دُعَاءِ ۝ رَبَّنَا اغْفِرْ لِي وَلِوَالِدَيَّ وَلِلْمُؤْمِنِينَ يَوْمَ يَقُومُ الْحِسَابُ',
        okunus: 'Rabbic\'alnî mukîme\'s-salâti ve min zürriyyetî, Rabbenâ ve tekabbel duâ. Rabbenağfir lî ve li-vâlideyye ve li\'l-mü\'minîne yevme yekûmü\'l-hisâb.',
        okunusEn: "Rabbij'alni muqimas-salati wa min dhurriyyati, Rabbana wa taqabbal du'a. "
            "Rabbanaghfir li wa li-walidayya wa lil-mu'minina yawma yaqumul-hisab.",
        anlam: 'Rabbim! Beni ve neslimden gelecekleri namazı devamlı kılanlardan eyle. Rabbimiz! Duamı kabul et. Rabbimiz! Hesap gününde beni, anne babamı ve bütün müminleri bağışla.',
        anlamEn: 'My Lord, make me an establisher of prayer, and [many] from my descendants. Our Lord, and accept '
            'my supplication. Our Lord, forgive me and my parents and the believers the Day the account is established.',
        kaynak: 'İbrâhîm 14/40-41',
        kaynakEn: 'Ibrahim 14:40-41',
        kaynakAr: 'إبراهيم ٤٠-٤١',
      ),
      OrtakDualar.rabbena,
    ],
  ),
  DuaBolumu(
    title: 'Tavafın 5. Şavtının Duası',
    titleEn: 'Supplication for the 5th Round of Tawaf',
    titleAr: 'دعاء الشوط الخامس من الطواف',
    kisaBaslik: '5. Şavt',
    arabicFiles: ['tavaf-arabic-5.png'],
    turkishFiles: ['tavaf-turkish-5.png'],
    dualar: [
      DuaMetni(
        arapca: 'رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِنْ لَدُنْكَ رَحْمَةً إِنَّكَ أَنْتَ الْوَهَّابُ',
        okunus: 'Rabbenâ lâ tüziğ kulûbenâ ba\'de iz hedeytenâ ve heb lenâ min ledünke rahmeh, inneke ente\'l-vehhâb.',
        okunusEn: "Rabbana la tuzigh qulubana ba'da idh hadaytana wa hab lana min ladunka rahmah, innaka antal-wahhab.",
        anlam: 'Rabbimiz! Bizi doğru yola ilettikten sonra kalplerimizi kaydırma. Bize katından rahmet bağışla. Şüphesiz sen çok bağışlayansın.',
        anlamEn: '…Our Lord, let not our hearts deviate after You have guided us and grant us from Yourself mercy. '
            'Indeed, You are the Bestower.',
        kaynak: 'Âl-i İmrân 3/8',
        kaynakEn: "Ali 'Imran 3:8",
        kaynakAr: 'آل عمران ٨',
      ),
      OrtakDualar.rabbena,
    ],
  ),
  DuaBolumu(
    title: 'Tavafın 6. Şavtının Duası',
    titleEn: 'Supplication for the 6th Round of Tawaf',
    titleAr: 'دعاء الشوط السادس من الطواف',
    kisaBaslik: '6. Şavt',
    arabicFiles: ['tavaf-arabic-6.png'],
    turkishFiles: ['tavaf-turkish-6.png'],
    dualar: [
      DuaMetni(
        arapca: 'رَبَّنَا اغْفِرْ لَنَا ذُنُوبَنَا وَإِسْرَافَنَا فِي أَمْرِنَا وَثَبِّتْ أَقْدَامَنَا وَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ',
        okunus: 'Rabbenağfir lenâ zünûbenâ ve isrâfenâ fî emrinâ ve sebbit akdâmenâ vensurnâ ale\'l-kavmi\'l-kâfirîn.',
        okunusEn: "Rabbanaghfir lana dhunubana wa israfana fi amrina wa thabbit aqdamana wansurna 'alal-qawmil-kafirin.",
        anlam: 'Rabbimiz! Günahlarımızı ve işlerimizdeki aşırılıklarımızı bağışla. Ayaklarımızı sağlam bastır ve inkâr edenlere karşı bize yardım et.',
        anlamEn: '…Our Lord, forgive us our sins and the excess [committed] in our affairs and plant firmly our feet '
            'and give us victory over the disbelieving people.',
        kaynak: 'Âl-i İmrân 3/147',
        kaynakEn: "Ali 'Imran 3:147",
        kaynakAr: 'آل عمران ١٤٧',
      ),
      OrtakDualar.rabbena,
    ],
  ),
  DuaBolumu(
    title: 'Tavafın 7. Şavtının Duası',
    titleEn: 'Supplication for the 7th Round of Tawaf',
    titleAr: 'دعاء الشوط السابع من الطواف',
    kisaBaslik: '7. Şavt',
    arabicFiles: ['tavaf-arabic-7.png'],
    turkishFiles: ['tavaf-turkish-7.png'],
    dualar: [
      DuaMetni(
        arapca: 'اللَّهُمَّ إِنَّكَ عَفُوٌّ تُحِبُّ الْعَفْوَ فَاعْفُ عَنِّي',
        okunus: 'Allâhümme inneke afüvvün tühibbü\'l-afve fa\'fü annî.',
        okunusEn: "Allahumma innaka 'afuwwun tuhibbul-'afwa fa'fu 'anni.",
        anlam: 'Allah\'ım! Sen çok affedicisin, affetmeyi seversin; beni de affet.',
        anlamEn: 'O Allah, You are Most Forgiving and You love to forgive, so forgive me.',
        kaynak: 'Tirmizî, Daavât 84',
        kaynakEn: "At-Tirmidhi, Da'awat 84",
        kaynakAr: 'الترمذي، الدعوات ٨٤',
      ),
      OrtakDualar.rabbena,
    ],
  ),
  DuaBolumu(
    title: 'Tavaf Namazından Sonra Dua',
    titleEn: 'Supplication After the Tawaf Prayer',
    titleAr: 'الدعاء بعد صلاة الطواف',
    kisaBaslik: 'Bitiş',
    isZikirmatik: false,
    aciklama: 'Tavaf tamamlanınca mümkünse Makâm-ı İbrâhîm arkasında iki rekât tavaf namazı kılınır. '
        'Ardından dua edilir ve zemzem içilir. Mültezem\'de dua etmek de müstehaptır.',
    aciklamaEn: 'When the tawaf is complete, pray two rak\'ahs behind Maqam Ibrahim if possible. '
        'Then make supplication and drink Zamzam. Supplicating at the Multazam is also recommended.',
    aciklamaAr: 'بعد إتمام الطواف تُصلّى ركعتا الطواف خلف مقام إبراهيم إن تيسّر، ثم يُدعى ويُشرب من ماء زمزم. '
        'ويُستحب الدعاء عند الملتزم.',
    files: ['tavaf-bitis-1.jpg', 'tavaf-bitis-2.jpg'],
    dualar: [
      DuaMetni(
        baslik: 'Tavaf namazından sonra',
        baslikEn: 'After the tawaf prayer',
        baslikAr: 'بعد صلاة الطواف',
        arapca: 'رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ',
        okunus: 'Rabbenâ tekabbel minnâ inneke ente\'s-semî\'ul-alîm.',
        okunusEn: "Rabbana taqabbal minna innaka antas-sami'ul-'alim.",
        anlam: 'Rabbimiz! Bizden kabul buyur. Şüphesiz sen her şeyi işiten ve bilensin.',
        anlamEn: '…Our Lord, accept [this] from us. Indeed, You are the Hearing, the Knowing.',
        kaynak: 'Bakara 2/127',
        kaynakEn: 'Al-Baqarah 2:127',
        kaynakAr: 'البقرة ١٢٧',
      ),
      DuaMetni(
        baslik: 'Zemzem içerken',
        baslikEn: 'When drinking Zamzam',
        baslikAr: 'عند شرب ماء زمزم',
        arapca: 'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا وَاسِعًا وَشِفَاءً مِنْ كُلِّ دَاءٍ',
        okunus: 'Allâhümme innî es\'elüke ilmen nâfi\'an ve rızkan vâsi\'an ve şifâen min külli dâ\'.',
        okunusEn: "Allahumma inni as'aluka 'ilman nafi'an wa rizqan wasi'an wa shifa'an min kulli da'.",
        anlam: 'Allah\'ım! Senden faydalı ilim, geniş rızık ve her derde şifa dilerim.',
        anlamEn: 'O Allah, I ask You for beneficial knowledge, abundant provision and a cure for every illness.',
        kaynak: 'İbn Abbas (r.a.); Dârekutnî, Sünen II, 289; Hâkim, Müstedrek I, 646',
        kaynakEn: "Ibn 'Abbas; Ad-Daraqutni, Sunan II, 289; Al-Hakim, Al-Mustadrak I, 646",
        kaynakAr: 'ابن عباس رضي الله عنهما؛ الدارقطني، السنن ٢/٢٨٩؛ الحاكم، المستدرك ١/٦٤٦',
      ),
    ],
  ),
];

/// Tavaf görsellerinin tamamı (17 dosya), indirme sırası.
List<String> get tavafDualariDosyalari => [for (final b in tavafDualari) ...b.allFiles];
