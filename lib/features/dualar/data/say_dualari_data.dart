import 'dua_models.dart';

/// Sa'y duaları (yerel, çevrimdışı çalışır).
///
/// Metinler Kur'an âyetleri ve sahih hadislerde geçen bilinen dualardır.
/// Sa'yde her şavt için okunması zorunlu belirli bir dua yoktur.
/// Safa'dan Merve'ye her gidiş ve Merve'den Safa'ya her dönüş bir şavttır;
/// sa'y Safa'da başlar, 7. şavt Merve'de biter.
///
/// İngilizce mealler: âyetlerde Sahih International.
const List<DuaBolumu> sayDualari = [
  DuaBolumu(
    title: 'Sa\'yin 1. Şavtının Duası',
    titleEn: "Supplication for the 1st Round of Sa'i",
    titleAr: 'دعاء الشوط الأول من السعي',
    kisaBaslik: '1. Şavt',
    aciklama: 'Safa tepesine çıkılır, Kâbe\'ye dönülür, eller kaldırılarak tekbir getirilir ve dua edilir. '
        'Ardından Merve\'ye doğru yürünür.',
    aciklamaEn: 'Climb Mount Safa, face the Kaaba, raise your hands, say the takbir and supplicate. '
        'Then walk towards Marwah.',
    aciklamaAr: 'يُصعد على الصفا ويُستقبل الكعبة، وتُرفع اليدان بالتكبير والدعاء، ثم يُمشى نحو المروة.',
    arabicFiles: ['say-arabic-1.png', 'say-arabic-1-1.png'],
    turkishFiles: ['say-turkish-1.png', 'say-turkish-1-1.png'],
    dualar: [
      DuaMetni(
        baslik: 'Safa\'ya yaklaşırken',
        baslikEn: 'When approaching Safa',
        baslikAr: 'عند الاقتراب من الصفا',
        arapca: 'إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللَّهِ ۝ أَبْدَأُ بِمَا بَدَأَ اللَّهُ بِهِ',
        okunus: 'İnne\'s-Safâ ve\'l-Mervete min şeâirillâh. Ebdeü bimâ bedeallâhu bih.',
        okunusEn: "Innas-Safa wal-Marwata min sha'a'irillah. Abda'u bima bada'allahu bih.",
        anlam: 'Şüphesiz Safa ile Merve, Allah\'ın (dininin) nişanelerindendir. Allah\'ın başladığı yerden başlıyorum.',
        anlamEn: 'Indeed, aṣ-Ṣafā and al-Marwah are among the symbols of Allāh… I begin with what Allah began with.',
        kaynak: 'Bakara 2/158; Müslim, Hac 147',
        kaynakEn: 'Al-Baqarah 2:158; Muslim, Hajj 147',
        kaynakAr: 'البقرة ١٥٨؛ مسلم، الحج ١٤٧',
      ),
      DuaMetni(
        baslik: 'Safa üzerinde Kâbe\'ye dönerek',
        baslikEn: 'On Safa, facing the Kaaba',
        baslikAr: 'على الصفا مستقبلًا الكعبة',
        arapca: 'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ، أَنْجَزَ وَعْدَهُ، وَنَصَرَ عَبْدَهُ، وَهَزَمَ الْأَحْزَابَ وَحْدَهُ',
        okunus: 'Lâ ilâhe illallâhu vahdehû lâ şerîke leh, lehü\'l-mülkü ve lehü\'l-hamdü ve hüve alâ külli şey\'in kadîr. '
            'Lâ ilâhe illallâhu vahdeh, enceze va\'deh, ve nasara abdeh, ve hezeme\'l-ahzâbe vahdeh.',
        okunusEn: "La ilaha illallahu wahdahu la sharika lah, lahul-mulku wa lahul-hamdu wa huwa 'ala kulli shay'in qadir. "
            "La ilaha illallahu wahdah, anjaza wa'dah, wa nasara 'abdah, wa hazamal-ahzaba wahdah.",
        anlam: 'Allah\'tan başka ilah yoktur; O tektir, ortağı yoktur. Mülk O\'nundur, hamd O\'na aittir ve O her şeye gücü yetendir. '
            'Allah\'tan başka ilah yoktur, O tektir. Vaadini yerine getirdi, kuluna yardım etti ve düşman toplulukları tek başına yendi.',
        anlamEn: 'There is no god but Allah alone, without partner. His is the dominion and His is the praise, and He is '
            'over all things competent. There is no god but Allah alone. He fulfilled His promise, supported His servant '
            'and defeated the confederates alone.',
        kaynak: 'Müslim, Hac 147',
        kaynakEn: 'Muslim, Hajj 147',
        kaynakAr: 'مسلم، الحج ١٤٧',
      ),
      OrtakDualar.rabbigfir,
    ],
  ),
  DuaBolumu(
    title: 'Sa\'yin 2. Şavtının Duası',
    titleEn: "Supplication for the 2nd Round of Sa'i",
    titleAr: 'دعاء الشوط الثاني من السعي',
    kisaBaslik: '2. Şavt',
    arabicFiles: ['say-arabic-2.png', 'say-arabic-2-1.png'],
    turkishFiles: ['say-turkish-2.png', 'say-turkish-2-1.png'],
    dualar: [
      DuaMetni(
        arapca: 'رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ',
        okunus: 'Rabbenâ âtinâ fi\'d-dünyâ haseneten ve fi\'l-âhirati haseneten ve kınâ azâbe\'n-nâr.',
        okunusEn: "Rabbana atina fid-dunya hasanatan wa fil-akhirati hasanatan wa qina 'adhaban-nar.",
        anlam: 'Rabbimiz! Bize dünyada iyilik ver, âhirette de iyilik ver ve bizi cehennem azabından koru.',
        anlamEn: '…Our Lord, give us in this world [that which is] good and in the Hereafter [that which is] good '
            'and protect us from the punishment of the Fire.',
        kaynak: 'Bakara 2/201',
        kaynakEn: 'Al-Baqarah 2:201',
        kaynakAr: 'البقرة ٢٠١',
      ),
      OrtakDualar.rabbigfir,
    ],
  ),
  DuaBolumu(
    title: 'Sa\'yin 3. Şavtının Duası',
    titleEn: "Supplication for the 3rd Round of Sa'i",
    titleAr: 'دعاء الشوط الثالث من السعي',
    kisaBaslik: '3. Şavt',
    arabicFiles: ['say-arabic-3.png', 'say-arabic-3-1.png'],
    turkishFiles: ['say-turkish-3.png', 'say-turkish-3-1.png'],
    dualar: [
      DuaMetni(
        arapca: 'رَبَّنَا عَلَيْكَ تَوَكَّلْنَا وَإِلَيْكَ أَنَبْنَا وَإِلَيْكَ الْمَصِيرُ',
        okunus: 'Rabbenâ aleyke tevekkelnâ ve ileyke enebnâ ve ileyke\'l-masîr.',
        okunusEn: "Rabbana 'alayka tawakkalna wa ilayka anabna wa ilaykal-masir.",
        anlam: 'Rabbimiz! Yalnız sana tevekkül ettik, yalnız sana yöneldik. Dönüş de ancak sanadır.',
        anlamEn: '…Our Lord, upon You we have relied, and to You we have returned, and to You is the destination.',
        kaynak: 'Mümtehine 60/4',
        kaynakEn: 'Al-Mumtahanah 60:4',
        kaynakAr: 'الممتحنة ٤',
      ),
      OrtakDualar.rabbigfir,
    ],
  ),
  DuaBolumu(
    title: 'Sa\'yin 4. Şavtının Duası',
    titleEn: "Supplication for the 4th Round of Sa'i",
    titleAr: 'دعاء الشوط الرابع من السعي',
    kisaBaslik: '4. Şavt',
    arabicFiles: ['say-arabic-4.jpg', 'say-arabic-4-1.jpg'],
    turkishFiles: ['say-turkish-4.jpg', 'say-turkish-4-1.jpg'],
    dualar: [
      DuaMetni(
        arapca: 'رَبَّنَا أَتْمِمْ لَنَا نُورَنَا وَاغْفِرْ لَنَا إِنَّكَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
        okunus: 'Rabbenâ etmim lenâ nûrenâ vağfir lenâ, inneke alâ külli şey\'in kadîr.',
        okunusEn: "Rabbana atmim lana nurana waghfir lana, innaka 'ala kulli shay'in qadir.",
        anlam: 'Rabbimiz! Nurumuzu tamamla ve bizi bağışla. Şüphesiz sen her şeye gücü yetensin.',
        anlamEn: '…Our Lord, perfect for us our light and forgive us. Indeed, You are over all things competent.',
        kaynak: 'Tahrîm 66/8',
        kaynakEn: 'At-Tahrim 66:8',
        kaynakAr: 'التحريم ٨',
      ),
      OrtakDualar.rabbigfir,
    ],
  ),
  DuaBolumu(
    title: 'Sa\'yin 5. Şavtının Duası',
    titleEn: "Supplication for the 5th Round of Sa'i",
    titleAr: 'دعاء الشوط الخامس من السعي',
    kisaBaslik: '5. Şavt',
    arabicFiles: ['say-arabic-5.jpg', 'say-arabic-5-1.jpg'],
    turkishFiles: ['say-turkish-5.jpg', 'say-turkish-5-1.jpg'],
    dualar: [
      DuaMetni(
        arapca: 'رَبِّ اشْرَحْ لِي صَدْرِي ۝ وَيَسِّرْ لِي أَمْرِي',
        okunus: 'Rabbişrah lî sadrî, ve yessir lî emrî.',
        okunusEn: 'Rabbishrah li sadri, wa yassir li amri.',
        anlam: 'Rabbim! Göğsümü genişlet, işimi bana kolaylaştır.',
        anlamEn: '…My Lord, expand [i.e., relax] for me my breast [with assurance]. And ease for me my task.',
        kaynak: 'Tâhâ 20/25-26',
        kaynakEn: 'Taha 20:25-26',
        kaynakAr: 'طه ٢٥-٢٦',
      ),
      OrtakDualar.rabbigfir,
    ],
  ),
  DuaBolumu(
    title: 'Sa\'yin 6. Şavtının Duası',
    titleEn: "Supplication for the 6th Round of Sa'i",
    titleAr: 'دعاء الشوط السادس من السعي',
    kisaBaslik: '6. Şavt',
    arabicFiles: ['say-arabic-6.jpg', 'say-arabic-6-1.jpg'],
    turkishFiles: ['say-turkish-6.jpg', 'say-turkish-6-1.jpg'],
    dualar: [
      DuaMetni(
        arapca: 'رَبَّنَا هَبْ لَنَا مِنْ أَزْوَاجِنَا وَذُرِّيَّاتِنَا قُرَّةَ أَعْيُنٍ وَاجْعَلْنَا لِلْمُتَّقِينَ إِمَامًا',
        okunus: 'Rabbenâ heb lenâ min ezvâcinâ ve zürriyyâtinâ kurrate a\'yünin vec\'alnâ li\'l-müttakîne imâmâ.',
        okunusEn: "Rabbana hab lana min azwajina wa dhurriyyatina qurrata a'yunin waj'alna lil-muttaqina imama.",
        anlam: 'Rabbimiz! Bize eşlerimizden ve çocuklarımızdan göz aydınlığı olacak nesiller bağışla ve bizi takva sahiplerine önder kıl.',
        anlamEn: '…Our Lord, grant us from among our wives and offspring comfort to our eyes and make us a leader '
            '[i.e., example] for the righteous.',
        kaynak: 'Furkân 25/74',
        kaynakEn: 'Al-Furqan 25:74',
        kaynakAr: 'الفرقان ٧٤',
      ),
      OrtakDualar.rabbigfir,
    ],
  ),
  DuaBolumu(
    title: 'Sa\'yin 7. Şavtının Duası',
    titleEn: "Supplication for the 7th Round of Sa'i",
    titleAr: 'دعاء الشوط السابع من السعي',
    kisaBaslik: '7. Şavt',
    arabicFiles: ['say-arabic-7.jpg', 'say-arabic-7-1.jpg'],
    turkishFiles: ['say-turkish-7.jpg', 'say-turkish-7-1.jpg'],
    dualar: [
      DuaMetni(
        arapca: 'سُبْحَانَ رَبِّكَ رَبِّ الْعِزَّةِ عَمَّا يَصِفُونَ ۝ وَسَلَامٌ عَلَى الْمُرْسَلِينَ ۝ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
        okunus: 'Sübhâne rabbike rabbi\'l-izzeti ammâ yesifûn, ve selâmün ale\'l-mürselîn, ve\'l-hamdü lillâhi rabbi\'l-âlemîn.',
        okunusEn: "Subhana rabbika rabbil-'izzati 'amma yasifun, wa salamun 'alal-mursalin, wal-hamdu lillahi rabbil-'alamin.",
        anlam: 'İzzet sahibi Rabbin, onların nitelendirmelerinden uzaktır. Peygamberlere selam olsun. Hamd, âlemlerin Rabbi Allah\'a mahsustur.',
        anlamEn: 'Exalted is your Lord, the Lord of might, above what they describe. And peace upon the messengers. '
            'And praise to Allāh, Lord of the worlds.',
        kaynak: 'Sâffât 37/180-182',
        kaynakEn: 'As-Saffat 37:180-182',
        kaynakAr: 'الصافات ١٨٠-١٨٢',
      ),
      OrtakDualar.rabbigfir,
    ],
  ),
  DuaBolumu(
    title: 'Sa\'y Sonunda Merve\'de Dua',
    titleEn: "Supplication at Marwah at the End of Sa'i",
    titleAr: 'الدعاء على المروة في نهاية السعي',
    kisaBaslik: 'Bitiş',
    isZikirmatik: false,
    aciklama: 'Yedinci şavt Merve\'de tamamlanır. Kâbe\'ye dönülerek dua edilir. Umrede sa\'yden sonra '
        'erkekler saçlarını tıraş eder veya kısaltır, kadınlar saç uçlarından bir miktar keser ve ihramdan çıkılır.',
    aciklamaEn: "The seventh round ends at Marwah. Face the Kaaba and supplicate. In umrah, after sa'i men shave or "
        'shorten their hair, women cut a small amount from the ends of their hair, and ihram ends.',
    aciklamaAr: 'ينتهي الشوط السابع عند المروة، فيُستقبل الكعبة ويُدعى. وفي العمرة بعد السعي يحلق الرجال رؤوسهم أو '
        'يقصّرون، وتقصّ النساء من أطراف شعورهن قليلًا، ثم يُتحلّل من الإحرام.',
    files: ['say-bitis-1.jpg', 'say-bitis-2.jpg'],
    dualar: [
      DuaMetni(
        arapca: 'رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ ۝ وَتُبْ عَلَيْنَا إِنَّكَ أَنْتَ التَّوَّابُ الرَّحِيمُ',
        okunus: 'Rabbenâ tekabbel minnâ inneke ente\'s-semî\'ul-alîm. Ve tüb aleynâ inneke ente\'t-tevvâbü\'r-rahîm.',
        okunusEn: "Rabbana taqabbal minna innaka antas-sami'ul-'alim. Wa tub 'alayna innaka antat-tawwabur-rahim.",
        anlam: 'Rabbimiz! Bizden kabul buyur. Şüphesiz sen her şeyi işiten ve bilensin. Tövbemizi kabul et. Şüphesiz sen tövbeleri çok kabul eden ve çok merhametli olansın.',
        anlamEn: '…Our Lord, accept [this] from us. Indeed, You are the Hearing, the Knowing. …and accept our repentance. '
            'Indeed, You are the Accepting of Repentance, the Merciful.',
        kaynak: 'Bakara 2/127-128 (âyetlerden bölüm)',
        kaynakEn: 'Al-Baqarah 2:127-128 (excerpts)',
        kaynakAr: 'البقرة ١٢٧-١٢٨ (مقتطف)',
      ),
    ],
  ),
];

/// Sa'y görsellerinin tamamı (30 dosya), indirme sırası.
List<String> get sayDualariDosyalari => [for (final b in sayDualari) ...b.allFiles];
