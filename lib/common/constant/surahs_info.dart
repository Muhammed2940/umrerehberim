import '../../core/providers/locale_provider.dart';

/// Kur'an-ı Kerim sure listesi (Medine mushafı, 604 sayfa).
///
/// Her kayıt: `no`, `name` (Türkçe ad), `ayahCount`, `page` (surenin başladığı
/// sayfa), `arabic` (Arapça ad), `place` (iniş yeri: `Mekke` / `Medine`,
/// standart Mushaf sınıflandırması) ve `reading` (Türkçe okunuş).
/// İngilizce `nameEn` ve `meaningEn` alanları [quranIndex] içinde eklenir.
const List<Map<String, dynamic>> _quranIndexTr = [
  {'no': 1, 'name': 'Fatiha', 'ayahCount': 7, 'page': 1, 'arabic': 'الفاتحة', 'place': 'Mekke', 'reading': 'el-Fâtiha'},
  {
    'no': 2,
    'name': 'Bakara',
    'ayahCount': 286,
    'page': 2,
    'arabic': 'البقرة',
    'place': 'Medine',
    'reading': 'el-Bakara',
  },
  {
    'no': 3,
    'name': 'Al-i İmran',
    'ayahCount': 200,
    'page': 50,
    'arabic': 'آل عمران',
    'place': 'Medine',
    'reading': 'Âl-i İmrân',
  },
  {'no': 4, 'name': 'Nisa', 'ayahCount': 176, 'page': 77, 'arabic': 'النساء', 'place': 'Medine', 'reading': 'en-Nisâ'},
  {
    'no': 5,
    'name': 'Maide',
    'ayahCount': 120,
    'page': 106,
    'arabic': 'المائدة',
    'place': 'Medine',
    'reading': 'el-Mâide',
  },
  {
    'no': 6,
    'name': "En'am",
    'ayahCount': 165,
    'page': 128,
    'arabic': 'الأنعام',
    'place': 'Mekke',
    'reading': "el-En'âm",
  },
  {
    'no': 7,
    'name': "A'raf",
    'ayahCount': 206,
    'page': 151,
    'arabic': 'الأعراف',
    'place': 'Mekke',
    'reading': "el-A'râf",
  },
  {
    'no': 8,
    'name': 'Enfal',
    'ayahCount': 75,
    'page': 177,
    'arabic': 'الأنفال',
    'place': 'Medine',
    'reading': 'el-Enfâl',
  },
  {
    'no': 9,
    'name': 'Tevbe',
    'ayahCount': 129,
    'page': 187,
    'arabic': 'التوبة',
    'place': 'Medine',
    'reading': 'et-Tevbe',
  },
  {'no': 10, 'name': 'Yunus', 'ayahCount': 109, 'page': 208, 'arabic': 'يونس', 'place': 'Mekke', 'reading': 'Yûnus'},
  {'no': 11, 'name': 'Hud', 'ayahCount': 123, 'page': 221, 'arabic': 'هود', 'place': 'Mekke', 'reading': 'Hûd'},
  {'no': 12, 'name': 'Yusuf', 'ayahCount': 111, 'page': 235, 'arabic': 'يوسف', 'place': 'Mekke', 'reading': 'Yûsuf'},
  {'no': 13, 'name': "Ra'd", 'ayahCount': 43, 'page': 249, 'arabic': 'الرعد', 'place': 'Medine', 'reading': "er-Ra'd"},
  {
    'no': 14,
    'name': 'İbrahim',
    'ayahCount': 52,
    'page': 255,
    'arabic': 'إبراهيم',
    'place': 'Mekke',
    'reading': 'İbrâhîm',
  },
  {'no': 15, 'name': 'Hicr', 'ayahCount': 99, 'page': 262, 'arabic': 'الحجر', 'place': 'Mekke', 'reading': 'el-Hicr'},
  {'no': 16, 'name': 'Nahl', 'ayahCount': 128, 'page': 267, 'arabic': 'النحل', 'place': 'Mekke', 'reading': 'en-Nahl'},
  {
    'no': 17,
    'name': 'İsra',
    'ayahCount': 111,
    'page': 282,
    'arabic': 'الإسراء',
    'place': 'Mekke',
    'reading': 'el-İsrâ',
  },
  {'no': 18, 'name': 'Kehf', 'ayahCount': 110, 'page': 293, 'arabic': 'الكهف', 'place': 'Mekke', 'reading': 'el-Kehf'},
  {'no': 19, 'name': 'Meryem', 'ayahCount': 98, 'page': 305, 'arabic': 'مريم', 'place': 'Mekke', 'reading': 'Meryem'},
  {'no': 20, 'name': 'Taha', 'ayahCount': 135, 'page': 312, 'arabic': 'طه', 'place': 'Mekke', 'reading': 'Tâhâ'},
  {
    'no': 21,
    'name': 'Enbiya',
    'ayahCount': 112,
    'page': 322,
    'arabic': 'الأنبياء',
    'place': 'Mekke',
    'reading': 'el-Enbiyâ',
  },
  {'no': 22, 'name': 'Hac', 'ayahCount': 78, 'page': 332, 'arabic': 'الحج', 'place': 'Medine', 'reading': 'el-Hac'},
  {
    'no': 23,
    'name': "Mu'minun",
    'ayahCount': 118,
    'page': 342,
    'arabic': 'المؤمنون',
    'place': 'Mekke',
    'reading': "el-Mü'minûn",
  },
  {'no': 24, 'name': 'Nur', 'ayahCount': 64, 'page': 350, 'arabic': 'النور', 'place': 'Medine', 'reading': 'en-Nûr'},
  {
    'no': 25,
    'name': 'Furkan',
    'ayahCount': 77,
    'page': 359,
    'arabic': 'الفرقان',
    'place': 'Mekke',
    'reading': 'el-Furkân',
  },
  {
    'no': 26,
    'name': 'Şuara',
    'ayahCount': 227,
    'page': 367,
    'arabic': 'الشعراء',
    'place': 'Mekke',
    'reading': 'eş-Şuarâ',
  },
  {'no': 27, 'name': 'Neml', 'ayahCount': 93, 'page': 377, 'arabic': 'النمل', 'place': 'Mekke', 'reading': 'en-Neml'},
  {'no': 28, 'name': 'Kasas', 'ayahCount': 88, 'page': 385, 'arabic': 'القصص', 'place': 'Mekke', 'reading': 'el-Kasas'},
  {
    'no': 29,
    'name': 'Ankebut',
    'ayahCount': 69,
    'page': 396,
    'arabic': 'العنكبوت',
    'place': 'Mekke',
    'reading': 'el-Ankebût',
  },
  {'no': 30, 'name': 'Rum', 'ayahCount': 60, 'page': 404, 'arabic': 'الروم', 'place': 'Mekke', 'reading': 'er-Rûm'},
  {'no': 31, 'name': 'Lokman', 'ayahCount': 34, 'page': 411, 'arabic': 'لقمان', 'place': 'Mekke', 'reading': 'Lokmân'},
  {
    'no': 32,
    'name': 'Es-Secde',
    'ayahCount': 30,
    'page': 415,
    'arabic': 'السجدة',
    'place': 'Mekke',
    'reading': 'es-Secde',
  },
  {
    'no': 33,
    'name': 'Ahzab',
    'ayahCount': 73,
    'page': 418,
    'arabic': 'الأحزاب',
    'place': 'Medine',
    'reading': 'el-Ahzâb',
  },
  {'no': 34, 'name': "Sebe'", 'ayahCount': 54, 'page': 428, 'arabic': 'سبأ', 'place': 'Mekke', 'reading': "Sebe'"},
  {'no': 35, 'name': 'Fatır', 'ayahCount': 45, 'page': 434, 'arabic': 'فاطر', 'place': 'Mekke', 'reading': 'Fâtır'},
  {'no': 36, 'name': 'Yasin', 'ayahCount': 83, 'page': 440, 'arabic': 'يس', 'place': 'Mekke', 'reading': 'Yâsîn'},
  {
    'no': 37,
    'name': 'Es-Saffat',
    'ayahCount': 182,
    'page': 446,
    'arabic': 'الصافات',
    'place': 'Mekke',
    'reading': 'es-Sâffât',
  },
  {'no': 38, 'name': 'Sad', 'ayahCount': 88, 'page': 453, 'arabic': 'ص', 'place': 'Mekke', 'reading': 'Sâd'},
  {'no': 39, 'name': 'Zümer', 'ayahCount': 75, 'page': 458, 'arabic': 'الزمر', 'place': 'Mekke', 'reading': 'ez-Zümer'},
  {
    'no': 40,
    'name': "Mü'min",
    'ayahCount': 85,
    'page': 467,
    'arabic': 'غافر',
    'place': 'Mekke',
    'reading': "el-Mü'min (Gâfir)",
  },
  {
    'no': 41,
    'name': 'Fussilet',
    'ayahCount': 54,
    'page': 477,
    'arabic': 'فصلت',
    'place': 'Mekke',
    'reading': 'Fussılet',
  },
  {'no': 42, 'name': 'Şura', 'ayahCount': 53, 'page': 483, 'arabic': 'الشورى', 'place': 'Mekke', 'reading': 'eş-Şûrâ'},
  {
    'no': 43,
    'name': 'Zuhruf',
    'ayahCount': 89,
    'page': 489,
    'arabic': 'الزخرف',
    'place': 'Mekke',
    'reading': 'ez-Zuhruf',
  },
  {
    'no': 44,
    'name': 'Ed-Duhan',
    'ayahCount': 59,
    'page': 496,
    'arabic': 'الدخان',
    'place': 'Mekke',
    'reading': 'ed-Duhân',
  },
  {
    'no': 45,
    'name': 'Casiye',
    'ayahCount': 37,
    'page': 499,
    'arabic': 'الجاثية',
    'place': 'Mekke',
    'reading': 'el-Câsiye',
  },
  {
    'no': 46,
    'name': 'Ahkaf',
    'ayahCount': 35,
    'page': 502,
    'arabic': 'الأحقاف',
    'place': 'Mekke',
    'reading': 'el-Ahkâf',
  },
  {
    'no': 47,
    'name': 'Muhammed',
    'ayahCount': 38,
    'page': 507,
    'arabic': 'محمد',
    'place': 'Medine',
    'reading': 'Muhammed',
  },
  {'no': 48, 'name': 'Fetih', 'ayahCount': 29, 'page': 511, 'arabic': 'الفتح', 'place': 'Medine', 'reading': 'el-Feth'},
  {
    'no': 49,
    'name': 'Hucurat',
    'ayahCount': 18,
    'page': 515,
    'arabic': 'الحجرات',
    'place': 'Medine',
    'reading': 'el-Hucurât',
  },
  {'no': 50, 'name': 'Kaf', 'ayahCount': 45, 'page': 518, 'arabic': 'ق', 'place': 'Mekke', 'reading': 'Kâf'},
  {
    'no': 51,
    'name': 'Zariyat',
    'ayahCount': 60,
    'page': 520,
    'arabic': 'الذاريات',
    'place': 'Mekke',
    'reading': 'ez-Zâriyât',
  },
  {'no': 52, 'name': 'Tur', 'ayahCount': 49, 'page': 523, 'arabic': 'الطور', 'place': 'Mekke', 'reading': 'et-Tûr'},
  {'no': 53, 'name': 'Necm', 'ayahCount': 62, 'page': 526, 'arabic': 'النجم', 'place': 'Mekke', 'reading': 'en-Necm'},
  {'no': 54, 'name': 'Kamer', 'ayahCount': 55, 'page': 528, 'arabic': 'القمر', 'place': 'Mekke', 'reading': 'el-Kamer'},
  {
    'no': 55,
    'name': 'Rahman',
    'ayahCount': 78,
    'page': 531,
    'arabic': 'الرحمن',
    'place': 'Medine',
    'reading': 'er-Rahmân',
  },
  {
    'no': 56,
    'name': 'Vakıa',
    'ayahCount': 96,
    'page': 534,
    'arabic': 'الواقعة',
    'place': 'Mekke',
    'reading': 'el-Vâkıa',
  },
  {
    'no': 57,
    'name': 'Hadid',
    'ayahCount': 29,
    'page': 537,
    'arabic': 'الحديد',
    'place': 'Medine',
    'reading': 'el-Hadîd',
  },
  {
    'no': 58,
    'name': 'Mücadele',
    'ayahCount': 22,
    'page': 542,
    'arabic': 'المجادلة',
    'place': 'Medine',
    'reading': 'el-Mücâdele',
  },
  {'no': 59, 'name': 'Haşr', 'ayahCount': 24, 'page': 545, 'arabic': 'الحشر', 'place': 'Medine', 'reading': 'el-Haşr'},
  {
    'no': 60,
    'name': 'Mümtehine',
    'ayahCount': 13,
    'page': 549,
    'arabic': 'الممتحنة',
    'place': 'Medine',
    'reading': 'el-Mümtehine',
  },
  {'no': 61, 'name': 'Es-Saff', 'ayahCount': 14, 'page': 551, 'arabic': 'الصف', 'place': 'Medine', 'reading': 'es-Saf'},
  {'no': 62, 'name': 'Cuma', 'ayahCount': 11, 'page': 553, 'arabic': 'الجمعة', 'place': 'Medine', 'reading': 'el-Cuma'},
  {
    'no': 63,
    'name': 'Münafikun',
    'ayahCount': 11,
    'page': 554,
    'arabic': 'المنافقون',
    'place': 'Medine',
    'reading': 'el-Münâfikûn',
  },
  {
    'no': 64,
    'name': 'Tegabun',
    'ayahCount': 18,
    'page': 556,
    'arabic': 'التغابن',
    'place': 'Medine',
    'reading': 'et-Tegâbün',
  },
  {
    'no': 65,
    'name': 'Talak',
    'ayahCount': 12,
    'page': 558,
    'arabic': 'الطلاق',
    'place': 'Medine',
    'reading': 'et-Talâk',
  },
  {
    'no': 66,
    'name': 'Tahrim',
    'ayahCount': 12,
    'page': 560,
    'arabic': 'التحريم',
    'place': 'Medine',
    'reading': 'et-Tahrîm',
  },
  {'no': 67, 'name': 'Mülk', 'ayahCount': 30, 'page': 562, 'arabic': 'الملك', 'place': 'Mekke', 'reading': 'el-Mülk'},
  {'no': 68, 'name': 'Kalem', 'ayahCount': 52, 'page': 564, 'arabic': 'القلم', 'place': 'Mekke', 'reading': 'el-Kalem'},
  {
    'no': 69,
    'name': 'Hakka',
    'ayahCount': 52,
    'page': 566,
    'arabic': 'الحاقة',
    'place': 'Mekke',
    'reading': 'el-Hâkka',
  },
  {
    'no': 70,
    'name': 'Mearic',
    'ayahCount': 44,
    'page': 568,
    'arabic': 'المعارج',
    'place': 'Mekke',
    'reading': 'el-Meâric',
  },
  {'no': 71, 'name': 'Nuh', 'ayahCount': 28, 'page': 570, 'arabic': 'نوح', 'place': 'Mekke', 'reading': 'Nûh'},
  {'no': 72, 'name': 'Cinn', 'ayahCount': 28, 'page': 572, 'arabic': 'الجن', 'place': 'Mekke', 'reading': 'el-Cin'},
  {
    'no': 73,
    'name': 'Müzzemmil',
    'ayahCount': 20,
    'page': 574,
    'arabic': 'المزمل',
    'place': 'Mekke',
    'reading': 'el-Müzzemmil',
  },
  {
    'no': 74,
    'name': 'Müddessir',
    'ayahCount': 56,
    'page': 575,
    'arabic': 'المدثر',
    'place': 'Mekke',
    'reading': 'el-Müddessir',
  },
  {
    'no': 75,
    'name': 'Kıyamet',
    'ayahCount': 40,
    'page': 577,
    'arabic': 'القيامة',
    'place': 'Mekke',
    'reading': 'el-Kıyâme',
  },
  {
    'no': 76,
    'name': 'İnsan',
    'ayahCount': 31,
    'page': 578,
    'arabic': 'الإنسان',
    'place': 'Medine',
    'reading': 'el-İnsân',
  },
  {
    'no': 77,
    'name': 'Mürselat',
    'ayahCount': 50,
    'page': 580,
    'arabic': 'المرسلات',
    'place': 'Mekke',
    'reading': 'el-Mürselât',
  },
  {'no': 78, 'name': 'Nebe', 'ayahCount': 40, 'page': 582, 'arabic': 'النبأ', 'place': 'Mekke', 'reading': "en-Nebe'"},
  {
    'no': 79,
    'name': 'Naziat',
    'ayahCount': 46,
    'page': 583,
    'arabic': 'النازعات',
    'place': 'Mekke',
    'reading': 'en-Nâziât',
  },
  {'no': 80, 'name': 'Abese', 'ayahCount': 42, 'page': 585, 'arabic': 'عبس', 'place': 'Mekke', 'reading': 'Abese'},
  {
    'no': 81,
    'name': 'Tekvir',
    'ayahCount': 29,
    'page': 586,
    'arabic': 'التكوير',
    'place': 'Mekke',
    'reading': 'et-Tekvîr',
  },
  {
    'no': 82,
    'name': 'İnfitâr',
    'ayahCount': 19,
    'page': 587,
    'arabic': 'الانفطار',
    'place': 'Mekke',
    'reading': 'el-İnfitâr',
  },
  {
    'no': 83,
    'name': 'Mutaffifin',
    'ayahCount': 36,
    'page': 587,
    'arabic': 'المطففين',
    'place': 'Mekke',
    'reading': 'el-Mutaffifîn',
  },
  {
    'no': 84,
    'name': 'İnşikak',
    'ayahCount': 25,
    'page': 589,
    'arabic': 'الانشقاق',
    'place': 'Mekke',
    'reading': 'el-İnşikâk',
  },
  {
    'no': 85,
    'name': 'Buruc',
    'ayahCount': 22,
    'page': 590,
    'arabic': 'البروج',
    'place': 'Mekke',
    'reading': 'el-Bürûc',
  },
  {
    'no': 86,
    'name': 'Tarik',
    'ayahCount': 17,
    'page': 591,
    'arabic': 'الطارق',
    'place': 'Mekke',
    'reading': 'et-Târık',
  },
  {'no': 87, 'name': 'Ala', 'ayahCount': 19, 'page': 591, 'arabic': 'الأعلى', 'place': 'Mekke', 'reading': "el-A'lâ"},
  {
    'no': 88,
    'name': 'Gaşiye',
    'ayahCount': 26,
    'page': 592,
    'arabic': 'الغاشية',
    'place': 'Mekke',
    'reading': 'el-Gâşiye',
  },
  {'no': 89, 'name': 'Fecr', 'ayahCount': 30, 'page': 593, 'arabic': 'الفجر', 'place': 'Mekke', 'reading': 'el-Fecr'},
  {'no': 90, 'name': 'Beled', 'ayahCount': 20, 'page': 594, 'arabic': 'البلد', 'place': 'Mekke', 'reading': 'el-Beled'},
  {'no': 91, 'name': 'Şems', 'ayahCount': 15, 'page': 595, 'arabic': 'الشمس', 'place': 'Mekke', 'reading': 'eş-Şems'},
  {'no': 92, 'name': 'Leyl', 'ayahCount': 21, 'page': 595, 'arabic': 'الليل', 'place': 'Mekke', 'reading': 'el-Leyl'},
  {
    'no': 93,
    'name': 'Ed-Duha',
    'ayahCount': 11,
    'page': 596,
    'arabic': 'الضحى',
    'place': 'Mekke',
    'reading': 'ed-Duhâ',
  },
  {
    'no': 94,
    'name': 'İnşirah',
    'ayahCount': 8,
    'page': 596,
    'arabic': 'الشرح',
    'place': 'Mekke',
    'reading': 'el-İnşirâh',
  },
  {'no': 95, 'name': 'Tin', 'ayahCount': 8, 'page': 597, 'arabic': 'التين', 'place': 'Mekke', 'reading': 'et-Tîn'},
  {'no': 96, 'name': 'Alak', 'ayahCount': 19, 'page': 597, 'arabic': 'العلق', 'place': 'Mekke', 'reading': 'el-Alak'},
  {'no': 97, 'name': 'Kadr', 'ayahCount': 5, 'page': 598, 'arabic': 'القدر', 'place': 'Mekke', 'reading': 'el-Kadr'},
  {
    'no': 98,
    'name': 'Beyyine',
    'ayahCount': 8,
    'page': 598,
    'arabic': 'البينة',
    'place': 'Medine',
    'reading': 'el-Beyyine',
  },
  {
    'no': 99,
    'name': 'Zilzal',
    'ayahCount': 8,
    'page': 599,
    'arabic': 'الزلزلة',
    'place': 'Medine',
    'reading': 'ez-Zilzâl',
  },
  {
    'no': 100,
    'name': 'Adiyat',
    'ayahCount': 11,
    'page': 599,
    'arabic': 'العاديات',
    'place': 'Mekke',
    'reading': 'el-Âdiyât',
  },
  {
    'no': 101,
    'name': 'Karia',
    'ayahCount': 11,
    'page': 600,
    'arabic': 'القارعة',
    'place': 'Mekke',
    'reading': 'el-Kâria',
  },
  {
    'no': 102,
    'name': 'Tekasur',
    'ayahCount': 8,
    'page': 600,
    'arabic': 'التكاثر',
    'place': 'Mekke',
    'reading': 'et-Tekâsür',
  },
  {'no': 103, 'name': 'Asr', 'ayahCount': 3, 'page': 601, 'arabic': 'العصر', 'place': 'Mekke', 'reading': 'el-Asr'},
  {
    'no': 104,
    'name': 'Hümeze',
    'ayahCount': 9,
    'page': 601,
    'arabic': 'الهمزة',
    'place': 'Mekke',
    'reading': 'el-Hümeze',
  },
  {'no': 105, 'name': 'Fil', 'ayahCount': 5, 'page': 601, 'arabic': 'الفيل', 'place': 'Mekke', 'reading': 'el-Fîl'},
  {'no': 106, 'name': 'Kureyş', 'ayahCount': 4, 'page': 602, 'arabic': 'قريش', 'place': 'Mekke', 'reading': 'Kureyş'},
  {'no': 107, 'name': 'Maun', 'ayahCount': 7, 'page': 602, 'arabic': 'الماعون', 'place': 'Mekke', 'reading': 'el-Mâûn'},
  {
    'no': 108,
    'name': 'Kevser',
    'ayahCount': 3,
    'page': 602,
    'arabic': 'الكوثر',
    'place': 'Mekke',
    'reading': 'el-Kevser',
  },
  {
    'no': 109,
    'name': 'Kafirun',
    'ayahCount': 6,
    'page': 603,
    'arabic': 'الكافرون',
    'place': 'Mekke',
    'reading': 'el-Kâfirûn',
  },
  {'no': 110, 'name': 'Nasr', 'ayahCount': 3, 'page': 603, 'arabic': 'النصر', 'place': 'Medine', 'reading': 'en-Nasr'},
  {
    'no': 111,
    'name': 'Tebbet',
    'ayahCount': 5,
    'page': 603,
    'arabic': 'المسد',
    'place': 'Mekke',
    'reading': 'el-Leheb (Tebbet)',
  },
  {
    'no': 112,
    'name': 'İhlas',
    'ayahCount': 4,
    'page': 604,
    'arabic': 'الإخلاص',
    'place': 'Mekke',
    'reading': 'el-İhlâs',
  },
  {'no': 113, 'name': 'Felak', 'ayahCount': 5, 'page': 604, 'arabic': 'الفلق', 'place': 'Mekke', 'reading': 'el-Felak'},
  {'no': 114, 'name': 'Nas', 'ayahCount': 6, 'page': 604, 'arabic': 'الناس', 'place': 'Mekke', 'reading': 'en-Nâs'},
];

