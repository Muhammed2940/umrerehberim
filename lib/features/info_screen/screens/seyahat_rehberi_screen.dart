import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../data/l10n_text.dart';
import '../widgets/info_widgets.dart';

/// Rehberdeki tek madde: kalın başlık + metin.
class _M {
  const _M(this.bold, this.text);

  final L10nText bold;
  final L10nText text;
}

/// Rehberin açılır bölümü.
class _Bolum {
  const _Bolum({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.items,
    this.guncellik = false,
  });

  final IconData icon;
  final L10nText title;
  final L10nText subtitle;
  final List<_M> items;

  /// Altına "Yola çıkmadan önce güncelliğini kontrol edin." notu eklenir.
  final bool guncellik;
}

/// Umre yolculuğu için pratik bilgiler.
///
/// Kaynaklar (Kasım 2026):
/// - Suudi Sağlık Bakanlığı Umre sağlık şartları (moh.gov.sa): ACWY konjuge aşı, son 5 yıl, varıştan ≥10 gün önce.
/// - Diyanet 2026-2027 umre duyurusu: pasaport ≥1 yıl, konjuge meningokok aşısı.
/// - visa.visitsaudi.com (turist e-vizesi), Nusuk (umre ve Ravza izinleri).
/// - Haremeyn hızlı treni: sar.hhr.sa, Wikipedia "Haramain high-speed railway".
/// - cidde-bk.mfa.gov.tr ve riyad-be.mfa.gov.tr iletişim sayfaları.
class SeyahatRehberiScreen extends StatelessWidget {
  const SeyahatRehberiScreen({super.key});

