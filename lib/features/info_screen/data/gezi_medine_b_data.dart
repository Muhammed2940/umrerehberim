import 'package:latlong2/latlong.dart';

import 'gezilecek_yerler_data.dart';
import 'l10n_text.dart';

// Medine'de gezilecek yerler (ek liste B). Doğrulama tarihi: 6 Kasım 2026.
//
// Tarihî ve dinî bilgiler: TDV İslâm Ansiklopedisi ("Hicaz Demiryolu",
// "Fahreddin Paşa", "Zülhuleyfe", "Rûme Kuyusu" maddeleri); Vikipedi
// (ar: مجمع الملك فهد لطباعة المصحف الشريف، مسجد الإجابة، مسجد العنبرية;
// en: Hejaz railway, Hejaz Railway Museum); Saudipedia ("بئر رومة");
// Kral Fahd Kompleksi'nin resmî sitesi (qurancomplex.gov.sa) ve Arab News
// ziyaretçi haberleri.
// Ayetler quran.com API (text_uthmani) ile, hadislerin Arapça metinleri
// fawazahmed0/hadith-api (Buhârî 1524 ve 2778, Müslim 2890, Tirmizî 3703,
// Nesâî 3608) ile doğrulandı.
// Koordinatlar OpenStreetMap (Overpass) nesnelerinden alındı; her girişte
// nesne numarası yazılıdır.