/// Surelerin İngilizce adları (quran.com transliterasyonu) ve anlamları.
/// [_quranIndexTr] ile aynı sırada.
const List<(String, String)> _surahNamesEn = [
  ('Al-Fatihah', 'The Opener'),
  ('Al-Baqarah', 'The Cow'),
  ("Ali 'Imran", 'Family of Imran'),
  ('An-Nisa', 'The Women'),
  ("Al-Ma'idah", 'The Table Spread'),
  ("Al-An'am", 'The Cattle'),
  ("Al-A'raf", 'The Heights'),
  ('Al-Anfal', 'The Spoils of War'),
  ('At-Tawbah', 'The Repentance'),
  ('Yunus', 'Jonah'),
  ('Hud', 'Hud'),
  ('Yusuf', 'Joseph'),
  ("Ar-Ra'd", 'The Thunder'),
  ('Ibrahim', 'Abraham'),
  ('Al-Hijr', 'The Rocky Tract'),
  ('An-Nahl', 'The Bee'),
  ('Al-Isra', 'The Night Journey'),
  ('Al-Kahf', 'The Cave'),
  ('Maryam', 'Mary'),
  ('Taha', 'Ta-Ha'),
  ('Al-Anbya', 'The Prophets'),
  ('Al-Hajj', 'The Pilgrimage'),
  ("Al-Mu'minun", 'The Believers'),
  ('An-Nur', 'The Light'),
  ('Al-Furqan', 'The Criterion'),
  ("Ash-Shu'ara", 'The Poets'),
  ('An-Naml', 'The Ant'),
  ('Al-Qasas', 'The Stories'),
  ("Al-'Ankabut", 'The Spider'),
  ('Ar-Rum', 'The Romans'),
  ('Luqman', 'Luqman'),
  ('As-Sajdah', 'The Prostration'),
  ('Al-Ahzab', 'The Combined Forces'),
  ('Saba', 'Sheba'),
  ('Fatir', 'Originator'),
  ('Ya-Sin', 'Ya Sin'),
  ('As-Saffat', 'Those who set the Ranks'),
  ('Sad', 'The Letter "Saad"'),
  ('Az-Zumar', 'The Troops'),
  ('Ghafir', 'The Forgiver'),
  ('Fussilat', 'Explained in Detail'),
  ('Ash-Shuraa', 'The Consultation'),
  ('Az-Zukhruf', 'The Ornaments of Gold'),
  ('Ad-Dukhan', 'The Smoke'),
  ('Al-Jathiyah', 'The Crouching'),
  ('Al-Ahqaf', 'The Wind-Curved Sandhills'),
  ('Muhammad', 'Muhammad'),
  ('Al-Fath', 'The Victory'),
  ('Al-Hujurat', 'The Rooms'),
  ('Qaf', 'The Letter "Qaf"'),
  ('Adh-Dhariyat', 'The Winnowing Winds'),
  ('At-Tur', 'The Mount'),
  ('An-Najm', 'The Star'),
  ('Al-Qamar', 'The Moon'),
  ('Ar-Rahman', 'The Beneficent'),
  ("Al-Waqi'ah", 'The Inevitable'),
  ('Al-Hadid', 'The Iron'),
  ('Al-Mujadila', 'The Pleading Woman'),
  ('Al-Hashr', 'The Exile'),
  ('Al-Mumtahanah', 'She that is to be examined'),
  ('As-Saf', 'The Ranks'),
  ("Al-Jumu'ah", 'The Congregation, Friday'),
  ('Al-Munafiqun', 'The Hypocrites'),
  ('At-Taghabun', 'The Mutual Disillusion'),
  ('At-Talaq', 'The Divorce'),
  ('At-Tahrim', 'The Prohibition'),
  ('Al-Mulk', 'The Sovereignty'),
  ('Al-Qalam', 'The Pen'),
  ('Al-Haqqah', 'The Reality'),
  ("Al-Ma'arij", 'The Ascending Stairways'),
  ('Nuh', 'Noah'),
  ('Al-Jinn', 'The Jinn'),
  ('Al-Muzzammil', 'The Enshrouded One'),
  ('Al-Muddaththir', 'The Cloaked One'),
  ('Al-Qiyamah', 'The Resurrection'),
  ('Al-Insan', 'The Man'),
  ('Al-Mursalat', 'The Emissaries'),
  ('An-Naba', 'The Tidings'),
  ("An-Nazi'at", 'Those who drag forth'),
  ("'Abasa", 'He Frowned'),
  ('At-Takwir', 'The Overthrowing'),
  ('Al-Infitar', 'The Cleaving'),
  ('Al-Mutaffifin', 'The Defrauding'),
  ('Al-Inshiqaq', 'The Sundering'),
  ('Al-Buruj', 'The Mansions of the Stars'),
  ('At-Tariq', 'The Night Comer'),
  ("Al-A'la", 'The Most High'),
  ('Al-Ghashiyah', 'The Overwhelming'),
  ('Al-Fajr', 'The Dawn'),
  ('Al-Balad', 'The City'),
  ('Ash-Shams', 'The Sun'),
  ('Al-Layl', 'The Night'),
  ('Ad-Duhaa', 'The Morning Hours'),
  ('Ash-Sharh', 'The Relief'),
  ('At-Tin', 'The Fig'),
  ("Al-'Alaq", 'The Clot'),
  ('Al-Qadr', 'The Power'),
  ('Al-Bayyinah', 'The Clear Proof'),
  ('Az-Zalzalah', 'The Earthquake'),
  ("Al-'Adiyat", 'The Courser'),
  ("Al-Qari'ah", 'The Calamity'),
  ('At-Takathur', 'The Rivalry in World Increase'),
  ("Al-'Asr", 'The Declining Day'),
  ('Al-Humazah', 'The Traducer'),
  ('Al-Fil', 'The Elephant'),
  ('Quraysh', 'Quraysh'),
  ("Al-Ma'un", 'The Small Kindnesses'),
  ('Al-Kawthar', 'The Abundance'),
  ('Al-Kafirun', 'The Disbelievers'),
  ('An-Nasr', 'The Divine Support'),
  ('Al-Masad', 'The Palm Fiber'),
  ('Al-Ikhlas', 'The Sincerity'),
  ('Al-Falaq', 'The Daybreak'),
  ('An-Nas', 'Mankind'),
];

