/// Dil koduna göre metin seçer: tr → [tr], en → [en], ar → [ar].
/// Çevirisi olmayan dilde `null` döner (alan gizlenir), [fallbackTr] true ise
/// Türkçe metin kullanılır.
String? _pick(String lang, String? tr, String? en, String? ar, {bool fallbackTr = false}) => switch (lang) {
  'en' => en ?? (fallbackTr ? tr : null),
  'ar' => ar ?? (fallbackTr ? (en ?? tr) : null),
  _ => tr,
};

/// Tek bir dua metni: Arapça, okunuş ve anlam.
///
/// Arapça metin her dilde aynen gösterilir. Okunuş (transliterasyon): tr
/// Türkçe okunuş, en İngilizce okunuş, ar gösterilmez. Anlam (meal): tr
/// Türkçe, en İngilizce, ar gösterilmez (kullanıcı Arapçayı zaten okuyor).
class DuaMetni {
  const DuaMetni({
    this.baslik,
    this.baslikEn,
    this.baslikAr,
    this.arapca,
    required this.okunus,
    this.okunusEn,
    required this.anlam,
    this.anlamEn,
    this.kaynak,
    this.kaynakEn,
    this.kaynakAr,
  });

  final String? baslik;
  final String? baslikEn;
  final String? baslikAr;
  final String? arapca;

  /// Türkçe okunuş.
  final String okunus;

  /// İngilizce transliterasyon.
  final String? okunusEn;

  /// Türkçe anlam.
  final String anlam;

  /// İngilizce anlam (ayetlerde Sahih International).
  final String? anlamEn;

  /// Kaynak, ör. "Bakara 2/201" / "Al-Baqarah 2:201" / "البقرة ٢٠١".
  final String? kaynak;
  final String? kaynakEn;
  final String? kaynakAr;

  String? baslikFor(String lang) => _pick(lang, baslik, baslikEn, baslikAr, fallbackTr: true);
  String? okunusFor(String lang) => _pick(lang, okunus, okunusEn, null);
  String? anlamFor(String lang) => _pick(lang, anlam, anlamEn, null);
  String? kaynakFor(String lang) => _pick(lang, kaynak, kaynakEn, kaynakAr, fallbackTr: true);
}

/// Bir şavtın (veya başlangıç / bitiş bölümünün) içeriği.
///
/// [arabicFiles], [turkishFiles] ve [files] orijinal uygulamadaki sunucu
/// görsellerinin dosya adlarıdır ("Görsel" görünümünde gösterilir).
/// Kısa başlık (Başlangıç, 1. Şavt … Bitiş) ekranda dile göre üretilir.
class DuaBolumu {
  const DuaBolumu({
    required this.title,
    this.titleEn,
    this.titleAr,
    required this.kisaBaslik,
    this.aciklama,
    this.aciklamaEn,
    this.aciklamaAr,
    required this.dualar,
    this.arabicFiles = const [],
    this.turkishFiles = const [],
    this.files = const [],
    this.isZikirmatik = true,
  });

  final String title;
  final String? titleEn;
  final String? titleAr;

  /// Türkçe kısa başlık (orijinal veri).
  final String kisaBaslik;
  final String? aciklama;
  final String? aciklamaEn;
  final String? aciklamaAr;
  final List<DuaMetni> dualar;
  final List<String> arabicFiles;
  final List<String> turkishFiles;
  final List<String> files;

  /// Şavt sayacına dahil mi (başlangıç ve bitiş bölümleri dahil değil).
  final bool isZikirmatik;

  bool get hasLanguageFiles => arabicFiles.isNotEmpty || turkishFiles.isNotEmpty;

  List<String> get allFiles => [...files, ...arabicFiles, ...turkishFiles];

  String titleFor(String lang) => _pick(lang, title, titleEn, titleAr, fallbackTr: true)!;
  String? aciklamaFor(String lang) => _pick(lang, aciklama, aciklamaEn, aciklamaAr, fallbackTr: true);
}

/// Her iki sayfada tekrar eden kısa dualar.
class OrtakDualar {
  static const rabbena = DuaMetni(
    baslik: 'Rükn-i Yemânî ile Hacerü\'l-Esved arasında',
    baslikEn: 'Between the Yemeni Corner and the Black Stone',
    baslikAr: 'بين الركن اليماني والحجر الأسود',
    arapca: 'رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ',
    okunus: 'Rabbenâ âtinâ fi\'d-dünyâ haseneten ve fi\'l-âhirati haseneten ve kınâ azâbe\'n-nâr.',
    okunusEn: "Rabbana atina fid-dunya hasanatan wa fil-akhirati hasanatan wa qina 'adhaban-nar.",
    anlam: 'Rabbimiz! Bize dünyada iyilik ver, âhirette de iyilik ver ve bizi cehennem azabından koru.',
    anlamEn: '…Our Lord, give us in this world [that which is] good and in the Hereafter [that which is] good '
        'and protect us from the punishment of the Fire.',
    kaynak: 'Bakara 2/201',
    kaynakEn: 'Al-Baqarah 2:201',
    kaynakAr: 'البقرة ٢٠١',
  );

  static const rabbigfir = DuaMetni(
    baslik: 'Yeşil ışıklar (Mîleyn-i Ahdarayn) arasında',
    baslikEn: 'Between the green lights (al-Milayn al-Akhdarayn)',
    baslikAr: 'بين الميلين الأخضرين',
    arapca: 'رَبِّ اغْفِرْ وَارْحَمْ إِنَّكَ أَنْتَ الْأَعَزُّ الْأَكْرَمُ',
    okunus: 'Rabbiğfir verham, inneke ente\'l-eazzü\'l-ekrem.',
    okunusEn: "Rabbighfir warham, innaka antal-a'azzul-akram.",
    anlam: 'Rabbim! Bağışla ve merhamet et. Şüphesiz sen en güçlü ve en cömert olansın.',
    anlamEn: 'My Lord, forgive and have mercy. Indeed, You are the Most Mighty, the Most Generous.',
    kaynak: 'İbn Mes\'ûd ve İbn Ömer\'den rivayet',
    kaynakEn: "Narrated from Ibn Mas'ud and Ibn 'Umar",
    kaynakAr: 'مروي عن ابن مسعود وابن عمر',
  );
}
