import 'package:flutter/material.dart';

import 'l10n_text.dart';

/// Umre ihtiyaç listesi (hazır maddeler).
/// Kaynak: Diyanet İşleri Başkanlığı hac/umre hazırlık önerileri, Suudi Sağlık Bakanlığı
/// seyahat sağlık şartları (menenjit ACWY), IEC priz tipleri (Suudi Arabistan: G tipi, 230 V / 60 Hz).
class NeedCategory {
  const NeedCategory({required this.id, required this.title, required this.icon, required this.items});

  final String id;
  final L10nText title;
  final IconData icon;
  final List<NeedItem> items;
}

class NeedItem {
  const NeedItem(this.id, this.title, {this.hint});

  /// Kalıcı kimlik (SharedPreferences'ta bu tutulur, değiştirmeyin).
  final String id;
  final L10nText title;
  final L10nText? hint;
}

const kNeedCategories = <NeedCategory>[
  NeedCategory(
    id: 'belge',
    title: L10nText(tr: 'Belgeler', en: 'Documents', ar: 'الوثائق'),
    icon: Icons.badge_rounded,
    items: [
      NeedItem('belge_pasaport', L10nText(tr: 'Pasaport', en: 'Passport', ar: 'جواز السفر'),
          hint: L10nText(
              tr: 'En az 6 ay geçerli (Diyanet turlarında en az 1 yıl isteniyor)',
              en: 'Valid for at least 6 months (Diyanet tours require at least 1 year)',
              ar: 'صالح لمدة 6 أشهر على الأقل (رحلات رئاسة الشؤون الدينية التركية تشترط سنة على الأقل)')),
      NeedItem('belge_vize', L10nText(tr: 'Umre / e-vize çıktısı', en: 'Umrah / e-visa printout', ar: 'نسخة مطبوعة من تأشيرة العمرة / التأشيرة الإلكترونية'),
          hint: L10nText(
              tr: 'Telefonda ve kâğıtta birer kopya',
              en: 'One copy on your phone and one on paper',
              ar: 'نسخة على الهاتف وأخرى ورقية')),
      NeedItem('belge_bilet', L10nText(tr: 'Uçak biletleri', en: 'Flight tickets', ar: 'تذاكر الطيران')),
      NeedItem('belge_kimlik', L10nText(tr: 'T.C. kimlik kartı', en: 'Turkish ID card', ar: 'بطاقة الهوية التركية')),
      NeedItem('belge_asi', L10nText(tr: 'Menenjit (ACWY) aşı kartı', en: 'Meningitis (ACWY) vaccination card', ar: 'بطاقة لقاح التهاب السحايا (ACWY)')),
      NeedItem('belge_sigorta', L10nText(tr: 'Seyahat sağlık sigortası poliçesi', en: 'Travel health insurance policy', ar: 'وثيقة تأمين السفر الصحي')),
      NeedItem('belge_fotokopi', L10nText(tr: 'Pasaport ve vize fotokopileri', en: 'Photocopies of passport and visa', ar: 'نسخ مصورة من الجواز والتأشيرة'),
          hint: L10nText(
              tr: 'Asıllarından ayrı çantada',
              en: 'In a different bag from the originals',
              ar: 'في حقيبة منفصلة عن الأصول')),
      NeedItem('belge_foto', L10nText(tr: 'Vesikalık fotoğraf (2-4 adet)', en: 'Passport photos (2-4)', ar: 'صور شخصية (2-4 صور)')),
      NeedItem('belge_otel', L10nText(tr: 'Otel ve kafile bilgileri, rehber telefonu', en: 'Hotel and group details, guide’s phone number', ar: 'معلومات الفندق والمجموعة ورقم هاتف المرشد')),
      NeedItem('belge_kart', L10nText(tr: 'Banka kartı ve bir miktar riyal', en: 'Bank card and some riyals', ar: 'بطاقة مصرفية وبعض الريالات')),
    ],
  ),
  NeedCategory(
    id: 'ihram_erkek',
    title: L10nText(tr: 'İhram & Kıyafet · Erkek', en: 'Ihram & Clothing · Men', ar: 'الإحرام والملابس · رجال'),
    icon: Icons.man_rounded,
    items: [
      NeedItem('ie_ihram', L10nText(tr: 'İhram takımı (2 takım: izar + rida)', en: 'Ihram garments (2 sets: izar + rida)', ar: 'ملابس الإحرام (طقمان: إزار ورداء)'),
          hint: L10nText(
              tr: 'Dikişsiz, beyaz havlu kumaş',
              en: 'Unstitched, white towel fabric',
              ar: 'غير مخيط، من قماش المناشف الأبيض')),
      NeedItem('ie_kemer', L10nText(tr: 'İhram kemeri (bel çantalı)', en: 'Ihram belt (with pouch)', ar: 'حزام الإحرام (بجيب)')),
      NeedItem('ie_terlik', L10nText(tr: 'Topuk ve ayak üstü açık terlik / sandalet', en: 'Slippers / sandals that leave the heel and top of the foot uncovered', ar: 'نعال / صندل يكشف الكعب وظهر القدم')),
      NeedItem('ie_toka', L10nText(tr: 'İhram tokası / çengelsiz iğne', en: 'Ihram clip / safety pin', ar: 'مشبك الإحرام / دبوس أمان')),
      NeedItem('ie_gunluk', L10nText(tr: 'Günlük kıyafet (pamuklu, açık renk)', en: 'Everyday clothes (cotton, light-coloured)', ar: 'ملابس يومية (قطنية، فاتحة اللون)')),
      NeedItem('ie_ic', L10nText(tr: 'İç çamaşırı ve çorap', en: 'Underwear and socks', ar: 'ملابس داخلية وجوارب')),
      NeedItem('ie_ayakkabi', L10nText(tr: 'Rahat yürüyüş ayakkabısı', en: 'Comfortable walking shoes', ar: 'حذاء مشي مريح')),
    ],
  ),
  NeedCategory(
    id: 'ihram_kadin',
    title: L10nText(tr: 'İhram & Kıyafet · Kadın', en: 'Ihram & Clothing · Women', ar: 'الإحرام والملابس · نساء'),
    icon: Icons.woman_rounded,
    items: [
      NeedItem('ik_kiyafet', L10nText(tr: 'Bol, vücut hatlarını göstermeyen elbise / pardösü', en: 'Loose dress / overcoat that does not show the body’s shape', ar: 'فستان / معطف فضفاض لا يُظهر تفاصيل الجسم'),
          hint: L10nText(
              tr: 'Kadınlar için özel ihram kıyafeti şart değildir',
              en: 'Women do not need special ihram garments',
              ar: 'لا يُشترط للنساء لباس إحرام خاص')),
      NeedItem('ik_bone', L10nText(tr: 'Bone ve başörtüsü (yedekli)', en: 'Under-scarf and headscarf (with spares)', ar: 'قبعة داخلية وحجاب (مع احتياطي)')),
      NeedItem('ik_corap', L10nText(tr: 'Çorap (yedekli)', en: 'Socks (with spares)', ar: 'جوارب (مع احتياطي)')),
      NeedItem('ik_ayakkabi', L10nText(tr: 'Rahat yürüyüş ayakkabısı / terlik', en: 'Comfortable walking shoes / slippers', ar: 'حذاء مشي مريح / نعال')),
      NeedItem('ik_ic', L10nText(tr: 'İç çamaşırı', en: 'Underwear', ar: 'ملابس داخلية')),
      NeedItem('ik_namaz', L10nText(tr: 'Namaz elbisesi / tesettür takımı', en: 'Prayer dress / modest outfit', ar: 'ثوب الصلاة / لباس ساتر')),
    ],
  ),
  NeedCategory(
    id: 'saglik',
    title: L10nText(tr: 'Sağlık & İlaç', en: 'Health & Medicine', ar: 'الصحة والأدوية'),
    icon: Icons.medical_services_rounded,
    items: [
      NeedItem('s_ilac', L10nText(tr: 'Düzenli kullandığınız ilaçlar', en: 'Your regular medication', ar: 'أدويتك المعتادة'),
          hint: L10nText(
              tr: 'Yolculuk süresinden fazla; reçetesi / raporuyla',
              en: 'More than the length of the trip; with prescription / medical report',
              ar: 'كمية تزيد على مدة الرحلة، مع الوصفة / التقرير الطبي')),
      NeedItem('s_agri', L10nText(tr: 'Ağrı kesici ve ateş düşürücü', en: 'Painkillers and fever reducers', ar: 'مسكنات الألم وخافضات الحرارة')),
      NeedItem('s_ishal', L10nText(tr: 'Mide / ishal ilacı', en: 'Stomach / diarrhoea medicine', ar: 'دواء للمعدة / الإسهال')),
      NeedItem('s_soguk', L10nText(tr: 'Soğuk algınlığı ilacı, boğaz pastili', en: 'Cold medicine, throat lozenges', ar: 'دواء نزلات البرد وأقراص استحلاب للحلق')),
      NeedItem('s_maske', L10nText(tr: 'Maske', en: 'Face masks', ar: 'كمامات')),
      NeedItem('s_yara', L10nText(tr: 'Yara bandı, pişik kremi', en: 'Plasters, anti-chafing cream', ar: 'لاصق جروح وكريم للتسلخات'),
          hint: L10nText(
              tr: 'İhramda sürtünmeye karşı; kokusuz olsun',
              en: 'Against chafing in ihram; must be unscented',
              ar: 'للوقاية من الاحتكاك في الإحرام، ويكون بلا رائحة')),
      NeedItem('s_tuz', L10nText(tr: 'Elektrolit / ORS tozu', en: 'Electrolyte / ORS powder', ar: 'مسحوق الأملاح / محلول الإماهة الفموي')),
      NeedItem('s_gozluk', L10nText(tr: 'Güneş gözlüğü ve yedek gözlük / lens', en: 'Sunglasses and spare glasses / lenses', ar: 'نظارة شمسية ونظارة / عدسات احتياطية')),
      NeedItem('s_semsiye', L10nText(tr: 'Güneş şemsiyesi', en: 'Sun umbrella', ar: 'مظلة شمسية')),
    ],
  ),
  NeedCategory(
    id: 'bakim',
    title: L10nText(tr: 'Kişisel Bakım', en: 'Personal Care', ar: 'العناية الشخصية'),
    icon: Icons.soap_rounded,
    items: [
      NeedItem('b_sabun', L10nText(tr: 'Kokusuz sabun', en: 'Unscented soap', ar: 'صابون بلا رائحة'),
          hint: L10nText(
              tr: 'İhramlıyken kokulu ürün kullanılmaz',
              en: 'Scented products may not be used while in ihram',
              ar: 'لا تُستعمل المنتجات المعطرة في حال الإحرام')),
      NeedItem('b_sampuan', L10nText(tr: 'Kokusuz şampuan', en: 'Unscented shampoo', ar: 'شامبو بلا رائحة')),
      NeedItem('b_deodorant', L10nText(tr: 'Kokusuz deodorant', en: 'Unscented deodorant', ar: 'مزيل عرق بلا رائحة'),
          hint: L10nText(
              tr: 'İhrama girmeden önce kullanın',
              en: 'Use it before entering ihram',
              ar: 'استعمله قبل الدخول في الإحرام')),
      NeedItem('b_dis', L10nText(tr: 'Diş fırçası, macun, misvak', en: 'Toothbrush, toothpaste, miswak', ar: 'فرشاة أسنان ومعجون وسواك')),
      NeedItem('b_havlu', L10nText(tr: 'Küçük havlu', en: 'Small towel', ar: 'منشفة صغيرة')),
      NeedItem('b_mendil', L10nText(tr: 'Kokusuz ıslak mendil ve kâğıt mendil', en: 'Unscented wet wipes and tissues', ar: 'مناديل مبللة بلا رائحة ومناديل ورقية')),
      NeedItem('b_makas', L10nText(tr: 'Küçük makas (tıraş/kısaltma için)', en: 'Small scissors (for Taqsir)', ar: 'مقص صغير (للتقصير)'),
          hint: L10nText(
              tr: 'Bavula koyun, el çantasına değil',
              en: 'Put it in checked luggage, not in your hand luggage',
              ar: 'ضعه في الحقيبة المشحونة لا في حقيبة اليد')),
      NeedItem('b_krem', L10nText(tr: 'Kokusuz nemlendirici ve dudak kremi', en: 'Unscented moisturiser and lip balm', ar: 'مرطب بلا رائحة ومرطب شفاه')),
      NeedItem('b_gunes', L10nText(tr: 'Güneş kremi (kokusuz)', en: 'Sunscreen (unscented)', ar: 'واقي شمس (بلا رائحة)')),
    ],
  ),
  NeedCategory(
    id: 'elektronik',
    title: L10nText(tr: 'Elektronik', en: 'Electronics', ar: 'الإلكترونيات'),
    icon: Icons.power_rounded,
    items: [
      NeedItem('e_adaptor', L10nText(tr: 'Priz adaptörü (G tipi, 3 yassı uçlu)', en: 'Plug adapter (Type G, 3 flat pins)', ar: 'محول قابس (نوع G، بثلاثة أطراف مسطحة)'),
          hint: L10nText(
              tr: 'Suudi Arabistan: G tipi priz, 220-230 V',
              en: 'Saudi Arabia: Type G sockets, 220-230 V',
              ar: 'السعودية: مقابس من نوع G بجهد 220-230 فولت')),
      NeedItem('e_sarj', L10nText(tr: 'Telefon şarj aleti ve kablosu', en: 'Phone charger and cable', ar: 'شاحن الهاتف وكابله')),
      NeedItem('e_powerbank', L10nText(tr: 'Powerbank', en: 'Power bank', ar: 'بطارية متنقلة (باور بانك)'),
          hint: L10nText(
              tr: 'Kabin bagajında taşınır',
              en: 'Must be carried in cabin baggage',
              ar: 'تُحمل في حقيبة المقصورة')),
      NeedItem('e_coklu', L10nText(tr: 'Çoklu priz', en: 'Power strip', ar: 'مشترك كهربائي متعدد')),
      NeedItem('e_kulaklik', L10nText(tr: 'Kulaklık', en: 'Earphones', ar: 'سماعات أذن')),
      NeedItem('e_sim', L10nText(tr: 'Suudi hat / uluslararası paket', en: 'Saudi SIM card / international roaming package', ar: 'شريحة سعودية / باقة تجوال دولي'),
          hint: L10nText(
              tr: 'Havalimanında hat alınabilir',
              en: 'SIM cards can be bought at the airport',
              ar: 'يمكن شراء الشريحة من المطار')),
    ],
  ),
  NeedCategory(
    id: 'ibadet',
    title: L10nText(tr: 'İbadet', en: 'Worship', ar: 'العبادة'),
    icon: Icons.menu_book_rounded,
    items: [
      NeedItem('i_seccade', L10nText(tr: 'Hafif seccade', en: 'Lightweight prayer mat', ar: 'سجادة صلاة خفيفة')),
      NeedItem('i_tesbih', L10nText(tr: 'Tesbih', en: 'Prayer beads (tasbih)', ar: 'مسبحة')),
      NeedItem('i_kuran', L10nText(tr: 'Cep Kur’an-ı Kerim', en: 'Pocket Qur’an', ar: 'مصحف جيب')),
      NeedItem('i_dua', L10nText(tr: 'Dua kitabı', en: 'Book of supplications', ar: 'كتاب أدعية')),
      NeedItem('i_canta', L10nText(tr: 'Ayakkabı torbası', en: 'Shoe bag', ar: 'كيس للأحذية'),
          hint: L10nText(
              tr: 'Harem’de ayakkabıyı yanınızda taşımak için',
              en: 'To carry your shoes with you inside the Haram',
              ar: 'لحمل حذائك معك داخل الحرم')),
      NeedItem('i_sirt', L10nText(tr: 'Küçük sırt / bel çantası', en: 'Small backpack / waist bag', ar: 'حقيبة ظهر / خصر صغيرة')),
      NeedItem('i_matara', L10nText(tr: 'Zemzem için küçük matara', en: 'Small flask for Zamzam water', ar: 'قارورة صغيرة لماء زمزم')),
    ],
  ),
];