/// Sure listesi: Türkçe veri + `nameEn` (İngilizce ad) ve `meaningEn` (anlam).
final List<Map<String, dynamic>> quranIndex = List.unmodifiable([
  for (var i = 0; i < _quranIndexTr.length; i++)
    {..._quranIndexTr[i], 'nameEn': _surahNamesEn[i].$1, 'meaningEn': _surahNamesEn[i].$2},
]);

String _lang([String? lang]) => lang ?? localeProvider.locale.languageCode;

/// Sure adı seçili dile göre: tr Türkçe ad, en `nameEn`, ar Arapça ad.
String surahName(int no, [String? lang]) {
  final s = surahByNo(no);
  return switch (_lang(lang)) {
    'en' => s['nameEn'] as String,
    'ar' => s['arabic'] as String,
    _ => s['name'] as String,
  };
}

/// İngilizce arayüzde adın altında gösterilecek anlam ("The Cow"); diğer dillerde null.
String? surahMeaning(int no, [String? lang]) => _lang(lang) == 'en' ? surahByNo(no)['meaningEn'] as String : null;

/// İniş yeri etiketi: tr Mekke/Medine, en Meccan/Medinan, ar مكية/مدنية.
String surahPlaceLabel(Map<String, dynamic> s) =>
    s['place'] == 'Medine' ? l10n.quranPlaceMedinan : l10n.quranPlaceMeccan;

