import 'package:latlong2/latlong.dart';

import 'gezilecek_yerler_data.dart';
import 'l10n_text.dart';

/// Mekke (C): Mevlid (Mekke Kütüphanesi), Mescid-i Biat, Ebû Kubeys Dağı,
/// Kâbe Örtüsü (Kisve) Kompleksi ve Ayn-ı Zübeyde.
///
/// Tarihî bilgiler TDV İslâm Ansiklopedisi'nin "Akabe Biatları", "Ebûkubeys",
/// "Mekke" ve "Zübeyde bint Ca'fer" maddelerinden; ayrıca Vikipedi (ar/en)
/// ve Arab News haberlerinden alındı. Zayıf ya da tartışmalı rivayetler
/// "rivayete göre" diliyle verildi.
/// Koordinatlar 6 Kasım 2026'da OpenStreetMap (Overpass ve OSM API) ile
/// doğrulandı. Ayetlerin Arapça metni api.quran.com (text_uthmani) ile
/// doğrulandı.
///
/// Not: "Harameyn Mimari Sergisi" zaten `mekke_muzesi` olarak var; Mescid-i
/// Râye ise 1433 (2012) Harem genişlemesinde yıkıldığı ve yeri doğrulanamadığı
/// için eklenmedi.
const List<GeziYeri> kMekkeYerleriC = [
  // ---------------------------------------------------------------- Mevlid
  GeziYeri(
    id: 'mevlid',
    bolge: GeziBolge.mekke,
    tur: GeziTur.tarihiSehir,
    ad: L10nText(
      tr: "Hz. Peygamber'in Doğduğu Yer (Mekke Kütüphanesi)",
      en: "Birthplace of the Prophet (Makkah Library)",
      ar: "موضع مولد النبي ﷺ (مكتبة مكة المكرمة)",
    ),
    arapcaAd: L10nText.same("مكتبة مكة المكرمة"),
    altBaslik: L10nText(
      tr: "Peygamber Efendimizin doğduğu ev olarak bilinen yerde bugün bir kütüphane bulunur",
      en: "A library now stands where the Prophet is traditionally held to have been born",
      ar: "مكتبة تقوم اليوم في الموضع المعروف بمولد النبي ﷺ",
    ),
    sehir: L10nText(tr: "Mescid-i Haram'ın doğusu, Mekke", en: "East of al-Masjid al-Haram, Makkah", ar: "شرق المسجد الحرام، مكة المكرمة"),
    // OSM way 187609532 (مكتبة مكة المكرمة); OSM node 6844620719 aynı yeri
    // "The place where the Prophet Muhammad was born" olarak işaretler.
    konum: LatLng(21.42493, 39.82994),
    genel: L10nText(
      tr: "Mescid-i Haram'ın doğu meydanında, Safâ ile Merve arasındaki mesâ binasının hemen karşısında, iki katlı sade "
          "bir bina görürsünüz. Kapısının üzerinde “Mekke-i Mükerreme Kütüphanesi” yazar. Kaynaklarda Hz. Peygamber'in "
          "dünyaya geldiği ev olarak nakledilen yer burasıdır. Tarihçilerin çoğu bu yerin, eskiden Haşimoğullarının "
          "oturduğu Şi'b-i Ebû Tâlib (Şi'b-i Benî Hâşim) mahallesinde olduğunu söyler.\n\n"
          "Etrafındaki evler ve çarşılar Harem genişlemeleri sırasında kaldırıldığı için bina bugün meydanda tek başına "
          "kalmıştır. Yaklaşık 24 × 13 metre ölçüsünde, 10 metre kadar yüksekliğinde bir yapıdır. Kütüphane, İslâmî "
          "İşler, Davet ve İrşad Bakanlığı'na bağlıdır. Bina genellikle ziyaretçilere kapalıdır; hacı ve umreciler onu "
          "dışarıdan görür.\n\n"
          "Doğum yerinin tam olarak bu nokta olup olmadığı konusunda âlimler arasında farklı görüşler vardır. Bu yüzden "
          "burası, kesinliği tartışılan ama asırlardır böyle bilinen bir hatıra mekânı olarak anılmalıdır.",
      en: "On the eastern square of al-Masjid al-Haram, right across from the Mas'a building between Safa and Marwah, "
          "you will see a plain two-storey building. The sign above its door reads “Makkah al-Mukarramah Library”. "
          "This is the place reported in the sources as the house where the Prophet was born. Most historians place "
          "it in Shi'b Abi Talib (Shi'b Bani Hashim), the quarter where the Hashim clan once lived.\n\n"
          "The houses and markets around it were removed during the expansions of the Haram, so the building now "
          "stands alone on the square. It measures about 24 by 13 metres and is about 10 metres high. The library "
          "belongs to the Ministry of Islamic Affairs, Dawah and Guidance. The building is usually closed to "
          "visitors; pilgrims see it from outside.\n\n"
          "Scholars differ on whether this is exactly the spot where the Prophet was born. It should therefore be "
          "seen as a place of remembrance that has been known as such for centuries, though its precise "
          "identification is debated.",
      ar: "في الساحة الشرقية للمسجد الحرام، قبالة مبنى المسعى بين الصفا والمروة، ترى مبنى بسيطًا من طابقين كُتب على "
          "بابه: «مكتبة مكة المكرمة». وهذا هو الموضع الذي تذكره المصادر دارًا وُلد فيها النبي ﷺ، ويذهب أكثر المؤرخين "
          "إلى أنه في شعب أبي طالب (شعب بني هاشم) الذي كان يسكنه بنو هاشم.\n\n"
          "وقد أُزيلت البيوت والأسواق التي حوله في توسعات الحرم، فبقي المبنى وحده في الساحة. ومساحته نحو 24 × 13 مترًا، "
          "وارتفاعه نحو 10 أمتار، وتتبع المكتبة وزارة الشؤون الإسلامية والدعوة والإرشاد. والمبنى مغلق عادة أمام الزوار، "
          "فيراه الحجاج والمعتمرون من الخارج.\n\n"
          "وللعلماء أقوال مختلفة في تحديد موضع المولد بدقة، ولذلك يُذكر هذا المكان على أنه موضع ذكرى عُرف بذلك قرونًا، "
          "مع الخلاف في تعيينه على وجه القطع.",
    ),
    tarihce: L10nText(
      tr: "Yaygın kabule göre Hz. Peygamber, Fil Vakası'nın yaşandığı yıl, 571'de Rebîülevvel ayında Mekke'de dünyaya "
          "geldi. Kaynaklarda doğduğu evin dedesi Abdülmuttalib'e ait olduğu ve onun bu evi oğulları arasında paylaştırdığı "
          "nakledilir.\n\n"
          "Hz. Peygamber Medine'ye hicret edince ev, amcasının oğlu Akîl b. Ebû Tâlib'in eline geçti. Mekke'nin fethinde "
          "kendisine evinde kalıp kalmayacağı sorulduğunda, “Akîl bize ev mi bıraktı?” diyerek geri istemediği "
          "rivayet edilir. Kaynaklara göre ev daha sonra Haccâc'ın kardeşi Muhammed b. Yûsuf'a satıldı. Abbâsî halifesi "
          "Hârûnürreşîd'in annesi Hayzürân, doğumun gerçekleştiği bölümü bu evden ayırarak burada bir mescit yaptırdı.\n\n"
          "Mescit, sonraki asırlarda Abbâsî, Memlük ve Osmanlı dönemlerinde birçok kez yenilendi. Mevcut binanın, hicrî "
          "X. yüzyıla ait eski bir planın üzerine oturduğu düşünülür. XX. yüzyılda, Kral Abdülaziz'in "
          "himayesinde Mekke belediye başkanı Şeyh Abbas Kattân yeni bir bina yaptırdı ve kütüphane resmen 1370 (1951) "
          "yılında açıldı. Kütüphanenin çekirdeğini Şeyh Muhammed Tâhir el-Kürdî'nin kitapları oluşturdu. Bugün burada "
          "Mekke âlimlerinden kalan özel koleksiyonlar, yazmalar ve eski baskılar korunmaktadır.",
      en: "According to the commonly accepted view, the Prophet was born in Makkah in the month of Rabi al-Awwal in "
          "571, the Year of the Elephant. The sources report that the house belonged to his grandfather Abd "
          "al-Muttalib, who divided it among his sons.\n\n"
          "When the Prophet emigrated to Madinah, the house passed into the hands of his cousin Aqil ibn Abi Talib. It "
          "is narrated that at the conquest of Makkah, when he was asked whether he would stay in his house, he said, "
          "“Has Aqil left us any house?” and did not reclaim it. According to the sources, the house was later sold to "
          "Muhammad ibn Yusuf, the brother of al-Hajjaj. Al-Khayzuran, the mother of the Abbasid caliph Harun "
          "al-Rashid, separated the part where the birth took place and turned it into a mosque.\n\n"
          "The mosque was renewed many times in the Abbasid, Mamluk and Ottoman periods. The present building is "
          "thought to rest on an older plan from the 10th century AH. In the 20th century Sheikh "
          "Abbas Qattan, the mayor of Makkah, built a new building under the patronage of King Abdulaziz, and the "
          "library officially opened in 1370 AH (1951). Its core was the book collection of Sheikh Muhammad Tahir "
          "al-Kurdi. Today it holds private collections of Makkah scholars, manuscripts and early printed books.",
      ar: "على القول المشهور وُلد النبي ﷺ بمكة في شهر ربيع الأول من عام الفيل سنة 571م. وتذكر المصادر أن الدار كانت "
          "لجده عبد المطلب، وأنه قسمها بين أبنائه.\n\n"
          "ولما هاجر النبي ﷺ إلى المدينة صارت الدار إلى ابن عمه عقيل بن أبي طالب، ويُروى أنه لما سُئل يوم الفتح: أتنزل في "
          "دارك؟ قال: «وهل ترك لنا عقيل من دار؟» ولم يستردها. وتذكر المصادر أن الدار بيعت بعد ذلك لمحمد بن يوسف أخي "
          "الحجاج، ثم إن الخيزران أم الخليفة العباسي هارون الرشيد أفردت موضع المولد منها وجعلته مسجدًا.\n\n"
          "وجُدّد المسجد مرات كثيرة في العهود العباسية والمملوكية والعثمانية، ويُرجَّح أن المبنى القائم مشيد على تخطيط قديم "
          "يعود إلى القرن العاشر الهجري. وفي القرن العشرين شيّد الشيخ عباس قطان أمين العاصمة المقدسة مبنى جديدًا برعاية "
          "الملك عبد العزيز، وافتُتحت المكتبة رسميًا سنة 1370هـ (1951م)، وكانت نواتها مكتبة الشيخ محمد طاهر الكردي. وتضم "
          "اليوم مكتبات خاصة لعلماء مكة ومخطوطات وطبعات قديمة.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "571 (Fil Yılı)", en: "571 (Year of the Elephant)", ar: "571م (عام الفيل)"),
        metin: L10nText(
          tr: "Yaygın kabule göre Hz. Peygamber Rebîülevvel ayında bu mahallede dünyaya geldi.",
          en: "According to the common view, the Prophet was born in this quarter in Rabi al-Awwal.",
          ar: "على القول المشهور وُلد النبي ﷺ في هذا الحي في شهر ربيع الأول.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "622 sonrası", en: "After 622", ar: "بعد 622م"),
        metin: L10nText(
          tr: "Hicretten sonra ev Akîl b. Ebû Tâlib'in eline geçti.",
          en: "After the Hijrah the house passed to Aqil ibn Abi Talib.",
          ar: "بعد الهجرة صارت الدار إلى عقيل بن أبي طالب.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "II. (VIII.) yüzyıl", en: "2nd century AH (8th century)", ar: "القرن الثاني الهجري"),
        metin: L10nText(
          tr: "Hayzürân, doğum yeri olarak bilinen bölümü mescide çevirdi.",
          en: "Al-Khayzuran turned the part known as the birthplace into a mosque.",
          ar: "جعلت الخيزران موضع المولد مسجدًا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1370 (1951)", en: "1370 AH (1951)", ar: "1370هـ (1951م)"),
        metin: L10nText(
          tr: "Şeyh Abbas Kattân'ın yaptırdığı binada Mekke Kütüphanesi resmen açıldı.",
          en: "The Makkah Library officially opened in the building built by Sheikh Abbas Qattan.",
          ar: "افتُتحت مكتبة مكة المكرمة رسميًا في المبنى الذي شيّده الشيخ عباس قطان.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Bu mekân için dinî bir ibadet ya da özel bir fazilet bildirilmemiştir. Burada yapılması gereken belirli bir "
          "namaz, dua veya âdet yoktur. Önemi, âlemlere rahmet olarak gönderilen Peygamberimizin dünyaya geldiği "
          "mahalleyi hatırlatmasından gelir.\n\n"
          "Burada durup Mekke'nin o günkü hâlini düşünmek, yetim doğan bir çocuğun bütün insanlığa yol gösteren bir "
          "peygamber oluşunu hatırlamak, ona salât ü selâm getirmek ve sünnetine bağlılığı tazelemek için güzel bir "
          "fırsattır.",
      en: "No act of worship or special virtue is reported for this place. There is no particular prayer, "
          "supplication or custom to perform here. Its significance lies in reminding us of the quarter where the "
          "Prophet, sent as a mercy to the worlds, was born.\n\n"
          "Standing here is a good opportunity to picture Makkah as it was then, to remember how a child born an "
          "orphan became a prophet who guided all humanity, to send blessings upon him and to renew one's commitment "
          "to his Sunnah.",
      ar: "لم يرد في هذا المكان عبادة مخصوصة ولا فضل خاص، وليس فيه صلاة أو دعاء أو عادة معينة. وإنما تأتي مكانته من أنه "
          "يذكّر بالحي الذي وُلد فيه النبي ﷺ المبعوث رحمة للعالمين.\n\n"
          "والوقوف هنا فرصة لتصوّر مكة في ذلك الزمان، وتذكّر كيف صار طفل وُلد يتيمًا نبيًا هدى الله به البشرية، وللصلاة "
          "والسلام عليه، وتجديد العهد باتباع سنته.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "وَمَآ أَرْسَلْنَـٰكَ إِلَّا رَحْمَةً لِّلْعَـٰلَمِينَ",
        meal: L10nText(
          tr: "(Ey Muhammed!) Biz seni ancak âlemlere rahmet olarak gönderdik.",
          en: "We have not sent you (O Muhammad) except as a mercy to the worlds.",
          ar: "وَمَا أَرْسَلْنَاكَ إِلَّا رَحْمَةً لِلْعَالَمِينَ.",
        ),
        kaynak: L10nText(tr: "Enbiyâ 21/107", en: "Al-Anbiya 21:107", ar: "الأنبياء 21/107"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Bina genellikle kapalıdır; meydandan dışarıdan bakılarak ziyaret edilir.",
        en: "The building is usually closed; it is visited by looking at it from the square.",
        ar: "المبنى مغلق عادة، ويُكتفى بالنظر إليه من الساحة.",
      ),
      L10nText(
        tr: "Duvarlara, kapıya ve pencerelere dokunup bereket umulmaz; bu konuda görevlilerin uyarılarına uyun.",
        en: "Do not touch the walls, door or windows seeking blessing; follow the instructions of the staff.",
        ar: "لا تُتمسّح الجدران والأبواب والنوافذ طلبًا للبركة، والتزم بتوجيهات المسؤولين.",
      ),
      L10nText(
        tr: "Burada özel bir namaz ya da dua yoktur; Peygamberimize salât ü selâm getirmek her yerde güzeldir.",
        en: "There is no special prayer here; sending blessings upon the Prophet is good anywhere.",
        ar: "ليس هنا صلاة أو دعاء مخصوص، والصلاة والسلام على النبي ﷺ مشروعة في كل مكان.",
      ),
      L10nText(
        tr: "Meydan namaz vakitlerinde çok kalabalıktır; yürüyüş yollarını kapatmadan kısa tutun.",
        en: "The square is very crowded at prayer times; keep your stop short and do not block walkways.",
        ar: "الساحة مزدحمة جدًا أوقات الصلاة، فاجعل وقوفك قصيرًا ولا تسدّ الممرات.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Bina bir kütüphane olarak kullanılır ve genellikle ziyaretçilere açık değildir. Önünde zaman zaman "
          "bilgilendirme levhaları ve görevliler bulunur. Harem çevresindeki düzenleme çalışmaları nedeniyle meydanın "
          "durumu değişebilir.",
      en: "The building is used as a library and is generally not open to visitors. Information boards and staff are "
          "sometimes present in front of it. The square may change because of development works around the Haram.",
      ar: "المبنى يُستعمل مكتبةً ولا يُفتح عادة للزوار، وقد توجد أمامه أحيانًا لوحات إرشادية ومسؤولون. وقد تتغير حال الساحة "
          "بسبب أعمال التطوير حول الحرم.",
    ),
    uygunSaat: L10nText(tr: "Namaz vakitleri dışında", en: "Outside prayer times", ar: "في غير أوقات الصلاة"),
    ziyaretSuresi: L10nText(tr: "10-15 dakika", en: "10-15 minutes", ar: "10-15 دقيقة"),
    anlatim: L10nText(
      tr: "Mescid-i Haram'ın doğu meydanındayız. Safâ ile Merve arasındaki sa'y yolunun hemen karşısında, iki katlı, "
          "sade bir bina duruyor. Üzerinde Mekke-i Mükerreme Kütüphanesi yazıyor. Kaynaklar, Peygamber Efendimizin "
          "dünyaya geldiği evin burada olduğunu nakleder.\n\n"
          "On dört asır önce burası, Haşimoğullarının oturduğu dar bir vadiydi. Yaygın kabule göre beş yüz yetmiş bir "
          "yılında, Rebîülevvel ayında, babası doğumundan önce vefat etmiş bir çocuk dünyaya geldi. Annesi Âmine ona "
          "baktı, dedesi Abdülmuttalib onu sevinçle Kâbe'ye götürdü ve adını Muhammed koydu.\n\n"
          "Hicretten sonra bu ev amcasının oğlu Akîl'e kaldı. Mekke fethedildiğinde Peygamberimize evinde kalıp "
          "kalmayacağı sorulunca, Akîl bize ev mi bıraktı, buyurduğu rivayet edilir. O, geri dönüşünde bile eski evini "
          "istemedi. Asırlar sonra Abbâsî halifesinin annesi Hayzürân, doğum yeri olarak bilinen bölümü bir mescide "
          "çevirdi. Bina defalarca yenilendi. Bin dokuz yüz elli bir yılında ise burada bugün gördüğünüz kütüphane "
          "açıldı.\n\n"
          "Âlimler doğum yerinin tam olarak bu nokta olup olmadığı konusunda farklı görüşler bildirmişlerdir. Bu yüzden "
          "burada özel bir ibadet yapılmaz, duvarlara dokunup bereket aranmaz. Bina da çoğu zaman kapalıdır.\n\n"
          "Ama bu sade binaya bakarken şunu düşünebilirsiniz. Yetim doğan bir çocuk, Allah'ın izniyle bütün insanlığa "
          "rahmet olarak gönderilen bir peygamber oldu. Kur'an onun hakkında, Biz seni ancak âlemlere rahmet olarak "
          "gönderdik, buyurur. Ona salât ü selâm getirin ve sünnetine bağlılığınızı tazeleyin.",
      en: "We are on the eastern square of al-Masjid al-Haram. Right across from the path of sa'y between Safa and "
          "Marwah stands a plain two-storey building. It reads Makkah al-Mukarramah Library. The sources report that "
          "the house where the Prophet was born stood here.\n\n"
          "Fourteen centuries ago this was a narrow valley where the Hashim clan lived. According to the common view, "
          "in the year five hundred and seventy-one, in the month of Rabi al-Awwal, a child was born whose father had "
          "died before his birth. His mother Aminah cared for him, and his grandfather Abd al-Muttalib joyfully took "
          "him to the Kaaba and named him Muhammad.\n\n"
          "After the Hijrah the house went to his cousin Aqil. It is narrated that when Makkah was conquered and the "
          "Prophet was asked whether he would stay in his house, he said: Has Aqil left us any house? Even on his "
          "return he did not ask for his old home. Centuries later al-Khayzuran, the mother of an Abbasid caliph, "
          "turned the part known as the birthplace into a mosque. The building was renewed many times, and in "
          "nineteen fifty-one the library you see today was opened here.\n\n"
          "Scholars have held different views on whether this is exactly the place of birth. For this reason no "
          "special worship is done here, and no blessing is sought by touching the walls. The building itself is "
          "usually closed.\n\n"
          "But as you look at this simple building, you may reflect on this: a child born an orphan became, by "
          "God's will, a prophet sent as a mercy to all humanity. The Qur'an says of him: We have not sent you except "
          "as a mercy to the worlds. Send blessings upon him and renew your commitment to his Sunnah.",
      ar: "نحن في الساحة الشرقية للمسجد الحرام. وقبالة المسعى بين الصفا والمروة يقوم مبنى بسيط من طابقين كُتب عليه: مكتبة "
          "مكة المكرمة. وتذكر المصادر أن الدار التي وُلد فيها النبي ﷺ كانت هنا.\n\n"
          "قبل أربعة عشر قرنًا كان هذا المكان شعبًا ضيقًا يسكنه بنو هاشم. وعلى القول المشهور، في سنة خمسمائة وإحدى وسبعين، "
          "في شهر ربيع الأول، وُلد طفل مات أبوه قبل مولده. فرعته أمه آمنة، وحمله جده عبد المطلب فرحًا إلى الكعبة وسماه "
          "محمدًا.\n\n"
          "وبعد الهجرة صارت الدار إلى ابن عمه عقيل. ويُروى أنه لما فُتحت مكة سُئل النبي ﷺ: أتنزل في دارك؟ فقال: وهل ترك "
          "لنا عقيل من دار؟ فلم يطلب داره القديمة حتى عند عودته. وبعد قرون جعلت الخيزران، أم أحد خلفاء بني العباس، موضع "
          "المولد مسجدًا، وجُدّد البناء مرات كثيرة، ثم افتُتحت هنا سنة ألف وتسعمائة وإحدى وخمسين المكتبة التي تراها اليوم.\n\n"
          "وقد اختلف العلماء في تعيين موضع المولد بدقة، ولذلك لا تُخصّ هذه البقعة بعبادة، ولا يُتمسّح بجدرانها طلبًا للبركة، "
          "والمبنى نفسه مغلق في أكثر الأوقات.\n\n"
          "لكنك وأنت تنظر إلى هذا المبنى البسيط تستطيع أن تتأمل: طفل وُلد يتيمًا صار بإذن الله نبيًا مبعوثًا رحمة للبشرية "
          "كلها. يقول الله تعالى: وما أرسلناك إلا رحمة للعالمين. فصلِّ وسلّم عليه، وجدّد عهدك باتباع سنته.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi: Mekke", "https://islamansiklopedisi.org.tr/mekke"),
      GeziKaynak("Vikipedi (ar): مكتبة مكة المكرمة", "https://ar.wikipedia.org/wiki/مكتبة_مكة_المكرمة"),
      GeziKaynak("Al Jazeera (2015): بحثا عن مكان مولد الرسول الكريم",
          "https://www.ajnet.me/news/2015/9/19/%d8%a8%d8%ad%d8%ab%d8%a7-%d8%b9%d9%86-%d9%85%d9%83%d8%a7%d9%86-%d9%85%d9%88%d9%84%d8%af-%d8%a7%d9%84%d8%b1%d8%b3%d9%88%d9%84-%d8%a7%d9%84%d9%83%d8%b1%d9%8a%d9%85"),
      GeziKaynak("OpenStreetMap: way 187609532", "https://www.openstreetmap.org/way/187609532"),
      GeziKaynak("OpenStreetMap: node 6844620719", "https://www.openstreetmap.org/node/6844620719"),
    ],
  ),

  // ---------------------------------------------------------------- Biat
  GeziYeri(
    id: 'mescid_i_biat',
    bolge: GeziBolge.mekke,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Mescid-i Biat", en: "Al-Bay'ah Mosque", ar: "مسجد البيعة"),
    arapcaAd: L10nText.same("مسجد البيعة"),
    altBaslik: L10nText(
      tr: "Medineli Müslümanların Akabe'de Peygamberimize biat ettiği yerdeki tarihî mescit",
      en: "The historic mosque where the Muslims of Madinah pledged allegiance to the Prophet at Aqabah",
      ar: "المسجد التاريخي في موضع بيعة الأنصار للنبي ﷺ عند العقبة",
    ),
    sehir: L10nText(tr: "Mina, Mekke", en: "Mina, Makkah", ar: "منى، مكة المكرمة"),
    konum: LatLng(21.42472, 39.86749), // OSM way 446941270
    genel: L10nText(
      tr: "Mescid-i Biat, Mina'nın Mekke tarafındaki girişinde, Akabe cemresinin (büyük cemre) birkaç yüz metre "
          "kuzeybatısında, Sebîr dağının eteğindeki küçük bir vadide bulunur. Bu vadiye Şi'bü'l-Ensâr da denir. "
          "Mescit, Medineli Müslümanların 621 ve 622 yıllarında Hz. Peygamber'e burada verdikleri bağlılık sözlerini, "
          "yani Akabe biatlarını hatırlatmak için yapılmıştır. Mescid-i Akabe adıyla da anılır.\n\n"
          "Yapı, üstü açık bir avlu ile kıble tarafındaki iki sıra revaktan oluşan küçük ve sade bir mescittir. Alanı "
          "yaklaşık 500 metrekaredir. Kıble duvarındaki ve güney duvarındaki kitabeler, mescidin Abbâsî halifesi Ebû "
          "Ca'fer el-Mansûr tarafından yaptırıldığını gösterir. Çevresi demir parmaklıkla çevrilidir.",
      en: "Al-Bay'ah Mosque stands at the Makkah-side entrance of Mina, a few hundred metres north-west of Jamrat "
          "al-Aqabah (the large jamrah), in a small valley at the foot of Mount Thabir also called Shi'b al-Ansar. It "
          "was built to commemorate the pledges of loyalty that the Muslims of Madinah gave the Prophet here in 621 "
          "and 622, known as the Pledges of Aqabah. It is also called the Aqabah Mosque.\n\n"
          "It is a small, simple mosque consisting of an open courtyard and two rows of arcades on the qiblah side, "
          "covering about 500 square metres. Inscriptions on the qiblah wall and the southern wall show that it was "
          "built by the Abbasid caliph Abu Ja'far al-Mansur. It is surrounded by an iron fence.",
      ar: "يقع مسجد البيعة عند مدخل منى من جهة مكة، على بعد بضع مئات من الأمتار شمال غرب جمرة العقبة الكبرى، في شعب صغير "
          "عند سفح جبل ثبير يُعرف بشعب الأنصار. وقد بُني تذكارًا لبيعتي العقبة اللتين بايع فيهما مسلمو المدينة النبي ﷺ سنتي "
          "621 و622م، ويُسمّى أيضًا مسجد العقبة.\n\n"
          "وهو مسجد صغير بسيط يتكون من صحن مكشوف ورواقين في جهة القبلة، ومساحته نحو 500 متر مربع. وتدل النقوش على جداره "
          "القبلي وجداره الجنوبي على أن الخليفة العباسي أبا جعفر المنصور هو الذي بناه، ويحيط به سياج حديدي.",
    ),
    tarihce: L10nText(
      tr: "Hz. Peygamber, peygamberliğinin ilk yıllarında hac mevsiminde Mekke'ye gelen kabileleri ziyaret ederek "
          "onları İslâm'a davet ediyordu. 620 yılında Yesrib'den (Medine) gelen Hazrec kabilesinden altı kişiyle "
          "Akabe'de buluştu ve onlar Müslüman oldu.\n\n"
          "Ertesi yıl, 621'de, on Hazrecli ve iki Evsli olmak üzere on iki kişi aynı yerde Hz. Peygamber'e biat etti. "
          "Allah'a hiçbir şeyi ortak koşmayacaklarına, hırsızlık ve zina yapmayacaklarına, çocuklarını "
          "öldürmeyeceklerine ve iyilikte ona karşı gelmeyeceklerine söz verdiler. Bu Birinci Akabe Biatı'dır. Hz. "
          "Peygamber, onlara dini öğretmesi için Mus'ab b. Umeyr'i Medine'ye gönderdi.\n\n"
          "622 hac mevsiminde ikisi kadın, yetmiş beş Medineli Müslüman gece gizlice Akabe'de Hz. Peygamber'le buluştu. "
          "Yanında amcası Abbas b. Abdülmuttalib vardı. Medineliler, Hz. Peygamber'i canlarını, mallarını ve ailelerini "
          "korudukları gibi koruyacaklarına söz verdiler. Aralarından on iki temsilci (nakîb) seçildi. Bu İkinci Akabe "
          "Biatı'ndan sonra Müslümanlar Medine'ye hicret etmeye başladı.\n\n"
          "Bu hatırayı yaşatmak için Abbâsî halifesi Ebû Ca'fer el-Mansûr 144 (761) yılında buraya bir mescit "
          "yaptırdı. Mescit sonraki asırlarda, bu arada XIII. yüzyılda Abbâsî halifesi Müstansır döneminde onarıldı. "
          "Zamanla Akabe tepesinin arkasında görünmez hâle geldi. 1428 (2007) yılında Cemerât bölgesindeki genişletme "
          "çalışmalarında tepe kaldırılınca yeniden açığa çıktı. 2022'de Suudi Arabistan'ın tarihî mescitleri "
          "yenileme projesinin ikinci aşamasına alındı.",
      en: "In the early years of his prophethood, the Prophet visited the tribes that came to Makkah in the "
          "pilgrimage season and invited them to Islam. In 620 he met six men of the Khazraj tribe from Yathrib "
          "(Madinah) at Aqabah, and they accepted Islam.\n\n"
          "The next year, in 621, twelve men, ten from Khazraj and two from Aws, pledged allegiance to the Prophet at "
          "the same place. They promised not to associate anything with God, not to steal, not to commit adultery, "
          "not to kill their children and not to disobey him in what is right. This is the First Pledge of Aqabah. "
          "The Prophet sent Mus'ab ibn Umayr with them to Madinah to teach them the religion.\n\n"
          "In the pilgrimage season of 622, seventy-five Muslims of Madinah, two of them women, met the Prophet "
          "secretly at night at Aqabah. His uncle al-Abbas ibn Abd al-Muttalib was with him. The people of Madinah "
          "promised to protect the Prophet as they protected their own lives, property and families, and twelve "
          "representatives (naqibs) were chosen from among them. After this Second Pledge of Aqabah the Muslims "
          "began to emigrate to Madinah.\n\n"
          "To keep this memory alive, the Abbasid caliph Abu Ja'far al-Mansur built a mosque here in 144 AH (761). "
          "It was repaired in later centuries, including under the Abbasid caliph al-Mustansir in the 13th century. "
          "Over time it became hidden behind the hill of Aqabah. In 1428 AH (2007), when the hill was removed during "
          "the expansion works around the Jamarat, it came to light again. In 2022 it was included in the second "
          "phase of Saudi Arabia's project to restore historic mosques.",
      ar: "كان النبي ﷺ في السنوات الأولى من بعثته يعرض نفسه على القبائل القادمة إلى مكة في موسم الحج ويدعوها إلى الإسلام. "
          "وفي سنة 620م لقي عند العقبة ستة نفر من الخزرج من يثرب (المدينة) فأسلموا.\n\n"
          "وفي العام التالي سنة 621م بايعه في الموضع نفسه اثنا عشر رجلًا، عشرة من الخزرج واثنان من الأوس، على ألا يشركوا "
          "بالله شيئًا، ولا يسرقوا، ولا يزنوا، ولا يقتلوا أولادهم، ولا يعصوه في معروف. وهذه بيعة العقبة الأولى. وأرسل "
          "النبي ﷺ معهم مصعب بن عمير إلى المدينة يعلّمهم الدين.\n\n"
          "وفي موسم حج سنة 622م التقى خمسة وسبعون من مسلمي المدينة، منهم امرأتان، بالنبي ﷺ ليلًا سرًّا عند العقبة، ومعه "
          "عمه العباس بن عبد المطلب. فبايعوه على أن يمنعوه مما يمنعون منه أنفسهم وأموالهم وأهليهم، واختير منهم اثنا عشر "
          "نقيبًا. وبعد بيعة العقبة الثانية هذه بدأ المسلمون الهجرة إلى المدينة.\n\n"
          "وتخليدًا لهذه الذكرى بنى الخليفة العباسي أبو جعفر المنصور هنا مسجدًا سنة 144هـ (761م)، ثم رُمّم في القرون "
          "التالية، ومن ذلك ترميمه في عهد الخليفة العباسي المستنصر في القرن السابع الهجري. ومع الزمن صار مختفيًا خلف جبل "
          "العقبة، حتى ظهر من جديد سنة 1428هـ (2007م) حين أُزيل الجبل في أعمال توسعة منطقة الجمرات. وفي سنة 2022م أُدرج "
          "في المرحلة الثانية من مشروع تطوير المساجد التاريخية في المملكة.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "620", en: "620", ar: "620م"),
        metin: L10nText(
          tr: "Hazrec kabilesinden altı kişi Akabe'de Müslüman oldu.",
          en: "Six men of the Khazraj accepted Islam at Aqabah.",
          ar: "أسلم ستة نفر من الخزرج عند العقبة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "621", en: "621", ar: "621م"),
        metin: L10nText(
          tr: "Birinci Akabe Biatı: on iki Medineli biat etti; Mus'ab b. Umeyr Medine'ye gönderildi.",
          en: "First Pledge of Aqabah: twelve men of Madinah pledged; Mus'ab ibn Umayr was sent to Madinah.",
          ar: "بيعة العقبة الأولى: بايع اثنا عشر رجلًا، وأُرسل مصعب بن عمير إلى المدينة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "622", en: "622", ar: "622م"),
        metin: L10nText(
          tr: "İkinci Akabe Biatı: ikisi kadın yetmiş beş Medineli biat etti; ardından hicret başladı.",
          en: "Second Pledge of Aqabah: seventy-five people of Madinah, two of them women, pledged; the Hijrah followed.",
          ar: "بيعة العقبة الثانية: بايع خمسة وسبعون منهم امرأتان، ثم بدأت الهجرة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "144 (761)", en: "144 AH (761)", ar: "144هـ (761م)"),
        metin: L10nText(
          tr: "Abbâsî halifesi Ebû Ca'fer el-Mansûr mescidi yaptırdı.",
          en: "The Abbasid caliph Abu Ja'far al-Mansur built the mosque.",
          ar: "بنى الخليفة العباسي أبو جعفر المنصور المسجد.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1428 (2007)", en: "1428 AH (2007)", ar: "1428هـ (2007م)"),
        metin: L10nText(
          tr: "Cemerât genişletme çalışmalarında Akabe tepesi kaldırılınca mescit yeniden göründü.",
          en: "The mosque became visible again when the hill of Aqabah was removed during the Jamarat works.",
          ar: "ظهر المسجد من جديد بعد إزالة جبل العقبة في أعمال توسعة الجمرات.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Akabe biatları, Medine'deki İslâm toplumunun ve hicretin temelini oluşturur. Mekke'de baskı altında olan "
          "Müslümanlar, bu sözlerden sonra güvenli bir yurda kavuştu. Ensâr'ın Allah ve Resûlü için canlarını ve "
          "mallarını ortaya koyması, sadakatin ve fedakârlığın en güzel örneklerinden biridir.\n\n"
          "Bu mescit için ayrıca bildirilmiş bir fazilet yoktur. Burada, Ensâr'ın imanını ve verdikleri söze "
          "bağlılığını hatırlamak, onlar için dua etmek ve kendi verdiğimiz sözleri gözden geçirmek uygun olur. "
          "Akabe'de bulunanlardan Ubâde b. Sâmit, Birinci Akabe Biatı'nda verilen sözleri anlatmıştır (Buhârî, "
          "Menâkıbü'l-ensâr; Müslim, Hudûd).",
      en: "The Pledges of Aqabah laid the foundation of the Muslim community in Madinah and of the Hijrah. After "
          "these promises the Muslims, who were under pressure in Makkah, found a safe home. The Ansar's readiness to "
          "give their lives and wealth for God and His Messenger is one of the finest examples of loyalty and "
          "sacrifice.\n\n"
          "No separate virtue is reported for this mosque. It is fitting here to remember the faith of the Ansar and "
          "their faithfulness to their word, to pray for them and to reflect on the promises we ourselves have made. "
          "Ubadah ibn al-Samit, who was present at Aqabah, described the promises given at the First Pledge "
          "(al-Bukhari, Manaqib al-Ansar; Muslim, al-Hudud).",
      ar: "بيعتا العقبة أساس المجتمع المسلم في المدينة وأساس الهجرة؛ فبعدهما وجد المسلمون المستضعفون في مكة دارًا آمنة. "
          "وبذلُ الأنصار أنفسهم وأموالهم لله ورسوله من أجمل أمثلة الوفاء والتضحية.\n\n"
          "ولم يرد لهذا المسجد فضل خاص، ويحسن هنا تذكّر إيمان الأنصار ووفائهم بالعهد، والدعاء لهم، ومراجعة عهودنا نحن. وقد "
          "حدّث عبادة بن الصامت، وكان ممن شهد العقبة، بما بايعوا عليه في البيعة الأولى (البخاري، مناقب الأنصار؛ مسلم، "
          "الحدود).",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "يَـٰٓأَيُّهَا ٱلنَّبِىُّ إِذَا جَآءَكَ ٱلْمُؤْمِنَـٰتُ يُبَايِعْنَكَ عَلَىٰٓ أَن لَّا يُشْرِكْنَ بِٱللَّهِ شَيْـًٔا وَلَا "
            "يَسْرِقْنَ وَلَا يَزْنِينَ وَلَا يَقْتُلْنَ أَوْلَـٰدَهُنَّ",
        meal: L10nText(
          tr: "Ey Peygamber! İnanmış kadınlar, Allah'a hiçbir şeyi ortak koşmamak, hırsızlık yapmamak, zina etmemek, "
              "çocuklarını öldürmemek üzere sana biat etmeye geldiklerinde... (Birinci Akabe Biatı'nın maddeleri bu "
              "ayettekilere benzediği için bu biata “Bey'atü'n-nisâ” da denir.)",
          en: "O Prophet, when the believing women come to you pledging that they will not associate anything with "
              "God, nor steal, nor commit adultery, nor kill their children... (Because the terms of the First Pledge "
              "of Aqabah resemble those in this verse, it is also called the “Pledge of the Women”.)",
          ar: "يَا أَيُّهَا النَّبِيُّ إِذَا جَاءَكَ الْمُؤْمِنَاتُ يُبَايِعْنَكَ عَلَى أَنْ لَا يُشْرِكْنَ بِاللَّهِ شَيْئًا وَلَا "
              "يَسْرِقْنَ وَلَا يَزْنِينَ وَلَا يَقْتُلْنَ أَوْلَادَهُنَّ... (ولمشابهة بنود بيعة العقبة الأولى لما في هذه الآية سُمّيت "
              "«بيعة النساء».)",
        ),
        kaynak: L10nText(
          tr: "Mümtehine 60/12 (ayetin bir bölümü)",
          en: "Al-Mumtahanah 60:12 (part of the verse)",
          ar: "الممتحنة 60/12 (جزء من الآية)",
        ),
      ),
    ],
    adab: [
      L10nText(
        tr: "Mescit Mina'dadır; Mina'ya giden kafile turlarında genellikle dışarıdan gösterilir.",
        en: "The mosque is in Mina; it is usually shown from outside on group tours to Mina.",
        ar: "المسجد في منى، ويُرى عادة من الخارج في جولات المجموعات إلى منى.",
      ),
      L10nText(
        tr: "Kapılar açıksa vakit namazı ya da tahiyyetü'l-mescid kılınabilir; buraya özel bir namaz yoktur.",
        en: "If the gates are open, you may pray the obligatory prayer or tahiyyat al-masjid; there is no prayer specific to this place.",
        ar: "إن كانت الأبواب مفتوحة فلك أن تصلي الفريضة أو تحية المسجد، وليس لهذا المكان صلاة مخصوصة.",
      ),
      L10nText(
        tr: "Tarihî duvarlara ve kitabelere dokunmayın, üzerlerine bir şey yazmayın.",
        en: "Do not touch the historic walls and inscriptions, and do not write on them.",
        ar: "لا تلمس الجدران والنقوش التاريخية ولا تكتب عليها.",
      ),
      L10nText(
        tr: "Hac günlerinde bölge yoğun yaya trafiği altındadır; o günlerde ziyaret planlamayın.",
        en: "During the Hajj days the area carries heavy pedestrian traffic; do not plan a visit then.",
        ar: "تشهد المنطقة أيام الحج حركة مشاة كثيفة، فلا تخطط للزيارة فيها.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Mescit demir parmaklıkla çevrilidir ve 2022'den beri tarihî mescitleri yenileme projesi kapsamındadır. "
          "Kapıların açık olup olmadığı döneme göre değişir; çoğu ziyaretçi mescidi dışarıdan görür. Mina'ya araçla "
          "giriş hac dönemine yakın kısıtlanabilir.",
      en: "The mosque is fenced with iron railings and has been part of the historic mosques restoration project "
          "since 2022. Whether the gates are open varies; most visitors see it from outside. Vehicle access to Mina "
          "may be restricted as the Hajj season approaches.",
      ar: "المسجد محاط بسياج حديدي، وهو ضمن مشروع تطوير المساجد التاريخية منذ 2022م. ويختلف فتح أبوابه بحسب الأوقات، "
          "وأكثر الزوار يرونه من الخارج. وقد يُقيَّد دخول المركبات إلى منى مع اقتراب موسم الحج.",
    ),
    uygunSaat: L10nText(tr: "Sabah ya da ikindiden sonra", en: "Morning or late afternoon", ar: "في الصباح أو بعد العصر"),
    ziyaretSuresi: L10nText(tr: "15-20 dakika", en: "15-20 minutes", ar: "15-20 دقيقة"),
    anlatim: L10nText(
      tr: "Mina'nın girişindeyiz. Büyük cemrenin, yani Akabe cemresinin biraz ilerisinde, dağın eteğindeki küçük vadide, "
          "üstü açık, sade bir mescit görüyorsunuz. Burası Mescid-i Biat. İslâm tarihinin yönünü değiştiren bir buluşmanın "
          "hatırasını taşıyor.\n\n"
          "Peygamberimiz Mekke'de yıllarca tebliğ etti, ama kavminin çoğu ona sırt çevirdi. Hac mevsimlerinde Mekke'ye gelen "
          "kabileleri tek tek dolaşıp onları Allah'a davet ediyordu. Altı yüz yirmi yılında burada, Yesrib'den gelen altı "
          "kişiyle konuştu ve onlar iman etti.\n\n"
          "Ertesi yıl on iki kişi geldi. Burada, bu vadide, Allah'a hiçbir şeyi ortak koşmayacaklarına, hırsızlık ve zina "
          "yapmayacaklarına, çocuklarını öldürmeyeceklerine ve iyilikte Peygamberimize karşı gelmeyeceklerine söz verdiler. "
          "Peygamberimiz onlara Kur'an'ı öğretmesi için genç sahâbî Mus'ab bin Umeyr'i Medine'ye gönderdi.\n\n"
          "Bir yıl sonra, altı yüz yirmi iki yılının hac mevsiminde, bu kez yetmiş beş kişi geldi; aralarında iki kadın da "
          "vardı. Gece, herkes uykudayken gizlice burada toplandılar. Peygamberimizin yanında amcası Abbas vardı. Medineliler, "
          "Peygamberimizi kendi canlarını, mallarını ve ailelerini korudukları gibi koruyacaklarına söz verdiler. Bu sözün "
          "ardından Müslümanlar Medine'ye hicret etmeye başladı ve kısa süre sonra Peygamberimiz de oraya gitti.\n\n"
          "Bu hatırayı yaşatmak için Abbâsî halifesi Mansûr, hicretin yüz kırk dördüncü yılında buraya bu mescidi yaptırdı. "
          "Mescit asırlarca bir tepenin arkasında gözden uzak kaldı. Cemerât köprüsü genişletilirken tepe kaldırıldı ve "
          "mescit yeniden ortaya çıktı.\n\n"
          "Burada durduğunuzda Ensâr'ı hatırlayın. Hiç görmedikleri bir şehirden gelen muhacirlere kapılarını açan, Allah ve "
          "Resûlü için her şeyi göze alan o insanlar için dua edin. Ve kendinize sorun: Ben verdiğim sözlere ne kadar "
          "sadığım?",
      en: "We are at the entrance to Mina. A little beyond the large jamrah, the Jamrat al-Aqabah, in a small valley at "
          "the foot of the mountain, you see a simple, open-roofed mosque. This is al-Bay'ah Mosque. It carries the "
          "memory of a meeting that changed the course of Islamic history.\n\n"
          "The Prophet preached in Makkah for years, but most of his people turned away from him. In the pilgrimage "
          "seasons he went from tribe to tribe among those who came to Makkah, inviting them to God. In the year six "
          "hundred and twenty he spoke here with six men from Yathrib, and they believed.\n\n"
          "The next year twelve came. Here, in this valley, they promised not to associate anything with God, not to "
          "steal or commit adultery, not to kill their children and not to disobey the Prophet in what is right. The "
          "Prophet sent the young Companion Mus'ab ibn Umayr with them to Madinah to teach them the Qur'an.\n\n"
          "A year later, in the pilgrimage season of six hundred and twenty-two, seventy-five came, two of them women. "
          "At night, while everyone slept, they gathered here in secret. The Prophet's uncle al-Abbas was with him. "
          "The people of Madinah promised to protect the Prophet as they protected their own lives, property and "
          "families. After this pledge the Muslims began to emigrate to Madinah, and soon the Prophet followed.\n\n"
          "To keep this memory alive, the Abbasid caliph al-Mansur built this mosque here in the year one hundred and "
          "forty-four after the Hijrah. For centuries it stayed out of sight behind a hill. When the Jamarat bridge "
          "was expanded, the hill was removed and the mosque came to light again.\n\n"
          "As you stand here, remember the Ansar. Pray for those people who opened their doors to emigrants from a "
          "city they had never seen, and who risked everything for God and His Messenger. And ask yourself: how "
          "faithful am I to the promises I have made?",
      ar: "نحن عند مدخل منى. وبعد الجمرة الكبرى، جمرة العقبة، بقليل، في شعب صغير عند سفح الجبل، ترى مسجدًا بسيطًا مكشوف "
          "السقف. هذا مسجد البيعة، وهو يحمل ذكرى لقاء غيّر مجرى التاريخ الإسلامي.\n\n"
          "دعا النبي ﷺ في مكة سنوات، فأعرض عنه أكثر قومه. وكان في مواسم الحج يطوف على القبائل القادمة إلى مكة يدعوها إلى "
          "الله. وفي سنة ستمائة وعشرين كلّم هنا ستة نفر من يثرب فآمنوا.\n\n"
          "وفي العام التالي جاء اثنا عشر رجلًا، فبايعوه هنا في هذا الشعب على ألا يشركوا بالله شيئًا، ولا يسرقوا ولا يزنوا، "
          "ولا يقتلوا أولادهم، ولا يعصوه في معروف. وأرسل النبي ﷺ معهم الصحابي الشاب مصعب بن عمير يعلّمهم القرآن.\n\n"
          "وبعد عام، في موسم حج سنة ستمائة واثنتين وعشرين، جاء خمسة وسبعون، منهم امرأتان. واجتمعوا هنا ليلًا سرًّا والناس "
          "نيام، ومع النبي ﷺ عمه العباس. فبايعه أهل المدينة على أن يمنعوه مما يمنعون منه أنفسهم وأموالهم وأهليهم. وبعد هذه "
          "البيعة بدأ المسلمون يهاجرون إلى المدينة، ثم لحق بهم النبي ﷺ.\n\n"
          "وتخليدًا لهذه الذكرى بنى الخليفة العباسي المنصور هذا المسجد هنا سنة مائة وأربع وأربعين من الهجرة. وبقي قرونًا "
          "مختفيًا خلف جبل، حتى أُزيل الجبل عند توسعة جسر الجمرات فظهر المسجد من جديد.\n\n"
          "وأنت واقف هنا تذكّر الأنصار، وادعُ لأولئك الذين فتحوا أبوابهم لمهاجرين من مدينة لم يروها، وبذلوا كل شيء لله "
          "ورسوله. ثم اسأل نفسك: إلى أي حد أنا وفيّ بالعهود التي أعطيتها؟",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi: Akabe Biatları", "https://islamansiklopedisi.org.tr/akabe-biatlari"),
      GeziKaynak("Vikipedi (ar): مسجد البيعة", "https://ar.wikipedia.org/wiki/مسجد_البيعة"),
      GeziKaynak("OpenStreetMap: way 446941270", "https://www.openstreetmap.org/way/446941270"),
    ],
  ),

  // ---------------------------------------------------------------- Ebû Kubeys
  GeziYeri(
    id: 'ebu_kubeys',
    bolge: GeziBolge.mekke,
    tur: GeziTur.dag,
    ad: L10nText(tr: "Ebû Kubeys Dağı", en: "Mount Abu Qubays", ar: "جبل أبي قبيس"),
    arapcaAd: L10nText.same("جبل أبي قبيس"),
    altBaslik: L10nText(
      tr: "Kâbe'nin hemen doğusunda yükselen, Safâ tepesinin dayandığı tarihî dağ",
      en: "The historic mountain rising just east of the Kaaba, at whose foot lies Safa",
      ar: "الجبل التاريخي المطل على الكعبة من الشرق، وفي سفحه الصفا",
    ),
    sehir: L10nText(tr: "Mescid-i Haram'ın doğusu, Mekke", en: "East of al-Masjid al-Haram, Makkah", ar: "شرق المسجد الحرام، مكة المكرمة"),
    // Dağın üzerindeki Safa Kraliyet Sarayı: OSM way 142133166. OSM'deki
    // "جبل أبي قبيس" zirve noktası (node 11934814306) ~1,5 km doğuda,
    // hatalı yerde olduğu için kullanılmadı. Vikipedi koordinatı
    // (21.42278, 39.82889) ile uyumlu.
    konum: LatLng(21.42241, 39.82867),
    genel: L10nText(
      tr: "Ebû Kubeys, Kâbe'nin yaklaşık 100 metre doğusunda yükselen küçük bir dağdır. Mekke vadisi, doğudaki Ebû "
          "Kubeys ile batıdaki Kuaykıân dağları arasında uzanır. Sa'yin başladığı Safâ tepesi bu dağın eteğindedir; "
          "Müslümanların ilk toplandığı Dârülerkam da eskiden onun yamacındaydı.\n\n"
          "Câhiliye döneminde “el-Emîn” adıyla da anılmış, ayrıca Şeyhü'l-cibâl (dağların şeyhi) gibi adlarla "
          "nitelenmiştir. 1980'lerden sonra dağın tamamı kamulaştırılmış, üzerine kraliyet sarayları, altına da "
          "Mescid-i Haram'ı Azîziye ve Mina'ya bağlayan tüneller yapılmıştır. Bugün dağ, Safâ kapısı tarafından "
          "bakıldığında Harem'in doğusunda yükselen saray binalarının altında kalır ve ziyaretçilerin çıkmasına açık "
          "değildir.",
      en: "Abu Qubays is a small mountain rising about 100 metres east of the Kaaba. The valley of Makkah lies between "
          "Abu Qubays to the east and the Qu'ayqi'an mountains to the west. The hill of Safa, where sa'y begins, lies "
          "at its foot, and Dar al-Arqam, where the first Muslims gathered, once stood on its slope.\n\n"
          "In pre-Islamic times it was also called “al-Amin”, and it was described with names such as Shaykh al-Jibal "
          "(the elder of the mountains). After the 1980s the whole mountain was expropriated; royal palaces were built "
          "on top of it, and tunnels connecting al-Masjid al-Haram with al-Aziziyyah and Mina were cut beneath it. "
          "Today, seen from the Safa side, the mountain lies beneath the palace buildings rising east of the Haram, "
          "and it is not open for visitors to climb.",
      ar: "أبو قبيس جبل صغير يرتفع على نحو مائة متر شرق الكعبة، ووادي مكة ممتد بينه في الشرق وبين جبال قعيقعان في الغرب. "
          "وفي سفحه الصفا الذي يبدأ منه السعي، وكانت دار الأرقم التي اجتمع فيها المسلمون الأوائل على سفحه.\n\n"
          "وكان يُسمّى في الجاهلية «الأمين»، ووُصف كذلك بشيخ الجبال. وبعد الثمانينيات الميلادية نُزعت ملكيته كله، فبُنيت على "
          "قمته قصور ملكية، وشُقّت تحته أنفاق تربط المسجد الحرام بالعزيزية ومنى. وهو اليوم إذا نظرت إليه من جهة الصفا تحت "
          "مباني القصر القائمة شرق الحرم، ولا يُسمح للزوار بصعوده.",
    ),
    tarihce: L10nText(
      tr: "Ezrakī'ye göre dağ, adını burada bina yapmaya kalkışan Ebû Kubeys adlı bir kişiden alır; adının kaynağıyla "
          "ilgili başka rivayetler de vardır. Sel tehlikesinden uzak olduğu için Mekke'nin ilk sakinlerinin vadiye "
          "inmeden önce bu dağı yurt edindiği, Mekke'nin zâhid ve âbidlerinin de burada inzivaya çekildiği "
          "nakledilir.\n\n"
          "Kaynaklarda bu dağla ilgili bazı rivayetler yer alır. Bunlara göre Nûh tufanı sırasında Hacerülesved bu dağa "
          "emanet edilmiş, Hz. İbrâhim Kâbe'yi inşa ederken taş buradan alınmıştır; dağın “el-Emîn” diye anılması da bu "
          "yüzdendir. Yine Hz. İbrâhim'in insanları hacca çağırırken bu dağa çıktığı rivayet edilir. İbn Abbas ve İbn "
          "Mes'ûd'a dayanan bir rivayete göre Ay'ın yarılması (Şakk-ı Kamer) mucizesi de bu dağ üzerinde görülmüştür. Bu "
          "bilgilerin bir kısmı zayıf rivayetlerdir ve kesin bilgi gibi aktarılmamalıdır.\n\n"
          "Buhârî'nin naklettiği bir hadiste Hz. Peygamber, Tâif dönüşü yaşadığı en zor günü anlatır. Dağlar meleği "
          "ona, isterse Mekke'yi çevreleyen iki dağı (Ahşebeyn) müşriklerin üzerine kapatabileceğini söyler; Peygamberimiz "
          "ise onların soyundan Allah'a ortak koşmayan nesillerin gelmesini umduğunu söyleyerek bunu istemez "
          "(Buhârî, Bed'ü'l-halk, 7). Âlimlerin çoğu bu iki dağdan birinin Ebû Kubeys olduğunu söyler.\n\n"
          "Haccâc, 73 (692) yılında Abdullah b. Zübeyr'i Mekke'de kuşattığında mancınıklarından birini bu dağa "
          "yerleştirmişti. Dağın tepesinde, İbrâhim Mescidi diye bilinen çok eski bir mescit bulunuyordu; 1257 (1841) "
          "yılında Hindistanlı bir Müslüman tarafından yeniden yaptırıldı ve 1980'li yıllara kadar ayakta kaldı. "
          "1837'de ilk Senûsî zâviyesi de bu dağda kurulmuştu. 1980'lerden sonra dağ tamamen kamulaştırıldı ve "
          "üzerine saraylar yapıldı.",
      en: "According to al-Azraqi, the mountain takes its name from a man called Abu Qubays who tried to build on it; "
          "there are other accounts of the origin of its name as well. It is reported that, being safe from floods, "
          "it was home to the first inhabitants of Makkah before they settled in the valley, and that the ascetics "
          "and worshippers of Makkah used to retreat here.\n\n"
          "The sources contain several narrations about this mountain. According to them, the Black Stone was "
          "entrusted to this mountain during the Flood of Noah and was taken from here when Abraham built the Kaaba, "
          "which is why the mountain was called “al-Amin” (the trustworthy). It is also narrated that Abraham climbed "
          "this mountain when he called people to the pilgrimage. According to a narration traced to Ibn Abbas and "
          "Ibn Mas'ud, the miracle of the splitting of the moon was seen over this mountain. Some of these reports "
          "are weak and should not be presented as established facts.\n\n"
          "In a hadith narrated by al-Bukhari, the Prophet describes the hardest day he experienced, on his return "
          "from Ta'if. The angel of the mountains told him that, if he wished, he would bring the two mountains "
          "surrounding Makkah (al-Akhshabayn) down upon the idolaters; the Prophet declined, saying he hoped that "
          "from their descendants would come people who worship God alone (al-Bukhari, Bad' al-Khalq, 7). Most "
          "scholars say that one of these two mountains is Abu Qubays.\n\n"
          "When al-Hajjaj besieged Abdullah ibn al-Zubayr in Makkah in 73 AH (692), he placed one of his catapults on "
          "this mountain. On its summit stood a very old mosque known as the Mosque of Ibrahim; it was rebuilt by a "
          "Muslim from India in 1257 AH (1841) and survived until the 1980s. In 1837 the first Sanusi lodge was also "
          "founded on this mountain. After the 1980s the mountain was entirely expropriated and palaces were built "
          "on it.",
      ar: "ذكر الأزرقي أن الجبل سُمّي باسم رجل يقال له أبو قبيس حاول البناء فيه، وفي أصل التسمية روايات أخرى. ويُذكر أن "
          "أهل مكة الأوائل سكنوه قبل نزولهم الوادي لأنه في مأمن من السيول، وأن زهّاد مكة وعبّادها كانوا يعتزلون فيه.\n\n"
          "وفي المصادر روايات عن هذا الجبل، منها أن الحجر الأسود استُودع فيه زمن طوفان نوح، ومنه أُخذ حين بنى إبراهيم عليه "
          "السلام الكعبة، ولذلك سُمّي «الأمين». ويُروى كذلك أن إبراهيم عليه السلام صعده حين أذّن في الناس بالحج. وفي رواية "
          "تُنسب إلى ابن عباس وابن مسعود أن انشقاق القمر رُئي فوق هذا الجبل. وفي بعض هذه الأخبار ضعف، فلا تُنقل على أنها "
          "حقائق مقطوع بها.\n\n"
          "وفي حديث رواه البخاري يذكر النبي ﷺ أشد يوم لقيه، عند رجوعه من الطائف، فناداه ملك الجبال: إن شئت أن أطبق عليهم "
          "الأخشبين، فقال النبي ﷺ: بل أرجو أن يخرج الله من أصلابهم من يعبد الله وحده لا يشرك به شيئًا (البخاري، بدء الخلق، "
          "7). وأكثر العلماء على أن أحد الأخشبين هو أبو قبيس.\n\n"
          "ولما حاصر الحجاج عبد الله بن الزبير بمكة سنة 73هـ (692م) نصب أحد مجانيقه على هذا الجبل. وكان على قمته مسجد قديم "
          "جدًا يُعرف بمسجد إبراهيم، جدّده رجل مسلم من الهند سنة 1257هـ (1841م) وبقي إلى الثمانينيات الميلادية. وفي سنة "
          "1837م أُسست عليه أول زاوية سنوسية. وبعد الثمانينيات نُزعت ملكية الجبل كله وبُنيت عليه القصور.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Mekke dönemi", en: "Makkan period", ar: "العهد المكي"),
        metin: L10nText(
          tr: "Safâ tepesinde ilk açık davet yapıldı; Dârülerkam dağın yamacındaydı.",
          en: "The first open call to Islam was made on Safa; Dar al-Arqam stood on the mountain's slope.",
          ar: "كانت الدعوة الجهرية الأولى على الصفا، وكانت دار الأرقم على سفح الجبل.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "73 (692)", en: "73 AH (692)", ar: "73هـ (692م)"),
        metin: L10nText(
          tr: "Haccâc, Abdullah b. Zübeyr'i kuşatırken mancınıklarından birini bu dağa kurdu.",
          en: "Al-Hajjaj placed one of his catapults on the mountain while besieging Abdullah ibn al-Zubayr.",
          ar: "نصب الحجاج أحد مجانيقه على الجبل في حصار عبد الله بن الزبير.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1257 (1841)", en: "1257 AH (1841)", ar: "1257هـ (1841م)"),
        metin: L10nText(
          tr: "Tepedeki eski İbrâhim Mescidi yeniden yapıldı.",
          en: "The old Mosque of Ibrahim on the summit was rebuilt.",
          ar: "جُدّد مسجد إبراهيم القديم على القمة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1980'ler", en: "1980s", ar: "الثمانينيات الميلادية"),
        metin: L10nText(
          tr: "Dağ kamulaştırıldı; üzerine saraylar, altına tüneller yapıldı.",
          en: "The mountain was expropriated; palaces were built on it and tunnels beneath it.",
          ar: "نُزعت ملكية الجبل، وبُنيت عليه القصور وشُقّت تحته الأنفاق.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Ebû Kubeys'e çıkmanın ya da orada ibadet etmenin özel bir fazileti bildirilmemiştir. Önemi, Kâbe'ye en "
          "yakın dağ olarak İslâm'ın ilk yıllarının pek çok olayına tanıklık etmesinden gelir.\n\n"
          "Safâ'da sa'ye başlarken Peygamberimizin bu tepede kavmini tevhide çağırdığını, Tâif'te taşlandıktan sonra "
          "bile onların helakini değil hidayetini istediğini hatırlamak, insana sabrı ve merhameti öğretir.",
      en: "No special virtue is reported for climbing Abu Qubays or worshipping there. Its importance lies in being the "
          "mountain closest to the Kaaba and a witness to many events of the early years of Islam.\n\n"
          "When beginning sa'y at Safa, remembering that the Prophet called his people to the oneness of God on this "
          "hill, and that even after being stoned at Ta'if he wished for their guidance rather than their "
          "destruction, teaches patience and mercy.",
      ar: "لم يرد في صعود أبي قبيس أو التعبد فيه فضل خاص، وإنما أهميته أنه أقرب الجبال إلى الكعبة، وشاهد على كثير من "
          "أحداث صدر الإسلام.\n\n"
          "وحين تبدأ السعي من الصفا، فتذكّر أن النبي ﷺ دعا قومه إلى التوحيد على هذه الربوة، وأنه حتى بعد أن رُمي بالحجارة في "
          "الطائف أراد لهم الهداية لا الهلاك؛ ففي ذلك درس في الصبر والرحمة.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "ٱقْتَرَبَتِ ٱلسَّاعَةُ وَٱنشَقَّ ٱلْقَمَرُ",
        meal: L10nText(
          tr: "Kıyamet yaklaştı ve ay yarıldı.",
          en: "The Hour has drawn near, and the moon has split.",
          ar: "اقْتَرَبَتِ السَّاعَةُ وَانْشَقَّ الْقَمَرُ.",
        ),
        kaynak: L10nText(tr: "Kamer 54/1", en: "Al-Qamar 54:1", ar: "القمر 54/1"),
      ),
      GeziAlinti(
        arapca: "وَأَذِّن فِى ٱلنَّاسِ بِٱلْحَجِّ يَأْتُوكَ رِجَالًا وَعَلَىٰ كُلِّ ضَامِرٍ يَأْتِينَ مِن كُلِّ فَجٍّ عَمِيقٍ",
        meal: L10nText(
          tr: "İnsanlar arasında haccı ilan et ki, gerek yaya olarak, gerekse her uzak yoldan gelen yorgun develer "
              "üzerinde sana gelsinler.",
          en: "And proclaim the pilgrimage among the people; they will come to you on foot and on every lean camel, "
              "coming from every distant pass.",
          ar: "وَأَذِّنْ فِي النَّاسِ بِالْحَجِّ يَأْتُوكَ رِجَالًا وَعَلَى كُلِّ ضَامِرٍ يَأْتِينَ مِنْ كُلِّ فَجٍّ عَمِيقٍ.",
        ),
        kaynak: L10nText(tr: "Hac 22/27", en: "Al-Hajj 22:27", ar: "الحج 22/27"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Dağa çıkılamaz; Safâ tarafından ve Harem'in doğu avlusundan bakılarak görülür.",
        en: "The mountain cannot be climbed; it is seen from the Safa side and the eastern courtyard of the Haram.",
        ar: "لا يمكن صعود الجبل، ويُرى من جهة الصفا ومن الساحة الشرقية للحرم.",
      ),
      L10nText(
        tr: "Saray ve güvenlik alanlarının fotoğrafını çekmekten kaçının.",
        en: "Avoid photographing the palace and security areas.",
        ar: "تجنّب تصوير القصر والمناطق الأمنية.",
      ),
      L10nText(
        tr: "Dağla ilgili rivayetleri anlatırken zayıf olanları kesin bilgi gibi aktarmayın.",
        en: "When telling the narrations about the mountain, do not present the weak ones as established facts.",
        ar: "إذا حدّثت بالروايات عن الجبل فلا تنقل الضعيف منها على أنه حقيقة مقطوع بها.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Dağın üstü kraliyet sarayına ayrılmıştır ve ziyaretçilere kapalıdır. Altındaki tüneller araç ve yaya "
          "trafiği için kullanılır. Dağ, Safâ tepesinin bulunduğu mesâ binasından ve Harem'in doğu avlusundan "
          "görülebilir.",
      en: "The top of the mountain is reserved for the royal palace and closed to visitors. The tunnels beneath it "
          "are used for vehicle and pedestrian traffic. The mountain can be seen from the Mas'a building, where the "
          "hill of Safa is, and from the eastern courtyard of the Haram.",
      ar: "قمة الجبل مخصصة للقصر الملكي ومغلقة أمام الزوار، والأنفاق التي تحته تُستعمل لحركة المركبات والمشاة. ويمكن رؤية "
          "الجبل من مبنى المسعى حيث الصفا، ومن الساحة الشرقية للحرم.",
    ),
    ziyaretSuresi: L10nText(tr: "5-10 dakika (dışarıdan)", en: "5-10 minutes (from outside)", ar: "5-10 دقائق (من الخارج)"),
    anlatim: L10nText(
      tr: "Safâ tepesinin yanındayız. Başınızı kaldırıp doğuya, Harem'in hemen arkasına baktığınızda, üzerinde büyük "
          "binalar yükselen bir dağ görürsünüz. Burası Ebû Kubeys. Kâbe'ye en yakın dağ; Mekke'nin en eski tanığı.\n\n"
          "Eskiler bu dağa el-Emîn, yani güvenilir derlerdi. Rivayete göre Nûh tufanında Hacerülesved bu dağa emanet "
          "edilmiş, Hz. İbrâhim Kâbe'yi yaparken taşı buradan almıştı. Yine rivayete göre Hz. İbrâhim, insanları hacca "
          "çağırırken bu dağa çıkmıştı. Bu rivayetlerin bir kısmı zayıftır; ama Mekke halkının bu dağa ne kadar önem "
          "verdiğini gösterir.\n\n"
          "Bu dağın eteğinde, Safâ'da, Peygamberimiz ilk kez kavmini açıkça Allah'ın birliğine çağırdı. Yine bu dağın "
          "yamacında, Dârülerkam'da, ilk Müslümanlar gizlice toplanıp Kur'an öğrendi. Bazı rivayetlere göre Ay'ın "
          "yarılması mucizesi de bu dağın üzerinde görüldü.\n\n"
          "Bir başka hatıra daha var. Peygamberimiz Tâif'ten taşlanarak döndüğünde, dağlar meleği ona, istersen Mekke'yi "
          "çevreleyen iki dağı onların üzerine kapatayım, dedi. Âlimlerin çoğu bu iki dağdan birinin Ebû Kubeys olduğunu "
          "söyler. Peygamberimiz ise, hayır, umarım Allah onların soyundan yalnız O'na kulluk edenler çıkarır, dedi. Bu "
          "dağ, o merhametin de sessiz tanığıdır.\n\n"
          "Asırlar boyunca dağın tepesinde küçük bir mescit vardı. Bugün ise dağın üstünde saraylar, altında Harem'i "
          "şehrin doğusuna bağlayan tüneller bulunuyor. Dağa çıkılamıyor. Ama sa'ye başlarken bir an durup bu dağa "
          "bakın, burada yaşanan sabrı ve merhameti hatırlayın.",
      en: "We are beside the hill of Safa. If you raise your head and look east, just behind the Haram, you will see a "
          "mountain with large buildings rising on it. This is Abu Qubays, the mountain closest to the Kaaba and the "
          "oldest witness of Makkah.\n\n"
          "People of old called this mountain al-Amin, the trustworthy. According to narrations, during the Flood of "
          "Noah the Black Stone was entrusted to this mountain, and Abraham took the stone from here when he built the "
          "Kaaba. It is also narrated that Abraham climbed this mountain when he called people to the pilgrimage. "
          "Some of these reports are weak, but they show how much the people of Makkah valued this mountain.\n\n"
          "At the foot of this mountain, at Safa, the Prophet called his people openly to the oneness of God for the "
          "first time. On its slope, at Dar al-Arqam, the first Muslims gathered in secret to learn the Qur'an. "
          "According to some narrations, the miracle of the splitting of the moon was also seen over this mountain.\n\n"
          "There is another memory too. When the Prophet returned from Ta'if after being stoned, the angel of the "
          "mountains said to him: if you wish, I will bring the two mountains around Makkah down upon them. Most "
          "scholars say one of those two mountains is Abu Qubays. The Prophet said: No, I hope that God will bring "
          "from their descendants people who worship Him alone. This mountain is a silent witness to that mercy as "
          "well.\n\n"
          "For centuries a small mosque stood on its summit. Today there are palaces on top of the mountain and, "
          "beneath it, tunnels connecting the Haram with the east of the city. It cannot be climbed. But as you begin "
          "your sa'y, pause for a moment, look at this mountain and remember the patience and mercy it witnessed.",
      ar: "نحن بجوار الصفا. إذا رفعت رأسك ونظرت إلى الشرق خلف الحرم مباشرة رأيت جبلًا تعلوه مبانٍ كبيرة. هذا أبو قبيس، "
          "أقرب الجبال إلى الكعبة وأقدم شهود مكة.\n\n"
          "كان الأولون يسمّونه الأمين. ويُروى أن الحجر الأسود استُودع فيه زمن طوفان نوح، وأن إبراهيم عليه السلام أخذه منه "
          "حين بنى الكعبة. ويُروى كذلك أن إبراهيم صعده حين أذّن في الناس بالحج. وفي بعض هذه الأخبار ضعف، لكنها تدل على "
          "مكانة هذا الجبل عند أهل مكة.\n\n"
          "وفي سفح هذا الجبل، على الصفا، دعا النبي ﷺ قومه جهرًا إلى التوحيد أول مرة. وعلى سفحه، في دار الأرقم، كان المسلمون "
          "الأوائل يجتمعون سرًّا يتعلمون القرآن. وفي بعض الروايات أن انشقاق القمر رُئي فوق هذا الجبل.\n\n"
          "وهناك ذكرى أخرى. لما رجع النبي ﷺ من الطائف وقد رُمي بالحجارة، قال له ملك الجبال: إن شئت أطبقت عليهم الأخشبين. "
          "وأكثر العلماء على أن أحدهما أبو قبيس. فقال النبي ﷺ: بل أرجو أن يخرج الله من أصلابهم من يعبد الله وحده. فهذا "
          "الجبل شاهد صامت على تلك الرحمة أيضًا.\n\n"
          "وظل على قمته قرونًا مسجد صغير. أما اليوم فعليه قصور، وتحته أنفاق تربط الحرم بشرق المدينة، ولا يمكن صعوده. لكن "
          "حين تبدأ سعيك قف لحظة وانظر إلى هذا الجبل، وتذكّر ما شهده من صبر ورحمة.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi: Ebûkubeys", "https://islamansiklopedisi.org.tr/ebukubeys"),
      GeziKaynak("Wikipedia: Abu Qubays (mountain)", "https://en.wikipedia.org/wiki/Abu_Qubays_(mountain)"),
      GeziKaynak("OpenStreetMap: way 142133166 (Safa Sarayı)", "https://www.openstreetmap.org/way/142133166"),
    ],
  ),

  // ---------------------------------------------------------------- Kisve
  GeziYeri(
    id: 'kisve_fabrikasi',
    bolge: GeziBolge.mekke,
    tur: GeziTur.muze,
    ad: L10nText(
      tr: "Kâbe Örtüsü (Kisve) Kompleksi",
      en: "King Abdulaziz Complex for the Holy Kaaba Kiswa",
      ar: "مجمع الملك عبد العزيز لكسوة الكعبة المشرفة",
    ),
    arapcaAd: L10nText.same("مجمع الملك عبد العزيز لكسوة الكعبة المشرفة"),
    altBaslik: L10nText(
      tr: "Kâbe'nin siyah örtüsünün dokunduğu ve altın işlemelerinin yapıldığı tesis",
      en: "The facility where the black covering of the Kaaba is woven and embroidered with gold",
      ar: "المنشأة التي تُنسج فيها كسوة الكعبة السوداء وتُطرّز بالذهب",
    ),
    sehir: L10nText(tr: "Ümmü'l-Cûd, Mekke", en: "Umm al-Joud, Makkah", ar: "أم الجود، مكة المكرمة"),
    konum: LatLng(21.43429, 39.75639), // OSM way 444240921
    genel: L10nText(
      tr: "Kral Abdülaziz Kâbe Örtüsü Kompleksi, Mekke'nin batısında, eski Mekke-Cidde yolu üzerindeki Ümmü'l-Cûd "
          "semtindedir. Kâbe'nin her yıl değiştirilen siyah örtüsü (kisve) burada hazırlanır. Harameyn Mimari Sergisi "
          "hemen yanındadır.\n\n"
          "Kompleks; boyama, makine dokuma, el dokuma, baskı, nakış, kuşak (hizâm) ve dikiş bölümleri ile bir "
          "laboratuvardan oluşur. Burada iki yüzü aşkın eğitimli usta çalışır. İthal ham ipek siyaha boyanır, jakarlı "
          "tezgâhlarda desenli kumaş hâline getirilir; ayetler ve yazılar altın ve gümüş kaplama tellerle elle işlenir. "
          "Kâbe'nin dış örtüsünün yanı sıra iç örtüsü ve Hücre-i Saâdet'in iç örtüsü de burada hazırlanır.\n\n"
          "Dış örtü yaklaşık 670 kilogram ipekten, 47 parçadan oluşur; her parça yaklaşık 14 metre boyundadır. Bir "
          "örtünün hazırlanması yaklaşık on ay sürer ve maliyetinin 20 milyon riyali aştığı bildirilir.",
      en: "The King Abdulaziz Complex for the Holy Kaaba Kiswa is in the Umm al-Joud district in western Makkah, on "
          "the old Makkah-Jeddah road. The black covering of the Kaaba (kiswah), replaced every year, is prepared "
          "here. The Two Holy Mosques Architecture Exhibition is right next to it.\n\n"
          "The complex has sections for dyeing, machine weaving, hand weaving, printing, embroidery, the belt (hizam) "
          "and sewing, as well as a laboratory. More than two hundred trained craftsmen work here. Imported raw silk "
          "is dyed black and woven into patterned cloth on jacquard looms; the verses and inscriptions are "
          "embroidered by hand with gold- and silver-plated thread. Besides the outer covering of the Kaaba, the "
          "inner covering of the Kaaba and the inner covering of the Prophet's chamber are also made here.\n\n"
          "The outer covering uses about 670 kilograms of silk and consists of 47 pieces, each about 14 metres long. "
          "Preparing one covering takes about ten months, and its cost is reported to exceed 20 million riyals.",
      ar: "يقع مجمع الملك عبد العزيز لكسوة الكعبة المشرفة في حي أم الجود غرب مكة على طريق مكة جدة القديم، وفيه تُصنع "
          "كسوة الكعبة السوداء التي تُستبدل كل عام. ويجاوره معرض عمارة الحرمين الشريفين.\n\n"
          "ويضم المجمع أقسام الصباغة والنسيج الآلي والنسيج اليدوي والطباعة والتطريز والحزام والخياطة، إضافة إلى مختبر، "
          "ويعمل فيه أكثر من مائتي صانع مدرَّب. ويُصبغ الحرير الخام المستورد بالسواد، ويُنسج قماشًا منقوشًا على أنوال "
          "الجاكار، وتُطرّز الآيات والكتابات يدويًا بأسلاك مطلية بالذهب والفضة. ويُصنع فيه كذلك الكسوة الداخلية للكعبة "
          "والكسوة الداخلية للحجرة النبوية.\n\n"
          "وتستهلك الكسوة الخارجية نحو 670 كيلوغرامًا من الحرير، وتتكون من 47 قطعة طول كل منها نحو 14 مترًا. ويستغرق "
          "إعدادها نحو عشرة أشهر، وتتجاوز تكلفتها بحسب ما يُذكر 20 مليون ريال.",
    ),
    tarihce: L10nText(
      tr: "Kâbe'yi örtmek İslâm'dan önce de bilinen bir gelenekti. İbn Hişâm, ilk örtüyü Yemen'deki Himyerî "
          "hükümdarlarından Tübba' Es'ad'ın yaptırdığını nakleder. Mekke'nin fethinden sonra Hz. Peygamber Kâbe'yi "
          "Yemen kumaşıyla örttü. Hz. Ömer Mısır'da dokunan kabâtî kumaşından örtüler gönderdi. Abbâsî halifesi "
          "Mehdî'nin döneminde, üst üste biriken örtülerin ağırlığı Kâbe'ye zarar vermesin diye örtünün her yıl "
          "değiştirilmesi usulü yerleşti.\n\n"
          "Eyyûbîler'den itibaren dış örtü uzun asırlar boyunca Mısır'dan gönderildi; örtüyü taşıyan kafileye mahmil "
          "eşlik ederdi. Osmanlı döneminde Kâbe örtüleri İstanbul ile Mekke arasında önemli bir bağdı; iç örtüler "
          "İstanbul'da dokunuyordu.\n\n"
          "1345 (1927) yılında Mısır'dan örtü gelmeyince Kral Abdülaziz örtünün Mekke'de hazırlanmasını emretti ve "
          "ertesi yıl Ecyâd semtinde ilk atölye kuruldu. Bir süre sonra Mısır'dan örtü gelmeye yeniden başladıysa da "
          "1962'de bu son buldu ve örtü kesin olarak Mekke'de dokunmaya başlandı. 1397 (1977) yılında modern makinelerle "
          "donatılan yeni tesis Ümmü'l-Cûd'da açıldı. Mayıs 2017'de adı “Kral Abdülaziz Kâbe Örtüsü Kompleksi” olarak "
          "değiştirildi. Örtü uzun yıllar Arefe günü değiştirilirken, 2022'den beri hicrî yılbaşında, Muharrem ayının "
          "başında değiştirilmektedir.",
      en: "Covering the Kaaba was a tradition known before Islam. Ibn Hisham reports that the first covering was "
          "made by Tubba' As'ad, a Himyarite king of Yemen. After the conquest of Makkah the Prophet covered the "
          "Kaaba with Yemeni cloth. Umar sent coverings of qubati cloth woven in Egypt. In the time of the Abbasid "
          "caliph al-Mahdi, the practice of replacing the covering every year was established so that the weight of "
          "accumulated coverings would not harm the Kaaba.\n\n"
          "From the Ayyubid period onward the outer covering was sent from Egypt for many centuries, the caravan "
          "carrying it accompanied by the mahmal. In the Ottoman period the coverings of the Kaaba were an important "
          "link between Istanbul and Makkah; the inner coverings were woven in Istanbul.\n\n"
          "In 1345 AH (1927), when no covering came from Egypt, King Abdulaziz ordered it to be made in Makkah, and "
          "the following year the first workshop was set up in the Ajyad district. Coverings later came from Egypt "
          "again for a time, but this ended in 1962, and from then on the covering was woven only in Makkah. In 1397 "
          "AH (1977) a new facility equipped with modern machinery opened in Umm al-Joud. In May 2017 it was renamed "
          "the King Abdulaziz Complex for the Holy Kaaba Kiswa. For many years the covering was replaced on the Day "
          "of Arafah; since 2022 it has been replaced at the start of the Hijri year, at the beginning of Muharram.",
      ar: "كسوة الكعبة عادة معروفة قبل الإسلام، وينقل ابن هشام أن أول من كساها تُبّع أسعد من ملوك حمير في اليمن. وبعد فتح "
          "مكة كساها النبي ﷺ الثياب اليمانية، وأرسل عمر رضي الله عنه كسوة من القباطي المصرية. وفي عهد الخليفة العباسي "
          "المهدي استقر العمل على تغيير الكسوة كل عام حتى لا يضر ثقل الكسى المتراكمة بالكعبة.\n\n"
          "ومن العهد الأيوبي ظلت الكسوة الخارجية تُرسل من مصر قرونًا طويلة، ويصحب قافلتها المحمل. وفي العهد العثماني كانت "
          "كسوة الكعبة صلة مهمة بين إسطنبول ومكة، وكانت الكسوة الداخلية تُنسج في إسطنبول.\n\n"
          "وفي سنة 1345هـ (1927م) لما لم تصل الكسوة من مصر أمر الملك عبد العزيز بصنعها في مكة، وفي العام التالي أُنشئ أول "
          "مصنع في حي أجياد. ثم عادت الكسوة تأتي من مصر مدة، إلى أن توقف ذلك سنة 1962م فصارت تُنسج في مكة وحدها. وفي سنة "
          "1397هـ (1977م) افتُتح المصنع الجديد المجهز بالآلات الحديثة في أم الجود، وفي مايو 2017م تغيّر اسمه إلى مجمع الملك "
          "عبد العزيز لكسوة الكعبة المشرفة. وكانت الكسوة تُستبدل سنوات طويلة يوم عرفة، ومنذ 2022م تُستبدل في مطلع العام "
          "الهجري في أول شهر المحرم.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "630", en: "630", ar: "630م"),
        metin: L10nText(
          tr: "Mekke'nin fethinden sonra Hz. Peygamber Kâbe'yi Yemen kumaşıyla örttü.",
          en: "After the conquest of Makkah the Prophet covered the Kaaba with Yemeni cloth.",
          ar: "بعد فتح مكة كسا النبي ﷺ الكعبة الثياب اليمانية.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1345-1346 (1927)", en: "1345-1346 AH (1927)", ar: "1345-1346هـ (1927م)"),
        metin: L10nText(
          tr: "Kral Abdülaziz'in emriyle Mekke'nin Ecyâd semtinde ilk kisve atölyesi kuruldu.",
          en: "By order of King Abdulaziz the first kiswah workshop was set up in the Ajyad district of Makkah.",
          ar: "أُنشئ أول مصنع للكسوة في حي أجياد بمكة بأمر الملك عبد العزيز.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1962", en: "1962", ar: "1962م"),
        metin: L10nText(
          tr: "Mısır'dan örtü gönderilmesi sona erdi; örtü yalnız Mekke'de dokunmaya başladı.",
          en: "Coverings stopped coming from Egypt; the covering began to be woven only in Makkah.",
          ar: "توقف إرسال الكسوة من مصر، وصارت تُنسج في مكة وحدها.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1397 (1977)", en: "1397 AH (1977)", ar: "1397هـ (1977م)"),
        metin: L10nText(
          tr: "Ümmü'l-Cûd'daki yeni tesis açıldı.",
          en: "The new facility in Umm al-Joud opened.",
          ar: "افتُتح المصنع الجديد في أم الجود.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Mayıs 2017", en: "May 2017", ar: "مايو 2017م"),
        metin: L10nText(
          tr: "Tesisin adı Kral Abdülaziz Kâbe Örtüsü Kompleksi oldu.",
          en: "The facility was renamed the King Abdulaziz Complex for the Holy Kaaba Kiswa.",
          ar: "تغيّر اسم المنشأة إلى مجمع الملك عبد العزيز لكسوة الكعبة المشرفة.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Burası bir ibadet yeri değil, bir atölyedir; ziyaretine özel bir fazilet bildirilmemiştir. Kâbe'yi örtmek, "
          "Allah'ın evine gösterilen saygının ve onun şiarlarını yüceltmenin bir ifadesidir.\n\n"
          "Tavafta baktığınız örtünün nasıl bir emek ve özenle hazırlandığını görmek, Beytullah'a duyulan hürmeti "
          "derinleştirir. Örtünün üzerindeki kelime-i tevhid ve ayetler, Kâbe'nin yalnız Allah'a kulluk için "
          "kurulduğunu hatırlatır.",
      en: "This is a workshop, not a place of worship, and no special virtue is reported for visiting it. Covering "
          "the Kaaba is an expression of respect for the House of God and of honouring His symbols.\n\n"
          "Seeing the effort and care with which the covering you look at during tawaf is made deepens one's "
          "reverence for the House of God. The declaration of faith and the verses on the covering remind us that "
          "the Kaaba was built only for the worship of God.",
      ar: "هذا مصنع وليس مكان عبادة، ولم يرد في زيارته فضل خاص. وكسوة الكعبة تعبير عن تعظيم بيت الله وشعائره.\n\n"
          "ورؤية ما يُبذل من جهد وعناية في صنع الكسوة التي تنظر إليها في الطواف تزيد تعظيم البيت في القلب، وكلمة التوحيد "
          "والآيات المطرزة عليها تذكّر بأن الكعبة إنما بُنيت لعبادة الله وحده.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "ذَٰلِكَ وَمَن يُعَظِّمْ شَعَـٰٓئِرَ ٱللَّهِ فَإِنَّهَا مِن تَقْوَى ٱلْقُلُوبِ",
        meal: L10nText(
          tr: "Durum budur. Her kim Allah'ın dininin nişanelerine saygı gösterirse, şüphesiz bu, kalplerin "
              "takvasındandır.",
          en: "That is so. And whoever honours the symbols of God, that is from the piety of hearts.",
          ar: "ذَلِكَ وَمَنْ يُعَظِّمْ شَعَائِرَ اللَّهِ فَإِنَّهَا مِنْ تَقْوَى الْقُلُوبِ.",
        ),
        kaynak: L10nText(tr: "Hac 22/32", en: "Al-Hajj 22:32", ar: "الحج 22/32"),
      ),
      GeziAlinti(
        arapca: "جَعَلَ ٱللَّهُ ٱلْكَعْبَةَ ٱلْبَيْتَ ٱلْحَرَامَ قِيَـٰمًا لِّلنَّاسِ",
        meal: L10nText(
          tr: "Allah; Kâbe'yi, o saygıdeğer evi insanlar için bir kıyam (dinî ve dünyevî işlerinin düzene girmesine "
              "vesile) kıldı.",
          en: "God has made the Kaaba, the Sacred House, a means of support for the people.",
          ar: "جَعَلَ اللَّهُ الْكَعْبَةَ الْبَيْتَ الْحَرَامَ قِيَامًا لِلنَّاسِ.",
        ),
        kaynak: L10nText(
          tr: "Mâide 5/97 (ayetin bir bölümü)",
          en: "Al-Maidah 5:97 (part of the verse)",
          ar: "المائدة 5/97 (جزء من الآية)",
        ),
      ),
    ],
    adab: [
      L10nText(
        tr: "Ziyaret önceden kayıtla ve belirli saatlerde yapılır; kafileler ziyareti organizasyon üzerinden ayarlar.",
        en: "Visits are made with prior registration at set times; groups arrange the visit through their organiser.",
        ar: "تكون الزيارة بتسجيل مسبق وفي أوقات محددة، وتنسّق المجموعات الزيارة عبر الجهة المنظمة.",
      ),
      L10nText(
        tr: "Tesis Mescid-i Haram'dan yaklaşık 8 km uzaktadır; Harameyn Mimari Sergisi ile aynı gün gezilebilir.",
        en: "The complex is about 8 km from al-Masjid al-Haram; it can be visited on the same day as the Two Holy "
            "Mosques Architecture Exhibition.",
        ar: "يبعد المجمع نحو 8 كم عن المسجد الحرام، ويمكن زيارته مع معرض عمارة الحرمين في اليوم نفسه.",
      ),
      L10nText(
        tr: "Ustaların çalışmasını bölmeyin; kumaşlara ve işlemelere dokunmayın.",
        en: "Do not interrupt the craftsmen at work; do not touch the fabrics or embroidery.",
        ar: "لا تقاطع الصنّاع أثناء عملهم، ولا تلمس الأقمشة والتطريز.",
      ),
      L10nText(
        tr: "Fotoğraf ve video için görevlilerin izin verdiği alanlara uyun.",
        en: "For photos and video, keep to the areas where staff allow it.",
        ar: "التزم في التصوير بالأماكن التي يسمح بها المسؤولون.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Kompleks, Mescid-i Haram ve Mescid-i Nebevî İşleri Genel Başkanlığı'na bağlıdır. Ziyaretler önceden kayıt "
          "ve randevu ile yapılır; ziyaret günleri, saatleri ve kayıt yöntemi dönemlere göre değişir. Gitmeden önce "
          "kafile rehberinize ya da resmî kanallara danışın.",
      en: "The complex belongs to the General Authority for the Affairs of the Grand Mosque and the Prophet's Mosque. "
          "Visits are by prior registration and appointment; the visiting days, hours and booking method change from "
          "season to season. Check with your group guide or official channels before going.",
      ar: "يتبع المجمع الهيئة العامة للعناية بشؤون المسجد الحرام والمسجد النبوي، والزيارة بتسجيل وموعد مسبقين، وتختلف أيام "
          "الزيارة وأوقاتها وطريقة الحجز باختلاف المواسم. فاستشر مرشد مجموعتك أو القنوات الرسمية قبل الذهاب.",
    ),
    uygunSaat: L10nText(tr: "Hafta içi sabah", en: "Weekday mornings", ar: "صباح أيام الأسبوع"),
    ziyaretSuresi: L10nText(tr: "45-60 dakika", en: "45-60 minutes", ar: "45-60 دقيقة"),
    anlatim: L10nText(
      tr: "Mekke'nin batısında, Ümmü'l-Cûd semtindeyiz. Bu binalarda, tavafta hayranlıkla baktığınız siyah örtü, yani "
          "Kâbe'nin kisvesi hazırlanıyor.\n\n"
          "Kâbe'yi örtmek çok eski bir gelenek. İslâm'dan önce de Kâbe örtülürdü. Mekke fethedildikten sonra Peygamber "
          "Efendimiz Kâbe'yi Yemen kumaşıyla örttü. Hz. Ömer, Mısır'da dokunan beyaz kumaşlar gönderdi. Asırlar boyunca "
          "örtü Mısır'dan büyük bir kafileyle getirildi. Osmanlı döneminde de Kâbe örtüsü, İstanbul ile Mekke arasında "
          "gönülden bir bağdı.\n\n"
          "Bin dokuz yüz yirmi yedi yılında Mekke'de ilk atölye kuruldu. Bin dokuz yüz altmış ikiden beri örtü yalnızca "
          "burada dokunuyor. Bin dokuz yüz yetmiş yedide de bu modern tesis açıldı.\n\n"
          "İçeride her bölüm işin bir aşamasını üstleniyor. Ham ipek önce siyaha boyanıyor. Sonra tezgâhlarda, üzerinde "
          "Allah'ın isimleri ve kelime-i tevhid işlenmiş desenli kumaşa dönüşüyor. Nakış bölümünde ustalar, ayetleri "
          "altın ve gümüş kaplama tellerle, ilmek ilmek, elle işliyor. Tek bir örtü için yaklaşık altı yüz yetmiş "
          "kilogram ipek kullanılıyor ve iş yaklaşık on ay sürüyor. Örtü kırk yedi parçadan oluşuyor.\n\n"
          "Eskiden örtü Arefe günü değiştirilirdi. İki bin yirmi ikiden beri ise hicrî yılbaşında, Muharrem'in başında "
          "değiştiriliyor.\n\n"
          "Kur'an, Allah'ın nişanelerine saygı göstermenin kalplerin takvasından olduğunu bildirir. Bu atölyeden "
          "çıkarken, bir dahaki tavafınızda Kâbe'nin örtüsüne baktığınızda, onun ardındaki emeği ve saygıyı "
          "hatırlayacaksınız.",
      en: "We are in the Umm al-Joud district in the west of Makkah. In these buildings the black covering you admire "
          "during tawaf, the kiswah of the Kaaba, is made.\n\n"
          "Covering the Kaaba is a very old tradition. The Kaaba was covered even before Islam. After the conquest of "
          "Makkah the Prophet covered it with Yemeni cloth. Umar sent white cloth woven in Egypt. For centuries the "
          "covering was brought from Egypt with a great caravan. In the Ottoman period, too, the covering of the "
          "Kaaba was a heartfelt bond between Istanbul and Makkah.\n\n"
          "In nineteen twenty-seven the first workshop was set up in Makkah. Since nineteen sixty-two the covering has "
          "been woven only here, and in nineteen seventy-seven this modern facility opened.\n\n"
          "Inside, each section takes on one stage of the work. The raw silk is first dyed black. Then, on the looms, "
          "it becomes patterned cloth bearing the names of God and the declaration of faith. In the embroidery "
          "section craftsmen stitch the verses by hand, stitch by stitch, with gold- and silver-plated thread. About "
          "six hundred and seventy kilograms of silk go into a single covering, and the work takes about ten months. "
          "The covering is made of forty-seven pieces.\n\n"
          "The covering used to be changed on the Day of Arafah. Since twenty twenty-two it has been changed at the "
          "start of the Hijri year, at the beginning of Muharram.\n\n"
          "The Qur'an tells us that honouring the symbols of God is from the piety of hearts. When you leave this "
          "workshop, the next time you look at the covering of the Kaaba during tawaf you will remember the effort "
          "and reverence behind it.",
      ar: "نحن في حي أم الجود غرب مكة. في هذه المباني تُصنع الكسوة السوداء التي تتأملها في الطواف، كسوة الكعبة.\n\n"
          "كسوة الكعبة عادة قديمة جدًا، فقد كانت تُكسى قبل الإسلام. وبعد فتح مكة كساها النبي ﷺ الثياب اليمانية، وأرسل عمر "
          "رضي الله عنه القباطي البيضاء المنسوجة في مصر. وظلت الكسوة قرونًا تأتي من مصر في قافلة عظيمة، وكانت في العهد "
          "العثماني كذلك صلة محبة بين إسطنبول ومكة.\n\n"
          "وفي سنة ألف وتسعمائة وسبع وعشرين أُنشئ أول مصنع في مكة، ومنذ سنة ألف وتسعمائة واثنتين وستين صارت الكسوة تُنسج "
          "هنا وحدها، وفي سنة ألف وتسعمائة وسبع وسبعين افتُتحت هذه المنشأة الحديثة.\n\n"
          "وفي الداخل يتولى كل قسم مرحلة من العمل؛ فالحرير الخام يُصبغ أولًا بالسواد، ثم يصير على الأنوال قماشًا منقوشًا "
          "بأسماء الله وكلمة التوحيد. وفي قسم التطريز يطرّز الصنّاع الآيات بأيديهم غرزةً غرزة بأسلاك مطلية بالذهب والفضة. "
          "وتحتاج الكسوة الواحدة إلى نحو ستمائة وسبعين كيلوغرامًا من الحرير، ويستغرق العمل نحو عشرة أشهر، وتتكون من سبع "
          "وأربعين قطعة.\n\n"
          "وكانت الكسوة تُستبدل يوم عرفة، ومنذ سنة ألفين واثنتين وعشرين صارت تُستبدل في مطلع العام الهجري أول المحرم.\n\n"
          "ويخبرنا القرآن أن تعظيم شعائر الله من تقوى القلوب. فإذا خرجت من هذا المصنع، ونظرت في طوافك القادم إلى كسوة "
          "الكعبة، تذكرت ما وراءها من جهد وتعظيم.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi: Mekke", "https://islamansiklopedisi.org.tr/mekke"),
      GeziKaynak("Vikipedi (ar): مجمع الملك عبد العزيز لكسوة الكعبة المشرفة",
          "https://ar.wikipedia.org/wiki/مجمع_الملك_عبد_العزيز_لكسوة_الكعبة_المشرفة"),
      GeziKaynak("Wikipedia: Kiswah", "https://en.wikipedia.org/wiki/Kiswah"),
      GeziKaynak("Visit Saudi: King Abdulaziz Complex for the Holy Kaaba Kiswa",
          "https://visitsaudi.com/en/makkah/attractions/the-kiswa-factory-of-the-holy-kaaba-in-makkah"),
      GeziKaynak("OpenStreetMap: way 444240921", "https://www.openstreetmap.org/way/444240921"),
    ],
  ),

  // ---------------------------------------------------------------- Ayn-ı Zübeyde
  GeziYeri(
    id: 'ayn_i_zubeyde',
    bolge: GeziBolge.mekke,
    tur: GeziTur.tarihiSehir,
    ad: L10nText(tr: "Ayn-ı Zübeyde (Zübeyde Su Yolu)", en: "Ayn Zubaydah (Zubaydah Aqueduct)", ar: "عين زبيدة"),
    arapcaAd: L10nText.same("عين زبيدة"),
    altBaslik: L10nText(
      tr: "Hacılara su taşımak için yapılan, Arafat'tan Mekke'ye uzanan bin iki yüz yıllık su yolu",
      en: "A twelve-century-old aqueduct built to bring water to pilgrims, running from Arafat towards Makkah",
      ar: "قناة مائية عمرها نحو اثني عشر قرنًا أُنشئت لسقيا الحجاج، تمتد من عرفات نحو مكة",
    ),
    sehir: L10nText(tr: "Nu'mân vadisi - Arafat - Mekke", en: "Wadi Nu'man - Arafat - Makkah", ar: "وادي نعمان - عرفات - مكة"),
    // OSM node 11871306992 ("عين زبيدة", historic=ruins, GNS kaynaklı):
    // Nu'mân vadisindeki kaynak bölgesi. Kalıntılar Arafat ve Müzdelife
    // boyunca da görülür.
    konum: LatLng(21.32954, 40.03301),
    genel: L10nText(
      tr: "Ayn-ı Zübeyde, Abbâsî halifesi Hârûnürreşîd'in eşi Zübeyde bint Ca'fer'in yaptırdığı, Mekke'ye ve hac "
          "mekânlarına su taşıyan tarihî su yoludur. Su, Tâif yolu üzerinde, Kerâ dağının eteğindeki Nu'mân vadisinden "
          "alınır; Arafat ovasından ve Müzdelife tepelerinin kenarından geçerek Mekke'ye doğru akardı. Uzunluğu "
          "kaynaklarda 30 ile 38 kilometre arasında verilir.\n\n"
          "Su yolu, kimi yerde yerin altında, kimi yerde yerin üstünde, taş ve kireç harcıyla örülmüş bir kanaldır. "
          "Temizlik ve bakım için yaklaşık her 50 metrede bir kuyu ağzı (harize) bırakılmıştır. Arafat'ta hacılara su "
          "dağıtmak için havuzlar yapılmıştı; Cebel-i Rahme yakınında bu havuzların kalıntıları, Müzdelife yakınında da "
          "sur gibi yükselen kanal duvarları hâlâ görülebilir.\n\n"
          "Su yolu bugün kurudur. Vakfı Suudi Arabistan Evkaf Genel İdaresi'ne bağlıdır; Mekke ve Kutsal Mekânlar "
          "Kraliyet Komisyonu kalıntıları korumak ve tanıtmak için çalışmalar yürütmektedir.",
      en: "Ayn Zubaydah is the historic aqueduct built by Zubaydah bint Ja'far, wife of the Abbasid caliph Harun "
          "al-Rashid, to carry water to Makkah and the pilgrimage sites. The water was taken from Wadi Nu'man at the "
          "foot of Mount Kara on the Ta'if road, and flowed through the plain of Arafat and along the hills of "
          "Muzdalifah towards Makkah. Sources give its length as between 30 and 38 kilometres.\n\n"
          "The aqueduct is a channel built of stone and lime mortar, running underground in some places and above "
          "ground in others. Access shafts (kharazah) were left about every 50 metres for cleaning and maintenance. "
          "Basins were built at Arafat to give water to pilgrims; the remains of these basins near Jabal al-Rahmah, "
          "and channel walls rising like a fortress near Muzdalifah, can still be seen.\n\n"
          "The aqueduct is dry today. Its endowment is administered by the General Authority for Awqaf, and the "
          "Royal Commission for Makkah City and Holy Sites is working to preserve and present its remains.",
      ar: "عين زبيدة قناة مائية تاريخية أنشأتها زبيدة بنت جعفر زوج الخليفة العباسي هارون الرشيد لسقيا مكة والمشاعر. وكان "
          "ماؤها يؤخذ من وادي نعمان عند سفح جبل كرا على طريق الطائف، فيجري عبر سهل عرفات ومحاذيًا لجبال مزدلفة نحو مكة. "
          "وتذكر المصادر أن طولها بين 30 و38 كيلومترًا.\n\n"
          "والقناة مبنية بالحجر والنورة، تجري تحت الأرض في مواضع وفوقها في مواضع، وتُركت فيها فتحات (خرزات) كل نحو 50 "
          "مترًا للتنظيف والصيانة. وبُنيت في عرفات برك لسقيا الحجاج، ولا تزال بقايا هذه البرك قرب جبل الرحمة، وجدران القناة "
          "الشبيهة بالأسوار قرب مزدلفة، ظاهرة إلى اليوم.\n\n"
          "والقناة جافة اليوم، ووقفها تحت إشراف الهيئة العامة للأوقاف، وتعمل الهيئة الملكية لمدينة مكة المكرمة والمشاعر "
          "المقدسة على صون آثارها والتعريف بها.",
    ),
    tarihce: L10nText(
      tr: "Zübeyde bint Ca'fer, 145 (762) yılında doğdu; Hârûnürreşîd'in eşi ve halife Emîn'in annesidir. Hac "
          "yolculuklarında Mekke halkının ve hacıların su sıkıntısını gördüğü, bunun üzerine bir su yolu yaptırmaya "
          "karar verdiği nakledilir. Yapım tarihi için kaynaklar farklı yıllar verir; genellikle IX. yüzyılın başları "
          "gösterilir. Rivayete göre Zübeyde, mühendislere maliyeti ne olursa olsun işi tamamlamalarını söylemiş, "
          "harcanan para 1,7 milyon miskal altını bulmuştur.\n\n"
          "Su önce Huneyn vadisinden getirildi. Buradaki su azalınca Nu'mân vadisindeki kaynaklar da kanala bağlandı ve "
          "kanal Arafat'a kadar uzatıldı. Böylece hacılar Arefe günü Arafat'ta su bulabildi. Zübeyde, Bağdat'tan "
          "Mekke'ye uzanan hac yolunda da kuyular ve havuzlar yaptırdı; bu yol “Derb-i Zübeyde” adıyla anılır. 216 "
          "(831) yılında Bağdat'ta vefat etti.\n\n"
          "Su yolu asırlar boyunca birçok kez onarıldı. Kanûnî Sultan Süleyman döneminde kapsamlı bir onarım yapıldı ve "
          "su Mekke içlerine kadar ulaştırıldı. Sonraki Osmanlı dönemlerinde de bakımı sürdü. 1344 (1926) yılında "
          "Nu'mân vadisindeki bir sel kanalın büyük bölümünü yıkınca Kral Abdülaziz onarım yaptırdı ve bir “Ayn-ı "
          "Zübeyde İdaresi” kuruldu. XX. yüzyılın ortalarından sonra yeraltı suyu azalıp modern şebekeler kurulunca su "
          "yolu kullanımdan çıktı. 2024'te Mekke ve Kutsal Mekânlar Kraliyet Komisyonu, Hâsıretü Ayn-ı Zübeyde adlı "
          "bir kültür ve gezi alanını sezonluk olarak ziyarete açtı.",
      en: "Zubaydah bint Ja'far was born in 145 AH (762); she was the wife of Harun al-Rashid and the mother of the "
          "caliph al-Amin. It is reported that on her pilgrimages she saw the water shortage suffered by the people "
          "of Makkah and the pilgrims and decided to build an aqueduct. The sources give different years for its "
          "construction, generally the early 9th century. According to the reports, Zubaydah told the engineers to "
          "finish the work whatever the cost, and the expense reached 1.7 million mithqals of gold.\n\n"
          "Water was first brought from Wadi Hunayn. When its water declined, the springs of Wadi Nu'man were also "
          "connected and the channel was extended to Arafat, so that pilgrims could find water at Arafat on the Day "
          "of Arafah. Zubaydah also built wells and cisterns along the pilgrim road from Baghdad to Makkah, known as "
          "Darb Zubaydah. She died in Baghdad in 216 AH (831).\n\n"
          "The aqueduct was repaired many times over the centuries. Under the Ottoman sultan Suleiman the Magnificent "
          "a major restoration was carried out and the water was brought into the heart of Makkah; maintenance "
          "continued in later Ottoman times. In 1344 AH (1926), when a flood in Wadi Nu'man destroyed much of the "
          "channel, King Abdulaziz had it repaired and an Ayn Zubaydah administration was established. After the "
          "mid-20th century, as groundwater declined and modern networks were built, the aqueduct fell out of use. In "
          "2024 the Royal Commission for Makkah City and Holy Sites opened a seasonal cultural and walking area "
          "called Khasirat Ayn Zubaydah.",
      ar: "وُلدت زبيدة بنت جعفر سنة 145هـ (762م)، وهي زوج هارون الرشيد وأم الخليفة الأمين. ويُذكر أنها رأت في حجها ما يلقاه "
          "أهل مكة والحجاج من شح الماء فعزمت على إنشاء قناة. وتختلف المصادر في سنة إنشائها، وأكثرها على أوائل القرن الثالث "
          "الهجري (التاسع الميلادي). ويُروى أنها قالت للمهندسين: أتمّوا العمل مهما كلّف، وأن النفقة بلغت مليونًا وسبعمائة ألف "
          "مثقال من الذهب.\n\n"
          "وجُلب الماء أولًا من وادي حنين، فلما قلّ ماؤه وُصلت عيون وادي نعمان بالقناة ومُدّت إلى عرفات، فصار الحجاج يجدون "
          "الماء في عرفات يوم عرفة. وأنشأت زبيدة كذلك آبارًا وبركًا على طريق الحج من بغداد إلى مكة عُرف بدرب زبيدة، وتوفيت "
          "في بغداد سنة 216هـ (831م).\n\n"
          "ورُممت القناة مرات كثيرة عبر القرون، ففي عهد السلطان العثماني سليمان القانوني جرى ترميم كبير وأوصل الماء إلى قلب "
          "مكة، واستمرت العناية بها في العهود العثمانية اللاحقة. وفي سنة 1344هـ (1926م) هدم سيل في وادي نعمان جزءًا كبيرًا "
          "منها، فأمر الملك عبد العزيز بإصلاحها وأُنشئت إدارة لعين زبيدة. وبعد منتصف القرن العشرين، مع نضوب المياه الجوفية "
          "وإنشاء الشبكات الحديثة، توقف استعمالها. وفي سنة 2024م افتتحت الهيئة الملكية لمدينة مكة المكرمة والمشاعر المقدسة "
          "منطقة ثقافية وممشى موسميًا باسم «خاصرة عين زبيدة».",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "IX. yüzyıl başı", en: "Early 9th century", ar: "أوائل القرن التاسع الميلادي"),
        metin: L10nText(
          tr: "Zübeyde bint Ca'fer, Mekke'ye ve Arafat'a su getiren su yolunu yaptırdı (kaynaklar farklı yıllar verir).",
          en: "Zubaydah bint Ja'far built the aqueduct bringing water to Makkah and Arafat (sources give different years).",
          ar: "أنشأت زبيدة بنت جعفر القناة التي أوصلت الماء إلى مكة وعرفات (وتختلف المصادر في السنة).",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "XVI. yüzyıl", en: "16th century", ar: "القرن العاشر الهجري"),
        metin: L10nText(
          tr: "Kanûnî Sultan Süleyman döneminde kapsamlı onarım yapıldı.",
          en: "A major restoration was carried out under Suleiman the Magnificent.",
          ar: "جرى ترميم كبير في عهد السلطان سليمان القانوني.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1344 (1926)", en: "1344 AH (1926)", ar: "1344هـ (1926م)"),
        metin: L10nText(
          tr: "Sel kanalı yıktı; Kral Abdülaziz onarım yaptırdı.",
          en: "A flood destroyed the channel; King Abdulaziz had it repaired.",
          ar: "هدم سيل القناة، فأمر الملك عبد العزيز بإصلاحها.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "2024", en: "2024", ar: "2024م"),
        metin: L10nText(
          tr: "Hâsıretü Ayn-ı Zübeyde kültür ve gezi alanı sezonluk olarak açıldı.",
          en: "The Khasirat Ayn Zubaydah cultural and walking area opened seasonally.",
          ar: "افتُتحت منطقة خاصرة عين زبيدة الثقافية موسميًا.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Bu su yolu için özel bir ibadet ya da fazilet bildirilmemiştir. Önemi, hacılara su ulaştırmak için yapılmış "
          "büyük bir hayır eseri, bir sadaka-i câriye olmasından gelir.\n\n"
          "Peygamberimiz, insan öldüğünde amelinin kesildiğini, ancak sadaka-i câriye, faydalanılan ilim ve kendisine "
          "dua eden hayırlı evlat hariç olduğunu bildirmiştir. Asırlarca milyonlarca hacının susuzluğunu gideren bu "
          "eser, bu hadisin canlı bir örneğidir. Burada Zübeyde Hanım'ı ve eserin yaşaması için emek verenleri hayırla "
          "anmak güzel olur.",
      en: "No special worship or virtue is reported for this aqueduct. Its importance comes from being a great "
          "charitable work built to bring water to pilgrims, a form of ongoing charity (sadaqah jariyah).\n\n"
          "The Prophet taught that when a person dies their deeds come to an end, except for ongoing charity, "
          "beneficial knowledge and a righteous child who prays for them. This work, which quenched the thirst of "
          "millions of pilgrims over the centuries, is a living example of that hadith. It is fitting here to "
          "remember Zubaydah and all who laboured to keep it alive with good words and prayers.",
      ar: "لم يرد في هذه القناة عبادة مخصوصة ولا فضل خاص، وإنما مكانتها أنها عمل خيري عظيم أُنشئ لسقيا الحجاج، وصدقة "
          "جارية.\n\n"
          "وقد أخبر النبي ﷺ أن الإنسان إذا مات انقطع عنه عمله إلا من ثلاث: صدقة جارية، أو علم يُنتفع به، أو ولد صالح يدعو "
          "له. وهذا الأثر الذي روى عطش ملايين الحجاج قرونًا مثال حيّ لهذا الحديث، فيحسن هنا ذكر زبيدة وكل من عمل على بقائه "
          "بالخير والدعاء.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "إِذَا مَاتَ الإِنْسَانُ انْقَطَعَ عَنْهُ عَمَلُهُ إِلاَّ مِنْ ثَلاَثَةٍ إِلاَّ مِنْ صَدَقَةٍ جَارِيَةٍ أَوْ عِلْمٍ يُنْتَفَعُ "
            "بِهِ أَوْ وَلَدٍ صَالِحٍ يَدْعُو لَهُ",
        meal: L10nText(
          tr: "İnsan ölünce ameli kesilir; ancak üç şey müstesnadır: sadaka-i câriye, faydalanılan ilim ve kendisine "
              "dua eden hayırlı evlat.",
          en: "When a person dies, their deeds come to an end except for three: ongoing charity, knowledge from which "
              "benefit is derived, and a righteous child who prays for them.",
          ar: "إِذَا مَاتَ الْإِنْسَانُ انْقَطَعَ عَنْهُ عَمَلُهُ إِلَّا مِنْ ثَلَاثَةٍ: إِلَّا مِنْ صَدَقَةٍ جَارِيَةٍ، أَوْ عِلْمٍ يُنْتَفَعُ "
              "بِهِ، أَوْ وَلَدٍ صَالِحٍ يَدْعُو لَهُ.",
        ),
        kaynak: L10nText(tr: "Müslim, Vasiyyet, 14", en: "Muslim, al-Wasiyyah, 14", ar: "مسلم، الوصية، 14"),
      ),
      GeziAlinti(
        arapca: "وَجَعَلْنَا مِنَ ٱلْمَآءِ كُلَّ شَىْءٍ حَىٍّ",
        meal: L10nText(
          tr: "Her canlı şeyi sudan meydana getirdik.",
          en: "And We made every living thing from water.",
          ar: "وَجَعَلْنَا مِنَ الْمَاءِ كُلَّ شَيْءٍ حَيٍّ.",
        ),
        kaynak: L10nText(
          tr: "Enbiyâ 21/30 (ayetin bir bölümü)",
          en: "Al-Anbiya 21:30 (part of the verse)",
          ar: "الأنبياء 21/30 (جزء من الآية)",
        ),
      ),
    ],
    adab: [
      L10nText(
        tr: "Kalıntılar en kolay Arafat ve Müzdelife turlarında görülür; rehberinizden göstermesini isteyin.",
        en: "The remains are most easily seen on tours of Arafat and Muzdalifah; ask your guide to point them out.",
        ar: "أسهل ما تُرى الآثار في جولات عرفات ومزدلفة، فاطلب من مرشدك أن يدلّك عليها.",
      ),
      L10nText(
        tr: "Tarihî duvarlara çıkmayın, taşlarını yerinden oynatmayın ve kanalın içine girmeyin.",
        en: "Do not climb the historic walls, move their stones or enter the channel.",
        ar: "لا تتسلق الجدران التاريخية ولا تحرّك حجارتها ولا تدخل القناة.",
      ),
      L10nText(
        tr: "Açık alanda gölge azdır; yanınıza su ve şapka alın, öğle sıcağında gezmeyin.",
        en: "There is little shade in the open; take water and a hat, and avoid the midday heat.",
        ar: "الظل قليل في الأماكن المكشوفة، فخذ معك ماءً وقبعة، وتجنّب حر الظهيرة.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Su yolunun kalıntıları açık arazidedir ve büyük bölümü koruma altındadır. Hâsıretü Ayn-ı Zübeyde alanı "
          "sezonluk olarak açılır; açık olup olmadığını ve ziyaret koşullarını gitmeden önce resmî kanallardan "
          "öğrenin. Hac döneminde Meşâir bölgesine giriş kısıtlanır.",
      en: "The remains of the aqueduct lie in open country, and most are protected. The Khasirat Ayn Zubaydah area "
          "opens seasonally; check through official channels whether it is open and what the visiting conditions are "
          "before you go. Access to the area of the holy sites is restricted during the Hajj season.",
      ar: "تقع آثار القناة في أرض مكشوفة وأكثرها محمي. وتُفتح منطقة خاصرة عين زبيدة موسميًا، فتحقق من القنوات الرسمية قبل "
          "الذهاب من فتحها وشروط زيارتها. ويُقيَّد الدخول إلى المشاعر في موسم الحج.",
    ),
    uygunSaat: L10nText(tr: "Sabah erken ya da ikindiden sonra", en: "Early morning or late afternoon", ar: "في الصباح الباكر أو بعد العصر"),
    ziyaretSuresi: L10nText(tr: "20-40 dakika", en: "20-40 minutes", ar: "20-40 دقيقة"),
    uzaklik: L10nText(
      tr: "Kaynak bölgesi Mescid-i Haram'a ~24 km; Arafat'taki kalıntılar ~20 km",
      en: "Source area ~24 km from al-Masjid al-Haram; remains at Arafat ~20 km",
      ar: "منطقة المنبع على نحو 24 كم من المسجد الحرام، والآثار في عرفات على نحو 20 كم",
    ),
    anlatim: L10nText(
      tr: "Arafat'a giden yolda, bazen yerin altına dalan, bazen de sur gibi yükselen taş duvarlar görürsünüz. Bunlar, "
          "bin iki yüz yıldan uzun bir zaman önce hacılara su taşımak için yapılmış bir su yolunun kalıntıları. Adı Ayn-ı "
          "Zübeyde.\n\n"
          "Mekke, suyu az, kurak bir vadidir. Asırlar boyunca hacılar burada susuzlukla imtihan oldular. Abbâsî halifesi "
          "Hârûnürreşîd'in eşi Zübeyde Hanım hacca geldiğinde bu sıkıntıyı gördü ve bir karar verdi: Mekke'ye ve hac "
          "mekânlarına su getirilecekti. Rivayete göre mühendislere, kazmanın her vuruşu bir altına mal olsa bile işi "
          "tamamlayın, dedi.\n\n"
          "Su önce Huneyn vadisinden getirildi. O su azalınca, Tâif yolundaki Kerâ dağının eteğinden, Nu'mân vadisinden "
          "yeni kaynaklar bulundu. Taş ve kireçle örülmüş kanal, otuz kilometreyi aşan bir yol boyunca, çok hafif bir "
          "eğimle Arafat'a, oradan da Mekke'ye doğru aktı. Her elli metrede bir bırakılan kuyu ağızları, kanalın "
          "temizlenmesini sağlıyordu. Arafat'ta yapılan havuzlarda hacılar, Arefe günü kana kana su içebildi.\n\n"
          "Asırlar geçti. Kanûnî Sultan Süleyman su yolunu onartıp suyu Mekke içlerine kadar ulaştırdı. Bin dokuz yüz "
          "yirmi altıda bir sel kanalı yıktığında yeniden onarıldı. Ancak yirminci yüzyılın ortalarından sonra yeraltı "
          "suyu azaldı, modern şebekeler kuruldu ve bu su yolu sessizliğe gömüldü.\n\n"
          "Peygamberimiz, insan öldüğünde amelinin kesildiğini, ama sadaka-i câriyenin sevabının devam ettiğini "
          "bildirmiştir. Bu taş duvarlara baktığınızda, bir kadının hayır niyetinin asırlar boyunca milyonlarca insanın "
          "susuzluğunu nasıl giderdiğini düşünün. Zübeyde Hanım'ı ve bu eserin yaşaması için emek veren herkesi dua ile "
          "anın.",
      en: "On the road to Arafat you will see stone walls that sometimes dip underground and sometimes rise like a "
          "fortress. These are the remains of an aqueduct built more than twelve hundred years ago to carry water to "
          "pilgrims. Its name is Ayn Zubaydah.\n\n"
          "Makkah is a dry valley with little water. For centuries pilgrims here were tested by thirst. When "
          "Zubaydah, the wife of the Abbasid caliph Harun al-Rashid, came on pilgrimage, she saw this hardship and "
          "made a decision: water would be brought to Makkah and the pilgrimage sites. It is reported that she told "
          "the engineers to finish the work even if every stroke of the pickaxe cost a gold coin.\n\n"
          "Water was first brought from Wadi Hunayn. When that water declined, new springs were found at the foot of "
          "Mount Kara on the Ta'if road, in Wadi Nu'man. The channel, built of stone and lime, ran for more than "
          "thirty kilometres on a very gentle slope to Arafat and from there towards Makkah. Access shafts left every "
          "fifty metres allowed the channel to be cleaned. In the basins built at Arafat, pilgrims could drink their "
          "fill on the Day of Arafah.\n\n"
          "Centuries passed. Sultan Suleiman the Magnificent had the aqueduct repaired and brought the water into the "
          "heart of Makkah. When a flood destroyed the channel in nineteen twenty-six, it was repaired again. But "
          "after the middle of the twentieth century the groundwater declined, modern networks were built, and this "
          "aqueduct fell silent.\n\n"
          "The Prophet taught that when a person dies their deeds come to an end, but the reward of ongoing charity "
          "continues. As you look at these stone walls, think how one woman's charitable intention quenched the "
          "thirst of millions of people over the centuries. Remember Zubaydah and everyone who laboured to keep this "
          "work alive in your prayers.",
      ar: "على الطريق إلى عرفات ترى جدرانًا حجرية تغوص تحت الأرض حينًا وترتفع كالأسوار حينًا آخر. هذه بقايا قناة بُنيت قبل "
          "أكثر من ألف ومائتي عام لسقيا الحجاج، واسمها عين زبيدة.\n\n"
          "مكة وادٍ جاف قليل الماء، وقد ابتُلي الحجاج فيها بالعطش قرونًا. فلما حجت زبيدة زوج الخليفة العباسي هارون الرشيد "
          "رأت هذه المشقة، فعزمت أن يُجلب الماء إلى مكة والمشاعر. ويُروى أنها قالت للمهندسين: أتمّوا العمل ولو كلّفت كل "
          "ضربة فأس دينارًا.\n\n"
          "جُلب الماء أولًا من وادي حنين، فلما قلّ وُجدت عيون جديدة في وادي نعمان عند سفح جبل كرا على طريق الطائف. وجرت "
          "القناة المبنية بالحجر والنورة أكثر من ثلاثين كيلومترًا بانحدار لطيف جدًا إلى عرفات، ثم نحو مكة. وكانت الفتحات "
          "المتروكة كل خمسين مترًا تتيح تنظيف القناة. وفي البرك التي بُنيت في عرفات كان الحجاج يرتوون يوم عرفة.\n\n"
          "ومرت القرون، فرمّم السلطان سليمان القانوني القناة وأوصل الماء إلى قلب مكة. ولما هدمها سيل سنة ألف وتسعمائة وست "
          "وعشرين أُصلحت من جديد. لكن بعد منتصف القرن العشرين نضبت المياه الجوفية وأُنشئت الشبكات الحديثة، فسكتت هذه "
          "القناة.\n\n"
          "وقد أخبر النبي ﷺ أن الإنسان إذا مات انقطع عمله إلا من صدقة جارية وغيرها. فإذا نظرت إلى هذه الجدران الحجرية "
          "فتأمل كيف روت نية امرأة صالحة عطش ملايين الناس قرونًا، واذكر زبيدة وكل من عمل على بقاء هذا الأثر بالدعاء.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi: Zübeyde bint Ca'fer", "https://islamansiklopedisi.org.tr/zubeyde-bint-cafer"),
      GeziKaynak("Arab News: Ayn Zubaydah flows down memory lane",
          "https://www.arabnews.com/saudi-arabia/ayn-zubaydah-flows-down-memory-lane"),
      GeziKaynak("Arab News (2024): Khasirat Ayn Zubaida experience", "https://arabnews.com/node/2437751/saudi-arabia"),
      GeziKaynak("Saudipedia: Where is Ain Zubaida located?",
          "https://saudipedia.com/en/article/2465/history/landmarks-and-monuments/where-is-ain-zubaida-located"),
      GeziKaynak("OpenStreetMap: node 11871306992", "https://www.openstreetmap.org/node/11871306992"),
    ],
  ),
];