  static const _bolumler = <_Bolum>[
    _Bolum(
      icon: Icons.badge_rounded,
      title: L10nText(tr: 'Vize ve Belgeler', en: 'Visa and Documents', ar: 'التأشيرة والوثائق'),
      subtitle: L10nText(tr: 'E-vize, pasaport, Nusuk', en: 'E-visa, passport, Nusuk', ar: 'التأشيرة الإلكترونية، الجواز، نسك'),
      guncellik: true,
      items: [
        _M(
          L10nText(tr: 'Vize:', en: 'Visa:', ar: 'التأشيرة:'),
          L10nText(
            tr: 'Umre, umre vizesiyle veya Suudi turist e-vizesiyle (visa.visitsaudi.com) yapılabilir. '
                'Diyanet ve acente turlarında vize işlemleri kafile tarafından yürütülür.',
            en: 'Umrah can be performed with an Umrah visa or a Saudi tourist e-visa (visa.visitsaudi.com). '
                'On Diyanet and agency tours, visa procedures are handled by the group.',
            ar: 'يمكن أداء العمرة بتأشيرة عمرة أو بالتأشيرة السياحية الإلكترونية السعودية (visa.visitsaudi.com). '
                'وفي رحلات رئاسة الشؤون الدينية التركية والوكالات تتولى المجموعة إجراءات التأشيرة.',
          ),
        ),
        _M(
          L10nText(tr: 'Pasaport:', en: 'Passport:', ar: 'جواز السفر:'),
          L10nText(
            tr: 'Suudi Arabistan girişte en az 6 ay geçerli pasaport ister. Diyanet\'in 2026-2027 umre duyurusunda '
                'pasaportun en az 1 yıl geçerli olması şartı vardır.',
            en: 'Saudi Arabia requires a passport valid for at least 6 months on entry. The Diyanet 2026-2027 Umrah announcement '
                'requires the passport to be valid for at least 1 year.',
            ar: 'تشترط السعودية عند الدخول جوازًا صالحًا لستة أشهر على الأقل. ويشترط إعلان رئاسة الشؤون الدينية التركية '
                'لعمرة 2026-2027 أن يكون الجواز صالحًا لسنة على الأقل.',
          ),
        ),
        _M(
          L10nText(tr: 'Nusuk:', en: 'Nusuk:', ar: 'نسك:'),
          L10nText(
            tr: 'Umre için Nusuk uygulamasından umre izni (randevu) alınması gerekir; vize türü fark etmez. '
                'Kafileyle gidenlerin izinleri genellikle acente tarafından alınır.',
            en: 'An Umrah permit (appointment) must be obtained from the Nusuk app, whatever the visa type. '
                'For those travelling with a group, permits are usually obtained by the agency.',
            ar: 'يجب استخراج تصريح العمرة (موعد) من تطبيق نسك أيًا كان نوع التأشيرة. '
                'ومن يسافر مع مجموعة تستخرج الوكالة تصريحه عادةً.',
          ),
        ),
        _M(
          L10nText(tr: 'Ravza izni:', en: 'Rawdah permit:', ar: 'تصريح الروضة:'),
          L10nText(
            tr: 'Mescid-i Nebevî\'deki Ravza-i Mutahhara ziyareti, umre izninden ayrı olarak Nusuk\'tan alınan '
                'randevu ile yapılır.',
            en: "Visiting ar-Rawdah ash-Sharifah in the Prophet's Mosque requires a separate appointment from Nusuk, "
                'apart from the Umrah permit.',
            ar: 'تكون زيارة الروضة الشريفة في المسجد النبوي بموعد يُستخرج من نسك '
                'مستقلًا عن تصريح العمرة.',
          ),
        ),
        _M(
          L10nText(tr: 'Hac dönemi:', en: 'Hajj season:', ar: 'موسم الحج:'),
          L10nText(
            tr: 'Hac dönemi öncesinde umre izinleri bir süre verilmez; tarihleri Nusuk duyurularından takip edin.',
            en: 'Umrah permits are suspended for a period before the Hajj season; follow the dates in Nusuk announcements.',
            ar: 'يتوقف إصدار تصاريح العمرة مدةً قبل موسم الحج؛ تابع المواعيد في إعلانات نسك.',
          ),
        ),
      ],
    ),
    _Bolum(
      icon: Icons.medical_services_rounded,
      title: L10nText(tr: 'Sağlık', en: 'Health', ar: 'الصحة'),
      subtitle: L10nText(tr: 'Menenjit aşısı, sıcak, ilaçlar', en: 'Meningitis vaccine, heat, medication', ar: 'لقاح السحايا، الحر، الأدوية'),
      guncellik: true,
      items: [
        _M(
          L10nText(tr: 'Menenjit aşısı:', en: 'Meningitis vaccine:', ar: 'لقاح السحايا:'),
          L10nText(
            tr: 'Suudi Sağlık Bakanlığı tüm umrecilerden ACWY konjuge menenjit aşısı ister. Aşı son 5 yıl içinde ve '
                'Suudi Arabistan\'a varıştan en az 10 gün önce yapılmış olmalıdır. Türkiye\'de il sağlık müdürlüklerinin '
                'belirlediği merkezlerde yapılır; aşı kartını yolculuk boyunca yanınızda taşıyın.',
            en: 'The Saudi Ministry of Health requires all Umrah pilgrims to have the ACWY conjugate meningitis vaccine. It must have been '
                'given within the last 5 years and at least 10 days before arrival in Saudi Arabia. In Türkiye it is given at centres '
                'designated by provincial health directorates; carry your vaccination card throughout the journey.',
            ar: 'تشترط وزارة الصحة السعودية على جميع المعتمرين لقاح السحايا المقترن (ACWY). ويجب أن يكون قد أُخذ خلال السنوات الخمس الأخيرة '
                'وقبل الوصول إلى السعودية بعشرة أيام على الأقل. ويُعطى في تركيا في المراكز التي تحددها مديريات الصحة في الولايات؛ '
                'احمل بطاقة اللقاح معك طوال الرحلة.',
          ),
        ),
        _M(
          L10nText(tr: 'Sıcak çarpması:', en: 'Heatstroke:', ar: 'ضربة الشمس:'),
          L10nText(
            tr: 'Bol su ve zemzem için, öğle sıcağında dışarıda kalmayın, şemsiye ve açık renk kıyafet kullanın. '
                'Baş dönmesi, bulantı, kızarık-sıcak cilt veya bilinç bulanıklığı görürseniz kişiyi serin yere alın ve '
                '997\'yi arayın.',
            en: 'Drink plenty of water and Zamzam, avoid staying outdoors in the midday heat, and use an umbrella and light-coloured clothes. '
                'If you notice dizziness, nausea, red and hot skin or confusion, move the person to a cool place and '
                'call 997.',
            ar: 'أكثر من شرب الماء وماء زمزم، ولا تبقَ في الخارج وقت حر الظهيرة، واستعمل المظلة والملابس الفاتحة. '
                'إذا ظهر دوار أو غثيان أو احمرار الجلد وسخونته أو اضطراب الوعي فانقل الشخص إلى مكان بارد '
                'واتصل بالرقم 997.',
          ),
        ),
        _M(
          L10nText(tr: 'İlaçlar:', en: 'Medication:', ar: 'الأدوية:'),
          L10nText(
            tr: 'Düzenli ilaçlarınızı yolculuk süresinden fazla, orijinal kutusunda ve reçete/raporuyla el bagajında taşıyın. '
                'Uyuşturucu veya psikotrop madde içeren ilaçlar için Suudi kurallarını önceden kontrol edin.',
            en: 'Carry more of your regular medication than the trip requires, in its original packaging and with the prescription/report, in your hand luggage. '
                'Check the Saudi rules in advance for medicines containing narcotic or psychotropic substances.',
            ar: 'احمل أدويتك المعتادة بكمية تزيد على مدة الرحلة، في علبتها الأصلية ومع الوصفة/التقرير الطبي، في حقيبة اليد. '
                'وتحقق مسبقًا من الأنظمة السعودية بشأن الأدوية التي تحتوي على مواد مخدرة أو مؤثرات عقلية.',
          ),
        ),
        _M(
          L10nText(tr: 'Maske:', en: 'Masks:', ar: 'الكمامة:'),
          L10nText(
            tr: 'Kalabalıkta maske takmak solunum yolu enfeksiyonlarına karşı faydalıdır.',
            en: 'Wearing a mask in crowds helps protect against respiratory infections.',
            ar: 'ارتداء الكمامة في الزحام مفيد للوقاية من التهابات الجهاز التنفسي.',
          ),
        ),
      ],
    ),
    _Bolum(
      icon: Icons.payments_rounded,
      title: L10nText(tr: 'Para', en: 'Money', ar: 'المال'),
      subtitle: L10nText(tr: 'Riyal, kart, döviz', en: 'Riyal, cards, currency exchange', ar: 'الريال، البطاقات، الصرف'),
      items: [
        _M(
          L10nText(tr: 'Riyal:', en: 'Riyal:', ar: 'الريال:'),
          L10nText(
            tr: 'Para birimi Suudi Riyali\'dir (SAR, ر.س). Riyal ABD dolarına sabitlenmiştir: 1 USD = 3,75 SAR.',
            en: 'The currency is the Saudi Riyal (SAR, ر.س). The riyal is pegged to the US dollar: 1 USD = 3.75 SAR.',
            ar: 'العملة هي الريال السعودي (SAR، ر.س). والريال مربوط بالدولار الأمريكي: 1 دولار = 3.75 ريال.',
          ),
        ),
        _M(
          L10nText(tr: 'Kart:', en: 'Cards:', ar: 'البطاقات:'),
          L10nText(
            tr: 'Otel, AVM, market ve restoranların çoğunda banka kartı ve temassız ödeme geçer. Kartınızın yurt dışı '
                'kullanımını bankanızdan açtırın.',
            en: 'Bank cards and contactless payment are accepted in most hotels, malls, shops and restaurants. Ask your bank '
                'to enable your card for use abroad.',
            ar: 'تُقبل البطاقات المصرفية والدفع اللاتلامسي في معظم الفنادق والمراكز التجارية والمتاجر والمطاعم. اطلب من '
                'مصرفك تفعيل استخدام بطاقتك خارج البلاد.',
          ),
        ),
        _M(
          L10nText(tr: 'Nakit ve döviz:', en: 'Cash and exchange:', ar: 'النقد والصرف:'),
          L10nText(
            tr: 'Küçük alışverişler, bahşiş ve tıraş için bir miktar nakit riyal bulundurun. Döviz bürolarında '
                'kur farkını karşılaştırın; büyük miktarda nakit taşımayın.',
            en: 'Keep some cash riyals for small purchases, tips and the haircut (Halq/Taqsir). Compare rates at exchange '
                'offices; do not carry large amounts of cash.',
            ar: 'احتفظ ببعض الريالات النقدية للمشتريات الصغيرة والإكراميات والحلق. قارن أسعار الصرف في محلات '
                'الصرافة، ولا تحمل مبالغ نقدية كبيرة.',
          ),
        ),
      ],
    ),
    _Bolum(
      icon: Icons.sim_card_rounded,
      title: L10nText(tr: 'İletişim', en: 'Communication', ar: 'الاتصالات'),
      subtitle: L10nText(tr: 'SIM kart, eSIM, internet', en: 'SIM card, eSIM, internet', ar: 'شريحة SIM، eSIM، الإنترنت'),
      items: [
        _M(
          L10nText(tr: 'SIM kart:', en: 'SIM card:', ar: 'شريحة SIM:'),
          L10nText(
            tr: 'Başlıca operatörler STC, Mobily ve Zain\'dir. Havalimanı ve şehirdeki satış noktalarından pasaportla '
                'hat alınabilir.',
            en: 'The main operators are STC, Mobily and Zain. SIM cards can be bought with a passport at the airport and at '
                'sales points in the city.',
            ar: 'أبرز المشغلين STC وMobily وZain. ويمكن شراء الشريحة بجواز السفر من المطار ومن '
                'نقاط البيع في المدينة.',
          ),
        ),
        _M(
          L10nText(tr: 'eSIM:', en: 'eSIM:', ar: 'eSIM:'),
          L10nText(
            tr: 'Telefonunuz destekliyorsa operatörlerin veya uluslararası eSIM sağlayıcılarının paketleri kullanılabilir. '
                'Yola çıkmadan önce kurup havalimanında etkinleştirebilirsiniz.',
            en: 'If your phone supports it, you can use packages from the operators or from international eSIM providers. '
                'You can install it before you travel and activate it at the airport.',
            ar: 'إذا كان هاتفك يدعمها فيمكنك استخدام باقات المشغلين أو مزودي eSIM الدوليين. '
                'ويمكنك تثبيتها قبل السفر وتفعيلها في المطار.',
          ),
        ),
        _M(
          L10nText(tr: 'Dolaşım:', en: 'Roaming:', ar: 'التجوال:'),
          L10nText(
            tr: 'Türk operatörlerinin yurt dışı paketleri de bir seçenektir; paketsiz dolaşım pahalı olabilir.',
            en: 'International packages from Turkish operators are another option; roaming without a package can be expensive.',
            ar: 'باقات التجوال الدولي من المشغلين الأتراك خيار آخر؛ والتجوال دون باقة قد يكون مكلفًا.',
          ),
        ),
      ],
    ),
    _Bolum(
      icon: Icons.train_rounded,
      title: L10nText(tr: 'Ulaşım', en: 'Transport', ar: 'المواصلات'),
      subtitle: L10nText(tr: 'Haremeyn treni, taksi', en: 'Haramain train, taxis', ar: 'قطار الحرمين، سيارات الأجرة'),
      items: [
        _M(
          L10nText(tr: 'Haremeyn hızlı treni:', en: 'Haramain high-speed train:', ar: 'قطار الحرمين السريع:'),
          L10nText(
            tr: 'Mekke - Cidde - Kral Abdülaziz Havalimanı - Kral Abdullah Ekonomik Şehri (Rabiğ) - Medine hattında çalışır. '
                'Hat 449 km, servis hızı 300 km/sa; Mekke - Medine yaklaşık 2 saat sürer. Bilet: sar.hhr.sa.',
            en: 'It runs on the Makkah - Jeddah - King Abdulaziz Airport - King Abdullah Economic City (Rabigh) - Madinah line. '
                'The line is 449 km long with a service speed of 300 km/h; Makkah - Madinah takes about 2 hours. Tickets: sar.hhr.sa.',
            ar: 'يعمل على خط مكة - جدة - مطار الملك عبدالعزيز - مدينة الملك عبدالله الاقتصادية (رابغ) - المدينة المنورة. '
                'طول الخط 449 كم وسرعة التشغيل 300 كم/س؛ وتستغرق الرحلة من مكة إلى المدينة نحو ساعتين. التذاكر: sar.hhr.sa.',
          ),
        ),
        _M(
          L10nText(tr: 'İstasyon:', en: 'Station:', ar: 'المحطة:'),
          L10nText(
            tr: 'Mekke istasyonu (Rusayfa) Harem\'e yürüme mesafesinde değildir; istasyondan taksi veya servis gerekir.',
            en: 'Makkah station (Al-Rusaifah) is not within walking distance of the Haram; you need a taxi or shuttle from the station.',
            ar: 'محطة مكة (الرصيفة) ليست على مسافة مشي من الحرم؛ وتحتاج إلى سيارة أجرة أو حافلة من المحطة.',
          ),
        ),
        _M(
          L10nText(tr: 'Taksi:', en: 'Taxi:', ar: 'سيارات الأجرة:'),
          L10nText(
            tr: 'Uber ve Careem uygulamaları ile resmî taksiler kullanılabilir. Uygulama dışı taksilerde ücreti binmeden konuşun.',
            en: 'Uber and Careem apps and official taxis can be used. For taxis outside the apps, agree on the fare before getting in.',
            ar: 'يمكن استخدام تطبيقي Uber وCareem وسيارات الأجرة الرسمية. وفي سيارات الأجرة خارج التطبيقات اتفق على الأجرة قبل الركوب.',
          ),
        ),
      ],
    ),
    _Bolum(
      icon: Icons.wb_sunny_rounded,
      title: L10nText(tr: 'İklim ve Kıyafet', en: 'Climate and Clothing', ar: 'المناخ واللباس'),
      subtitle: L10nText(tr: 'Sıcak, kuru; tesettürlü kıyafet', en: 'Hot, dry; modest clothing', ar: 'حار وجاف؛ لباس محتشم'),
      items: [
        _M(
          L10nText(tr: 'İklim:', en: 'Climate:', ar: 'المناخ:'),
          L10nText(
            tr: 'Mekke yıl boyunca sıcaktır; yazın gündüz 40 °C\'yi aşar. Kış aylarında gündüz ılıktır. '
                'Medine\'de kış geceleri serinleyebilir.',
            en: 'Makkah is hot all year round; summer days exceed 40 °C. Winter days are mild. '
                'Winter nights in Madinah can get cool.',
            ar: 'مكة حارة طوال العام، وتتجاوز الحرارة نهارًا في الصيف 40 درجة مئوية، ونهار الشتاء معتدل. '
                'وقد تبرد ليالي الشتاء في المدينة المنورة.',
          ),
        ),
        _M(
          L10nText(tr: 'Kıyafet:', en: 'Clothing:', ar: 'اللباس:'),
          L10nText(
            tr: 'Açık renkli, bol, pamuklu kıyafetler tercih edin.',
            en: 'Prefer light-coloured, loose, cotton clothing.',
            ar: 'اختر الملابس القطنية الفضفاضة الفاتحة اللون.',
          ),
        ),
        _M(
          L10nText(tr: 'Klima:', en: 'Air conditioning:', ar: 'التكييف:'),
          L10nText(
            tr: 'Harem içleri klimalıdır; özellikle gece ve sabah namazları için ince bir hırka işinize yarar.',
            en: 'The inside of the Haram is air-conditioned; a light cardigan is useful, especially for night and dawn prayers.',
            ar: 'داخل الحرم مكيف؛ وتفيدك سترة خفيفة، خاصة لصلوات الليل والفجر.',
          ),
        ),
        _M(
          L10nText(tr: 'Tesettür:', en: 'Modesty:', ar: 'الستر:'),
          L10nText(
            tr: 'Kadınlar tesettürlü kıyafet giyer. Erkekler ihramdan çıktıktan sonra da dizi örten kıyafet giymelidir.',
            en: 'Women wear modest, covering clothing. Men should also wear clothes that cover the knees after leaving Ihram.',
            ar: 'ترتدي النساء لباسًا ساترًا. وعلى الرجال أن يلبسوا ما يستر الركبة بعد التحلل من الإحرام أيضًا.',
          ),
        ),
      ],
    ),
    _Bolum(
      icon: Icons.groups_rounded,
      title: L10nText(tr: 'Güvenlik ve Kalabalık', en: 'Safety and Crowds', ar: 'الأمان والزحام'),
      subtitle: L10nText(tr: 'Kaybolursanız ne yapmalı?', en: 'What to do if you get lost?', ar: 'ماذا تفعل إذا ضللت الطريق؟'),
      items: [
        _M(
          L10nText(tr: 'Kart:', en: 'Card:', ar: 'البطاقة:'),
          L10nText(
            tr: 'Otelinizin adı ve adresi, rehberinizin telefonu yazılı bir kart yanınızda olsun. Telefonunuz şarjlı olsun.',
            en: "Carry a card with your hotel's name and address and your guide's phone number. Keep your phone charged.",
            ar: 'احمل بطاقة مكتوبًا عليها اسم فندقك وعنوانه ورقم هاتف مرشدك. وأبقِ هاتفك مشحونًا.',
          ),
        ),
        _M(
          L10nText(tr: 'Kapı numarası:', en: 'Gate number:', ar: 'رقم الباب:'),
          L10nText(
            tr: 'Harem\'e girdiğiniz kapının numarasını not edin. Kafileyle önceden bir buluşma kapısı belirleyin.',
            en: 'Note the number of the gate you enter the Haram through. Agree on a meeting gate with your group in advance.',
            ar: 'دوّن رقم الباب الذي دخلت منه الحرم، واتفق مسبقًا مع مجموعتك على باب للالتقاء.',
          ),
        ),
        _M(
          L10nText(tr: 'Kaybolursanız:', en: 'If you get lost:', ar: 'إذا ضللت الطريق:'),
          L10nText(
            tr: 'Paniğe kapılmayın. Belirlenen buluşma kapısına gidin veya olduğunuz yerde kalıp rehberinizi arayın. '
                'Harem görevlilerinden ve güvenlik personelinden yardım isteyin. Mekke\'deki Diyanet Din Hizmetleri '
                'Ataşeliği Türk vatandaşlarına yardımcı olur.',
            en: "Don't panic. Go to the agreed meeting gate, or stay where you are and call your guide. "
                'Ask the Haram staff and security personnel for help. The Diyanet Religious Services Attaché '
                'in Makkah assists Turkish citizens.',
            ar: 'لا تفزع. اذهب إلى باب الالتقاء المتفق عليه، أو ابقَ في مكانك واتصل بمرشدك. '
                'واطلب المساعدة من موظفي الحرم ورجال الأمن. وتساعد الملحقية الدينية التابعة لرئاسة الشؤون الدينية التركية '
                'في مكة المواطنين الأتراك.',
          ),
        ),
        _M(
          L10nText(tr: 'Eşyalar:', en: 'Belongings:', ar: 'الأغراض:'),
          L10nText(
            tr: 'Pasaportunuzu otel kasasında, fotokopisini ve telefonunuzdaki fotoğrafını yanınızda tutun. '
                'Kalabalıkta cüzdan ve telefonunuzu ön cepte ya da boyun çantasında taşıyın.',
            en: 'Keep your passport in the hotel safe, and keep a photocopy and a photo of it on your phone with you. '
                'In crowds, carry your wallet and phone in a front pocket or a neck pouch.',
            ar: 'احفظ جوازك في خزنة الفندق، واحتفظ معك بنسخة مصورة منه وصورة على هاتفك. '
                'وفي الزحام احمل محفظتك وهاتفك في جيب أمامي أو في حقيبة رقبة.',
          ),
        ),
        _M(
          L10nText(tr: 'Kalabalık:', en: 'Crowds:', ar: 'الزحام:'),
          L10nText(
            tr: 'Tavaf ve sa\'yde akışa karşı yürümeyin, kapı ve merdiven önlerinde durmayın. Yaşlı ve çocuklar için '
                'daha sakin saatleri ve üst katları tercih edin.',
            en: "Do not walk against the flow during Tawaf and Sa'i, and do not stop in front of doors and stairs. For the elderly and children, "
                'prefer quieter hours and the upper floors.',
            ar: 'لا تمشِ عكس اتجاه الحركة في الطواف والسعي، ولا تقف أمام الأبواب والسلالم. واختر لكبار السن والأطفال '
                'الأوقات الأهدأ والطوابق العليا.',
          ),
        ),
      ],
    ),
  ];