/// Toplam ayet, Mekki ve Medeni sure sayıları.
const int quranTotalAyahs = 6236;
const int quranMakkiCount = 86;
const int quranMadaniCount = 28;

/// Veri tutarlılığını doğrular (debug derlemelerde assert ile çağrılır).
bool checkQuranIndex() {
  final total = quranIndex.fold<int>(0, (s, e) => s + (e['ayahCount'] as int));
  final madani = quranIndex.where((e) => e['place'] == 'Medine').length;
  final makki = quranIndex.where((e) => e['place'] == 'Mekke').length;
  return quranIndex.length == 114 &&
      _surahNamesEn.length == 114 &&
      total == quranTotalAyahs &&
      makki == quranMakkiCount &&
      madani == quranMadaniCount &&
      juzIndex.length == 30;
}

/// Verilen sayfada okunan surenin (sayfanın başladığı sure) indeksini döner.
int surahIndexForPage(int page) {
  var idx = 0;
  for (var i = 0; i < quranIndex.length; i++) {
    if ((quranIndex[i]['page'] as int) <= page) {
      idx = i;
    } else {
      break;
    }
  }
  return idx;
}

/// Sure numarasına (1-114) göre kayıt.
Map<String, dynamic> surahByNo(int no) => quranIndex[(no.clamp(1, 114)) - 1];