const List<GeziYeri> kMedineYerleriB = [
  // ------------------------------------------------------------------ 1
  GeziYeri(
    id: 'kuran_basim_kompleksi',
    bolge: GeziBolge.medine,
    tur: GeziTur.muze,
    ad: L10nText(
      tr: "Kral Fahd Mushaf-ı Şerif Basım Kompleksi",
      en: "King Fahd Glorious Qur'an Printing Complex",
      ar: "مجمع الملك فهد لطباعة المصحف الشريف",
    ),
    arapcaAd: L10nText.same("مجمع الملك فهد لطباعة المصحف الشريف"),
    altBaslik: L10nText(
      tr: "Medine Mushafı'nın basıldığı dünyanın en büyük Kur'an matbaası",
      en: "The world's largest Qur'an press, home of the Madinah Mushaf",
      ar: "أكبر مطبعة للمصحف الشريف في العالم، ومنها مصحف المدينة النبوية",
    ),
    sehir: L10nText(tr: "Medine, kuzeybatı", en: "Madinah, north-west", ar: "المدينة المنورة، الشمال الغربي"),
    konum: LatLng(24.5158247, 39.5413816), // OSM way 358191162
    genel: L10nText(
      tr: "Kral Fahd Mushaf-ı Şerif Basım Kompleksi, Medine'nin kuzeybatısında, Mescid-i Nebevî'ye kuş uçuşu yaklaşık 9 km uzaklıktadır. Yaklaşık 250.000 m²'lik bir alana kurulan kompleks, Suudi Arabistan İslâmî İşler, Davet ve İrşad Bakanlığı'na bağlıdır. Kur'an-ı Kerim'in basımı, kaydı, tercümesi ve dağıtımı için kurulmuş dünyanın en büyük kuruluşu kabul edilir.\n\n"
          "Bugün dünyanın pek çok yerinde elden ele dolaşan “Medine Mushafı”, Suriyeli hattat Osman Taha'nın yazdığı nüsha esas alınarak burada basılır. Kompleks yılda milyonlarca Mushaf basacak kapasitededir; Kur'an meallerini yetmişten fazla dilde yayımlamış, kıraat kayıtları, Kur'an araştırmaları ve dijital yayınlar da hazırlamaktadır. Burada basılan Mushaflar hacı ve umrecilere, dünyadaki camilere ve kurumlara hediye olarak dağıtılır.",
      en: "The King Fahd Glorious Qur'an Printing Complex lies in the north-west of Madinah, about 9 km as the crow flies from the Prophet's Mosque. Built on an area of some 250,000 m², it is under the supervision of the Saudi Ministry of Islamic Affairs, Da'wah and Guidance. It is regarded as the largest institution in the world for printing, recording, translating and distributing the Holy Qur'an.\n\n"
          "The “Madinah Mushaf”, found today in homes and mosques all over the world, is printed here from the copy written by the Syrian calligrapher Uthman Taha. The complex can print millions of copies a year; it has published translations of the meanings of the Qur'an in more than seventy languages, and also produces recitation recordings, Qur'anic studies and digital publications. Copies printed here are given as gifts to pilgrims and to mosques and institutions around the world.",
      ar: "يقع مجمع الملك فهد لطباعة المصحف الشريف في شمال غرب المدينة المنورة، على بعد نحو تسعة كيلومترات خطًّا مستقيمًا من المسجد النبوي. أُقيم على مساحة تقارب 250 ألف متر مربع، ويتبع وزارة الشؤون الإسلامية والدعوة والإرشاد، ويُعدّ أكبر مؤسسة في العالم تُعنى بطباعة القرآن الكريم وتسجيله وترجمة معانيه وتوزيعه.\n\n"
          "وفيه يُطبع «مصحف المدينة النبوية» المنتشر اليوم في أنحاء العالم، على أساس النسخة التي كتبها الخطاط السوري عثمان طه. وتبلغ طاقة المجمع ملايين النسخ في العام، وقد أصدر ترجمات لمعاني القرآن بأكثر من سبعين لغة، إلى جانب التسجيلات الصوتية للتلاوات والدراسات القرآنية والإصدارات الرقمية. وتُهدى المصاحف المطبوعة فيه إلى الحجاج والمعتمرين والمساجد والمؤسسات في العالم.",
    ),
    tarihce: L10nText(
      tr: "Kompleksin temeli 16 Muharrem 1403'te (Kasım 1982) Kral Fahd b. Abdülaziz tarafından atıldı ve 6 Safer 1405'te (1984 sonu) hizmete açıldı. Amaç, Kur'an-ı Kerim'in hatasız, güzel ve okunaklı nüshalarını büyük sayılarda basmak ve bütün dünyadaki Müslümanlara ulaştırmaktı.\n\n"
          "Basılan her Mushaf, âlimlerden oluşan bir ilmî kurul tarafından kontrol edilir; baskının her aşamasında harf harf inceleme yapılır ve kusurlu nüshalar ayrılır. Hafs rivayetinin yanında başka kıraat rivayetlerine göre de Mushaflar basılır. Kompleks bünyesinde bir tercüme merkezi, Kur'an araştırmaları merkezi ve dijital araştırmalar merkezi bulunur.\n\n"
          "Kuruluşundan bu yana yüz milyonlarca Mushaf, meal ve kayıt üretilmiştir. Kompleks ziyaretçilere de açıktır; resmî açıklamalara göre her yıl dünyanın dört bir yanından yüz binlerce kişi, son yıllarda bir milyonu aşkın ziyaretçi, basım sürecini yerinde görmüştür.",
      en: "The foundation stone of the complex was laid by King Fahd ibn Abd al-Aziz on 16 Muharram 1403 AH (November 1982), and it was opened on 6 Safar 1405 AH (late 1984). The aim was to print accurate, beautiful and legible copies of the Holy Qur'an in great numbers and to bring them to Muslims all over the world.\n\n"
          "Every copy printed is checked by a scientific committee of scholars; at each stage of printing the text is examined letter by letter, and faulty copies are set aside. In addition to the riwayah of Hafs, copies are also printed according to other recognised readings. The complex houses a translation centre, a centre for Qur'anic studies and a centre for digital research.\n\n"
          "Since its foundation it has produced hundreds of millions of copies, translations and recordings. The complex is also open to visitors; according to official statements, hundreds of thousands of people from around the world come every year to see the printing process, and in recent years the number has exceeded one million.",
      ar: "وضع الملك فهد بن عبد العزيز حجر الأساس للمجمع في 16 محرم 1403هـ (نوفمبر 1982م)، وافتُتح في 6 صفر 1405هـ (أواخر 1984م). وكان الهدف طباعة نسخ صحيحة جميلة واضحة من القرآن الكريم بأعداد كبيرة وإيصالها إلى المسلمين في أنحاء العالم.\n\n"
          "وتخضع كل نسخة لمراجعة لجنة علمية من العلماء، ويُدقَّق النص حرفًا حرفًا في كل مراحل الطباعة، وتُستبعد النسخ المعيبة. وإلى جانب رواية حفص تُطبع مصاحف بروايات أخرى معتمدة. ويضم المجمع مركزًا للترجمات ومركزًا للدراسات القرآنية ومركزًا للبحوث الرقمية.\n\n"
          "وأنتج المجمع منذ إنشائه مئات الملايين من المصاحف والترجمات والتسجيلات. وهو مفتوح للزوار، وتذكر البيانات الرسمية أن مئات الآلاف من أنحاء العالم يزورونه كل عام للاطلاع على مراحل الطباعة، وقد تجاوز عددهم في السنوات الأخيرة مليون زائر.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "16 Muharrem 1403 (1982)", en: "16 Muharram 1403 AH (1982)", ar: "16 محرم 1403هـ (1982م)"),
        metin: L10nText(
          tr: "Kral Fahd kompleksin temelini attı.",
          en: "King Fahd laid the foundation stone of the complex.",
          ar: "وضع الملك فهد حجر الأساس للمجمع.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "6 Safer 1405 (1984)", en: "6 Safar 1405 AH (1984)", ar: "6 صفر 1405هـ (1984م)"),
        metin: L10nText(
          tr: "Kompleks hizmete açıldı; Osman Taha'nın hattıyla Medine Mushafı basılmaya başlandı.",
          en: "The complex was opened, and printing of the Madinah Mushaf in the hand of Uthman Taha began.",
          ar: "افتُتح المجمع وبدأت طباعة مصحف المدينة النبوية بخط عثمان طه.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Sonraki yıllar", en: "The following years", ar: "السنوات التالية"),
        metin: L10nText(
          tr: "Meal, tefsir, kıraat kayıtları ve dijital yayınlarla faaliyet alanı genişledi.",
          en: "Its work expanded to translations, commentaries, recitation recordings and digital publications.",
          ar: "اتسع نشاطه ليشمل الترجمات والتفاسير وتسجيلات التلاوة والإصدارات الرقمية.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "2023-2024", en: "2023-2024", ar: "2023-2024م"),
        metin: L10nText(
          tr: "Bir yılda bir milyonu aşkın kişi kompleksi ziyaret etti.",
          en: "More than one million people visited the complex in a single year.",
          ar: "زار المجمعَ أكثرُ من مليون شخص في عام واحد.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Kompleks dinî bir ziyaret yeri değil, Kur'an-ı Kerim'e yapılan hizmetin görülebileceği bir kurumdur. Burada Allah'ın, Kitabını koruyacağını bildiren vaadini ve bu korumanın bir vesilesi olarak Mushafın titizlikle yazılıp basılmasını yakından görmek mümkündür.\n\n"
          "Sahâbe döneminde Hz. Ebû Bekir zamanında Kur'an'ın bir araya getirilmesi ve Hz. Osman zamanında çoğaltılarak şehirlere gönderilmesiyle başlayan bu hizmet, bugün matbaa ve dijital imkânlarla sürmektedir. Ziyaret, Kur'an'la bağımızı tazelemek için güzel bir vesiledir.",
      en: "The complex is not a place of religious visitation but an institution where service to the Holy Qur'an can be seen. Here one can witness up close the promise of Allah to preserve His Book, and the careful writing and printing of the Mushaf as one of the means of that preservation.\n\n"
          "This service began in the time of the Companions, when the Qur'an was compiled under Abu Bakr and copied and sent to the cities under Uthman, and today it continues with the printing press and digital means. A visit is a fine occasion to renew our bond with the Qur'an.",
      ar: "ليس المجمع مكانًا للزيارة الدينية، بل هو مؤسسة تتجلى فيها خدمة القرآن الكريم، ويرى فيها الزائر عن قرب وعد الله بحفظ كتابه، والعناية الدقيقة بكتابة المصحف وطباعته سببًا من أسباب هذا الحفظ.\n\n"
          "وقد بدأت هذه الخدمة في عهد الصحابة بجمع القرآن في زمن أبي بكر ونسخه وإرساله إلى الأمصار في زمن عثمان رضي الله عنهما، وهي مستمرة اليوم بالمطابع والوسائل الرقمية. والزيارة فرصة طيبة لتجديد الصلة بالقرآن.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "إِنَّا نَحْنُ نَزَّلْنَا ٱلذِّكْرَ وَإِنَّا لَهُۥ لَحَـٰفِظُونَ",
        meal: L10nText(
          tr: "Şüphesiz o Zikr'i (Kur'an'ı) biz indirdik, onun koruyucusu da elbette biziz.",
          en: "Indeed, it is We who sent down the Reminder (the Qur'an), and indeed, We will be its guardian.",
          ar: "إنا نحن نزّلنا الذكر وإنا له لحافظون.",
        ),
        kaynak: L10nText(tr: "Hicr 15/9", en: "Qur'an 15:9", ar: "سورة الحجر، الآية 9"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Ziyaret için genellikle önceden randevu alınır; kompleksin resmî sitesinden ya da resmî ziyaret uygulamasından güncel saatleri ve randevu şartını kontrol edin. Gruplar çoğunlukla acente aracılığıyla gider.",
        en: "Visits usually require an appointment; check the current hours and booking requirements on the complex's official website or its official visit app. Groups usually go through their agency.",
        ar: "تحتاج الزيارة عادةً إلى موعد مسبق، فتحقق من المواعيد وشروط الحجز في الموقع الرسمي للمجمع أو تطبيق الزيارة الرسمي. وتذهب المجموعات غالبًا عن طريق وكالتها.",
      ),
      L10nText(
        tr: "Ziyaretler genellikle sabah saatlerindedir; basım bölümleri camlı galerilerden, yukarıdan izlenir.",
        en: "Visits are usually in the morning; the printing halls are viewed from glass-walled galleries above.",
        ar: "تكون الزيارات غالبًا في الفترة الصباحية، وتُشاهد صالات الطباعة من ممرات زجاجية علوية.",
      ),
      L10nText(
        tr: "Ziyaret sonunda misafirlere çoğunlukla Mushaf ve meal hediye edilir; Mushafa abdestli dokunmaya ve saygıyla taşımaya özen gösterin.",
        en: "At the end of the visit guests are usually given a Mushaf and a translation as a gift; try to touch the Mushaf in a state of wudu and carry it with respect.",
        ar: "يُهدى الزوار غالبًا في نهاية الزيارة مصحفًا وترجمة لمعانيه، فاحرص على أن تمسّ المصحف على طهارة وأن تحمله بتوقير.",
      ),
      L10nText(
        tr: "Kimlik veya pasaport bulundurun; güvenlik kontrolü yapılabilir. Fotoğraf çekiminde görevlilerin talimatlarına uyun.",
        en: "Carry your ID or passport; there may be a security check. Follow the staff's instructions about photography.",
        ar: "احمل هويتك أو جواز سفرك، فقد يكون هناك تفتيش أمني، والتزم بتعليمات المنظمين بشأن التصوير.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Ziyaret saatleri, randevu şartı ve kadın ziyaretçiler için düzenlemeler dönemden döneme değişebilir. Ramazan ve hac mevsiminde program farklı olabilir; gitmeden önce resmî kaynaklardan kontrol edin.",
      en: "Visiting hours, the appointment requirement and arrangements for women visitors may change from time to time. The schedule may differ in Ramadan and the Hajj season; check official sources before you go.",
      ar: "قد تتغير مواعيد الزيارة وشرط الحجز والترتيبات الخاصة بالزائرات من وقت لآخر، وقد يختلف البرنامج في رمضان وموسم الحج، فتحقق من المصادر الرسمية قبل الذهاب.",
    ),
    uygunSaat: L10nText(tr: "Sabah (randevuya göre)", en: "Morning (by appointment)", ar: "الصباح (حسب الموعد)"),
    ziyaretSuresi: L10nText(tr: "45 dakika - 1 saat", en: "45 minutes - 1 hour", ar: "45 دقيقة إلى ساعة"),
    anlatim: L10nText(
      tr: "Elinizde tuttuğunuz Mushafın arka sayfasına hiç baktınız mı? Pek çoğumuzun evinde, camisinde, hatta telefonunda okuduğu Medine Mushafı, işte şu anda bulunduğumuz bu binalarda basılır. Burası Kral Fahd Mushaf-ı Şerif Basım Kompleksi'dir.\n\n"
          "Kompleksin temeli 1982 yılında atıldı ve iki yıl sonra hizmete açıldı. Amaç basitti ama büyüktü. Allah'ın Kitabını hatasız, güzel ve okunaklı bir şekilde basmak ve dünyanın her köşesindeki Müslümanlara ulaştırmak. Bugün burada basılan Mushafların yazısı, Suriyeli hattat Osman Taha'nın kalemine aittir. Onun sabırla yazdığı sayfalar, milyonlarca nüsha halinde çoğaltılarak dünyaya yayılmıştır.\n\n"
          "Birazdan camlı galerilerden basım salonlarını izleyeceksiniz. Kâğıdın makinelere girişini, sayfaların basılmasını, katlanıp ciltlenmesini göreceksiniz. Her aşamada âlimlerden oluşan kurullar metni harf harf kontrol eder. Tek bir harf hatası olan nüsha bile ayrılır. Bu titizlik, Kur'an'a duyulan saygının bir ifadesidir.\n\n"
          "Kur'an-ı Kerim'de Rabbimiz şöyle buyurur. Şüphesiz o Zikr'i biz indirdik, onun koruyucusu da elbette biziz. Bu koruma, Hz. Ebû Bekir zamanında Kur'an'ın bir araya getirilmesiyle, Hz. Osman zamanında çoğaltılıp şehirlere gönderilmesiyle sürdü. Bugün aynı hizmet matbaalarla, kayıtlarla ve yetmişi aşkın dildeki meallerle devam ediyor.\n\n"
          "Buradan çıkarken size bir Mushaf hediye edilebilir. Onu yalnızca bir hatıra olarak değil, okunmak için verilmiş bir emanet olarak düşünün. Belki bu yolculuğun en güzel hatırası, döndüğünüzde her gün birkaç sayfa okuyacağınız bu Mushaf olur.",
      en: "Have you ever looked at the last page of the Mushaf you hold in your hands? The Madinah Mushaf, which so many of us read at home, in the mosque or even on our phones, is printed in the very buildings where we are now. This is the King Fahd Glorious Qur'an Printing Complex.\n\n"
          "The foundation stone was laid in 1982 and the complex opened two years later. Its aim was simple but great: to print the Book of Allah accurately, beautifully and legibly, and to bring it to Muslims in every corner of the world. The script of the copies printed here is by the Syrian calligrapher Uthman Taha. The pages he wrote so patiently have been reproduced in millions of copies and spread across the world.\n\n"
          "In a moment you will look down on the printing halls from glass galleries. You will see the paper entering the machines, the pages being printed, folded and bound. At every stage, committees of scholars check the text letter by letter. Even a copy with a single wrong letter is set aside. This care is an expression of reverence for the Qur'an.\n\n"
          "In the Qur'an our Lord says: Indeed, it is We who sent down the Reminder, and indeed, We will be its guardian. This preservation continued when the Qur'an was compiled under Abu Bakr, and when it was copied and sent to the cities under Uthman. Today the same service continues with printing presses, recordings and translations in more than seventy languages.\n\n"
          "As you leave you may be given a Mushaf as a gift. Think of it not only as a souvenir, but as a trust given to you to be read. Perhaps the most beautiful memory of this journey will be this Mushaf, from which you read a few pages every day when you return home.",
      ar: "هل نظرتم يومًا إلى الصفحة الأخيرة من المصحف الذي بين أيديكم؟ إن مصحف المدينة النبوية الذي يقرأ فيه كثير منا في بيوتهم ومساجدهم بل وفي هواتفهم، يُطبع في هذه المباني التي نقف فيها الآن. هذا مجمع الملك فهد لطباعة المصحف الشريف.\n\n"
          "وُضع حجر أساس المجمع سنة 1982م وافتُتح بعد عامين، وكان هدفه بسيطًا عظيمًا: أن يُطبع كتاب الله صحيحًا جميلًا واضحًا، وأن يصل إلى المسلمين في كل مكان. وخط المصاحف المطبوعة هنا للخطاط السوري عثمان طه، فالصفحات التي كتبها بصبر نُسخت ملايين النسخ وانتشرت في العالم.\n\n"
          "بعد قليل ستشاهدون صالات الطباعة من ممرات زجاجية، وترون الورق يدخل الآلات، والصفحات تُطبع وتُطوى وتُجلّد. وفي كل مرحلة تراجع لجان من العلماء النص حرفًا حرفًا، وتُستبعد النسخة ولو كان فيها خطأ في حرف واحد. وهذه العناية تعبير عن تعظيم القرآن.\n\n"
          "يقول ربنا في كتابه الكريم: إنا نحن نزّلنا الذكر وإنا له لحافظون. وقد تجلى هذا الحفظ في جمع القرآن في عهد أبي بكر، ونسخه وإرساله إلى الأمصار في عهد عثمان رضي الله عنهما، وتستمر الخدمة نفسها اليوم بالمطابع والتسجيلات والترجمات بأكثر من سبعين لغة.\n\n"
          "وقد يُهدى إليكم مصحف عند خروجكم، فلا تجعلوه تذكارًا فحسب، بل أمانة أُعطيت لكم لتُقرأ. ولعل أجمل ذكرى من هذه الرحلة أن تقرؤوا في هذا المصحف كل يوم صفحات بعد عودتكم.",
    ),
    kaynaklar: [
      GeziKaynak("Vikipedi (ar), “مجمع الملك فهد لطباعة المصحف الشريف”", "https://ar.wikipedia.org/wiki/مجمع_الملك_فهد_لطباعة_المصحف_الشريف"),
      GeziKaynak("Wikipedia (en), “King Fahd Complex for the Printing of the Holy Quran”", "https://en.wikipedia.org/wiki/King_Fahd_Complex_for_the_Printing_of_the_Holy_Quran"),
      GeziKaynak("Kral Fahd Kompleksi resmî sitesi", "https://qurancomplex.gov.sa/"),
      GeziKaynak("Arab News, ziyaretçi sayısı haberi (2024)", "https://www.arabnews.pk/node/2546406"),
      GeziKaynak("Kur'an, Hicr 15/9 (quran.com)", "https://quran.com/15/9"),
      GeziKaynak("OpenStreetMap, way 358191162", "https://www.openstreetmap.org/way/358191162"),
    ],
  ),

  // ------------------------------------------------------------------ 2
  GeziYeri(
    id: 'hicaz_demiryolu',
    bolge: GeziBolge.medine,
    tur: GeziTur.muze,
    ad: L10nText(
      tr: "Hicaz Demiryolu Medine İstasyonu ve Müzesi",
      en: "Hejaz Railway Station and Museum, Madinah",
      ar: "محطة سكة حديد الحجاز ومتحفها بالمدينة المنورة",
    ),
    arapcaAd: L10nText.same("محطة سكة حديد الحجاز"),
    altBaslik: L10nText(
      tr: "Sultan II. Abdülhamid'in Şam-Medine hattının son durağı ve Anberiye Camii",
      en: "The last stop of Sultan Abdülhamid II's Damascus-Madinah line, and the Anbariyah Mosque",
      ar: "المحطة الأخيرة لخط دمشق - المدينة في عهد السلطان عبد الحميد الثاني، ومسجد العنبرية",
    ),
    sehir: L10nText(tr: "Medine, Anberiye semti", en: "Madinah, al-Anbariyah district", ar: "المدينة المنورة، حي العنبرية"),
    konum: LatLng(24.4619457, 39.6010096), // OSM way 112566263 (Al Hijaz Railway Museum)
    genel: L10nText(
      tr: "Hicaz Demiryolu Medine İstasyonu, Mescid-i Nebevî'nin yaklaşık 1 km güneybatısında, Anberiye semtindedir. Osmanlı Sultanı II. Abdülhamid'in emriyle Şam'dan Medine'ye kadar döşenen, yaklaşık 1300 km'lik Hicaz Demiryolu'nun son durağıdır. 1908'de açılan hat, hacıların Şam'dan Medine'ye kırk günde ancak varabildiği yolu beş güne indirmiştir.\n\n"
          "İstasyon külliyesinde yolcu binası, depolar ve atölyeler bulunuyordu. Hemen yanındaki Anberiye Camii, aynı yıl II. Abdülhamid tarafından istasyonla birlikte yaptırılmıştır. Siyah bazalt taşından, iki ince Osmanlı minaresi ve büyük tek kubbesiyle bugün Medine'de Osmanlı mimarisinin en güzel örneklerinden biridir. Restore edilen istasyon binası 2006'da Hicaz Demiryolu Müzesi olarak açılmış; müzede eski raylar, lokomotifler, vagonlar ve istasyon eşyaları sergilenmiştir.",
      en: "The Hejaz Railway Station in Madinah is in the al-Anbariyah district, about 1 km south-west of the Prophet's Mosque. It is the last stop of the Hejaz Railway, some 1,300 km long, laid from Damascus to Madinah by order of the Ottoman Sultan Abdülhamid II. Opened in 1908, the line cut the journey from Damascus to Madinah, which pilgrims had made in about forty days, to five.\n\n"
          "The station complex included a passenger building, warehouses and workshops. The Anbariyah Mosque right next to it was built by Abdülhamid II together with the station in the same year. Built of black basalt, with two slender Ottoman minarets and one large dome, it is today one of the finest examples of Ottoman architecture in Madinah. The restored station building opened in 2006 as the Hejaz Railway Museum, displaying old rails, locomotives, carriages and station equipment.",
      ar: "تقع محطة سكة حديد الحجاز في حي العنبرية، على بعد نحو كيلومتر واحد جنوب غرب المسجد النبوي، وهي المحطة الأخيرة لسكة حديد الحجاز التي امتدت نحو 1300 كيلومتر من دمشق إلى المدينة المنورة بأمر السلطان العثماني عبد الحميد الثاني. وقد افتُتح الخط سنة 1908م فاختصر رحلة الحجاج من دمشق إلى المدينة من نحو أربعين يومًا إلى خمسة أيام.\n\n"
          "وكانت المحطة تضم مبنى للركاب ومستودعات وورشًا. وبجوارها مسجد العنبرية الذي بناه السلطان عبد الحميد الثاني مع المحطة في العام نفسه، وهو مبني بالحجر البازلتي الأسود، وله مئذنتان عثمانيتان رشيقتان وقبة كبيرة واحدة، ويُعدّ اليوم من أجمل نماذج العمارة العثمانية في المدينة. وقد رُمّم مبنى المحطة وافتُتح سنة 2006م متحفًا لسكة حديد الحجاز، تُعرض فيه القضبان القديمة والقاطرات والعربات وأدوات المحطة.",
    ),
    tarihce: L10nText(
      tr: "Hacıların Şam'dan Medine ve Mekke'ye uzun, yorucu ve tehlikeli kervan yolculukları asırlar boyunca Osmanlı Devleti'nin başlıca dertlerinden biri olmuştu. II. Abdülhamid, 2 Mayıs 1900'de çıkardığı iradeyle Şam'dan Hicaz'a bir demiryolu yapılmasını emretti. İnşaat, padişahın tahta çıkışının yıl dönümü olan 1 Eylül 1900'de törenle başladı. Hattın Medine'den Mekke'ye, oradan Cidde ve Yemen'e uzatılması da planlanıyordu.\n\n"
          "Tahmini maliyet, devletin 1901 bütçesinin yüzde on sekizini aşan yaklaşık 4 milyon liraydı. II. Abdülhamid bağış kampanyasını 50.000 liralık kendi bağışıyla başlattı. Osmanlı ülkesinin her köşesinden ve Hindistan'dan Mısır'a kadar İslâm dünyasının dört bir yanından bağışlar geldi; bağış yapanlara nikel, gümüş ve altın Hicaz Demiryolu madalyaları verildi. Memur maaşlarından kesintiler, pullar ve özel gelirlerle desteklenen bu proje, ümmetin ortak eseri olarak görüldü.\n\n"
          "Teknik yönetim 1901'de Alman mühendis Meissner'e verildi; çoğu Osmanlı, Alman ve İtalyan kırk üç mühendis görev aldı. İşçilerin büyük kısmı, sayıları 7500'e kadar çıkan Osmanlı askerleriydi. Zamanla mühendislik işleri giderek Müslüman Osmanlı mühendislerine geçti. Hat 1903'te Amman'a, 1904'te Maan'a, 1907'de el-Ulâ'ya ulaştı ve 1 Eylül 1908'de Medine'de düzenlenen törenle işletmeye açıldı. Masrafı düşürmek için 1,05 m genişliğinde dar hat kullanılmıştı.\n\n"
          "Ne var ki Mekke'ye uzatma planı, Mekke Emîri Şerif Hüseyin ve bölge kabilelerinin muhalefeti yüzünden gerçekleşemedi. I. Dünya Savaşı'nda, Haziran 1916'daki Şerif Hüseyin isyanından sonra İngiliz subaylarının yönlendirdiği baskınlar hattı defalarca tahrip etti. Medine'nin tek ikmal yolu bu demiryoluydu. Fahreddin Paşa iki yıl yedi ay boyunca kuşatma altındaki şehri savundu; Hücre-i Saadet'teki kutsal emanetleri İstanbul'a gönderdi ve Mondros Mütarekesi'nden aylar sonra, 10 Ocak 1919'da şehri teslim etmek zorunda kaldı. Savaştan sonra hattın Suudi Arabistan'daki kısmı bir daha işletilemedi.",
      en: "For centuries the long, exhausting and dangerous caravan journeys of pilgrims from Damascus to Madinah and Makkah had been one of the main concerns of the Ottoman state. By a decree of 2 May 1900, Abdülhamid II ordered a railway to be built from Damascus to the Hejaz. Construction began with a ceremony on 1 September 1900, the anniversary of the Sultan's accession. There were also plans to extend the line from Madinah to Makkah and on to Jeddah and Yemen.\n\n"
          "The estimated cost was about 4 million lira, more than eighteen per cent of the state budget of 1901. Abdülhamid II opened the donation campaign with a personal gift of 50,000 lira. Donations came from every corner of the Ottoman lands and from across the Islamic world, from India to Egypt; donors were given nickel, silver and gold Hejaz Railway medals. Supported also by deductions from officials' salaries, stamps and special revenues, the project was seen as a common work of the Ummah.\n\n"
          "Technical management was given in 1901 to the German engineer Meissner; forty-three engineers took part, most of them Ottoman, German and Italian. Most of the labour was provided by Ottoman soldiers, up to 7,500 of them. Over time the engineering work passed increasingly to Muslim Ottoman engineers. The line reached Amman in 1903, Ma'an in 1904 and al-Ula in 1907, and was opened at a ceremony in Madinah on 1 September 1908. A narrow gauge of 1.05 m was used to reduce costs.\n\n"
          "The plan to extend it to Makkah, however, was never realised because of the opposition of Sharif Husayn, the Emir of Makkah, and the tribes of the region. In the First World War, after Sharif Husayn's revolt in June 1916, raids guided by British officers repeatedly destroyed the line. The railway was Madinah's only supply route. Fahreddin Pasha defended the besieged city for two years and seven months; he sent the sacred relics kept at the Prophet's Chamber to Istanbul, and was forced to surrender the city on 10 January 1919, months after the Armistice of Mudros. After the war the Saudi section of the line never operated again.",
      ar: "ظلت رحلات الحجاج الطويلة الشاقة الخطرة بالقوافل من دمشق إلى المدينة ومكة قرونًا من أكبر هموم الدولة العثمانية. وفي 2 مايو 1900م أصدر السلطان عبد الحميد الثاني إرادته بإنشاء سكة حديد من دمشق إلى الحجاز، وبدأ العمل باحتفال في 1 سبتمبر 1900م في ذكرى جلوسه على العرش. وكان من المخطط مدّ الخط من المدينة إلى مكة ثم إلى جدة واليمن.\n\n"
          "وقُدّرت التكلفة بنحو أربعة ملايين ليرة، أي أكثر من ثمانية عشر في المئة من ميزانية الدولة سنة 1901م. وافتتح السلطان حملة التبرعات بخمسين ألف ليرة من ماله، وتوالت التبرعات من أرجاء الدولة العثمانية ومن العالم الإسلامي من الهند إلى مصر، ومُنح المتبرعون أوسمة سكة حديد الحجاز من النيكل والفضة والذهب. ودُعم المشروع أيضًا باقتطاعات من رواتب الموظفين وبالطوابع وبموارد خاصة، فعُدّ عملًا مشتركًا للأمة.\n\n"
          "وأُسندت الإدارة الفنية سنة 1901م إلى المهندس الألماني مايسنر، وعمل فيه ثلاثة وأربعون مهندسًا أكثرهم عثمانيون وألمان وإيطاليون، وكان معظم العمال جنودًا عثمانيين بلغ عددهم نحو 7500. ثم انتقلت الأعمال الهندسية شيئًا فشيئًا إلى المهندسين العثمانيين المسلمين. وبلغ الخط عمّان سنة 1903م، ومعان سنة 1904م، والعُلا سنة 1907م، ثم افتُتح في المدينة المنورة باحتفال في 1 سبتمبر 1908م. واستُعمل فيه الخط الضيق بعرض 1.05 متر تقليلًا للنفقات.\n\n"
          "غير أن مدّ الخط إلى مكة لم يتحقق لمعارضة الشريف حسين أمير مكة وقبائل المنطقة. وفي الحرب العالمية الأولى، بعد ثورة الشريف حسين في يونيو 1916م، دمّرت الغارات التي وجّهها ضباط إنجليز الخطَّ مرات عديدة، وكانت السكة طريق الإمداد الوحيد للمدينة. ودافع فخر الدين باشا عن المدينة المحاصرة سنتين وسبعة أشهر، وأرسل الأمانات المقدسة التي كانت في الحجرة النبوية إلى إسطنبول، ثم اضطر إلى تسليم المدينة في 10 يناير 1919م بعد أشهر من هدنة مودروس. ولم يُشغَّل الجزء السعودي من الخط بعد الحرب.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "2 Mayıs 1900", en: "2 May 1900", ar: "2 مايو 1900م"),
        metin: L10nText(
          tr: "II. Abdülhamid Hicaz Demiryolu'nun yapılmasını emretti.",
          en: "Abdülhamid II ordered the construction of the Hejaz Railway.",
          ar: "أمر السلطان عبد الحميد الثاني بإنشاء سكة حديد الحجاز.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1 Eylül 1900", en: "1 September 1900", ar: "1 سبتمبر 1900م"),
        metin: L10nText(
          tr: "İnşaat, padişahın cülûs yıl dönümünde törenle başladı.",
          en: "Construction began with a ceremony on the anniversary of the Sultan's accession.",
          ar: "بدأ العمل باحتفال في ذكرى جلوس السلطان.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1903-1907", en: "1903-1907", ar: "1903-1907م"),
        metin: L10nText(
          tr: "Hat Amman (1903), Maan (1904) ve el-Ulâ'ya (1907) ulaştı.",
          en: "The line reached Amman (1903), Ma'an (1904) and al-Ula (1907).",
          ar: "بلغ الخط عمّان (1903م) ومعان (1904م) والعُلا (1907م).",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1 Eylül 1908", en: "1 September 1908", ar: "1 سبتمبر 1908م"),
        metin: L10nText(
          tr: "Medine istasyonu açıldı; aynı yıl yanındaki Anberiye Camii yapıldı.",
          en: "The Madinah station was opened; the Anbariyah Mosque beside it was built the same year.",
          ar: "افتُتحت محطة المدينة، وبُني بجوارها مسجد العنبرية في العام نفسه.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1916-1919", en: "1916-1919", ar: "1916-1919م"),
        metin: L10nText(
          tr: "Hat baskınlarla tahrip edildi; Fahreddin Paşa Medine'yi savundu, şehir 10 Ocak 1919'da teslim edildi.",
          en: "The line was destroyed by raids; Fahreddin Pasha defended Madinah, and the city was surrendered on 10 January 1919.",
          ar: "دُمّر الخط بالغارات، ودافع فخر الدين باشا عن المدينة حتى سُلّمت في 10 يناير 1919م.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "2006", en: "2006", ar: "2006م"),
        metin: L10nText(
          tr: "Restore edilen istasyon Hicaz Demiryolu Müzesi olarak açıldı.",
          en: "The restored station opened as the Hejaz Railway Museum.",
          ar: "افتُتحت المحطة بعد ترميمها متحفًا لسكة حديد الحجاز.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Burası dinî bir ziyaret mahalli değil, tarihî bir yerdir. Ancak Hicaz Demiryolu, Allah'ın misafirleri olan hacılara hizmet etmek, Haremeyn'e ulaşmayı kolaylaştırmak niyetiyle yapılmış ve İslâm dünyasının dört bir yanından gelen bağışlarla yükselmiş bir eserdir. Bu yönüyle Müslümanların Haremeyn'e duyduğu sevginin ve birlik içinde hayra koşmalarının bir sembolüdür.\n\n"
          "Türkiye'den gelen ziyaretçiler için istasyon, Medine'yi son ana kadar savunan Fahreddin Paşa'yı ve Mehmetçiğin fedakârlığını da hatırlatır. Ziyaret, tarihten ibret almak ve hayır için gösterilen gayreti anmak için bir vesiledir.",
      en: "This is a historic site rather than a place of religious visitation. Yet the Hejaz Railway was built with the intention of serving the pilgrims, the guests of Allah, and making it easier to reach the Two Holy Sanctuaries, and it rose thanks to donations from every corner of the Islamic world. In this sense it is a symbol of Muslims' love for the Haramayn and of their striving together for good.\n\n"
          "For visitors from Turkey the station also recalls Fahreddin Pasha, who defended Madinah to the very end, and the sacrifice of the Ottoman soldiers. A visit is an occasion to draw lessons from history and to remember the effort made for a good cause.",
      ar: "هذا مكان تاريخي وليس موضع زيارة دينية. لكن سكة حديد الحجاز أُنشئت بنية خدمة الحجاج ضيوف الرحمن وتيسير الوصول إلى الحرمين، وقامت بتبرعات جاءت من كل أنحاء العالم الإسلامي، فهي بذلك رمز لمحبة المسلمين للحرمين وتعاونهم على الخير.\n\n"
          "وتذكّر المحطة الزوار القادمين من تركيا أيضًا بفخر الدين باشا الذي دافع عن المدينة حتى النهاية، وبتضحيات الجنود العثمانيين. والزيارة فرصة للاعتبار بالتاريخ وتذكّر الجهد المبذول في سبيل الخير.",
    ),
    adab: [
      L10nText(
        tr: "İstasyon Mescid-i Nebevî'den yürüyerek yaklaşık 15-20 dakikadır; sıcak saatlerde taksi ya da şehir turu otobüsü tercih edin.",
        en: "The station is about a 15-20 minute walk from the Prophet's Mosque; in the hot hours prefer a taxi or the city sightseeing bus.",
        ar: "تبعد المحطة عن المسجد النبوي نحو 15 إلى 20 دقيقة سيرًا، ويُفضّل في أوقات الحر استعمال سيارة أجرة أو حافلة الجولات السياحية.",
      ),
      L10nText(
        tr: "Anberiye Camii vakit namazlarına açıktır; Osmanlı mimarisini görmek için namaz vaktine denk getirebilirsiniz. Camide cuma namazı kılınmaz.",
        en: "The Anbariyah Mosque is open for the daily prayers; you can time your visit for a prayer to see its Ottoman architecture. Friday prayer is not held there.",
        ar: "مسجد العنبرية مفتوح للصلوات الخمس، فيمكنك أن توافق وقت صلاة لترى عمارته العثمانية. ولا تُقام فيه صلاة الجمعة.",
      ),
      L10nText(
        tr: "Müze kapalıysa bile istasyon binaları ve çevresindeki parkta sergilenen eski lokomotifler dışarıdan görülebilir.",
        en: "Even if the museum is closed, the station buildings and the old locomotives displayed in the park around it can be seen from outside.",
        ar: "وإن كان المتحف مغلقًا فيمكن رؤية مباني المحطة والقاطرات القديمة المعروضة في الحديقة المحيطة بها من الخارج.",
      ),
      L10nText(
        tr: "Fotoğraf çekerken mescit cemaatini ve namaz kılanları rahatsız etmeyin.",
        en: "When taking photos, do not disturb the congregation or people praying.",
        ar: "لا تزعج المصلين في المسجد عند التصوير.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Hicaz Demiryolu Müzesi 2026 itibarıyla yenileme çalışmaları nedeniyle kapalı görünmektedir; açılış durumu ve saatleri değişebilir. Gitmeden önce Visit Saudi veya Medine turizm kaynaklarından kontrol edin.",
      en: "As of 2026 the Hejaz Railway Museum appears to be closed for refurbishment; its status and opening hours may change. Check Visit Saudi or Madinah tourism sources before you go.",
      ar: "يبدو أن متحف سكة حديد الحجاز مغلق للتجديد حتى عام 2026م، وقد تتغير حالته ومواعيده، فتحقق من منصة روح السعودية أو مصادر السياحة في المدينة قبل الذهاب.",
    ),
    uygunSaat: L10nText(tr: "Akşamüstü (serin saatler)", en: "Late afternoon (cooler hours)", ar: "العصر (الأوقات المعتدلة)"),
    ziyaretSuresi: L10nText(tr: "30-45 dakika", en: "30-45 minutes", ar: "30 إلى 45 دقيقة"),
    anlatim: L10nText(
      tr: "Şimdi Mescid-i Nebevî'nin birkaç yüz metre güneybatısında, Anberiye semtindeyiz. Karşınızdaki taş binalar, bir zamanlar Şam'dan gelen trenlerin son durağıydı. Yanı başındaki iki zarif minareli siyah taş cami ise Anberiye Camii'dir. Her ikisi de Sultan İkinci Abdülhamid'in eseridir.\n\n"
          "Asırlar boyunca hacılar Şam'dan Medine'ye develerle, kırk günü bulan zorlu bir yolculukla gelirdi. Çöl sıcağı, susuzluk ve eşkıya baskınları yüzünden pek çoğu yollarda hayatını kaybederdi. Sultan Abdülhamid bu yolculuğu kolaylaştırmak için 1900 yılında Şam'dan Hicaz'a bir demiryolu yapılmasını emretti.\n\n"
          "Bu proje bütün İslâm dünyasının ortak eseri oldu. Padişah bağış kampanyasını kendi bağışıyla başlattı. Anadolu'nun köylerinden Hindistan'a, Mısır'dan Balkanlar'a kadar Müslümanlar paralarını, kimi zaman tek altınlarını bu yola verdi. Raylar çölün ortasında, yakıcı güneş altında, çoğu Osmanlı askeri olan binlerce işçinin alın teriyle döşendi.\n\n"
          "Ve 1 Eylül 1908'de ilk tören bu istasyonda yapıldı. Kırk günlük yol beş güne inmişti. Hacılar artık trenle Peygamber Efendimizin şehrine geliyordu. Aynı yıl istasyonun yanına bu güzel cami de yapıldı.\n\n"
          "Ne yazık ki hat uzun yaşamadı. Birinci Dünya Savaşı'nda raylar defalarca havaya uçuruldu. Medine kuşatıldı. Fahreddin Paşa ve askerleri iki yıl yedi ay boyunca açlığa ve hastalığa rağmen şehri savundu. Paşa, Hücre-i Saadet'teki kutsal emanetleri korunmaları için İstanbul'a gönderdi ve ancak savaş bittikten aylar sonra, 1919'un Ocak ayında şehri teslim etti.\n\n"
          "Bugün istasyon bir müze olarak korunuyor. Bu taşların önünde durduğunuzda, Haremeyn'e hizmet için birleşen bir ümmetin gayretini ve bu şehri sevenlerin vefasını hatırlayın. Onlar için bir Fâtiha okumak, bu ziyaretin en güzel hatırası olabilir.",
      en: "We are now in the al-Anbariyah district, a few hundred metres south-west of the Prophet's Mosque. The stone buildings before you were once the last stop of the trains from Damascus. The black stone mosque beside them, with its two elegant minarets, is the Anbariyah Mosque. Both are the work of Sultan Abdülhamid the Second.\n\n"
          "For centuries pilgrims came from Damascus to Madinah by camel, on a hard journey of some forty days. Because of the desert heat, thirst and bandit raids, many lost their lives on the way. To ease this journey, Sultan Abdülhamid ordered in 1900 that a railway be built from Damascus to the Hejaz.\n\n"
          "This project became a common work of the whole Islamic world. The Sultan opened the donation campaign with his own gift. From the villages of Anatolia to India, from Egypt to the Balkans, Muslims gave their money to this road, sometimes their only gold coin. The rails were laid in the middle of the desert, under a scorching sun, by the sweat of thousands of workers, most of them Ottoman soldiers.\n\n"
          "And on the first of September 1908 the opening ceremony was held at this station. The journey of forty days had become five. Pilgrims now arrived by train in the city of the Prophet. In the same year this beautiful mosque was built beside the station.\n\n"
          "Sadly, the line did not live long. In the First World War the rails were blown up again and again. Madinah was besieged. Fahreddin Pasha and his soldiers defended the city for two years and seven months despite hunger and disease. The Pasha sent the sacred relics kept at the Prophet's Chamber to Istanbul for safekeeping, and surrendered the city only in January 1919, months after the war had ended.\n\n"
          "Today the station is preserved as a museum. As you stand before these stones, remember the effort of an Ummah that united to serve the Two Holy Sanctuaries, and the loyalty of those who loved this city. Reciting al-Fatihah for them may be the most beautiful memory of this visit.",
      ar: "نحن الآن في حي العنبرية على بعد مئات الأمتار جنوب غرب المسجد النبوي. هذه المباني الحجرية التي أمامكم كانت يومًا المحطة الأخيرة للقطارات القادمة من دمشق، وهذا المسجد الحجري الأسود ذو المئذنتين الرشيقتين بجوارها هو مسجد العنبرية، وكلاهما من آثار السلطان عبد الحميد الثاني.\n\n"
          "ظل الحجاج قرونًا يأتون من دمشق إلى المدينة على الإبل في رحلة شاقة تبلغ نحو أربعين يومًا، وكان كثير منهم يهلكون في الطريق من حر الصحراء والعطش وغارات قطاع الطرق. فأمر السلطان عبد الحميد سنة 1900م بإنشاء سكة حديد من دمشق إلى الحجاز تيسيرًا لهذه الرحلة.\n\n"
          "وصار هذا المشروع عملًا مشتركًا للعالم الإسلامي كله. فقد افتتح السلطان حملة التبرعات بماله، وبذل المسلمون من قرى الأناضول إلى الهند، ومن مصر إلى البلقان، أموالهم لهذا الطريق، وربما بذل أحدهم قطعته الذهبية الوحيدة. ومُدّت القضبان وسط الصحراء تحت شمس محرقة بعرق آلاف العمال، وأكثرهم جنود عثمانيون.\n\n"
          "وفي الأول من سبتمبر 1908م أُقيم احتفال الافتتاح في هذه المحطة، فصارت رحلة الأربعين يومًا خمسة أيام، وصار الحجاج يصلون بالقطار إلى مدينة النبي صلى الله عليه وسلم. وفي العام نفسه بُني هذا المسجد الجميل بجوار المحطة.\n\n"
          "لكن الخط لم يعش طويلًا. ففي الحرب العالمية الأولى نُسفت القضبان مرة بعد مرة، وحوصرت المدينة، ودافع عنها فخر الدين باشا وجنوده سنتين وسبعة أشهر رغم الجوع والمرض. وأرسل الباشا الأمانات المقدسة التي كانت في الحجرة النبوية إلى إسطنبول حفظًا لها، ولم يسلّم المدينة إلا في يناير 1919م بعد انتهاء الحرب بأشهر.\n\n"
          "واليوم تُحفظ المحطة متحفًا. فإذا وقفتم أمام هذه الحجارة فتذكروا جهد أمة اجتمعت على خدمة الحرمين، ووفاء من أحبوا هذه المدينة. ولعل أجمل ما تحملونه من هذه الزيارة أن تدعوا لهم بالرحمة.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Hicaz Demiryolu”", "https://islamansiklopedisi.org.tr/hicaz-demiryolu"),
      GeziKaynak("TDV İslâm Ansiklopedisi, “Fahreddin Paşa”", "https://islamansiklopedisi.org.tr/fahreddin-pasa"),
      GeziKaynak("Wikipedia (en), “Hejaz railway”", "https://en.wikipedia.org/wiki/Hejaz_railway"),
      GeziKaynak("Wikipedia (en), “Hejaz Railway Museum”", "https://en.wikipedia.org/wiki/Hejaz_Railway_Museum"),
      GeziKaynak("Vikipedi (ar), “مسجد العنبرية”", "https://ar.wikipedia.org/wiki/مسجد_العنبرية"),
      GeziKaynak("Visit Saudi, Hijaz Railway Museum", "https://visitsaudi.com/en/madinah/attractions/hijaz-railway-museum-in-madinah"),
      GeziKaynak("OpenStreetMap, way 112566263 (Müze)", "https://www.openstreetmap.org/way/112566263"),
      GeziKaynak("OpenStreetMap, way 161521148 (Anberiye Camii)", "https://www.openstreetmap.org/way/161521148"),
    ],
  ),

  // ------------------------------------------------------------------ 3
  GeziYeri(
    id: 'bir_i_osman',
    bolge: GeziBolge.medine,
    tur: GeziTur.tarihiSehir,
    ad: L10nText(
      tr: "Bi'r-i Rûme (Hz. Osman Kuyusu)",
      en: "The Well of Rumah (Well of Uthman)",
      ar: "بئر رومة (بئر عثمان)",
    ),
    arapcaAd: L10nText.same("بئر رومة"),
    altBaslik: L10nText(
      tr: "Hz. Osman'ın satın alıp Müslümanlara vakfettiği kuyu",
      en: "The well Uthman bought and endowed for the Muslims",
      ar: "البئر التي اشتراها عثمان رضي الله عنه وأوقفها على المسلمين",
    ),
    sehir: L10nText(tr: "Medine, kuzeybatı (Akīk vadisi)", en: "Madinah, north-west (Wadi al-Aqiq)", ar: "المدينة المنورة، الشمال الغربي (وادي العقيق)"),
    konum: LatLng(24.4943737, 39.5778051), // OSM way 67396957 (Uthman Ibn Affan's Farm & Well)
    genel: L10nText(
      tr: "Bi'r-i Rûme, Medine'nin kuzeybatısında, Akīk vadisinin sel sularının toplandığı aşağı kesiminde, Mescid-i Kıbleteyn'in yaklaşık 1 km kuzeyindedir. Hz. Osman'ın satın alıp Müslümanların kullanımına vakfetmesi sebebiyle “Bi'r-i Osman” (Osman Kuyusu) diye de anılır. İslâm tarihinin, su ihtiyacını karşılamak için kurulmuş ilk vakıf örneklerinden biri kabul edilir.\n\n"
          "Kuyu bugün hurmalıklarla çevrili, “Hz. Osman b. Affân Çiftliği” diye bilinen bir tarım arazisinin içindedir. Derinliği yaklaşık 37 m, çapı 4 m kadardır. Vakıf hâlâ Hz. Osman adına kayıtlı olup çiftliğin hurmaları ihtiyaç sahiplerine dağıtılmaktadır.",
      en: "The Well of Rumah lies in the north-west of Madinah, in the lower part of Wadi al-Aqiq where the flood waters collect, about 1 km north of Masjid al-Qiblatayn. Because Uthman bought it and endowed it for the use of the Muslims, it is also known as “Bi'r Uthman” (the Well of Uthman). It is regarded as one of the first endowments in Islamic history set up to meet the need for water.\n\n"
          "Today the well stands within an agricultural estate surrounded by date palms, known as the “Farm of Uthman ibn Affan”. It is about 37 m deep and 4 m across. The endowment is still registered in Uthman's name, and the dates of the farm are distributed to those in need.",
      ar: "تقع بئر رومة في شمال غرب المدينة المنورة، في الجزء الأسفل من وادي العقيق حيث تجتمع مياه السيول، على بعد نحو كيلومتر شمال مسجد القبلتين. وتُعرف أيضًا ببئر عثمان لأن عثمان بن عفان رضي الله عنه اشتراها وأوقفها على المسلمين، وتُعدّ من أوائل الأوقاف في تاريخ الإسلام لسقيا الماء.\n\n"
          "وتقع البئر اليوم داخل مزرعة نخيل تُعرف بمزرعة عثمان بن عفان، ويبلغ عمقها نحو 37 مترًا وقطرها نحو أربعة أمتار. ولا يزال الوقف مسجلًا باسم عثمان رضي الله عنه، وتُوزَّع تمور المزرعة على المحتاجين.",
    ),
    tarihce: L10nText(
      tr: "Hz. Peygamber Medine'ye hicret ettiğinde şehirde tatlı suyu olan kuyu pek azdı; en lezzetli ve kurumayan su Rûme kuyusundaydı. Kuyunun sahibi, kaynaklarda bazı rivayetlere göre bir Yahudi, suyunu parayla satıyordu. Hz. Peygamber ondan suyu Müslümanlara ücretsiz açmasını istediğinde, başka geliri olmadığını söyleyerek kabul etmedi.\n\n"
          "Bunun üzerine Resûlullah, kuyuyu satın alıp kovasını Müslümanların kovalarıyla birlikte kullanıma açacak kimseye karşılığında cennette daha hayırlısını müjdeledi. Hz. Osman sahibine başvurdu. Rivayete göre sahibi kuyunun tamamını satmaya yanaşmayınca Hz. Osman önce yarısını aldı; günler nöbetleşe kullanıldı. Müslümanlar Hz. Osman'ın gününde iki günlük suyu çekince ortak kalan yarısını da satmak zorunda kaldı. Kaynaklarda bedel 20.000 ile 40.000 dirhem arasında farklı rakamlarla nakledilir. Hz. Osman kuyuyu derinleştirerek suyunu da artırdı.\n\n"
          "Yıllar sonra, evinde kuşatıldığı günlerde Hz. Osman isyancılara bu vakfı ve Tebük ordusunu donattığını hatırlattı. “Bugün beni ondan su içmekten men ediyorsunuz” sözleri Tirmizî ve Nesâî'de nakledilmiştir.\n\n"
          "Ömer b. Abdülazîz kuyunun içini taşla ördürdü. 1349'da Mekke kadısı Şehâbeddin et-Taberî kuyuyu tamir edip yeniden derinleştirdi. 1630-31'de yeniden onarıldı, çevresine ağaçlar dikildi ve yanına küçük bir mescit yapıldı. Osmanlı döneminde birkaç kez tamir gördü. Suudi yönetiminde kuyu ve çevresi Mescid-i Nebevî vakıflarına dahil edildi; 1952'de Tarım Bakanlığı'na kiralanarak çevresi hurmalık haline getirildi.",
      en: "When the Prophet emigrated to Madinah there were few wells of sweet water in the city; the tastiest water, which never ran dry, was that of the well of Rumah. Its owner, according to some reports a Jew, sold its water for money. When the Prophet asked him to open the water to the Muslims free of charge, he refused, saying he had no other income.\n\n"
          "So the Messenger of Allah promised something better in Paradise to whoever would buy the well and place his bucket alongside the buckets of the Muslims. Uthman approached the owner. According to the reports, when the owner would not sell the whole well, Uthman first bought half, and the days were shared in turn. When the Muslims drew two days' worth of water on Uthman's day, the partner was obliged to sell the other half too. The sources give different prices, between 20,000 and 40,000 dirhams. Uthman also deepened the well and increased its flow.\n\n"
          "Years later, in the days when he was besieged in his house, Uthman reminded the rebels of this endowment and of his equipping the army of Tabuk. His words, “and today you prevent me from drinking from it”, are recorded by at-Tirmidhi and an-Nasa'i.\n\n"
          "Umar ibn Abd al-Aziz had the inside of the well lined with stone. In 1349 the judge of Makkah, Shihab ad-Din at-Tabari, repaired and deepened it again. In 1630-31 it was restored once more, trees were planted around it and a small mosque was built beside it. It was repaired several times in the Ottoman period. Under the Saudi administration the well and its surroundings became part of the endowments of the Prophet's Mosque; in 1952 it was leased to the Ministry of Agriculture and the land around it was turned into a palm grove.",
      ar: "لما هاجر النبي صلى الله عليه وسلم إلى المدينة كانت آبار الماء العذب فيها قليلة، وكان أطيب الماء وأدومه ماء بئر رومة. وكان صاحبها، وفي بعض الروايات أنه يهودي، يبيع ماءها، فلما سأله النبي صلى الله عليه وسلم أن يجعلها للمسلمين بلا ثمن أبى، وقال إنه ليس له مورد غيرها.\n\n"
          "فبشّر رسول الله صلى الله عليه وسلم من يشتري البئر فيجعل دلوه مع دلاء المسلمين بخير منها في الجنة. فأتى عثمان رضي الله عنه صاحبها، وتذكر الروايات أنه لما أبى أن يبيعها كلها اشترى عثمان نصفها، فكانت الأيام بينهما مناوبة، فكان المسلمون يستقون في يوم عثمان ما يكفيهم يومين، فاضطر الشريك إلى بيع النصف الآخر. وتختلف المصادر في الثمن بين عشرين ألف درهم وأربعين ألفًا. وقد حفرها عثمان وزاد في عمقها فكثر ماؤها.\n\n"
          "وبعد سنين، في أيام حصاره في داره، ذكّر عثمان رضي الله عنه الخارجين عليه بهذا الوقف وبتجهيزه جيش العسرة، وقوله: «فأنتم اليوم تمنعونني أن أشرب منها» رواه الترمذي والنسائي.\n\n"
          "وطوى عمر بن عبد العزيز البئر بالحجارة، وفي سنة 750هـ (1349م) أصلحها قاضي مكة شهاب الدين الطبري وأعاد حفرها، ثم جُدّدت سنة 1040هـ (1630-1631م) وغُرست حولها الأشجار وبُني بجانبها مسجد صغير، ورُمّمت مرات في العهد العثماني. وفي العهد السعودي دخلت البئر وما حولها في أوقاف المسجد النبوي، واستأجرتها وزارة الزراعة سنة 1372هـ (1952م) فزرعت ما حولها نخيلًا.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Hicretten sonra", en: "After the Hijrah", ar: "بعد الهجرة"),
        metin: L10nText(
          tr: "Hz. Peygamber kuyuyu satın alıp Müslümanlara açana cenneti müjdeledi; Hz. Osman kuyuyu satın alıp vakfetti.",
          en: "The Prophet promised Paradise to whoever would buy the well and open it to the Muslims; Uthman bought it and endowed it.",
          ar: "بشّر النبي صلى الله عليه وسلم بالجنة من يشتري البئر ويجعلها للمسلمين، فاشتراها عثمان رضي الله عنه وأوقفها.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hicrî 35 (656)", en: "35 AH (656)", ar: "35هـ (656م)"),
        metin: L10nText(
          tr: "Kuşatma altındaki Hz. Osman isyancılara bu vakfı hatırlattı.",
          en: "Besieged in his house, Uthman reminded the rebels of this endowment.",
          ar: "ذكّر عثمان رضي الله عنه المحاصِرين له بهذا الوقف.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "706-712", en: "706-712", ar: "706-712م"),
        metin: L10nText(
          tr: "Ömer b. Abdülazîz kuyunun içini taşla ördürdü.",
          en: "Umar ibn Abd al-Aziz had the well lined with stone.",
          ar: "طوى عمر بن عبد العزيز البئر بالحجارة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1630-1631", en: "1630-1631", ar: "1040هـ (1630-1631م)"),
        metin: L10nText(
          tr: "Kuyu onarıldı, çevresi ağaçlandırıldı ve yanına küçük bir mescit yapıldı.",
          en: "The well was restored, trees were planted around it and a small mosque was built beside it.",
          ar: "جُدّدت البئر وغُرس حولها الشجر وبُني بجانبها مسجد صغير.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1952", en: "1952", ar: "1372هـ (1952م)"),
        metin: L10nText(
          tr: "Kuyu ve arazisi Tarım Bakanlığı'na kiralandı; çevresi hurmalık oldu.",
          en: "The well and its land were leased to the Ministry of Agriculture and planted with palms.",
          ar: "استأجرت وزارة الزراعة البئر وأرضها وزرعتها نخيلًا.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Rûme kuyusu, sadaka-i câriyenin, yani sahibi vefat ettikten sonra da sevabı süren hayrın en güzel örneklerinden biridir. Hz. Peygamber, kuyuyu satın alıp Müslümanların kullanımına açana cennette daha hayırlısını müjdelemiş; Hz. Osman da en değerli malından vererek bu müjdeye koşmuştur.\n\n"
          "On dört asırdır süren bu vakıf, Müslümanlara sevdikleri şeylerden infak etmeyi, insanların ihtiyacını gidermeyi ve kalıcı hayırlar bırakmayı hatırlatır. Bu kuyuya özgü bir ibadet ya da teberrük şekli yoktur; ziyaretin amacı Hz. Osman'ın cömertliğini hatırlamak ve ondan ibret almaktır.",
      en: "The Well of Rumah is one of the finest examples of sadaqah jariyah, a charity whose reward continues after its owner has died. The Prophet promised something better in Paradise to whoever would buy the well and open it to the Muslims, and Uthman hastened to this promise by giving from his most valuable wealth.\n\n"
          "This endowment, alive for fourteen centuries, reminds Muslims to spend from what they love, to meet people's needs and to leave lasting good works behind. There is no special act of worship or seeking of blessing connected with this well; the purpose of a visit is to remember Uthman's generosity and take a lesson from it.",
      ar: "بئر رومة من أجمل أمثلة الصدقة الجارية التي يبقى أجرها بعد موت صاحبها. فقد بشّر النبي صلى الله عليه وسلم من يشتريها ويجعلها للمسلمين بخير منها في الجنة، فسارع عثمان رضي الله عنه إلى هذه البشارة وبذل من خالص ماله.\n\n"
          "وهذا الوقف الباقي منذ أربعة عشر قرنًا يذكّر المسلمين بالإنفاق مما يحبون، وقضاء حوائج الناس، وترك الخير الباقي. ولا تختص هذه البئر بعبادة أو تبرك، وإنما الغاية من زيارتها تذكّر كرم عثمان رضي الله عنه والاعتبار به.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "مَنْ يَشْتَرِي بِئْرَ رُومَةَ فَيَجْعَلُ دَلْوَهُ مَعَ دِلاَءِ الْمُسْلِمِينَ بِخَيْرٍ لَهُ مِنْهَا فِي الْجَنَّةِ",
        meal: L10nText(
          tr: "Kim Rûme kuyusunu satın alıp kovasını Müslümanların kovalarıyla birlikte (herkesin kullanımına) koyarsa, karşılığında cennette ondan daha hayırlısı onundur.",
          en: "Who will buy the well of Rumah and place his bucket alongside the buckets of the Muslims, in return for something better than it in Paradise?",
          ar: "من يشتري بئر رومة فيجعل دلوه مع دلاء المسلمين بخير له منها في الجنة.",
        ),
        kaynak: L10nText(
          tr: "Tirmizî, Menâkıb (No. 3703); Nesâî, Ahbâs (No. 3608)",
          en: "Jami at-Tirmidhi 3703; Sunan an-Nasa'i 3608",
          ar: "سنن الترمذي 3703، سنن النسائي 3608",
        ),
      ),
      GeziAlinti(
        arapca: "لَن تَنَالُوا۟ ٱلْبِرَّ حَتَّىٰ تُنفِقُوا۟ مِمَّا تُحِبُّونَ ۚ وَمَا تُنفِقُوا۟ مِن شَىْءٍ فَإِنَّ ٱللَّهَ بِهِۦ عَلِيمٌ",
        meal: L10nText(
          tr: "Sevdiğiniz şeylerden Allah yolunda harcamadıkça iyiliğe asla erişemezsiniz. Her ne harcarsanız Allah onu hakkıyla bilir.",
          en: "Never will you attain righteousness until you spend from that which you love. And whatever you spend, indeed Allah is Knowing of it.",
          ar: "لن تنالوا البر حتى تنفقوا مما تحبون، وما تنفقوا من شيء فإن الله به عليم.",
        ),
        kaynak: L10nText(tr: "Âl-i İmrân 3/92", en: "Qur'an 3:92", ar: "سورة آل عمران، الآية 92"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Kuyu özel bir vakıf çiftliğinin içindedir; içeri yalnızca görevlilerin izin verdiği ölçüde girin, izin yoksa dışarıdan görün.",
        en: "The well is inside a private endowment farm; enter only as far as the staff allow, and if there is no permission, view it from outside.",
        ar: "البئر داخل مزرعة وقفية، فلا تدخل إلا بقدر ما يأذن به المسؤولون، وإن لم يُؤذن فاكتفِ بالنظر من الخارج.",
      ),
      L10nText(
        tr: "Kuyudan ya da çiftlikten bereket umarak toprak, taş veya su almayın; ziyaretin anlamı Hz. Osman'ın hayrını hatırlamaktır.",
        en: "Do not take soil, stones or water from the well or the farm in hope of blessing; the meaning of the visit is to remember Uthman's good deed.",
        ar: "لا تأخذ ترابًا أو حجارة أو ماءً من البئر أو المزرعة تبركًا، فمعنى الزيارة تذكّر صنيع عثمان رضي الله عنه.",
      ),
      L10nText(
        tr: "Burada Hz. Osman'a rahmet dileyip kendi adınıza da bir sadaka-i câriye niyet etmek güzel olur.",
        en: "It is good here to pray for mercy for Uthman and to make an intention for a lasting charity of your own.",
        ar: "يحسن هنا أن تترحّم على عثمان رضي الله عنه وأن تنوي صدقة جارية من مالك.",
      ),
      L10nText(
        tr: "Mescid-i Kıbleteyn'e çok yakındır; iki ziyaret birlikte planlanabilir.",
        en: "It is very close to Masjid al-Qiblatayn; the two visits can be planned together.",
        ar: "البئر قريبة جدًا من مسجد القبلتين، فيمكن الجمع بين الزيارتين.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Kuyu, hurmalık bir vakıf çiftliğinin içindedir ve ziyaretçilere sürekli açık bir yer değildir; çoğu zaman yalnızca çiftliğin dışından görülebilir. Vakfın ziyarete uygun hale getirilmesi için çalışmalar yapıldığı bildirilmektedir; güncel durumu rehberinize sorun.",
      en: "The well is inside an endowment palm farm and is not a place permanently open to visitors; most of the time it can only be seen from outside the farm. Work is reported to be under way to make the endowment suitable for visits; ask your guide about the current situation.",
      ar: "البئر داخل مزرعة نخيل وقفية وليست مفتوحة للزوار دائمًا، وفي أغلب الأحيان لا تُرى إلا من خارج المزرعة. وتُذكر أعمال لتهيئة الوقف للزيارة، فاسأل مرشدك عن الوضع الحالي.",
    ),
    ziyaretSuresi: L10nText(tr: "15-20 dakika", en: "15-20 minutes", ar: "15 إلى 20 دقيقة"),
    anlatim: L10nText(
      tr: "Hurma ağaçlarının arasında, bu çiftliğin içinde bir kuyu var. Görünüşte sıradan bir kuyu. Ama bu kuyunun hikâyesi on dört asırdır anlatılıyor. Burası Rûme kuyusu, ya da bugün herkesin bildiği adıyla Hz. Osman kuyusu.\n\n"
          "Peygamber Efendimiz Medine'ye hicret ettiğinde, şehirde içilecek tatlı su çok azdı. En güzel ve hiç kurumayan su bu kuyudaydı. Ancak kuyunun sahibi suyunu parayla satıyordu. Fakir muhacirler, bir yudum su için bile para ödemek zorundaydı.\n\n"
          "Resûlullah bir gün şöyle buyurdu. Kim Rûme kuyusunu satın alıp kovasını Müslümanların kovalarıyla birlikte koyarsa, karşılığında cennette daha hayırlısı onundur. Bu müjdeyi duyan Hz. Osman hemen harekete geçti. Kuyunun sahibi önce yarısını satmaya razı oldu. Hz. Osman kendi gününde suyu herkese bedava açtı. İnsanlar o gün iki günlük suyu çekiyordu. Sonunda sahibi kalan yarısını da satmak zorunda kaldı ve kuyu tamamen Müslümanların oldu.\n\n"
          "Aradan yıllar geçti. Hz. Osman halife iken evi kuşatıldı. O zor günlerde pencereden kuşatanlara seslendi. Rûme kuyusunu kendi malımla satın aldığımı bilmiyor musunuz, dedi. Bugün ise ondan su içmeme engel oluyorsunuz. Bu sözler hadis kitaplarımızda yazılıdır.\n\n"
          "Bugün bu vakıf hâlâ Hz. Osman'ın adına kayıtlıdır. Çevresindeki hurmalıkların ürünü ihtiyaç sahiplerine dağıtılır. Yani Hz. Osman'ın on dört asır önce yaptığı bir hayır, hâlâ insanlara ulaşmaktadır.\n\n"
          "Kur'an-ı Kerim, sevdiğimiz şeylerden harcamadıkça iyiliğe erişemeyeceğimizi söyler. Bu kuyunun başında, Hz. Osman'a rahmet dileyelim. Ve kendimize soralım. Biz arkamızda, bizden sonra da süren hangi hayrı bırakacağız?",
      en: "Among the date palms, inside this farm, there is a well. It looks like an ordinary well, yet its story has been told for fourteen centuries. This is the well of Rumah, or by the name everyone knows today, the Well of Uthman.\n\n"
          "When the Prophet emigrated to Madinah there was very little sweet drinking water in the city. The best water, which never dried up, was in this well. But its owner sold its water for money. The poor emigrants had to pay even for a sip of water.\n\n"
          "One day the Messenger of Allah said: Who will buy the well of Rumah and place his bucket alongside the buckets of the Muslims, in return for something better in Paradise? Hearing this good news, Uthman acted at once. At first the owner agreed to sell only half. On his days Uthman opened the water to everyone free of charge, and people drew two days' worth of water on those days. In the end the owner had to sell the other half too, and the well belonged entirely to the Muslims.\n\n"
          "Years passed. When Uthman was caliph, his house was besieged. In those hard days he called out to the besiegers from his window. Do you not know, he said, that I bought the well of Rumah with my own wealth? And today you prevent me from drinking from it. These words are recorded in our books of hadith.\n\n"
          "Today this endowment is still registered in Uthman's name. The harvest of the palm groves around it is distributed to those in need. A good deed Uthman did fourteen centuries ago still reaches people.\n\n"
          "The Qur'an tells us that we will never attain righteousness until we spend from what we love. Here at this well, let us pray for mercy for Uthman. And let us ask ourselves: what good deed will we leave behind that continues after us?",
      ar: "بين أشجار النخيل، داخل هذه المزرعة، بئر تبدو عادية، لكن قصتها تُروى منذ أربعة عشر قرنًا. هذه بئر رومة، أو كما يعرفها الناس اليوم بئر عثمان.\n\n"
          "لما هاجر النبي صلى الله عليه وسلم إلى المدينة كان الماء العذب فيها قليلًا، وكان أطيبه وأدومه في هذه البئر، لكن صاحبها كان يبيع ماءها، فكان فقراء المهاجرين يدفعون ثمن الشربة.\n\n"
          "فقال رسول الله صلى الله عليه وسلم يومًا: من يشتري بئر رومة فيجعل دلوه مع دلاء المسلمين بخير له منها في الجنة. فلما سمع عثمان رضي الله عنه هذه البشارة بادر إليها. ورضي صاحب البئر أول الأمر ببيع نصفها، فكان عثمان يجعل الماء في يومه مجانًا للناس، فيستقون فيه ما يكفيهم يومين، حتى اضطر صاحبها إلى بيع النصف الآخر، فصارت البئر كلها للمسلمين.\n\n"
          "ومرت السنون، وحوصر عثمان رضي الله عنه في داره وهو خليفة، فأشرف على المحاصرين وقال: ألستم تعلمون أني اشتريت بئر رومة من صلب مالي، فأنتم اليوم تمنعونني أن أشرب منها. وهذه الكلمات مروية في كتب الحديث.\n\n"
          "ولا يزال هذا الوقف اليوم مسجلًا باسم عثمان رضي الله عنه، ويُوزّع ثمر النخيل حوله على المحتاجين. فخيرٌ صنعه عثمان قبل أربعة عشر قرنًا ما زال يصل إلى الناس.\n\n"
          "يخبرنا القرآن الكريم أننا لن ننال البر حتى ننفق مما نحب. فلنترحم هنا على عثمان رضي الله عنه، ولنسأل أنفسنا: أي خير سنترك بعدنا يبقى أجره؟",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Rûme Kuyusu”", "https://islamansiklopedisi.org.tr/rume-kuyusu"),
      GeziKaynak("Câmiu't-Tirmizî 3703 (sunnah.com)", "https://sunnah.com/tirmidhi:3703"),
      GeziKaynak("Sünenü'n-Nesâî 3608 (sunnah.com)", "https://sunnah.com/nasai:3608"),
      GeziKaynak("Sahîh-i Buhârî 2778 (sunnah.com)", "https://sunnah.com/bukhari:2778"),
      GeziKaynak("Saudipedia, “بئر رومة”", "https://saudipedia.com/ar/بئر-رومة"),
      GeziKaynak("Kur'an, Âl-i İmrân 3/92 (quran.com)", "https://quran.com/3/92"),
      GeziKaynak("OpenStreetMap, way 67396957", "https://www.openstreetmap.org/way/67396957"),
    ],
  ),

  // ------------------------------------------------------------------ 4
  GeziYeri(
    id: 'zulhuleyfe',
    bolge: GeziBolge.medine,
    tur: GeziTur.mescid,
    ad: L10nText(
      tr: "Zülhuleyfe (Âbâr-ı Ali) ve Mescid-i Şecere",
      en: "Dhul-Hulayfah (Abyar Ali) and Masjid ash-Shajarah",
      ar: "ذو الحليفة (أبيار علي) ومسجد الشجرة",
    ),
    arapcaAd: L10nText.same("ميقات ذي الحليفة"),
    altBaslik: L10nText(
      tr: "Medine'nin mikatı: Mekke'ye giderken ihrama girilen yer",
      en: "The miqat of Madinah: where pilgrims enter ihram on the way to Makkah",
      ar: "ميقات أهل المدينة: موضع الإحرام في الطريق إلى مكة",
    ),
    sehir: L10nText(tr: "Medine, güneybatı (Akīk vadisi)", en: "Madinah, south-west (Wadi al-Aqiq)", ar: "المدينة المنورة، الجنوب الغربي (وادي العقيق)"),
    konum: LatLng(24.4136374, 39.542991), // OSM way 456361104 (Mescid-i Şecere)
    genel: L10nText(
      tr: "Zülhuleyfe, Medine'den ve Medine yönünden Mekke'ye giden hacı ve umrecilerin ihrama girdiği mikat yeridir. Medine'nin güneybatısında, Akīk vadisinde, Mescid-i Nebevî'ye yaklaşık 11 km uzaklıktadır. Mekke'ye kara yoluyla yaklaşık 420 km ile en uzak mikattır. Burada Hz. Ali'ye nispet edilen kuyular sebebiyle halk arasında “Âbâr-ı Ali” ya da “Ebyâr-ı Ali” (Ali kuyuları) diye de bilinir.\n\n"
          "Mikattaki büyük cami, Hz. Peygamber'in altında namaz kıldığı semüre ağacının (şecere) yerine yapıldığı için Mescid-i Şecere adını alır; Mîkat Mescidi ve İhrâm Mescidi diye de anılır. Kral Fahd döneminde genişletilen külliye yaklaşık 90.000 m²'lik bir alana yayılır; 6000 m²'lik ibadet bölümünde aynı anda yaklaşık 5000 kişi namaz kılabilir. Külliyede çok sayıda gusül ve abdest yeri, kadınlar için ayrı bölümler ve ihram malzemesi satan dükkânlar bulunur.",
      en: "Dhul-Hulayfah is the miqat where pilgrims travelling to Makkah from Madinah, or from the direction of Madinah, enter ihram. It lies south-west of Madinah in Wadi al-Aqiq, about 11 km from the Prophet's Mosque. At about 420 km by road from Makkah, it is the farthest of the miqats. Because of the wells attributed to Ali here, it is popularly known as “Abyar Ali” (the wells of Ali).\n\n"
          "The large mosque at the miqat is called Masjid ash-Shajarah (Mosque of the Tree) because it was built on the site of the samurah tree under which the Prophet prayed; it is also called the Miqat Mosque and the Ihram Mosque. Enlarged under King Fahd, the complex covers some 90,000 m²; its prayer hall of 6,000 m² can hold about 5,000 worshippers at once. The complex has many facilities for ghusl and wudu, separate sections for women and shops selling ihram items.",
      ar: "ذو الحليفة هو الميقات الذي يُحرم منه الحجاج والمعتمرون القادمون إلى مكة من المدينة أو من جهتها. يقع جنوب غرب المدينة المنورة في وادي العقيق، على بعد نحو أحد عشر كيلومترًا من المسجد النبوي، وهو أبعد المواقيت عن مكة إذ يبعد عنها نحو 420 كيلومترًا بالطريق. ويُعرف عند الناس بأبيار علي نسبةً إلى آبار تُنسب إلى علي رضي الله عنه.\n\n"
          "ويُسمّى المسجد الكبير فيه مسجد الشجرة لأنه بُني في موضع شجرة السَّمُرة التي صلى تحتها النبي صلى الله عليه وسلم، ويُسمّى أيضًا مسجد الميقات ومسجد الإحرام. وقد وُسّع في عهد الملك فهد حتى بلغت مساحة المجمع نحو 90 ألف متر مربع، ومساحة المصلى نحو 6000 متر مربع تتسع لنحو 5000 مصلٍّ في وقت واحد. وفيه مرافق كثيرة للغسل والوضوء، وأقسام خاصة بالنساء، ومحلات لبيع لوازم الإحرام.",
    ),
    tarihce: L10nText(
      tr: "Hz. Peygamber, Medine ehli için mikat olarak Zülhuleyfe'yi belirlemiştir (Buhârî, Hac, 7). Hicretten sonra Medine'den Mekke'ye yaptığı dört yolculuğun hepsinde buradan geçti. Hicrî 6. yılda (628) umre niyetiyle çıktığında burada kurbanlıklarını işaretleyip ihrama girdi ve semüre ağacının altında namaz kıldı; bu yolculuk Hudeybiye Antlaşması ile sonuçlandı. Ertesi yıl Umretü'l-kazâ için yine burada ihrama girdi. Mekke'nin fethine giderken ise hedefini gizli tutmak için burada ihrama girmedi.\n\n"
          "Hicrî 10. yılda Vedâ Haccı için 25 Zilkade'de Medine'den çıkan Resûlullah, öğle namazını Mescid-i Nebevî'de dört rekât, ikindiyi Zülhuleyfe'de iki rekât kıldı ve geceyi burada geçirdi. Ertesi gün gusledip ihrama girdi ve telbiye getirerek yola koyuldu. Medine'den buraya gelinen yola Tarîkuşşecere, dönüş yoluna Tarîkulmuarres denirdi.\n\n"
          "Hz. Peygamber'in namaz kıldığı ağacın yeri işaretlenip korundu. Ömer b. Abdülazîz Medine valiliği sırasında burayı Mescidü'ş-Şecere'ye dönüştürdü. Abbâsîler devrinde taş ve kerpiçten sade bir yapıydı. Evliyâ Çelebi on iki kubbeli, minaresiz bir mescit ve Hz. Ali'ye nispet edilen bir kuyu gördüğünü anlatır. Mescit sık sık sellerden zarar gördü. Hacı sayısının artmasıyla 20. yüzyılın ortalarında genişletildi; Kral Faysal döneminin ardından Kral Fahd döneminde bugünkü büyük külliye inşa edildi.",
      en: "The Prophet designated Dhul-Hulayfah as the miqat for the people of Madinah (al-Bukhari, Hajj, 7). He passed through it on all four of his journeys from Madinah to Makkah after the Hijrah. In the year 6 AH (628), when he set out for Umrah, he marked his sacrificial animals here, entered ihram and prayed under a samurah tree; that journey ended with the Treaty of al-Hudaybiyah. The following year he again entered ihram here for the Umrah of al-Qada. On his way to the conquest of Makkah, however, he did not enter ihram here, so as to keep his objective secret.\n\n"
          "In the year 10 AH, setting out from Madinah for the Farewell Pilgrimage on 25 Dhul-Qa'dah, the Prophet prayed the noon prayer of four rak'ahs in his mosque and the afternoon prayer of two rak'ahs at Dhul-Hulayfah, and spent the night here. The next day he performed ghusl, entered ihram and set off reciting the talbiyah. The road from Madinah to this place was called the Road of the Tree, and the return road the Road of al-Mu'arras.\n\n"
          "The place of the tree under which the Prophet prayed was marked and protected. While governor of Madinah, Umar ibn Abd al-Aziz turned it into the Mosque of the Tree. In the Abbasid period it was a simple building of stone and mud brick. Evliya Çelebi describes a mosque with twelve domes and no minaret, and a well attributed to Ali. The mosque was often damaged by floods. As the number of pilgrims grew it was enlarged in the mid-twentieth century, and after work under King Faisal, the present large complex was built under King Fahd.",
      ar: "وقّت النبي صلى الله عليه وسلم ذا الحليفة لأهل المدينة (رواه البخاري في كتاب الحج). ومرّ به في رحلاته الأربع من المدينة إلى مكة بعد الهجرة. ففي السنة السادسة (628م) لما خرج معتمرًا قلّد الهدي وأشعره وأحرم وصلى تحت شجرة سمرة، وانتهت تلك الرحلة بصلح الحديبية. وفي العام التالي أحرم منه لعمرة القضاء. أما في الخروج إلى فتح مكة فلم يُحرم منه كتمانًا لوجهته.\n\n"
          "وفي السنة العاشرة خرج النبي صلى الله عليه وسلم من المدينة لحجة الوداع في 25 ذي القعدة، فصلى الظهر في مسجده أربعًا، وصلى العصر بذي الحليفة ركعتين، وبات بها، ثم اغتسل من الغد وأحرم وانطلق ملبّيًا. وكان الطريق من المدينة إليها يُسمّى طريق الشجرة، وطريق العودة طريق المعرَّس.\n\n"
          "وعُلّم موضع الشجرة التي صلى تحتها النبي صلى الله عليه وسلم وحُفظ، ثم جعله عمر بن عبد العزيز في ولايته على المدينة مسجدًا عُرف بمسجد الشجرة. وكان في العهد العباسي بناءً بسيطًا من الحجر واللبن، ووصفه أوليا جلبي بأنه مسجد ذو اثنتي عشرة قبة بلا مئذنة وبجانبه بئر تُنسب إلى علي رضي الله عنه. وكانت السيول تُلحق به الضرر كثيرًا. ومع ازدياد الحجاج وُسّع في منتصف القرن العشرين، ثم بُني المجمع الكبير الحالي في عهد الملك فهد بعد أعمال في عهد الملك فيصل.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Hicrî 6 (628)", en: "6 AH (628)", ar: "6هـ (628م)"),
        metin: L10nText(
          tr: "Hz. Peygamber umre için burada ihrama girdi; yolculuk Hudeybiye Antlaşması ile sonuçlandı.",
          en: "The Prophet entered ihram here for Umrah; the journey ended with the Treaty of al-Hudaybiyah.",
          ar: "أحرم النبي صلى الله عليه وسلم منه للعمرة، وانتهت الرحلة بصلح الحديبية.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hicrî 7 (629)", en: "7 AH (629)", ar: "7هـ (629م)"),
        metin: L10nText(
          tr: "Umretü'l-kazâ için yine burada ihrama girildi.",
          en: "Ihram was again entered here for the Umrah of al-Qada.",
          ar: "أحرم منه لعمرة القضاء.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "25-26 Zilkade 10 (632)", en: "25-26 Dhul-Qa'dah 10 AH (632)", ar: "25-26 ذو القعدة 10هـ (632م)"),
        metin: L10nText(
          tr: "Vedâ Haccı'nda Hz. Peygamber geceyi burada geçirdi, gusledip ihrama girdi ve telbiyeyle yola çıktı.",
          en: "On the Farewell Pilgrimage the Prophet spent the night here, performed ghusl, entered ihram and set off with the talbiyah.",
          ar: "في حجة الوداع بات النبي صلى الله عليه وسلم بها، ثم اغتسل وأحرم وانطلق ملبّيًا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "706-712", en: "706-712", ar: "706-712م"),
        metin: L10nText(
          tr: "Ömer b. Abdülazîz ağacın yerine Mescidü'ş-Şecere'yi yaptırdı.",
          en: "Umar ibn Abd al-Aziz built the Mosque of the Tree on the site of the tree.",
          ar: "بنى عمر بن عبد العزيز مسجد الشجرة في موضع الشجرة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Kral Fahd dönemi", en: "Reign of King Fahd", ar: "عهد الملك فهد"),
        metin: L10nText(
          tr: "Bugünkü büyük mikat külliyesi inşa edildi.",
          en: "The present large miqat complex was built.",
          ar: "بُني مجمع الميقات الكبير الحالي.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Zülhuleyfe, Hz. Peygamber'in bizzat belirlediği beş mikattan biridir ve onun Vedâ Haccı'nda ihrama girdiği yerdir. Mekke'ye en uzak mikat olduğu için buradan ihrama girmenin sevabının daha fazla olduğu da ifade edilmiştir. Medine'den Mekke'ye giden her hacı ve umreci, Peygamber Efendimizin izini takip ederek burada ihrama girer.\n\n"
          "İhram, dünya kıyafetlerinden ve süslerinden sıyrılıp Allah'ın huzuruna eşit kullar olarak çıkmanın sembolüdür. Burada getirilen ilk telbiye, “Buyur Allahım, buyur!” diyerek Rabbin davetine verilen cevaptır.",
      en: "Dhul-Hulayfah is one of the five miqats designated by the Prophet himself, and the place where he entered ihram on the Farewell Pilgrimage. Since it is the farthest miqat from Makkah, it has also been said that entering ihram here carries greater reward. Every pilgrim travelling from Madinah to Makkah enters ihram here, following in the footsteps of the Prophet.\n\n"
          "Ihram is the symbol of shedding worldly clothes and adornments and coming before Allah as equal servants. The first talbiyah said here, “Here I am, O Allah, here I am!”, is the answer to the invitation of the Lord.",
      ar: "ذو الحليفة أحد المواقيت الخمسة التي وقّتها النبي صلى الله عليه وسلم بنفسه، وهو الموضع الذي أحرم منه في حجة الوداع. ولأنه أبعد المواقيت عن مكة فقد ذُكر أن الإحرام منه أعظم أجرًا. وكل حاج ومعتمر يتوجه من المدينة إلى مكة يُحرم منه متبعًا أثر النبي صلى الله عليه وسلم.\n\n"
          "والإحرام رمز للتجرد من ثياب الدنيا وزينتها والوقوف بين يدي الله عبادًا متساوين. والتلبية الأولى التي تُقال هنا، «لبيك اللهم لبيك»، هي جواب دعوة الرب سبحانه.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "إِنَّ النَّبِيَّ صلى الله عليه وسلم وَقَّتَ لأَهْلِ الْمَدِينَةِ ذَا الْحُلَيْفَةِ، وَلأَهْلِ الشَّأْمِ الْجُحْفَةَ، وَلأَهْلِ نَجْدٍ قَرْنَ الْمَنَازِلِ، وَلأَهْلِ الْيَمَنِ يَلَمْلَمَ، هُنَّ لَهُنَّ وَلِمَنْ أَتَى عَلَيْهِنَّ مِنْ غَيْرِهِنَّ، مِمَّنْ أَرَادَ الْحَجَّ وَالْعُمْرَةَ",
        meal: L10nText(
          tr: "Hz. Peygamber Medine ehli için Zülhuleyfe'yi, Şam ehli için Cuhfe'yi, Necid ehli için Karnülmenâzil'i, Yemen ehli için Yelemlem'i mikat olarak belirledi. Bu mikatlar hem oralarda oturanlar hem de hac ve umre niyetiyle oralardan geçen başkaları içindir.",
          en: "The Prophet appointed Dhul-Hulayfah as the miqat for the people of Madinah, al-Juhfah for the people of Sham, Qarn al-Manazil for the people of Najd and Yalamlam for the people of Yemen. These are for them and for others who pass by them intending Hajj or Umrah.",
          ar: "إن النبي صلى الله عليه وسلم وقّت لأهل المدينة ذا الحليفة، ولأهل الشام الجحفة، ولأهل نجد قرن المنازل، ولأهل اليمن يلملم، هنّ لهنّ ولمن أتى عليهنّ من غيرهنّ ممن أراد الحج والعمرة.",
        ),
        kaynak: L10nText(tr: "Buhârî, Hac, 7 (No. 1524)", en: "Sahih al-Bukhari 1524", ar: "صحيح البخاري، 1524"),
      ),
      GeziAlinti(
        arapca: "وَأَتِمُّوا۟ ٱلْحَجَّ وَٱلْعُمْرَةَ لِلَّهِ",
        meal: L10nText(
          tr: "Haccı ve umreyi Allah için tamamlayın.",
          en: "And complete the Hajj and Umrah for Allah.",
          ar: "وأتمّوا الحج والعمرة لله.",
        ),
        kaynak: L10nText(tr: "Bakara 2/196", en: "Qur'an 2:196", ar: "سورة البقرة، الآية 196"),
      ),
    ],
    adab: [
      L10nText(
        tr: "İhramdan önce tırnak, bıyık ve vücut temizliğini yapın; mümkünse otelde gusledin. Mikatta da gusül ve abdest yerleri vardır, ancak kalabalık olabilir.",
        en: "Before ihram, trim your nails and moustache and attend to personal hygiene; if possible, perform ghusl at the hotel. There are ghusl and wudu facilities at the miqat too, but they can be crowded.",
        ar: "قصّ أظفارك وشاربك وتنظّف قبل الإحرام، واغتسل في الفندق إن أمكن. وفي الميقات أماكن للغسل والوضوء لكنها قد تزدحم.",
      ),
      L10nText(
        tr: "Erkekler dikişsiz iki parça ihram örtüsüne bürünür, başlarını açık bırakır ve topukları açık terlik giyer. Kadınlar tesettüre uygun normal kıyafetleriyle ihrama girer; yüz ve eller açık kalır.",
        en: "Men wear the two unstitched pieces of ihram cloth, leave their heads uncovered and wear sandals that leave the ankles exposed. Women enter ihram in their normal modest clothing, with face and hands uncovered.",
        ar: "يلبس الرجل إزارًا ورداءً غير مخيطين، ويكشف رأسه، ويلبس نعلين يظهر منهما الكعبان. وتُحرم المرأة في ثيابها المعتادة الساترة، مع كشف الوجه والكفين.",
      ),
      L10nText(
        tr: "İhrama girmeden önce bedene güzel koku sürülebilir; ihram örtüsüne sürülmez. Kerahat vakti değilse iki rekât ihram namazı kılın.",
        en: "Perfume may be applied to the body before ihram, but not to the ihram cloth. If it is not a disliked time for prayer, pray two rak'ahs for ihram.",
        ar: "يجوز التطيب في البدن قبل الإحرام لا في ثياب الإحرام. وإن لم يكن وقت كراهة فصلِّ ركعتين للإحرام.",
      ),
      L10nText(
        tr: "Ardından umreye niyet edip telbiye getirin: “Lebbeyk Allâhümme lebbeyk, lebbeyke lâ şerîke leke lebbeyk, inne'l-hamde ve'n-ni'mete leke ve'l-mülk, lâ şerîke lek.” İhram yasakları bu andan itibaren başlar.",
        en: "Then make the intention for Umrah and recite the talbiyah: “Labbayk Allahumma labbayk, labbayka la sharika laka labbayk, inna al-hamda wa an-ni'mata laka wa al-mulk, la sharika lak.” The prohibitions of ihram begin from this moment.",
        ar: "ثم انوِ العمرة ولبِّ: «لبيك اللهم لبيك، لبيك لا شريك لك لبيك، إن الحمد والنعمة لك والملك، لا شريك لك». ومن هذه اللحظة تبدأ محظورات الإحرام.",
      ),
      L10nText(
        tr: "Otobüsle gidiyorsanız grup genellikle mikat mescidinde mola verir; buluşma noktasını ve otobüs numarasını not edin. Değerli eşyalarınızı ve terliklerinizi takip edin.",
        en: "If you travel by bus, groups usually stop at the miqat mosque; note your meeting point and bus number. Keep an eye on your valuables and sandals.",
        ar: "إن سافرت بالحافلة فإن المجموعات تتوقف عادةً عند مسجد الميقات، فاحفظ مكان التجمع ورقم الحافلة، وانتبه لأغراضك الثمينة ونعليك.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Haremeyn hızlı treni Zülhuleyfe'de durmaz. Trenle gidecekler ihram kıyafetini Medine'de giyip niyet ve telbiyeyi mikat hizasına gelmeden yapmalıdır; trende bu konuda anons yapılabilir. Uçakla Medine'den Cidde'ye gidenler de mikatı geçmeden ihrama girmelidir. Uygulamalar değişebilir; acentenizin ve Diyanet rehberinin talimatlarına uyun.",
      en: "The Haramain high-speed train does not stop at Dhul-Hulayfah. Those travelling by train should put on their ihram clothing in Madinah and make the intention and talbiyah before reaching the line of the miqat; an announcement may be made on the train. Those flying from Madinah to Jeddah must also enter ihram before passing the miqat. Arrangements may change; follow the instructions of your agency and religious guide.",
      ar: "لا يتوقف قطار الحرمين السريع في ذي الحليفة، فعلى المسافر بالقطار أن يلبس ثياب الإحرام في المدينة وأن ينوي ويلبّي قبل محاذاة الميقات، وقد يُعلن عن ذلك في القطار. وكذلك من يسافر بالطائرة من المدينة إلى جدة يُحرم قبل مجاوزة الميقات. وقد تتغير الترتيبات، فاتبع تعليمات وكالتك ومرشدك الديني.",
    ),
    uygunSaat: L10nText(tr: "Mekke'ye hareketten hemen önce", en: "Just before setting off for Makkah", ar: "قبيل التوجه إلى مكة"),
    ziyaretSuresi: L10nText(tr: "45 dakika - 1 saat", en: "45 minutes - 1 hour", ar: "45 دقيقة إلى ساعة"),
    uzaklik: L10nText(
      tr: "Mescid-i Nebevî'ye ~11 km, Mekke'ye kara yoluyla ~420 km",
      en: "~11 km from the Prophet's Mosque, ~420 km to Makkah by road",
      ar: "نحو 11 كم من المسجد النبوي، ونحو 420 كم إلى مكة بالطريق",
    ),
    anlatim: L10nText(
      tr: "Medine'den ayrılıyoruz ve Mekke yolunun ilk durağındayız. Burası Zülhuleyfe, halk arasındaki adıyla Âbâr-ı Ali. Peygamber Efendimizin Medine ehli için belirlediği mikat, yani umre ve hac niyetiyle Mekke'ye gidenlerin ihrama girmeden geçemeyeceği sınır burasıdır.\n\n"
          "Hicretin onuncu yılında Peygamber Efendimiz Vedâ Haccı için Medine'den çıktı. Öğle namazını kendi mescidinde kıldı, ikindiyi ise burada iki rekât olarak kıldırdı. Geceyi burada, bir semüre ağacının yakınında geçirdi. Sabah olunca gusletti, ihramına büründü ve yola çıkarken telbiye getirdi. O gün ondan binlerce sahâbî bu sözleri duydu ve hep birlikte tekrar etti. Buyur Allahım, buyur. Senin hiçbir ortağın yoktur, buyur.\n\n"
          "Önünüzdeki büyük cami, işte o ağacın bulunduğu yere yapıldığı için Mescid-i Şecere, yani Ağaç Mescidi adını taşır. İlk mescidi Ömer bin Abdülaziz yaptırdı. Asırlar boyunca seller onu defalarca harap etti, her seferinde yeniden yapıldı. Bugün gördüğünüz geniş külliye, binlerce hacıyı aynı anda ağırlayabilecek şekilde inşa edilmiştir.\n\n"
          "Şimdi biz de o izi takip ediyoruz. Erkekler dikişsiz iki parça beyaz örtüye bürünüyor. Kadınlar tesettürlü kıyafetleriyle ihrama giriyor. Zengin ile fakir, yöneten ile yönetilen arasında artık hiçbir fark yok. Hepimiz aynı kıyafetle, aynı davete icabet eden kullarız.\n\n"
          "İki rekât namazınızı kılın, umreye niyet edin ve kalbinizden gelen bir sesle telbiyeye başlayın. Bu andan itibaren ihramlısınız. Dilinizi, gözünüzü ve gönlünüzü koruyun. Yolunuz Beytullah'a çıkıyor. Allah umrenizi kabul etsin.",
      en: "We are leaving Madinah and are at the first stop on the road to Makkah. This is Dhul-Hulayfah, popularly known as Abyar Ali. It is the miqat the Prophet set for the people of Madinah, the boundary which no one heading to Makkah for Umrah or Hajj may pass without entering ihram.\n\n"
          "In the tenth year of the Hijrah the Prophet left Madinah for the Farewell Pilgrimage. He prayed the noon prayer in his own mosque and led the afternoon prayer here with two rak'ahs. He spent the night here, near a samurah tree. In the morning he performed ghusl, put on his ihram and, as he set off, recited the talbiyah. That day thousands of Companions heard these words from him and repeated them together: Here I am, O Allah, here I am. You have no partner, here I am.\n\n"
          "The large mosque before you is called Masjid ash-Shajarah, the Mosque of the Tree, because it was built where that tree stood. The first mosque was built by Umar ibn Abd al-Aziz. Over the centuries floods ruined it many times, and each time it was rebuilt. The broad complex you see today was built to welcome thousands of pilgrims at once.\n\n"
          "Now we too follow in those footsteps. Men wrap themselves in two unstitched white cloths. Women enter ihram in their modest clothing. There is no longer any difference between rich and poor, ruler and ruled. We are all servants in the same garment, answering the same call.\n\n"
          "Pray your two rak'ahs, make the intention for Umrah and begin the talbiyah with a voice that comes from your heart. From this moment you are in ihram. Guard your tongue, your eyes and your heart. Your road leads to the House of Allah. May Allah accept your Umrah.",
      ar: "ها نحن نغادر المدينة المنورة ونقف عند أول محطة في طريق مكة. هذا ذو الحليفة، المعروف عند الناس بأبيار علي، وهو الميقات الذي وقّته النبي صلى الله عليه وسلم لأهل المدينة، والحدّ الذي لا يتجاوزه قاصد مكة للعمرة أو الحج إلا محرمًا.\n\n"
          "في السنة العاشرة من الهجرة خرج النبي صلى الله عليه وسلم من المدينة لحجة الوداع، فصلى الظهر في مسجده، وصلى العصر هنا ركعتين، وبات هنا قرب شجرة سمرة. فلما أصبح اغتسل ولبس إحرامه، وانطلق ملبّيًا، فسمع منه آلاف الصحابة هذه الكلمات ورددوها معه: لبيك اللهم لبيك، لبيك لا شريك لك لبيك.\n\n"
          "والمسجد الكبير الذي أمامكم يُسمّى مسجد الشجرة لأنه بُني حيث كانت تلك الشجرة. وأول من بناه عمر بن عبد العزيز، ثم خرّبته السيول مرات على مر القرون، وكان يُعاد بناؤه في كل مرة. والمجمع الواسع الذي ترونه اليوم بُني ليستقبل آلاف الحجاج في وقت واحد.\n\n"
          "والآن نسير نحن على ذلك الأثر. يلبس الرجال قطعتين بيضاوين غير مخيطتين، وتُحرم النساء في ثيابهن الساترة. لم يعد هناك فرق بين غني وفقير، ولا بين حاكم ومحكوم. كلنا عباد في لباس واحد نجيب دعوة واحدة.\n\n"
          "صلّوا ركعتيكم، وانووا العمرة، وابدؤوا التلبية بصوت يخرج من القلب. من هذه اللحظة أنتم محرمون، فاحفظوا ألسنتكم وأبصاركم وقلوبكم. طريقكم إلى بيت الله، تقبّل الله عمرتكم.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Zülhuleyfe”", "https://islamansiklopedisi.org.tr/zulhuleyfe"),
      GeziKaynak("Sahîh-i Buhârî 1524 (sunnah.com)", "https://sunnah.com/bukhari:1524"),
      GeziKaynak("Kur'an, Bakara 2/196 (quran.com)", "https://quran.com/2/196"),
      GeziKaynak("OpenStreetMap, way 456361104 (Mescid-i Şecere)", "https://www.openstreetmap.org/way/456361104"),
      GeziKaynak("OpenStreetMap, way 457470976 (Zülhuleyfe Mikatı)", "https://www.openstreetmap.org/way/457470976"),
    ],
  ),

  // ------------------------------------------------------------------ 5
  GeziYeri(
    id: 'mescid_i_icabe',
    bolge: GeziBolge.medine,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Mescid-i İcâbe", en: "Masjid al-Ijabah", ar: "مسجد الإجابة"),
    arapcaAd: L10nText.same("مسجد الإجابة"),
    altBaslik: L10nText(
      tr: "Benî Muâviye Mescidi: Hz. Peygamber'in üç dua ettiği yer",
      en: "The Mosque of Banu Mu'awiyah, where the Prophet made three supplications",
      ar: "مسجد بني معاوية، حيث دعا النبي صلى الله عليه وسلم بثلاث دعوات",
    ),
    sehir: L10nText(tr: "Medine, Bakī'in kuzeyi", en: "Madinah, north of al-Baqi'", ar: "المدينة المنورة، شمال البقيع"),
    konum: LatLng(24.4719641, 39.6184441), // OSM way 346500332
    genel: L10nText(
      tr: "Mescid-i İcâbe, Cennetü'l-Bakī'in yaklaşık 385 m kuzeyinde, Mescid-i Nebevî'nin kuzeydoğusunda ve ona 600 m kadar uzaklıktadır. Ensardan Evs kabilesinin Benî Muâviye b. Mâlik koluna ait yurtta bulunduğu için ilk adı Benî Muâviye Mescidi'dir. Hz. Peygamber'in burada namaz kılıp uzun uzun dua ettiğini ve dualarından ikisinin kabul edildiğini bildiren Müslim'deki hadis sebebiyle “İcâbe” (kabul, icabet) mescidi diye anılmıştır.\n\n"
          "Bugünkü yapı 1418'de (1997-98) Suudi Vakıflar Bakanlığı tarafından eski binanın yerine yeniden inşa edilmiştir. Yaklaşık 1000 m²'lik alanı, bir kubbesi ve çevreye hâkim tek minaresiyle orta büyüklükte bir camidir. Vakit namazlarına açıktır.",
      en: "Masjid al-Ijabah lies about 385 m north of al-Baqi', north-east of the Prophet's Mosque and about 600 m from it. Because it stands in the territory of the Banu Mu'awiyah ibn Malik clan of the Aws tribe of the Ansar, its first name was the Mosque of Banu Mu'awiyah. It came to be called the Mosque of “al-Ijabah” (the answering) because of the hadith in Sahih Muslim relating that the Prophet prayed here, made a long supplication, and that two of his requests were granted.\n\n"
          "The present building was rebuilt on the site of the old one in 1418 AH (1997-98) by the Saudi Ministry of Awqaf. With an area of about 1,000 m², one dome and a single minaret overlooking its surroundings, it is a medium-sized mosque. It is open for the daily prayers.",
      ar: "يقع مسجد الإجابة على بعد نحو 385 مترًا شمال البقيع، في الشمال الشرقي من المسجد النبوي وعلى بعد نحو 600 متر منه. وكان اسمه الأول مسجد بني معاوية لوقوعه في ديار بني معاوية بن مالك بن عوف من الأوس، ثم عُرف بمسجد الإجابة لحديث صحيح مسلم في صلاة النبي صلى الله عليه وسلم فيه ودعائه الطويل واستجابة اثنتين من دعواته.\n\n"
          "وقد هدمت وزارة الأوقاف السعودية البناء القديم سنة 1418هـ (1997-1998م) وبنت مكانه مسجدًا أكبر، تبلغ مساحته نحو ألف متر مربع، وله قبة واحدة ومئذنة واحدة مشرفة على ما حولها. وهو مفتوح للصلوات الخمس.",
    ),
    tarihce: L10nText(
      tr: "Mescit, Hz. Peygamber zamanında Benî Muâviye yurdunda mevcuttu. Sa'd b. Ebû Vakkâs'ın rivayetine göre Resûlullah bir gün Medine'nin yukarı kesimi olan Âliye'den dönerken bu mescide uğradı, iki rekât namaz kıldı, sahâbîler de onunla birlikte kıldı. Sonra Rabbine uzun uzun dua etti ve dönüp ümmeti için üç şey istediğini, ikisinin kabul edildiğini, birinin ise kabul edilmediğini haber verdi (Müslim, Fiten).\n\n"
          "Medine tarihçisi İbn Şebbe (ö. 262/876) mescidi Hz. Peygamber'in namaz kıldığı mescitler arasında sayar. Hicrî 7. ve 8. asırlarda harap olduğu kaydedilir; Semhûdî (ö. 911/1506) hicrî 9. asrın sonlarında yenilendiğini bildirir. Daha sonra gelen seyyah Ayyâşî minareli bir yapıdan söz eder. Bazı kaynaklarda Necran heyetiyle yapılması teklif edilen mübâhele ile ilişkilendirilerek “Mübâhele Mescidi” diye de anılmışsa da bu bağlantı kesin değildir.\n\n"
          "Suudi yönetimi döneminde eski yapı yıkılarak 1418'de (1997-98) bugünkü daha geniş mescit inşa edilmiştir.",
      en: "The mosque already existed in the time of the Prophet, in the territory of Banu Mu'awiyah. According to the narration of Sa'd ibn Abi Waqqas, one day the Messenger of Allah, returning from al-Aliyah, the upper part of Madinah, stopped at this mosque and prayed two rak'ahs, and the Companions prayed with him. Then he supplicated to his Lord at length, and turning to them he said that he had asked three things for his Ummah, that two had been granted and one withheld (Muslim, Fitan).\n\n"
          "The Madinan historian Ibn Shabbah (d. 262/876) counts it among the mosques in which the Prophet prayed. It is recorded as being in ruins in the seventh and eighth centuries AH; as-Samhudi (d. 911/1506) reports that it was restored towards the end of the ninth century AH. The later traveller al-Ayyashi speaks of a building with a minaret. Some sources also call it the “Mosque of al-Mubahalah”, linking it to the mutual invocation proposed to the delegation of Najran, but this connection is not certain.\n\n"
          "Under the Saudi administration the old building was demolished and the present, larger mosque was built in 1418 AH (1997-98).",
      ar: "كان المسجد قائمًا في عهد النبي صلى الله عليه وسلم في ديار بني معاوية. وقد روى سعد بن أبي وقاص رضي الله عنه أن رسول الله صلى الله عليه وسلم أقبل ذات يوم من العالية حتى مرّ بمسجد بني معاوية، فدخل فصلى فيه ركعتين وصلى معه أصحابه، ودعا ربه طويلًا، ثم انصرف إليهم فأخبرهم أنه سأل ربه ثلاثًا لأمته فأعطاه اثنتين ومنعه واحدة (رواه مسلم في كتاب الفتن).\n\n"
          "وذكره مؤرخ المدينة ابن شبّة (ت 262هـ) في المساجد التي صلى فيها النبي صلى الله عليه وسلم. ويُذكر أنه كان متهدمًا في القرنين السابع والثامن الهجريين، وذكر السمهودي (ت 911هـ) أنه جُدّد في أواخر القرن التاسع، ووصفه الرحالة العياشي بعد ذلك بناءً ذا مئذنة. وسمّاه بعضهم مسجد المباهلة ربطًا له بالمباهلة التي دُعي إليها وفد نجران، وهذه النسبة غير مقطوع بها.\n\n"
          "وفي العهد السعودي هُدم البناء القديم وبُني المسجد الحالي الأوسع سنة 1418هـ (1997-1998م).",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Asr-ı saadet", en: "The Prophet's time", ar: "العهد النبوي"),
        metin: L10nText(
          tr: "Hz. Peygamber burada iki rekât namaz kılıp ümmeti için üç dua etti; ikisi kabul edildi.",
          en: "The Prophet prayed two rak'ahs here and made three supplications for his Ummah; two were granted.",
          ar: "صلى النبي صلى الله عليه وسلم هنا ركعتين ودعا لأمته بثلاث، فأُعطي اثنتين.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hicrî 7-8. asır", en: "7th-8th centuries AH", ar: "القرنان السابع والثامن الهجريان"),
        metin: L10nText(
          tr: "Mescidin harap olduğu kaydedildi.",
          en: "The mosque is recorded as being in ruins.",
          ar: "ذُكر أن المسجد كان متهدمًا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hicrî 9. asır sonu", en: "Late 9th century AH", ar: "أواخر القرن التاسع الهجري"),
        metin: L10nText(
          tr: "Semhûdî'nin bildirdiğine göre mescit yenilendi.",
          en: "According to as-Samhudi, the mosque was restored.",
          ar: "جُدّد المسجد كما ذكر السمهودي.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1418 (1997-98)", en: "1418 AH (1997-98)", ar: "1418هـ (1997-1998م)"),
        metin: L10nText(
          tr: "Suudi Vakıflar Bakanlığı mescidi genişleterek yeniden inşa etti.",
          en: "The Saudi Ministry of Awqaf rebuilt and enlarged the mosque.",
          ar: "أعادت وزارة الأوقاف السعودية بناء المسجد وتوسعته.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Mescid-i İcâbe, Hz. Peygamber'in ümmeti için duyduğu derin şefkatin hatırasını taşır. Resûlullah burada ümmetinin kıtlıkla helak edilmemesini ve suda boğularak (tufanla) helak edilmemesini istemiş, bu iki dua kabul edilmiştir. Müslümanların birbirleriyle çatışmaya düşmemesi duası ise kabul edilmemiştir.\n\n"
          "Bu hadis, ümmetin birliğini korumanın ve aralarındaki ihtilafı çatışmaya dönüştürmemenin ne kadar önemli olduğunu hatırlatır. Mescide mahsus özel bir sevap rivayet edilmemiştir; ancak Peygamber Efendimizin dua ettiği bir yerde, onun ümmeti için Allah'a yalvarmak güzel bir hatırlamadır.",
      en: "Masjid al-Ijabah carries the memory of the Prophet's deep compassion for his Ummah. Here the Messenger of Allah asked that his Ummah not be destroyed by famine and not be destroyed by drowning (a flood), and these two prayers were granted. His prayer that Muslims not fall into conflict among themselves was not granted.\n\n"
          "This hadith reminds us how important it is to preserve the unity of the Ummah and not to let disagreements turn into conflict. No special reward has been narrated for this mosque; yet in a place where the Prophet supplicated, praying to Allah for his Ummah is a beautiful act of remembrance.",
      ar: "يحمل مسجد الإجابة ذكرى شفقة النبي صلى الله عليه وسلم العظيمة بأمته. فقد سأل ربه هنا ألا يُهلك أمته بالسَّنة (القحط) ولا بالغرق، فأُعطي ذلك، وسأله ألا يجعل بأسهم بينهم فمُنعها.\n\n"
          "ويذكّر هذا الحديث بأهمية حفظ وحدة الأمة وألا يتحول الخلاف بين المسلمين إلى اقتتال. ولم يرد فضل خاص بهذا المسجد، لكن الدعاء للأمة في موضع دعا فيه النبي صلى الله عليه وسلم تذكير جميل.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "سَأَلْتُ رَبِّي ثَلاَثًا فَأَعْطَانِي ثِنْتَيْنِ وَمَنَعَنِي وَاحِدَةً سَأَلْتُ رَبِّي أَنْ لاَ يُهْلِكَ أُمَّتِي بِالسَّنَةِ فَأَعْطَانِيهَا وَسَأَلْتُهُ أَنْ لاَ يُهْلِكَ أُمَّتِي بِالْغَرَقِ فَأَعْطَانِيهَا وَسَأَلْتُهُ أَنْ لاَ يَجْعَلَ بَأْسَهُمْ بَيْنَهُمْ فَمَنَعَنِيهَا",
        meal: L10nText(
          tr: "Rabbimden üç şey istedim; ikisini verdi, birini vermedi. Ümmetimi kıtlıkla helak etmemesini istedim, verdi. Ümmetimi suda boğarak helak etmemesini istedim, verdi. Aralarında birbirleriyle savaşmamalarını istedim, onu vermedi.",
          en: "I asked my Lord for three things; He granted me two and withheld one. I asked my Lord not to destroy my Ummah by famine, and He granted it. I asked Him not to destroy my Ummah by drowning, and He granted it. I asked Him not to let them fight among themselves, and He withheld it.",
          ar: "سألت ربي ثلاثًا فأعطاني ثنتين ومنعني واحدة: سألت ربي ألا يهلك أمتي بالسنة فأعطانيها، وسألته ألا يهلك أمتي بالغرق فأعطانيها، وسألته ألا يجعل بأسهم بينهم فمنعنيها.",
        ),
        kaynak: L10nText(tr: "Müslim, Fiten (No. 2890)", en: "Sahih Muslim 2890", ar: "صحيح مسلم، 2890"),
      ),
      GeziAlinti(
        arapca: "وَقَالَ رَبُّكُمُ ٱدْعُونِىٓ أَسْتَجِبْ لَكُمْ",
        meal: L10nText(
          tr: "Rabbiniz şöyle dedi: Bana dua edin, size icabet edeyim.",
          en: "And your Lord says: Call upon Me; I will respond to you.",
          ar: "وقال ربكم ادعوني أستجب لكم.",
        ),
        kaynak: L10nText(tr: "Mü'min (Gâfir) 40/60", en: "Qur'an 40:60", ar: "سورة غافر، الآية 60"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Mescide girdiğinizde iki rekât tahiyyetü'l-mescid kılın ve dilediğiniz gibi dua edin.",
        en: "On entering the mosque pray two rak'ahs of tahiyyat al-masjid and supplicate as you wish.",
        ar: "صلِّ ركعتي تحية المسجد عند دخولك، وادعُ بما شئت.",
      ),
      L10nText(
        tr: "Hz. Peygamber'in burada ümmeti için dua ettiğini hatırlayarak Müslümanların birliği ve huzuru için dua etmek güzel olur.",
        en: "Remembering that the Prophet prayed here for his Ummah, it is good to pray for the unity and peace of the Muslims.",
        ar: "يحسن أن تتذكر دعاء النبي صلى الله عليه وسلم لأمته هنا، فتدعو بوحدة المسلمين وأمنهم.",
      ),
      L10nText(
        tr: "Mescid-i Nebevî'den ve Bakī'den yürüyerek kısa sürede ulaşılır; Bakī ziyaretinden sonra uğrayabilirsiniz.",
        en: "It is a short walk from the Prophet's Mosque and al-Baqi'; you can stop by after visiting al-Baqi'.",
        ar: "يُوصل إليه سيرًا في وقت قصير من المسجد النبوي والبقيع، فيمكن زيارته بعد زيارة البقيع.",
      ),
      L10nText(
        tr: "Namaz vakitleri dışında kapalı olabilir; vakte yakın gitmek daha uygundur.",
        en: "It may be closed outside prayer times; it is better to go close to a prayer time.",
        ar: "قد يُغلق خارج أوقات الصلاة، فالأفضل أن تذهب قرب وقت الصلاة.",
      ),
    ],
    ziyaretSuresi: L10nText(tr: "15-20 dakika", en: "15-20 minutes", ar: "15 إلى 20 دقيقة"),
    anlatim: L10nText(
      tr: "Bakī Mezarlığı'nın biraz kuzeyinde, şehrin gürültüsü içinde bu mescit sessizce durur. Burası Mescid-i İcâbe, yani duanın kabul edildiği mescit. Asr-ı saadette bu bölge ensardan Benî Muâviye ailesinin yurduydu ve mescit de onların adıyla anılırdı.\n\n"
          "Sa'd bin Ebû Vakkâs anlatıyor. Bir gün Resûlullah ile birlikte Medine'nin yukarı kesiminden dönüyorduk. Benî Muâviye mescidine gelince içeri girdi, iki rekât namaz kıldı, biz de onunla birlikte kıldık. Sonra Rabbine uzun uzun dua etti. Duasını bitirince bize döndü ve şöyle buyurdu.\n\n"
          "Rabbimden üç şey istedim. İkisini verdi, birini vermedi. Ümmetimi kıtlıkla helak etmemesini istedim, verdi. Ümmetimi suda boğarak helak etmemesini istedim, verdi. Aralarında birbirleriyle savaşmamalarını istedim, onu vermedi.\n\n"
          "Bu sözleri düşünün. Peygamber Efendimiz burada kendisi için değil, bizim için, ümmeti için dua etti. Kıtlıktan, tufandan korunmamızı istedi. Ve en çok da aramızda birbirimize düşmememizi istedi. Bu son duanın kabul edilmemesi, ümmetin birliğini korumanın bizim elimize bırakılmış bir sorumluluk olduğunu gösterir.\n\n"
          "Bu mescitte iki rekât namaz kıldığınızda, Resûlullah'ın ümmetine olan o derin şefkatini hatırlayın. Siz de Müslümanların birliği, kardeşliği ve huzuru için dua edin. Belki bu küçük mescitten yükselen duanız, onun duasına bir âmin olur.",
      en: "A little north of al-Baqi' cemetery, amid the noise of the city, this mosque stands quietly. This is Masjid al-Ijabah, the mosque where the prayer was answered. In the Prophet's time this area was the home of the Banu Mu'awiyah family of the Ansar, and the mosque was known by their name.\n\n"
          "Sa'd ibn Abi Waqqas relates: One day we were returning with the Messenger of Allah from the upper part of Madinah. When he reached the mosque of Banu Mu'awiyah he went in and prayed two rak'ahs, and we prayed with him. Then he supplicated to his Lord at length. When he had finished, he turned to us and said:\n\n"
          "I asked my Lord for three things. He granted me two and withheld one. I asked Him not to destroy my Ummah by famine, and He granted it. I asked Him not to destroy my Ummah by drowning, and He granted it. I asked Him not to let them fight among themselves, and He withheld it.\n\n"
          "Reflect on these words. Here the Prophet prayed not for himself, but for us, for his Ummah. He asked that we be protected from famine and flood. And above all he asked that we not turn against one another. That this last prayer was not granted shows that preserving the unity of the Ummah is a responsibility left in our own hands.\n\n"
          "When you pray two rak'ahs in this mosque, remember the deep compassion of the Messenger of Allah for his Ummah. Pray too for the unity, brotherhood and peace of the Muslims. Perhaps your prayer rising from this small mosque will be an amin to his.",
      ar: "على مسافة قليلة شمال البقيع، وسط ضجيج المدينة، يقف هذا المسجد هادئًا. هذا مسجد الإجابة. وكانت هذه الناحية في العهد النبوي ديار بني معاوية من الأنصار، وكان المسجد يُعرف باسمهم.\n\n"
          "يحدّث سعد بن أبي وقاص رضي الله عنه فيقول: أقبلنا يومًا مع رسول الله صلى الله عليه وسلم من العالية، فلما مرّ بمسجد بني معاوية دخل فصلى فيه ركعتين وصلينا معه، ثم دعا ربه طويلًا، ثم انصرف إلينا فقال:\n\n"
          "سألت ربي ثلاثًا فأعطاني ثنتين ومنعني واحدة. سألت ربي ألا يهلك أمتي بالسنة فأعطانيها، وسألته ألا يهلك أمتي بالغرق فأعطانيها، وسألته ألا يجعل بأسهم بينهم فمنعنيها.\n\n"
          "تأملوا هذه الكلمات. لقد دعا النبي صلى الله عليه وسلم هنا لا لنفسه بل لنا، لأمته. سأل أن نُحفظ من القحط والغرق، وسأل قبل كل شيء ألا يقع بأسنا بيننا. وفي منع هذه الدعوة الأخيرة بيان أن حفظ وحدة الأمة مسؤولية تُركت في أيدينا.\n\n"
          "فإذا صليتم في هذا المسجد ركعتين فتذكروا شفقة رسول الله صلى الله عليه وسلم بأمته، وادعوا لوحدة المسلمين وأخوّتهم وأمنهم. لعل دعاءكم الصاعد من هذا المسجد الصغير يكون تأمينًا على دعائه.",
    ),
    kaynaklar: [
      GeziKaynak("Sahîh-i Müslim 2890 (sunnah.com)", "https://sunnah.com/muslim:2890a"),
      GeziKaynak("Vikipedi (ar), “مسجد الإجابة”", "https://ar.wikipedia.org/wiki/مسجد_الإجابة"),
      GeziKaynak("Kur'an, Mü'min (Gâfir) 40/60 (quran.com)", "https://quran.com/40/60"),
      GeziKaynak("OpenStreetMap, way 346500332", "https://www.openstreetmap.org/way/346500332"),
    ],
  ),
];