  // ───────── Önemli Telefonlar ─────────
  static const _santral = L10nText(tr: 'Santral', en: 'Switchboard', ar: 'المقسم');

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(t.infoCardTravelGuide)),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        children: [
          InfoNote(t.infoGuideRulesWarning, warning: true),
          for (var i = 0; i < _bolumler.length; i++) _bolumKarti(context, _bolumler[i], i == 0),
          ExpandableInfoCard(
            icon: Icons.phone_in_talk_rounded,
            title: t.infoGuidePhonesTitle,
            subtitle: t.infoGuidePhonesSub,
            children: [
              InfoSectionLabel(t.infoGuideSaudiEmergency),
              const _Telefon(ad: L10nText(tr: 'Ambulans (Kızılay)', en: 'Ambulance (Red Crescent)', ar: 'الإسعاف (الهلال الأحمر)'), numara: '997'),
              const _Telefon(
                  ad: L10nText(tr: 'Sivil Savunma (itfaiye, kurtarma)', en: 'Civil Defence (fire, rescue)', ar: 'الدفاع المدني (الإطفاء والإنقاذ)'),
                  numara: '998'),
              const _Telefon(ad: L10nText(tr: 'Polis', en: 'Police', ar: 'الشرطة'), numara: '999'),
              InfoNote(t.infoGuide911Note),
              InfoSectionLabel(t.infoGuideJeddahConsulate),
              const _Telefon(ad: _santral, numara: '+966 12 660 16 07'),
              const _Telefon(ad: _santral, numara: '+966 12 665 48 73'),
              const _Telefon(
                  ad: L10nText(tr: 'Nöbetçi (acil durum)', en: 'On-duty officer (emergencies)', ar: 'المناوب (للطوارئ)'),
                  numara: '+966 556 99 3160'),
              const _Eposta(adres: 'consulate.jeddah@mfa.gov.tr'),
              const _Telefon(
                  ad: L10nText(
                      tr: 'Mekke Din Hizmetleri Ataşeliği',
                      en: 'Religious Services Attaché, Makkah',
                      ar: 'الملحقية الدينية التركية في مكة'),
                  numara: '+966 12 566 82 73'),
              InfoSectionLabel(t.infoGuideRiyadhEmbassy),
              const _Telefon(ad: _santral, numara: '+966 11 482 01 01'),
              const _Telefon(
                  ad: L10nText(
                      tr: 'Nöbetçi (yalnız acil durumlar)',
                      en: 'On-duty officer (emergencies only)',
                      ar: 'المناوب (للطوارئ فقط)'),
                  numara: '+966 53 987 1923'),
              const _Eposta(adres: 'embassy.riyadh@mfa.gov.tr'),
              InfoSectionLabel(t.infoGuideMfa),
              const _Telefon(
                  ad: L10nText(
                      tr: 'Konsolosluk Çağrı Merkezi (7/24)',
                      en: 'Consular Call Centre (24/7)',
                      ar: 'مركز الاتصال القنصلي (24/7)'),
                  numara: '+90 312 292 29 29'),
              InfoNote(t.infoCheckBeforeTravel, warning: true),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            t.infoGuideSources,
            style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted),
          ),
        ],
      ),
    );
  }

  Widget _bolumKarti(BuildContext context, _Bolum b, bool ilk) {
    return ExpandableInfoCard(
      icon: b.icon,
      title: b.title.of(context),
      subtitle: b.subtitle.of(context),
      initiallyExpanded: ilk,
      children: [
        for (final m in b.items) BulletText(m.text.of(context), bold: m.bold.of(context)),
        if (b.guncellik) InfoNote(context.l10n.infoCheckBeforeTravel, warning: true),
      ],
    );
  }
}