/// Seçili dile göre sure başlığı: "Bakara Suresi", "Al-Baqarah", "سورة البقرة".
String surahTitle(int no) => l10n.quranSurahTitle(surahName(no));

/// Surenin kapladığı sayfa sayısı (en az 1).
int surahPageCount(int no) {
  final start = surahByNo(no)['page'] as int;
  final end = no >= 114 ? 605 : (surahByNo(no + 1)['page'] as int);
  final count = end - start;
  return count < 1 ? 1 : count;
}

/// Cüz listesi (standart Medine mushafı, 604 sayfa).
/// Her kayıt: `no`, `page` (başlangıç sayfası), `surah` ve `ayah` (başlangıç).
const List<Map<String, int>> juzIndex = [
  {'no': 1, 'page': 1, 'surah': 1, 'ayah': 1},
  {'no': 2, 'page': 22, 'surah': 2, 'ayah': 142},
  {'no': 3, 'page': 42, 'surah': 2, 'ayah': 253},
  {'no': 4, 'page': 62, 'surah': 3, 'ayah': 93},
  {'no': 5, 'page': 82, 'surah': 4, 'ayah': 24},
  {'no': 6, 'page': 102, 'surah': 4, 'ayah': 148},
  {'no': 7, 'page': 121, 'surah': 5, 'ayah': 82},
  {'no': 8, 'page': 142, 'surah': 6, 'ayah': 111},
  {'no': 9, 'page': 162, 'surah': 7, 'ayah': 88},
  {'no': 10, 'page': 182, 'surah': 8, 'ayah': 41},
  {'no': 11, 'page': 201, 'surah': 9, 'ayah': 93},
  {'no': 12, 'page': 222, 'surah': 11, 'ayah': 6},
  {'no': 13, 'page': 242, 'surah': 12, 'ayah': 53},
  {'no': 14, 'page': 262, 'surah': 15, 'ayah': 1},
  {'no': 15, 'page': 282, 'surah': 17, 'ayah': 1},
  {'no': 16, 'page': 302, 'surah': 18, 'ayah': 75},
  {'no': 17, 'page': 322, 'surah': 21, 'ayah': 1},
  {'no': 18, 'page': 342, 'surah': 23, 'ayah': 1},
  {'no': 19, 'page': 362, 'surah': 25, 'ayah': 21},
  {'no': 20, 'page': 382, 'surah': 27, 'ayah': 56},
  {'no': 21, 'page': 402, 'surah': 29, 'ayah': 46},
  {'no': 22, 'page': 422, 'surah': 33, 'ayah': 31},
  {'no': 23, 'page': 442, 'surah': 36, 'ayah': 28},
  {'no': 24, 'page': 462, 'surah': 39, 'ayah': 32},
  {'no': 25, 'page': 482, 'surah': 41, 'ayah': 47},
  {'no': 26, 'page': 502, 'surah': 46, 'ayah': 1},
  {'no': 27, 'page': 522, 'surah': 51, 'ayah': 31},
  {'no': 28, 'page': 542, 'surah': 58, 'ayah': 1},
  {'no': 29, 'page': 562, 'surah': 67, 'ayah': 1},
  {'no': 30, 'page': 582, 'surah': 78, 'ayah': 1},
];

/// Sayfanın bulunduğu cüz (1-30).
int juzForPage(int page) {
  var juz = 1;
  for (final j in juzIndex) {
    if (j['page']! <= page) juz = j['no']!;
  }
  return juz;
}

/// Türkçe karakter ve şapka duyarsız arama anahtarı.
String normalizeTr(String input) {
  const map = {
    'İ': 'i',
    'I': 'i',
    'ı': 'i',
    'î': 'i',
    'Î': 'i',
    'Ş': 's',
    'ş': 's',
    'Ç': 'c',
    'ç': 'c',
    'Ğ': 'g',
    'ğ': 'g',
    'Ü': 'u',
    'ü': 'u',
    'û': 'u',
    'Û': 'u',
    'Ö': 'o',
    'ö': 'o',
    'â': 'a',
    'Â': 'a',
  };
  final b = StringBuffer();
  for (final ch in input.split('')) {
    final m = map[ch];
    if (m != null) {
      b.write(m);
    } else if (ch == "'" || ch == '’' || ch == '-' || ch == ' ' || ch == '(' || ch == ')') {
      continue;
    } else {
      b.write(ch.toLowerCase());
    }
  }
  return b.toString();
}

/// Sure araması: Türkçe ad, İngilizce ad/anlam, okunuş, Arapça ad veya numara ile eşleşir.
bool surahMatches(Map<String, dynamic> s, String query) {
  final q = normalizeTr(query.trim());
  if (q.isEmpty) return true;
  if (int.tryParse(q) != null) return '${s['no']}' == q || '${s['no']}'.startsWith(q);
  final name = normalizeTr('${s['name']}');
  final reading = normalizeTr('${s['reading']}');
  final stripped = name.replaceFirst(RegExp(r'^(el|es|ed|en|er|et|ez)'), '');
  final en = normalizeTr('${s['nameEn']}');
  final enStripped = en.replaceFirst(RegExp(r'^(al|an|ar|as|at|ad|adh|ash|az)'), '');
  final meaning = normalizeTr('${s['meaningEn']}');
  return name.contains(q) ||
      stripped.contains(q) ||
      reading.contains(q) ||
      en.contains(q) ||
      enStripped.contains(q) ||
      meaning.contains(q) ||
      '${s['arabic']}'.contains(query.trim());
}