Future<void> _ac(BuildContext context, Uri uri) async {
  final ok = await launchUrl(uri);
  if (!ok && context.mounted) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(context.l10n.infoCouldNotOpen)));
  }
}

class _Telefon extends StatelessWidget {
  const _Telefon({required this.ad, required this.numara});

  final L10nText ad;
  final String numara;

  @override
  Widget build(BuildContext context) {
    return _Satir(
      icon: Icons.call_rounded,
      ad: ad.of(context),
      deger: numara,
      onTap: () => _ac(context, Uri(scheme: 'tel', path: numara.replaceAll(' ', ''))),
    );
  }
}

class _Eposta extends StatelessWidget {
  const _Eposta({required this.adres});

  final String adres;

  @override
  Widget build(BuildContext context) {
    return _Satir(
      icon: Icons.mail_outline_rounded,
      ad: context.l10n.infoEmail,
      deger: adres,
      onTap: () => _ac(context, Uri(scheme: 'mailto', path: adres)),
    );
  }
}

class _Satir extends StatelessWidget {
  const _Satir({required this.icon, required this.ad, required this.deger, required this.onTap});

  final IconData icon;
  final String ad;
  final String deger;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Row(
          children: [
            InfoIconBadge(icon, size: 34),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ad, style: const TextStyle(fontSize: 12.5, color: AppColors.textMuted)),
                  // Telefon ve e-posta her dilde soldan sağa okunur.
                  Text(deger,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.text)),
                ],
              ),
            ),
            const Icon(Icons.chevron_right_rounded, color: AppColors.textMuted),
          ],
        ),
      ),
    );
  }
}
