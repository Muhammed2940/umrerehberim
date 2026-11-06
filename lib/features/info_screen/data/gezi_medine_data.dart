import 'package:latlong2/latlong.dart';

import 'gezilecek_yerler_data.dart';
import 'l10n_text.dart';

// Medine'de gezilecek yerler.
//
// Tarihî ve dinî bilgiler: TDV İslâm Ansiklopedisi (Mescid-i Nebevî,
// Ravza-i Mutahhara, Mescid-i Kubâ, Mescid-i Kıbleteyn, Uhud Gazvesi,
// Cennetü'l-Bakī', Hendek Gazvesi, Mesâcid-i Seb'a, Namazgâh maddeleri).
// Ayetler quran.com API (text_uthmani) ile, hadislerin Arapça metinleri
// fawazahmed0/hadith-api (Buhârî, Müslim, İbn Mâce, Tirmizî) ile doğrulandı.
// Koordinatlar OpenStreetMap (Overpass) nesnelerinden alındı.

const List<GeziYeri> kMedineYerleri = [
  // ------------------------------------------------------------------ 1
  GeziYeri(
    id: 'mescid_i_nebevi',
    bolge: GeziBolge.medine,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Mescid-i Nebevî", en: "The Prophet's Mosque (al-Masjid an-Nabawi)", ar: "المسجد النبوي الشريف"),
    arapcaAd: L10nText.same("المسجد النبوي الشريف"),
    altBaslik: L10nText(
      tr: "Ravza-i Mutahhara, Hücre-i Saadet ve Yeşil Kubbe",
      en: "Ar-Rawdah, the Prophet's resting place and the Green Dome",
      ar: "الروضة الشريفة والحجرة النبوية والقبة الخضراء",
    ),
    sehir: L10nText(tr: "Medine, şehir merkezi", en: "Madinah, city centre", ar: "المدينة المنورة، وسط المدينة"),
    konum: LatLng(24.468647, 39.611172), // OSM way 461699097
    genel: L10nText(
      tr: "Mescid-i Nebevî, Hz. Peygamber'in Medine'ye hicretinden hemen sonra bizzat inşa ettirdiği ve hayatının sonuna kadar ibadetin, eğitimin, istişarenin ve devlet işlerinin merkezi olarak kullandığı mesciddir. Âlimlerin çoğunluğuna göre fazilet bakımından Mescid-i Haram'dan sonra gelir. Hz. Peygamber, Hz. Ebû Bekir ve Hz. Ömer, mescidin güneydoğu köşesinde Hücre-i Saadet denilen yerde medfundur; bu bölümün üzerinde Yeşil Kubbe (Kubbetü'l-Hadrâ) yükselir.\n\n"
          "Mescidin en kıymetli bölümü, Hz. Peygamber'in evi ile minberi arasında kalan ve hadiste “cennet bahçelerinden bir bahçe” diye anılan Ravza-i Mutahhara'dır. Bugün yaklaşık 22 × 15 metrelik bu alan, beyaz ve yeşil halılarıyla ayırt edilir; içinde Hz. Peygamber'in mihrabı, III. Murad'ın gönderdiği mermer minber ve her biri ayrı bir hatırayı yaşatan sütunlar (Hannâne, Âişe, Tövbe/Ebû Lübâbe, Serîr, Muhâfız ve Vüfûd sütunları) bulunur. Son büyük genişletmelerle mescit, avlusuyla birlikte yüz binlerce kişinin aynı anda namaz kılabileceği bir alana ulaşmıştır.",
      en: "The Prophet's Mosque was built by the Prophet Muhammad himself right after his emigration to Madinah, and for the rest of his life it served as the centre of worship, teaching, consultation and public affairs. According to most scholars it ranks second in virtue only to al-Masjid al-Haram. The Prophet, Abu Bakr and Umar are buried in the south-eastern corner of the mosque, in the chamber known as al-Hujrah ash-Sharifah, over which rises the Green Dome (al-Qubbah al-Khadra).\n\n"
          "The most precious part of the mosque is ar-Rawdah, the area between the Prophet's house and his pulpit, which a hadith describes as “one of the gardens of Paradise”. Today this area of roughly 22 × 15 metres is marked by white and green carpets. It contains the Prophet's mihrab, the marble pulpit sent by the Ottoman Sultan Murad III, and columns each recalling a particular memory (the columns of Hannanah, Aishah, Repentance/Abu Lubabah, as-Sarir, the Guard and the Delegations). After the latest major expansions, the mosque and its courtyards can hold hundreds of thousands of worshippers at once.",
      ar: "المسجد النبوي هو المسجد الذي بناه النبي صلى الله عليه وسلم بنفسه عقب هجرته إلى المدينة، وظل طوال حياته مركزًا للعبادة والتعليم والشورى وتدبير شؤون المسلمين. وهو عند جمهور العلماء ثاني المساجد فضلًا بعد المسجد الحرام. وفي ركنه الجنوبي الشرقي الحجرة الشريفة التي دُفن فيها النبي صلى الله عليه وسلم وصاحباه أبو بكر وعمر رضي الله عنهما، وتعلوها القبة الخضراء.\n\n"
          "وأشرف بقاع المسجد الروضة الشريفة، وهي ما بين بيت النبي صلى الله عليه وسلم ومنبره، وقد وصفها الحديث بأنها «روضة من رياض الجنة». وتبلغ مساحتها اليوم نحو 22 × 15 مترًا، وتتميز بسجادها الأبيض والأخضر، وفيها المحراب النبوي والمنبر الرخامي الذي أهداه السلطان العثماني مراد الثالث، وأساطين لكل منها ذكرى خاصة، كأسطوانة الحنانة وعائشة والتوبة (أبي لبابة) والسرير والمحرس والوفود. وبعد التوسعات الكبرى الأخيرة صار المسجد مع ساحاته يتسع لمئات الآلاف من المصلين في وقت واحد.",
    ),
    tarihce: L10nText(
      tr: "Hz. Peygamber 12 Rebîülevvel'de (Eylül 622) Medine'ye girdiğinde devesi Kasvâ'nın çöktüğü yere en yakın ev olan Ebû Eyyûb el-Ensârî'nin evinde misafir oldu. Devenin çöktüğü ve hurma kurutmak için kullanılan arsa, Sehl ve Süheyl adlı iki yetime aitti; Resûlullah arsayı on dinara satın aldı. Temelin ilk taşını bizzat kendisi koydu ve muhacirlerle ensarla birlikte çalıştı. Kerpiç duvarlı, üstü kısmen hurma dallarıyla örtülü bu ilk mescit Nisan 623'te tamamlandı. Doğu duvarına bitişik olarak Hz. Peygamber'in hanımları için odalar yapıldı; Hz. Âişe'nin odası daha sonra Hücre-i Saadet adını aldı. Kıble Kâbe'ye çevrilince mescidin kuzey tarafındaki gölgelik, kimsesi ve evi olmayan sahâbîlerin barındığı ve ilim öğrendiği Suffe oldu.\n\n"
          "Mescit Hayber dönüşünde (628) Hz. Peygamber zamanında genişletildi; Hz. Osman bu iş için çevredeki arsaları satın aldı. Hz. Ömer (638) ve Hz. Osman (649-650) dönemlerinde yeniden genişletildi; Hz. Osman taş ve kireç kullandırdı. Emevî halifesi Velîd b. Abdülmelik'in emriyle Medine valisi Ömer b. Abdülazîz 707-710 yılları arasında mescidi yeniden inşa etti; bu sırada Hücre-i Saadet mescidin içine alındı ve ilk defa minare ile niş biçimli mihrap eklendi. Abbâsî halifesi Mehdî döneminde (777-782) mescit kuzeye doğru büyütüldü.\n\n"
          "1256 ve 1481 yangınlarından sonra mescit Memlük sultanlarınca, özellikle Kayıtbay tarafından yenilendi; Hz. Peygamber'in kabri üzerine ilk kubbe de Memlükler döneminde yapıldı. Osmanlılar döneminde Kanûnî Sultan Süleyman'dan başlayarak pek çok onarım yapıldı. II. Mahmud döneminde (1817-1837) kabir üzerindeki kubbe taştan yeniden yapılıp kurşunla kaplandı ve yeşile boyandı; bugünkü Yeşil Kubbe budur. Sultan Abdülmecid 1849-1861 yılları arasında mescidi baştan inşa ettirdi; hattat Abdullah Zühdi'nin yazıları ve Osmanlı'nın zarif kubbeli bölümü bugün de mescidin eski kısmında görülür.\n\n"
          "Suudi döneminde 1949-1955 yıllarında ilk genişletme yapıldı. 1984-1994 yılları arasındaki büyük genişletmeyle mescit eski yapıyı üç yönden kuşattı, açılıp kapanabilen kubbeler ve on minare eklendi. Daha sonra avlulara gölge sağlayan dev şemsiyeler kuruldu.",
      en: "When the Prophet entered Madinah on 12 Rabi al-Awwal (September 622), he stayed in the house of Abu Ayyub al-Ansari, the house nearest to the spot where his camel al-Qaswa knelt. The plot where the camel knelt, used for drying dates, belonged to two orphans named Sahl and Suhayl; the Prophet bought it for ten dinars. He laid the first stone of the foundation himself and worked alongside the Emigrants and the Helpers. This first mosque, with mud-brick walls and a roof partly covered with palm fronds, was completed in April 623. Rooms for the Prophet's wives were built against its eastern wall; Aishah's room later became known as al-Hujrah ash-Sharifah. When the qiblah was turned towards the Kaaba, the shaded area on the northern side became the Suffah, where Companions who had no family or home lived and studied.\n\n"
          "The mosque was enlarged in the Prophet's own lifetime after the return from Khaybar (628); Uthman bought the neighbouring plots for this purpose. It was expanded again under Umar (638) and Uthman (649-650), who had it rebuilt with stone and lime. By order of the Umayyad caliph al-Walid ibn Abd al-Malik, the governor of Madinah, Umar ibn Abd al-Aziz, rebuilt the mosque between 707 and 710; the Prophet's chamber was then brought inside the mosque, and a minaret and a niche-shaped mihrab were added for the first time. Under the Abbasid caliph al-Mahdi (777-782) the mosque was extended to the north.\n\n"
          "After the fires of 1256 and 1481 the mosque was restored by the Mamluk sultans, especially Qaytbay; the first dome over the Prophet's grave was also built in the Mamluk period. The Ottomans carried out many repairs, beginning with Suleiman the Magnificent. Under Mahmud II (1817-1837) the dome over the grave was rebuilt in stone, covered with lead and painted green; this is today's Green Dome. Sultan Abdulmejid had the mosque completely rebuilt between 1849 and 1861; the calligraphy of Abdullah Zuhdi and the elegant domed Ottoman section can still be seen in the old part of the mosque.\n\n"
          "The first Saudi expansion took place between 1949 and 1955. With the great expansion of 1984-1994 the mosque surrounded the old building on three sides, and sliding domes and ten minarets were added. Later, giant umbrellas were installed to shade the courtyards.",
      ar: "لما دخل النبي صلى الله عليه وسلم المدينة في الثاني عشر من ربيع الأول (سبتمبر 622م) نزل في دار أبي أيوب الأنصاري، وهي أقرب الدور إلى مبرك ناقته القصواء. وكان المربد الذي بركت فيه الناقة ليتيمين اسمهما سهل وسهيل، فاشتراه النبي صلى الله عليه وسلم بعشرة دنانير، ووضع بيده أول حجر في أساسه، وعمل فيه مع المهاجرين والأنصار. وتم بناء المسجد الأول بجدران من اللبن وسقف من جريد النخل في شوال من السنة الأولى (أبريل 623م). وبُنيت حجرات أزواج النبي صلى الله عليه وسلم ملاصقة لجداره الشرقي، وصارت حجرة عائشة رضي الله عنها فيما بعد الحجرة الشريفة. ولما حُوّلت القبلة إلى الكعبة صارت الظُّلّة في الجهة الشمالية الصُّفّة التي كان يأوي إليها فقراء الصحابة ممن لا أهل لهم ولا مأوى، ويتعلمون فيها.\n\n"
          "ووُسّع المسجد في حياة النبي صلى الله عليه وسلم بعد العودة من خيبر سنة 7هـ (628م)، واشترى عثمان رضي الله عنه الأرض المجاورة لذلك. ثم وسّعه عمر رضي الله عنه سنة 17هـ (638م)، ثم عثمان رضي الله عنه سنة 29-30هـ (649-650م) وبناه بالحجارة والجص. وبأمر الخليفة الأموي الوليد بن عبد الملك أعاد والي المدينة عمر بن عبد العزيز بناء المسجد بين سنتي 707 و710م، فأُدخلت الحجرة الشريفة في المسجد، وأُضيفت المئذنة والمحراب المجوّف لأول مرة. ثم وسّعه الخليفة العباسي المهدي من جهة الشمال (777-782م).\n\n"
          "وبعد حريقي سنة 654هـ (1256م) وسنة 886هـ (1481م) جدّده سلاطين المماليك، ولا سيما قايتباي، وفي العهد المملوكي بُنيت أول قبة فوق القبر الشريف. وتوالت الإصلاحات في العهد العثماني بدءًا من السلطان سليمان القانوني، وفي عهد السلطان محمود الثاني (1817-1837م) أُعيد بناء القبة بالحجر وكُسيت بالرصاص وطُليت باللون الأخضر، وهي القبة الخضراء القائمة اليوم. ثم أعاد السلطان عبد المجيد بناء المسجد كله بين سنتي 1849 و1861م، وما زالت خطوط الخطاط عبد الله زهدي والقسم العثماني ذو القباب الأنيقة ظاهرة في الجزء القديم من المسجد.\n\n"
          "وفي العهد السعودي جرت التوسعة الأولى بين سنتي 1949 و1955م، ثم التوسعة الكبرى بين سنتي 1984 و1994م التي أحاطت بالمبنى القديم من ثلاث جهات، وأُضيفت فيها القباب المتحركة وعشر مآذن، ثم نُصبت المظلات العملاقة لتظليل الساحات.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "622", en: "622", ar: "622م"),
        metin: L10nText(
          tr: "Hz. Peygamber Medine'ye geldi; arsa satın alındı ve mescidin inşasına başlandı.",
          en: "The Prophet arrived in Madinah; the plot was bought and construction of the mosque began.",
          ar: "قدم النبي صلى الله عليه وسلم المدينة، واشتُري المربد وبدأ بناء المسجد.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "623-624", en: "623-624", ar: "623-624م"),
        metin: L10nText(
          tr: "İlk bina tamamlandı; hicretten 16-17 ay sonra kıble Kudüs'ten Kâbe'ye çevrildi ve Suffe oluştu.",
          en: "The first building was completed; 16-17 months after the Hijrah the qiblah was turned from Jerusalem to the Kaaba and the Suffah came into being.",
          ar: "اكتمل البناء الأول، وبعد ستة عشر أو سبعة عشر شهرًا من الهجرة حُوّلت القبلة من بيت المقدس إلى الكعبة ونشأت الصُّفّة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "628", en: "628", ar: "628م"),
        metin: L10nText(
          tr: "Hayber dönüşü mescit genişletildi; ılgın ağacından üç basamaklı ilk minber yapıldı (628 veya 629).",
          en: "The mosque was enlarged after Khaybar; the first three-step pulpit of tamarisk wood was made (628 or 629).",
          ar: "وُسّع المسجد بعد العودة من خيبر، وصُنع أول منبر من خشب الأثل ذي ثلاث درجات (628 أو 629م).",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "632", en: "632", ar: "11هـ / 632م"),
        metin: L10nText(
          tr: "Hz. Peygamber vefat etti ve Hz. Âişe'nin odasına defnedildi; burası Hücre-i Saadet olarak anılmaya başladı.",
          en: "The Prophet passed away and was buried in Aishah's room, which came to be known as al-Hujrah ash-Sharifah.",
          ar: "توفي النبي صلى الله عليه وسلم ودُفن في حجرة عائشة رضي الله عنها، فعُرفت بالحجرة الشريفة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "707-710", en: "707-710", ar: "707-710م"),
        metin: L10nText(
          tr: "Ömer b. Abdülazîz'in yeniden inşası: Hücre-i Saadet mescide dahil edildi, ilk minare ve mihrap yapıldı.",
          en: "Rebuilding by Umar ibn Abd al-Aziz: the Prophet's chamber was included in the mosque; the first minaret and mihrab were built.",
          ar: "إعادة بناء عمر بن عبد العزيز: أُدخلت الحجرة الشريفة في المسجد وبُنيت أول مئذنة ومحراب.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1481-1483", en: "1481-1483", ar: "1481-1483م"),
        metin: L10nText(
          tr: "Yıldırımın yol açtığı yangından sonra Memlük Sultanı Kayıtbay mescidi yeniledi.",
          en: "After a fire caused by lightning, the Mamluk Sultan Qaytbay restored the mosque.",
          ar: "بعد حريق سببته صاعقة جدّد السلطان المملوكي قايتباي المسجد.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1837 / 1849-1861", en: "1837 / 1849-1861", ar: "1837م / 1849-1861م"),
        metin: L10nText(
          tr: "II. Mahmud döneminde kubbe yenilenip yeşile boyandı; Sultan Abdülmecid mescidi baştan inşa ettirdi.",
          en: "The dome was rebuilt and painted green under Mahmud II; Sultan Abdulmejid had the mosque rebuilt from the ground up.",
          ar: "جُدّدت القبة وطُليت بالأخضر في عهد محمود الثاني، ثم أعاد السلطان عبد المجيد بناء المسجد كله.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1984-1994", en: "1984-1994", ar: "1984-1994م"),
        metin: L10nText(
          tr: "Tarihindeki en büyük genişletme: mescit alanı yaklaşık 98.000 m²'ye, avlularla 400.000 m²'ye ulaştı.",
          en: "The largest expansion in its history: the mosque reached about 98,000 m², and about 400,000 m² with its courtyards.",
          ar: "أكبر توسعة في تاريخه: بلغت مساحة المسجد نحو 98 ألف متر مربع، ونحو 400 ألف متر مربع مع الساحات.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Hz. Peygamber, yolculuk yapılarak ziyaret edilecek üç mescitten birinin kendi mescidi olduğunu bildirmiştir (Buhârî, Fazlü's-salât, 1). Bu mescitte kılınan namazın, Mescid-i Haram dışındaki diğer mescitlerde kılınan bin namazdan daha hayırlı olduğu sahih hadislerle sabittir.\n\n"
          "Ravza-i Mutahhara'nın fazileti, Hz. Peygamber'in evi ile minberi arasının cennet bahçelerinden bir bahçe olduğunu bildiren hadise dayanır. Âlimler bu ifadeyi bazen hakiki, bazen de orada yapılan ibadetin insanı cennete götüreceği anlamında yorumlamışlardır. Medine'ye gelen mümin, mescitte namaz kılmayı ve Hz. Peygamber'e salât ve selam getirmeyi ziyaretin esası bilir.",
      en: "The Prophet stated that his mosque is one of the three mosques to which one may set out on a journey (al-Bukhari). Authentic hadiths establish that a prayer in this mosque is better than a thousand prayers elsewhere, except al-Masjid al-Haram.\n\n"
          "The virtue of ar-Rawdah rests on the hadith stating that the area between the Prophet's house and his pulpit is one of the gardens of Paradise. Scholars have understood this either literally or as meaning that worship performed there leads to Paradise. The believer who comes to Madinah regards praying in the mosque and sending blessings and greetings upon the Prophet as the essence of the visit.",
      ar: "أخبر النبي صلى الله عليه وسلم أن مسجده أحد المساجد الثلاثة التي تُشدّ إليها الرحال (رواه البخاري)، وثبت في الأحاديث الصحيحة أن الصلاة فيه خير من ألف صلاة فيما سواه إلا المسجد الحرام.\n\n"
          "وفضل الروضة الشريفة ثابت بالحديث الذي أخبر أن ما بين بيته ومنبره روضة من رياض الجنة، وقد حمله بعض العلماء على الحقيقة، وحمله آخرون على أن العبادة فيه سبب لدخول الجنة. والمؤمن القادم إلى المدينة يجعل الصلاة في المسجد والصلاة والسلام على النبي صلى الله عليه وسلم أساس زيارته.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "صَلاَةٌ فِي مَسْجِدِي هَذَا خَيْرٌ مِنْ أَلْفِ صَلاَةٍ فِيمَا سِوَاهُ إِلاَّ الْمَسْجِدَ الْحَرَامَ",
        meal: L10nText(
          tr: "Benim şu mescidimde kılınan bir namaz, Mescid-i Haram hariç, diğer yerlerde kılınan bin namazdan daha hayırlıdır.",
          en: "A prayer in this mosque of mine is better than a thousand prayers elsewhere, except al-Masjid al-Haram.",
          ar: "صلاة في هذا المسجد خير من ألف صلاة فيما سواه إلا المسجد الحرام.",
        ),
        kaynak: L10nText(tr: "Buhârî, Fazlü's-salât, 1 (No. 1190)", en: "Sahih al-Bukhari 1190", ar: "صحيح البخاري، 1190"),
      ),
      GeziAlinti(
        arapca: "مَا بَيْنَ بَيْتِي وَمِنْبَرِي رَوْضَةٌ مِنْ رِيَاضِ الْجَنَّةِ، وَمِنْبَرِي عَلَى حَوْضِي",
        meal: L10nText(
          tr: "Evimle minberim arası cennet bahçelerinden bir bahçedir. Minberim de havzımın üzerindedir.",
          en: "What is between my house and my pulpit is one of the gardens of Paradise, and my pulpit is over my Pond.",
          ar: "ما بين البيت والمنبر روضة من رياض الجنة، والمنبر على الحوض.",
        ),
        kaynak: L10nText(tr: "Buhârî, No. 1196; Müslim, Hac", en: "Sahih al-Bukhari 1196", ar: "صحيح البخاري، 1196"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Mescide abdestli, temiz ve sade kıyafetle, sağ ayakla ve mescide giriş duasıyla girin; önce iki rekât tahiyyetü'l-mescid namazı kılın.",
        en: "Enter the mosque in a state of wudu, in clean and modest clothes, with your right foot and the supplication for entering a mosque; first pray two rak'ahs of tahiyyat al-masjid.",
        ar: "ادخل المسجد متوضئًا بلباس نظيف محتشم، مقدّمًا رجلك اليمنى وقائلًا دعاء دخول المسجد، ثم صلِّ ركعتي تحية المسجد.",
      ),
      L10nText(
        tr: "Hz. Peygamber'e selam için genellikle Bâbüsselâm tarafından girilir, kuyrukla Hücre-i Saadet'in önünden geçilir. Selamı sesinizi yükseltmeden, kısa ve edepli verin; ardından Hz. Ebû Bekir ve Hz. Ömer'e selam verin.",
        en: "To greet the Prophet, visitors usually enter from Bab as-Salam and pass in a queue in front of the Prophet's chamber. Give your greeting briefly and respectfully without raising your voice, then greet Abu Bakr and Umar.",
        ar: "يُدخل للسلام على النبي صلى الله عليه وسلم غالبًا من باب السلام، ويُمرّ في صفّ أمام الحجرة الشريفة. سلّم باختصار وأدب دون رفع الصوت، ثم سلّم على أبي بكر وعمر رضي الله عنهما.",
      ),
      L10nText(
        tr: "Kalabalıkta kimseyi itmeyin; görevlilerin yönlendirmelerine uyun. Duayı kıbleye dönerek yapın.",
        en: "Do not push anyone in the crowd and follow the directions of the staff. Make your supplications facing the qiblah.",
        ar: "لا تزاحم أحدًا، والتزم بتوجيهات المنظمين، واستقبل القبلة عند الدعاء.",
      ),
      L10nText(
        tr: "Mescitte yüksek sesle konuşmayın, telefonla görüntülü konuşma ve uzun fotoğraf çekiminden kaçının.",
        en: "Do not speak loudly in the mosque; avoid video calls and lengthy photography.",
        ar: "لا ترفع صوتك في المسجد، وتجنب المكالمات المرئية والإطالة في التصوير.",
      ),
      L10nText(
        tr: "Medine'de kaldığınız sürece vakit namazlarını mümkün olduğunca Mescid-i Nebevî'de cemaatle kılmaya çalışın; bol salâvat getirin.",
        en: "While in Madinah, try to pray the daily prayers in congregation at the Prophet's Mosque as much as possible, and send abundant blessings upon the Prophet.",
        ar: "احرص مدة إقامتك في المدينة على أداء الصلوات جماعةً في المسجد النبوي ما استطعت، وأكثر من الصلاة على النبي صلى الله عليه وسلم.",
      ),
      L10nText(
        tr: "Ayakkabılarınızı kapı numarasını not ederek raflara veya yanınıza aldığınız torbaya koyun; buluşma yeri olarak kapı numaralarını kullanın.",
        en: "Put your shoes on the racks or in a bag you carry, noting the gate number; use gate numbers as meeting points.",
        ar: "ضع حذاءك في الرفوف أو في كيس تحمله مع حفظ رقم الباب، واتخذ أرقام الأبواب أماكن للالتقاء.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Ravza-i Mutahhara'da namaz için Nusuk uygulamasından ücretsiz izin (randevu) almak gerekir. Erkekler ve kadınlar ayrı saatlerde ve ayrı kapılardan alınır; ziyaret süresi yaklaşık 10 dakikayla sınırlıdır ve izin sayısına yıllık sınır uygulanabilir. Hücre-i Saadet önünde selam verilirken durmaya izin verilmez, akış içinde ilerlenir ve Bakî kapısı tarafından çıkılır.",
      en: "Praying in ar-Rawdah requires a free permit (appointment) from the Nusuk app. Men and women are admitted at separate times through separate gates; each visit is limited to about 10 minutes, and an annual limit on permits may apply. Visitors are not allowed to stop when greeting the Prophet in front of the chamber; the line keeps moving and exits towards the Baqi gate.",
      ar: "تتطلب الصلاة في الروضة الشريفة تصريحًا (موعدًا) مجانيًا من تطبيق نسك، ويكون دخول الرجال والنساء في أوقات وأبواب منفصلة، ومدة الزيارة نحو عشر دقائق، وقد يُطبّق حد سنوي لعدد التصاريح. ولا يُسمح بالوقوف عند السلام أمام الحجرة الشريفة، بل يستمر السير ويكون الخروج من جهة باب البقيع.",
    ),
    uygunSaat: L10nText(
      tr: "Sabah namazından sonra veya gece geç saatler (daha sakin)",
      en: "After Fajr or late at night (quieter)",
      ar: "بعد صلاة الفجر أو في آخر الليل (أقل ازدحامًا)",
    ),
    ziyaretSuresi: L10nText(tr: "2-3 saat", en: "2-3 hours", ar: "ساعتان إلى ثلاث ساعات"),
    anlatim: L10nText(
      tr: "Medine'ye hoş geldiniz. Şimdi bulunduğunuz yer, Peygamber Efendimizin kendi elleriyle temelini attığı Mescid-i Nebevî'dir. Bundan on dört asır önce, hicretin ilk günlerinde, Resûlullah'ın devesi Kasvâ burada, iki yetime ait bir hurma kurutma yerinde çöktü. Peygamberimiz bu arsayı on dinara satın aldı ve ashabıyla birlikte kerpiç taşıyarak mescidi inşa etti. Hurma kütüklerinden direkler, hurma dallarından bir çatı ve sade kerpiç duvarlar. İslâm'ın ilk merkezi işte böyle doğdu.\n\n"
          "Bu sade mescit, kısa sürede bir okul, bir istişare meclisi ve bir yuva oldu. Kimsesi olmayan sahâbîler, Suffe denilen gölgelikte barındı ve ilim öğrendi. Elçiler burada kabul edildi, seferler burada konuşuldu. Hz. Peygamber önceleri bir hurma kütüğüne dayanarak hutbe okurdu. Minber yapılıp oraya geçtiğinde kütüğün inlediği rivayet edilir. Bugün Ravza'daki Hannâne sütunu bu hatırayı yaşatır.\n\n"
          "Resûlullah, evi ile minberi arasının cennet bahçelerinden bir bahçe olduğunu haber verdi. Bu küçük alan, bugün Ravza-i Mutahhara diye anılır ve beyaz yeşil halılarıyla hemen tanınır. Hemen yanındaki Hücre-i Saadet ise Hz. Âişe annemizin odasıdır. Peygamber Efendimiz burada vefat etti ve buraya defnedildi. Daha sonra Hz. Ebû Bekir ve Hz. Ömer de yanına defnedildiler. Başınızı kaldırdığınızda gördüğünüz Yeşil Kubbe, Osmanlı Sultanı İkinci Mahmud döneminde taştan yeniden yapılıp yeşile boyanmıştır.\n\n"
          "Asırlar boyunca halifeler ve sultanlar bu mescide hizmeti şeref saydı. Ömer bin Abdülaziz mescidi yeniden inşa etti, Memlük Sultanı Kayıtbay yangından sonra yeniledi, Sultan Abdülmecid ise on iki yıl süren bir çalışmayla baştan yaptırdı. Eski bölümdeki zarif kubbeler ve hat yazıları o dönemin hatırasıdır. Bugün mescit, yüz binlerce kişinin birlikte namaz kılabileceği bir genişliğe ulaşmıştır.\n\n"
          "Peygamber Efendimiz, bu mescitte kılınan bir namazın, Mescid-i Haram dışında başka yerlerde kılınan bin namazdan daha hayırlı olduğunu müjdeledi. Ziyaretinizi edep ve sükûnetle yapın. Sesinizi yükseltmeden selamınızı verin, bol bol salâvat getirin ve bu mübarek mekânda geçen her anı ibadetle değerlendirin.",
      en: "Welcome to Madinah. You are now at the Prophet's Mosque, whose foundations the Prophet Muhammad laid with his own hands. Fourteen centuries ago, in the first days of the Hijrah, his camel al-Qaswa knelt here, on a date-drying ground that belonged to two orphans. The Prophet bought the plot for ten dinars and built the mosque together with his Companions, carrying mud bricks himself. Pillars of palm trunks, a roof of palm fronds and simple mud-brick walls. This is how the first centre of Islam was born.\n\n"
          "This simple mosque soon became a school, a council and a home. Companions who had no family found shelter and learning in the shaded area called the Suffah. Delegations were received here and expeditions were discussed here. At first the Prophet delivered his sermons leaning on a palm trunk. It is narrated that when a pulpit was made and he moved to it, the trunk moaned. Today the Hannanah column in ar-Rawdah keeps this memory alive.\n\n"
          "The Prophet said that the area between his house and his pulpit is one of the gardens of Paradise. This small area, known today as ar-Rawdah, is easily recognised by its white and green carpets. Right next to it is the noble chamber, the room of Aishah, the Mother of the Believers. The Prophet passed away in this room and was buried here. Later, Abu Bakr and Umar were buried beside him. The Green Dome you see above was rebuilt in stone and painted green in the time of the Ottoman Sultan Mahmud the Second.\n\n"
          "For centuries caliphs and sultans regarded serving this mosque as an honour. Umar ibn Abd al-Aziz rebuilt it, the Mamluk Sultan Qaytbay restored it after a fire, and Sultan Abdulmejid had it rebuilt from the ground up in twelve years of work. The graceful domes and calligraphy of the old section are reminders of that era. Today the mosque is large enough for hundreds of thousands of people to pray together.\n\n"
          "The Prophet gave the glad tidings that one prayer in this mosque is better than a thousand prayers elsewhere, except al-Masjid al-Haram. Make your visit with courtesy and calm. Give your greeting without raising your voice, send abundant blessings upon the Prophet, and fill every moment in this blessed place with worship.",
      ar: "مرحبًا بكم في المدينة المنورة. أنتم الآن في المسجد النبوي الذي وضع رسول الله صلى الله عليه وسلم أساسه بيديه الشريفتين. قبل أربعة عشر قرنًا، في الأيام الأولى للهجرة، بركت ناقته القصواء هنا في مربد لتمر يتيمين. فاشترى النبي صلى الله عليه وسلم الأرض بعشرة دنانير، وبنى المسجد مع أصحابه ينقل اللبن بنفسه. أعمدة من جذوع النخل، وسقف من الجريد، وجدران بسيطة من اللبن. هكذا وُلد أول مركز للإسلام.\n\n"
          "وسرعان ما صار هذا المسجد البسيط مدرسةً ومجلسًا للشورى وبيتًا. فقد آوى الصحابة الذين لا أهل لهم إلى الظُّلّة المعروفة بالصُّفّة، وتعلموا فيها العلم. وهنا استُقبلت الوفود، وهنا نوقشت أمور الغزوات. وكان النبي صلى الله عليه وسلم يخطب أولًا مستندًا إلى جذع نخلة، فلما صُنع المنبر وانتقل إليه حنّ الجذع، كما جاء في الروايات. واليوم تحفظ أسطوانة الحنانة في الروضة هذه الذكرى.\n\n"
          "وقد أخبر النبي صلى الله عليه وسلم أن ما بين بيته ومنبره روضة من رياض الجنة. وهذه البقعة الصغيرة تُعرف اليوم بالروضة الشريفة، وتتميز بسجادها الأبيض والأخضر. وبجوارها الحجرة الشريفة، وهي حجرة أم المؤمنين عائشة رضي الله عنها، وفيها توفي النبي صلى الله عليه وسلم ودُفن، ثم دُفن بجواره أبو بكر وعمر رضي الله عنهما. والقبة الخضراء التي ترونها أُعيد بناؤها بالحجر وطُليت بالأخضر في عهد السلطان العثماني محمود الثاني.\n\n"
          "وعلى مر القرون عدّ الخلفاء والسلاطين خدمة هذا المسجد شرفًا. فقد أعاد عمر بن عبد العزيز بناءه، وجدّده السلطان المملوكي قايتباي بعد الحريق، وأعاد السلطان عبد المجيد بناءه كله في عمل استمر اثني عشر عامًا. والقباب الأنيقة والخطوط في القسم القديم شاهدة على تلك الحقبة. واليوم يتسع المسجد لمئات الآلاف من المصلين معًا.\n\n"
          "وقد بشّر النبي صلى الله عليه وسلم بأن صلاةً في هذا المسجد خير من ألف صلاة فيما سواه إلا المسجد الحرام. فاجعلوا زيارتكم بأدب وسكينة. سلّموا دون رفع الأصوات، وأكثروا من الصلاة على النبي صلى الله عليه وسلم، واغتنموا كل لحظة في هذا المكان المبارك بالعبادة.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Mescid-i Nebevî”", "https://islamansiklopedisi.org.tr/mescid-i-nebevi"),
      GeziKaynak("TDV İslâm Ansiklopedisi, “Ravza-i Mutahhara”", "https://islamansiklopedisi.org.tr/ravza-i-mutahhara"),
      GeziKaynak("Sahîh-i Buhârî 1190, 1196 (sunnah.com)", "https://sunnah.com/bukhari:1190"),
      GeziKaynak("Wikipedia, “Al-Masjid an-Nabawi”", "https://en.wikipedia.org/wiki/Al-Masjid_an-Nabawi"),
      GeziKaynak("Nusuk (Ravza izni)", "https://www.nusuk.sa"),
      GeziKaynak("OpenStreetMap, way 461699097", "https://www.openstreetmap.org/way/461699097"),
    ],
  ),

  // ------------------------------------------------------------------ 2
  GeziYeri(
    id: 'kuba',
    bolge: GeziBolge.medine,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Kuba Mescidi", en: "Quba Mosque", ar: "مسجد قباء"),
    arapcaAd: L10nText.same("مسجد قباء"),
    altBaslik: L10nText(
      tr: "Hz. Peygamber'in inşa ettiği ilk mescit",
      en: "The first mosque built by the Prophet",
      ar: "أول مسجد بناه النبي صلى الله عليه وسلم",
    ),
    sehir: L10nText(tr: "Medine, Kuba (güney)", en: "Madinah, Quba (south)", ar: "المدينة المنورة، قباء (الجنوب)"),
    konum: LatLng(24.439364, 39.617255), // OSM relation 18051738
    genel: L10nText(
      tr: "Kuba Mescidi, Medine'nin güneyinde, Mescid-i Nebevî'ye kuş uçuşu yaklaşık 3 km uzaklıktaki Kuba mahallesindedir. Hz. Peygamber hicret yolculuğunda Medine'ye girmeden önce burada Amr b. Avf oğullarının yanında konaklamış ve bu mescidi inşa etmiştir. Müslümanların hür ve güvenli bir ortamda, herkese açık olarak yaptıkları ilk mescit olması bakımından İslâm tarihinde özel bir yeri vardır.\n\n"
          "Âlimlerin çoğuna göre Tevbe sûresinin 108. âyetinde övülen “ilk günden takvâ üzerine kurulan mescid” Kuba Mescidi'dir; bu ifadeyle Mescid-i Nebevî'nin kastedildiğini söyleyenler de vardır. Bugünkü yapı 1985'te Kral Fehd döneminde yeniden inşa edilmiş; altı büyük kubbesi ve dört minaresiyle on binden fazla kişiyi alabilecek genişliktedir. Mermerleri Türkiye'den götürülmüş, kuşak yazılarını Türk hattat Hasan Çelebi yazmıştır.",
      en: "Quba Mosque lies in the Quba district south of Madinah, about 3 km as the crow flies from the Prophet's Mosque. During the Hijrah, before entering Madinah, the Prophet stayed here among the Banu Amr ibn Awf and built this mosque. It holds a special place in Islamic history as the first mosque that Muslims built openly, in freedom and security.\n\n"
          "According to most scholars, the “mosque founded on piety from the first day” praised in verse 108 of Surat at-Tawbah is Quba Mosque, although some say the Prophet's Mosque is meant. The present building was rebuilt in 1985 under King Fahd; with six large domes and four minarets it can hold more than ten thousand worshippers. Its marble was brought from Türkiye, and its calligraphic bands were written by the Turkish calligrapher Hasan Çelebi.",
      ar: "يقع مسجد قباء في حي قباء جنوب المدينة المنورة، على بعد نحو ثلاثة كيلومترات من المسجد النبوي. وقد نزل النبي صلى الله عليه وسلم في طريق هجرته قبل دخول المدينة عند بني عمرو بن عوف، وبنى هذا المسجد. وله مكانة خاصة في تاريخ الإسلام، فهو أول مسجد بناه المسلمون علانيةً في أمن وحرية.\n\n"
          "وعند أكثر العلماء أن المسجد الذي أُسّس على التقوى من أول يوم، الممدوح في الآية 108 من سورة التوبة، هو مسجد قباء، وقال بعضهم إن المراد المسجد النبوي. وقد أُعيد بناء المسجد الحالي سنة 1985م في عهد الملك فهد، وفيه ست قباب كبيرة وأربع مآذن، ويتسع لأكثر من عشرة آلاف مصلٍّ. وجُلب رخامه من تركيا، وكتب أشرطته الخطية الخطاط التركي حسن جلبي.",
    ),
    tarihce: L10nText(
      tr: "İlk muhacirler, Hz. Peygamber gelmeden önce Kuba'da bir hurma kurutma yerini namaz kılmak için mescit haline getirmişlerdi; Ebû Huzeyfe'nin âzatlısı Sâlim burada imamlık yapıyordu. Resûlullah Kuba'ya ulaşınca bu yeri genişleterek mescidi bina etti. Rivayetlere göre temelin ilk taşını kendisi koymuş, ardından Hz. Ebû Bekir, Hz. Ömer ve Hz. Osman'ın taş koymasını istemiştir. Peygamberimiz inşaatta bir işçi gibi çalışmış, ağır taşları kendisi taşımıştır. Buhârî'deki bir rivayete göre Kuba'da on geceden fazla kalmış ve mescit bu sırada yapılmıştır.\n\n"
          "Kıble Kâbe'ye çevrildikten sonra Hz. Peygamber mescidi yeniden düzenlemiştir. Ömer b. Abdülazîz Medine valiliği sırasında (706-712) mescidi yontma taşla yeniden inşa ettirmiş, minare eklemiştir. Mescit daha sonra Memlükler ve Osmanlılar döneminde defalarca onarılmıştır: Kanûnî Sultan Süleyman 1543'te tavanını ve minaresini yeniletmiş, II. Mustafa 1699'da onarım yaptırmış, II. Mahmud 1829'da kapsamlı bir imar gerçekleştirmiştir.\n\n"
          "1968'de Kral Faysal döneminde genişletilen mescit, 1985'te tamamen yıkılarak eskisinin beş katı büyüklükte yeniden yapılmıştır. Bugün sosyal tesisleriyle birlikte geniş bir alana yayılır.",
      en: "Before the Prophet arrived, the first emigrants had turned a date-drying ground in Quba into a place of prayer; Salim, the freed slave of Abu Hudhayfah, led the prayers there. When the Prophet reached Quba he enlarged this place and built the mosque. According to the narrations he laid the first stone of the foundation himself and then asked Abu Bakr, Umar and Uthman to lay stones. The Prophet worked on the construction like a labourer, carrying heavy stones himself. According to a narration in al-Bukhari he stayed in Quba for more than ten nights, and the mosque was built during that time.\n\n"
          "After the qiblah was turned towards the Kaaba, the Prophet rearranged the mosque. While governor of Madinah (706-712), Umar ibn Abd al-Aziz rebuilt it in dressed stone and added a minaret. The mosque was repaired many times under the Mamluks and the Ottomans: Suleiman the Magnificent renewed its roof and minaret in 1543, Mustafa II restored it in 1699, and Mahmud II carried out extensive works in 1829.\n\n"
          "Enlarged in 1968 under King Faisal, the mosque was completely demolished in 1985 and rebuilt at five times its former size. Today, with its service buildings, it covers a large area.",
      ar: "كان المهاجرون الأوائل قد اتخذوا مربدًا في قباء مصلًّى قبل قدوم النبي صلى الله عليه وسلم، وكان سالم مولى أبي حذيفة يؤمّهم فيه. فلما وصل النبي صلى الله عليه وسلم إلى قباء وسّع المكان وبنى المسجد. وتذكر الروايات أنه وضع أول حجر في أساسه بيده، ثم أمر أبا بكر وعمر وعثمان رضي الله عنهم فوضعوا أحجارهم. وعمل صلى الله عليه وسلم في البناء كأحد العمال يحمل الحجارة الثقيلة بنفسه. وفي رواية البخاري أنه أقام في قباء بضع عشرة ليلة، وفيها بُني المسجد.\n\n"
          "وبعد تحويل القبلة إلى الكعبة أعاد النبي صلى الله عليه وسلم ترتيب المسجد. ثم أعاد عمر بن عبد العزيز بناءه بالحجارة المنحوتة في ولايته على المدينة (706-712م) وأضاف إليه مئذنة. وتوالت عليه الإصلاحات في العهدين المملوكي والعثماني، فجدّد السلطان سليمان القانوني سقفه ومئذنته سنة 1543م، ورمّمه مصطفى الثاني سنة 1699م، وأجرى محمود الثاني فيه عمارة واسعة سنة 1829م.\n\n"
          "ووُسّع المسجد سنة 1968م في عهد الملك فيصل، ثم هُدم كليًا سنة 1985م وأُعيد بناؤه بخمسة أضعاف مساحته السابقة، ويمتد اليوم مع مرافقه على مساحة واسعة.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "622", en: "622", ar: "622م"),
        metin: L10nText(
          tr: "Hz. Peygamber hicret yolunda Kuba'ya ulaştı ve mescidi inşa etti.",
          en: "The Prophet reached Quba on the Hijrah and built the mosque.",
          ar: "وصل النبي صلى الله عليه وسلم قباء في هجرته وبنى المسجد.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "623 sonrası", en: "After 623", ar: "بعد 623م"),
        metin: L10nText(
          tr: "Kıble değişikliğinden sonra mescit Hz. Peygamber tarafından yeniden düzenlendi.",
          en: "After the change of qiblah the Prophet rearranged the mosque.",
          ar: "أعاد النبي صلى الله عليه وسلم ترتيب المسجد بعد تحويل القبلة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "706-712", en: "706-712", ar: "706-712م"),
        metin: L10nText(
          tr: "Ömer b. Abdülazîz mescidi taştan yeniden yaptırdı ve minare ekledi.",
          en: "Umar ibn Abd al-Aziz rebuilt the mosque in stone and added a minaret.",
          ar: "أعاد عمر بن عبد العزيز بناء المسجد بالحجر وأضاف مئذنة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1543", en: "1543", ar: "1543م"),
        metin: L10nText(
          tr: "Kanûnî Sultan Süleyman tavanı ve minareyi yeniletti.",
          en: "Suleiman the Magnificent renewed the roof and minaret.",
          ar: "جدّد السلطان سليمان القانوني السقف والمئذنة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1829", en: "1829", ar: "1829م"),
        metin: L10nText(
          tr: "II. Mahmud döneminde kubbeli örtüyle kapsamlı onarım yapıldı.",
          en: "Extensive restoration with a domed roof under Mahmud II.",
          ar: "عمارة واسعة بسقف من القباب في عهد محمود الثاني.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1985", en: "1985", ar: "1985م"),
        metin: L10nText(
          tr: "Kral Fehd döneminde beş kat genişletilerek bugünkü yapı inşa edildi.",
          en: "The present building, five times larger, was built under King Fahd.",
          ar: "بُني المسجد الحالي بخمسة أضعاف مساحته في عهد الملك فهد.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Kuba Mescidi'nin fazileti hem Kur'an'da hem de hadislerde yer alır. Tevbe sûresinin 108. âyetinde ilk günden takvâ üzerine kurulan ve içinde temizlenmeyi seven insanların bulunduğu bir mescitten söz edilir; âlimlerin çoğu bunun Kuba Mescidi olduğunu kabul eder.\n\n"
          "Hz. Peygamber Medine'de bulunduğu zamanlarda her cumartesi, bazen yürüyerek bazen binek üzerinde Kuba'ya gider ve orada iki rekât namaz kılardı. Evinde abdest alıp Kuba Mescidi'ne gelerek namaz kılan kimseye umre sevabı verileceğini müjdelemiştir. Hz. Ömer de Kuba'yı ziyaret eder ve buraya büyük saygı gösterirdi.",
      en: "The virtue of Quba Mosque is mentioned both in the Qur'an and in the hadith. Verse 108 of Surat at-Tawbah speaks of a mosque founded on piety from the first day, in which there are men who love to purify themselves; most scholars hold that this is Quba Mosque.\n\n"
          "Whenever he was in Madinah, the Prophet went to Quba every Saturday, sometimes walking and sometimes riding, and prayed two rak'ahs there. He gave the glad tidings that whoever purifies himself at home and then comes to Quba Mosque and prays there will have a reward like that of an Umrah. Umar also used to visit Quba and showed it great respect.",
      ar: "ورد فضل مسجد قباء في القرآن والسنة. ففي الآية 108 من سورة التوبة ذِكرُ مسجدٍ أُسّس على التقوى من أول يوم، فيه رجال يحبون أن يتطهروا، وأكثر العلماء على أنه مسجد قباء.\n\n"
          "وكان النبي صلى الله عليه وسلم إذا كان بالمدينة يأتي قباء كل سبت ماشيًا وراكبًا فيصلي فيه ركعتين، وبشّر بأن من تطهّر في بيته ثم أتى مسجد قباء فصلى فيه صلاة كان له كأجر عمرة. وكان عمر رضي الله عنه يزور قباء ويعظّمه.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "لَّمَسْجِدٌ أُسِّسَ عَلَى ٱلتَّقْوَىٰ مِنْ أَوَّلِ يَوْمٍ أَحَقُّ أَن تَقُومَ فِيهِ ۚ فِيهِ رِجَالٌ يُحِبُّونَ أَن يَتَطَهَّرُوا۟ ۚ وَٱللَّهُ يُحِبُّ ٱلْمُطَّهِّرِينَ",
        meal: L10nText(
          tr: "İlk gününden itibaren takvâ üzerine kurulan mescit, içinde namaz kılman için daha uygundur. Orada arınmayı seven insanlar vardır. Allah da arınanları sever.",
          en: "A mosque founded on piety from the first day is more worthy for you to stand in. Within it are men who love to purify themselves, and Allah loves those who purify themselves.",
          ar: "لَمسجدٌ أُسّس على التقوى من أول يوم أحق أن تقوم فيه، فيه رجال يحبون أن يتطهروا، والله يحب المطّهّرين.",
        ),
        kaynak: L10nText(tr: "Tevbe 9/108", en: "Qur'an 9:108", ar: "سورة التوبة، الآية 108"),
      ),
      GeziAlinti(
        arapca: "مَنْ تَطَهَّرَ فِي بَيْتِهِ، ثُمَّ أَتَى مَسْجِدَ قُبَاءٍ، فَصَلَّى فِيهِ صَلاَةً، كَانَ لَهُ كَأَجْرِ عُمْرَةٍ",
        meal: L10nText(
          tr: "Kim evinde abdest alır, sonra Kuba Mescidi'ne gelip orada bir namaz kılarsa, ona bir umre sevabı gibi sevap vardır.",
          en: "Whoever purifies himself in his house, then comes to Quba Mosque and offers a prayer in it, will have a reward like that of an Umrah.",
          ar: "من تطهّر في بيته ثم أتى مسجد قباء فصلى فيه صلاة كان له كأجر عمرة.",
        ),
        kaynak: L10nText(tr: "İbn Mâce, İkāmetü's-salât, 197 (No. 1412)", en: "Sunan Ibn Majah 1412", ar: "سنن ابن ماجه، 1412"),
      ),
      GeziAlinti(
        arapca: "كَانَ النَّبِيُّ صلى الله عليه وسلم يَأْتِي مَسْجِدَ قُبَاءٍ كُلَّ سَبْتٍ مَاشِيًا وَرَاكِبًا",
        meal: L10nText(
          tr: "Hz. Peygamber her cumartesi, yürüyerek ve binek üzerinde Kuba Mescidi'ne gelirdi.",
          en: "The Prophet used to come to Quba Mosque every Saturday, walking and riding.",
          ar: "كان النبي صلى الله عليه وسلم يأتي مسجد قباء كل سبت ماشيًا وراكبًا.",
        ),
        kaynak: L10nText(tr: "Buhârî, No. 1193", en: "Sahih al-Bukhari 1193", ar: "صحيح البخاري، 1193"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Hadisteki müjdeye uygun olarak otelinizde abdest alıp gelin ve mescitte iki rekât namaz kılın.",
        en: "In line with the hadith, make wudu at your hotel before coming and pray two rak'ahs in the mosque.",
        ar: "اتباعًا للحديث، توضأ في فندقك قبل المجيء وصلِّ في المسجد ركعتين.",
      ),
      L10nText(
        tr: "Mümkünse cumartesi günü ziyaret edin; sünnete uymak niyetiyle gitmek güzeldir.",
        en: "If possible, visit on a Saturday; it is good to go with the intention of following the Sunnah.",
        ar: "زره يوم السبت إن تيسر، فحسنٌ أن تقصده بنية اتباع السنة.",
      ),
      L10nText(
        tr: "Mescid-i Nebevî ile Kuba arasında yaklaşık 3 km'lik yaya yolu vardır; serin saatlerde yürüyerek gidilebilir.",
        en: "There is a pedestrian route of about 3 km between the Prophet's Mosque and Quba; it can be walked in the cooler hours.",
        ar: "بين المسجد النبوي وقباء ممشى للمشاة طوله نحو ثلاثة كيلومترات يمكن قطعه سيرًا في الأوقات المعتدلة.",
      ),
      L10nText(
        tr: "Kadınlar için ayrı giriş ve namaz bölümü vardır; tabelalara dikkat edin.",
        en: "There is a separate entrance and prayer area for women; follow the signs.",
        ar: "للنساء مدخل ومصلّى منفصلان، فانتبه إلى اللوحات الإرشادية.",
      ),
      L10nText(
        tr: "Mescidin çevresinde hurma ve hediyelik eşya satan dükkânlar vardır; alışverişi namaz vakitlerinin dışında yapın.",
        en: "There are shops selling dates and souvenirs around the mosque; do your shopping outside prayer times.",
        ar: "حول المسجد محلات للتمور والهدايا، فاجعل التسوق خارج أوقات الصلاة.",
      ),
    ],
    uygunSaat: L10nText(
      tr: "Cumartesi sabahı (sünnete uygun)",
      en: "Saturday morning (following the Sunnah)",
      ar: "صباح السبت (اتباعًا للسنة)",
    ),
    ziyaretSuresi: L10nText(tr: "45-60 dakika", en: "45-60 minutes", ar: "45 إلى 60 دقيقة"),
    anlatim: L10nText(
      tr: "Şimdi İslâm tarihinin ilk mescidi olan Kuba Mescidi'ndeyiz. Hicret yolculuğunun sonunda, Mekke'den yola çıkan Peygamber Efendimiz Medine'ye girmeden önce burada, Amr bin Avf oğullarının yanında konakladı. Kendisinden önce gelen muhacirler bu bölgede bir hurma kurutma yerini namazgâh edinmişlerdi. Resûlullah bu yeri genişletti ve Kuba Mescidi'ni inşa etti.\n\n"
          "Rivayetlere göre Peygamberimiz temelin ilk taşını kendi eliyle koydu. Ardından Hz. Ebû Bekir, Hz. Ömer ve Hz. Osman'a da birer taş koymalarını söyledi. İnşaatta bir işçi gibi çalıştı, ağır taşları omuzunda taşıdı. Yardım etmek isteyen sahâbîlere, gidip başka birine yardım etmelerini söylediği nakledilir. Bu mescit, Müslümanların hür ve güvenli bir ortamda, herkese açık olarak inşa ettikleri ilk mesciddir.\n\n"
          "Kur'an-ı Kerim'de Tevbe sûresinde, ilk günden takvâ üzerine kurulan ve içinde temizlenmeyi seven insanların bulunduğu bir mescitten söz edilir. Âlimlerin çoğu bu mescidin Kuba olduğunu kabul eder. Peygamber Efendimiz Medine'de yaşadığı yıllarda her cumartesi, bazen yürüyerek bazen binek üzerinde buraya gelir, iki rekât namaz kılardı.\n\n"
          "Resûlullah bir hadisinde şöyle buyurmuştur. Kim evinde abdest alır, sonra Kuba Mescidi'ne gelip burada bir namaz kılarsa, ona bir umre sevabı gibi sevap vardır. Bu yüzden ziyaretçiler otellerinde abdest alarak buraya gelir ve iki rekât namaz kılarlar.\n\n"
          "Asırlar boyunca bu mescit Ömer bin Abdülaziz'den Osmanlı sultanlarına kadar pek çok kez yenilendi. Bugün gördüğünüz beyaz yapı 1985 yılında yeniden inşa edildi. Mermerleri Türkiye'den getirildi, duvarlardaki yazıları Türk hattat Hasan Çelebi yazdı. Burada kılacağınız iki rekât namazı, Peygamber Efendimizin sünnetine uymanın huzuruyla eda etmenizi dileriz.",
      en: "We are now at Quba Mosque, the first mosque in the history of Islam. At the end of the Hijrah, the journey from Makkah, the Prophet stayed here among the Banu Amr ibn Awf before entering Madinah. The emigrants who had arrived before him had made a date-drying ground in this area their place of prayer. The Prophet enlarged it and built Quba Mosque.\n\n"
          "According to the narrations, the Prophet laid the first stone of the foundation with his own hand. Then he asked Abu Bakr, Umar and Uthman to lay a stone each. He worked on the building like a labourer and carried heavy stones on his shoulder. It is related that when Companions wished to help him, he told them to go and help someone else. This was the first mosque that Muslims built openly, in freedom and security.\n\n"
          "In Surat at-Tawbah the Qur'an speaks of a mosque founded on piety from the first day, in which there are men who love to purify themselves. Most scholars hold that this mosque is Quba. During his years in Madinah the Prophet came here every Saturday, sometimes walking and sometimes riding, and prayed two rak'ahs.\n\n"
          "In one hadith the Prophet said that whoever purifies himself at home, then comes to Quba Mosque and prays here, will have a reward like that of an Umrah. That is why visitors make wudu at their hotels before coming here and pray two rak'ahs.\n\n"
          "Over the centuries the mosque was rebuilt many times, from Umar ibn Abd al-Aziz to the Ottoman sultans. The white building you see today was rebuilt in 1985. Its marble was brought from Türkiye, and the calligraphy on its walls was written by the Turkish calligrapher Hasan Çelebi. May you pray your two rak'ahs here with the peace of following the Sunnah of the Prophet.",
      ar: "نحن الآن في مسجد قباء، أول مسجد في تاريخ الإسلام. ففي نهاية رحلة الهجرة من مكة نزل النبي صلى الله عليه وسلم هنا عند بني عمرو بن عوف قبل أن يدخل المدينة. وكان المهاجرون الذين سبقوه قد اتخذوا مربدًا في هذه الناحية مصلًّى، فوسّعه النبي صلى الله عليه وسلم وبنى مسجد قباء.\n\n"
          "وتذكر الروايات أن النبي صلى الله عليه وسلم وضع أول حجر في أساسه بيده، ثم أمر أبا بكر وعمر وعثمان رضي الله عنهم أن يضع كل منهم حجرًا. وعمل في البناء كأحد العمال يحمل الحجارة الثقيلة على عاتقه، ويُروى أنه كان إذا أراد أحد الصحابة أن يعينه قال له اذهب فأعن غيري. وهذا أول مسجد بناه المسلمون علانيةً في أمن وحرية.\n\n"
          "وفي سورة التوبة ذكر القرآن الكريم مسجدًا أُسّس على التقوى من أول يوم، فيه رجال يحبون أن يتطهروا، وأكثر العلماء على أنه مسجد قباء. وكان النبي صلى الله عليه وسلم في سنوات إقامته بالمدينة يأتيه كل سبت ماشيًا وراكبًا فيصلي فيه ركعتين.\n\n"
          "وقال صلى الله عليه وسلم إن من تطهّر في بيته ثم أتى مسجد قباء فصلى فيه صلاة كان له كأجر عمرة. ولذلك يتوضأ الزوار في فنادقهم ثم يأتون إلى هنا ويصلون ركعتين.\n\n"
          "وعلى مر القرون جُدّد هذا المسجد مرات كثيرة، من عمر بن عبد العزيز إلى السلاطين العثمانيين. والمبنى الأبيض الذي ترونه اليوم أُعيد بناؤه سنة 1985م، وجُلب رخامه من تركيا، وكتب الخطوط على جدرانه الخطاط التركي حسن جلبي. نسأل الله أن تؤدوا ركعتيكم هنا بطمأنينة اتباع سنة النبي صلى الله عليه وسلم.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Mescid-i Kubâ”", "https://islamansiklopedisi.org.tr/mescid-i-kuba"),
      GeziKaynak("Kur'an, Tevbe 9/108 (quran.com)", "https://quran.com/9/108"),
      GeziKaynak("Sahîh-i Buhârî 1193 (sunnah.com)", "https://sunnah.com/bukhari:1193"),
      GeziKaynak("Sünen-i İbn Mâce 1412 (sunnah.com)", "https://sunnah.com/ibnmajah:1412"),
      GeziKaynak("OpenStreetMap, relation 18051738", "https://www.openstreetmap.org/relation/18051738"),
    ],
  ),

  // ------------------------------------------------------------------ 3
  GeziYeri(
    id: 'kibleteyn',
    bolge: GeziBolge.medine,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Mescid-i Kıbleteyn", en: "Masjid al-Qiblatayn (Mosque of the Two Qiblahs)", ar: "مسجد القبلتين"),
    arapcaAd: L10nText.same("مسجد القبلتين"),
    altBaslik: L10nText(
      tr: "Kıblenin Kâbe'ye çevrildiği mescit",
      en: "Where the qiblah was turned to the Kaaba",
      ar: "المسجد الذي حُوّلت فيه القبلة إلى الكعبة",
    ),
    sehir: L10nText(tr: "Medine, kuzeybatı", en: "Madinah, north-west", ar: "المدينة المنورة، الشمال الغربي"),
    konum: LatLng(24.484157, 39.578811), // OSM way 66510098
    genel: L10nText(
      tr: "Mescid-i Kıbleteyn, Medine'nin kuzeybatısında, Vebere harresi denilen volkanik arazide, Mescid-i Nebevî'ye karayoluyla yaklaşık 5 km uzaklıktadır. İlk adı, bulunduğu kabile bölgesinden dolayı Benî Selime Mescidi idi. Hz. Peygamber burada öğle veya ikindi namazını kıldırırken Bakara sûresinin 144. âyeti nâzil olmuş ve kıble Kudüs'teki Mescid-i Aksâ'dan Mekke'deki Kâbe'ye çevrilmiştir. Bu yüzden mescit “iki kıbleli mescit” anlamına gelen bugünkü adını almıştır.\n\n"
          "Bugünkü yapı 1987'de Suudi yönetimi tarafından genişletilerek yeniden inşa edilmiştir. Yaklaşık 3920 m²'lik alanı, iki kubbesi ve kıble yönündeki iki minaresiyle büyük bir camidir. İç süslemelerindeki celî sülüs ve kûfî yazılar Türk hattat Hasan Çelebi'ye aittir.",
      en: "Masjid al-Qiblatayn lies north-west of Madinah, on the volcanic ground known as the Harrat al-Wabarah, about 5 km by road from the Prophet's Mosque. It was first called the Mosque of Banu Salimah, after the tribal area where it stands. While the Prophet was leading the noon or afternoon prayer here, verse 144 of Surat al-Baqarah was revealed and the qiblah was turned from al-Masjid al-Aqsa in Jerusalem to the Kaaba in Makkah. Hence the mosque received its present name, meaning “the mosque of the two qiblahs”.\n\n"
          "The present building was enlarged and rebuilt by the Saudi authorities in 1987. With an area of about 3,920 m², two domes and two minarets on the qiblah side, it is a large mosque. The monumental thuluth and Kufic calligraphy inside is the work of the Turkish calligrapher Hasan Çelebi.",
      ar: "يقع مسجد القبلتين شمال غرب المدينة المنورة في حرّة الوبرة، على بعد نحو خمسة كيلومترات من المسجد النبوي بالطريق. وكان اسمه الأول مسجد بني سلِمة نسبةً إلى ديار القبيلة التي يقع فيها. وفيه نزلت الآية 144 من سورة البقرة والنبي صلى الله عليه وسلم يصلي الظهر أو العصر، فتحوّلت القبلة من المسجد الأقصى ببيت المقدس إلى الكعبة المشرفة بمكة، ومن ثم سُمّي مسجد القبلتين.\n\n"
          "وقد وُسّع المبنى الحالي وأُعيد بناؤه سنة 1987م، وتبلغ مساحته نحو 3920 مترًا مربعًا، وله قبتان ومئذنتان في جهة القبلة. وزخارفه الخطية بخط الثلث الجلي والكوفي من عمل الخطاط التركي حسن جلبي.",
    ),
    tarihce: L10nText(
      tr: "Hz. Peygamber Medine'ye hicretinden sonra yaklaşık on altı veya on yedi ay boyunca Kudüs'e yönelerek namaz kıldı. Kur'an'da bildirildiğine göre o, Kâbe'nin kıble olmasını arzu ediyor ve yüzünü göğe çeviriyordu. Bakara sûresinin 144. âyetiyle kıble Kâbe'ye çevrildi. Kaynaklar bu olayın Benî Selime yurdundaki mescitte, namazın içinde yaşandığını ve cemaatin namazı bozmadan Kâbe yönüne döndüğünü nakleder. Bu tarihten sonra Hz. Peygamber'in unvanları arasına “imâmü'l-kıbleteyn” (iki kıblenin imamı) da eklenmiştir.\n\n"
          "Ömer b. Abdülazîz Medine valiliği sırasında Hz. Peygamber'in namaz kıldığı bütün mescitlerle birlikte Kıbleteyn'i de yeniledi. Memlükler döneminde 1488'de tavanı yenilenip avlusu duvarla çevrildi. Kanûnî Sultan Süleyman döneminde (1543-44) önemli bir imar gördü; 1662'de buraya gelen seyyah Ayyâşî mescidi bağ ve bahçeler içinde bakımlı bir cami olarak anlatır. İbrâhim Rifat Paşa 1901'de mescidin harap olduğunu bildirmiştir.\n\n"
          "1987'deki Suudi yenilemesinde Kâbe kıblesine mihrap yapılmış, eski Kudüs kıblesi tarafına bir süre âyetin meali yazılı bir pano konmuş, bu pano daha sonra kaldırılmıştır.",
      en: "After his emigration to Madinah, the Prophet prayed facing Jerusalem for about sixteen or seventeen months. As the Qur'an relates, he longed for the Kaaba to be the qiblah and would turn his face towards the sky. With verse 144 of Surat al-Baqarah the qiblah was turned to the Kaaba. The sources relate that this happened in the mosque in the territory of Banu Salimah, during the prayer itself, and that the congregation turned towards the Kaaba without breaking their prayer. From then on, the title “imam of the two qiblahs” was added to the Prophet's names.\n\n"
          "While governor of Madinah, Umar ibn Abd al-Aziz renovated al-Qiblatayn together with all the mosques in which the Prophet had prayed. In the Mamluk period, in 1488, its roof was renewed and its courtyard was enclosed with a wall. It was significantly rebuilt under Suleiman the Magnificent (1543-44); the traveller al-Ayyashi, who came here in 1662, describes it as a well-kept mosque among vineyards and gardens. In 1901 Ibrahim Rifat Pasha reported that it was in ruins.\n\n"
          "In the Saudi renovation of 1987 a mihrab was built towards the Kaaba, and for a time a panel with translations of the verse was placed on the side of the former qiblah towards Jerusalem; this panel was later removed.",
      ar: "صلى النبي صلى الله عليه وسلم بعد هجرته إلى المدينة نحو ستة عشر أو سبعة عشر شهرًا مستقبلًا بيت المقدس، وكان كما أخبر القرآن يحب أن تكون الكعبة قبلته ويقلّب وجهه في السماء، فنزلت الآية 144 من سورة البقرة بتحويل القبلة إلى الكعبة. وتذكر المصادر أن ذلك كان في مسجد ديار بني سلِمة أثناء الصلاة، وأن المصلين استداروا إلى الكعبة دون أن يقطعوا صلاتهم. ومنذ ذلك الحين أُضيف إلى ألقاب النبي صلى الله عليه وسلم لقب «إمام القبلتين».\n\n"
          "وجدّد عمر بن عبد العزيز في ولايته على المدينة مسجد القبلتين مع سائر المساجد التي صلى فيها النبي صلى الله عليه وسلم. وفي العهد المملوكي سنة 1488م جُدّد سقفه وأُحيط فناؤه بجدار. ثم عُمّر عمارةً مهمة في عهد السلطان سليمان القانوني (1543-1544م)، ووصفه الرحالة العياشي الذي زاره سنة 1662م بأنه مسجد عامر بين الكروم والبساتين. وذكر إبراهيم رفعت باشا سنة 1901م أنه كان متهدمًا.\n\n"
          "وفي التجديد السعودي سنة 1987م بُني المحراب جهة الكعبة، ووُضعت مدةً لوحة فيها ترجمات الآية في جهة القبلة القديمة نحو بيت المقدس، ثم أُزيلت بعد ذلك.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "622-623", en: "622-623", ar: "622-623م"),
        metin: L10nText(
          tr: "Hicretten sonra Müslümanlar yaklaşık 16-17 ay Kudüs'e yönelerek namaz kıldı.",
          en: "After the Hijrah, Muslims prayed facing Jerusalem for about 16-17 months.",
          ar: "صلى المسلمون بعد الهجرة نحو ستة عشر أو سبعة عشر شهرًا إلى بيت المقدس.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hicrî 2 (624)", en: "2 AH (624)", ar: "2هـ (624م)"),
        metin: L10nText(
          tr: "Bakara 2/144 nâzil oldu ve kıble Kâbe'ye çevrildi; mescit “Kıbleteyn” adını aldı.",
          en: "Al-Baqarah 2:144 was revealed and the qiblah was turned to the Kaaba; the mosque was named “al-Qiblatayn”.",
          ar: "نزلت الآية 144 من سورة البقرة وحُوّلت القبلة إلى الكعبة، فسُمّي المسجد مسجد القبلتين.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "706-712", en: "706-712", ar: "706-712م"),
        metin: L10nText(
          tr: "Ömer b. Abdülazîz mescidi yeniledi.",
          en: "Umar ibn Abd al-Aziz renovated the mosque.",
          ar: "جدّد عمر بن عبد العزيز المسجد.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1543-1544", en: "1543-1544", ar: "1543-1544م"),
        metin: L10nText(
          tr: "Kanûnî Sultan Süleyman döneminde kapsamlı imar.",
          en: "Major rebuilding under Suleiman the Magnificent.",
          ar: "عمارة واسعة في عهد السلطان سليمان القانوني.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1987", en: "1987", ar: "1987م"),
        metin: L10nText(
          tr: "Suudi yönetimi mescidi genişleterek bugünkü haliyle yeniden inşa etti.",
          en: "The Saudi authorities enlarged the mosque and rebuilt it in its present form.",
          ar: "وسّعت الحكومة السعودية المسجد وأعادت بناءه على هيئته الحالية.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Kıbleteyn Mescidi, kıblenin değişmesi gibi İslâm tarihinin önemli bir dönüm noktasına tanıklık ettiği için ziyaret edilir. Kur'an, kıblenin değiştirilmesini Peygamber'e uyanların imtihanı olarak anlatır ve müminlerin bu emre hemen teslim olduğunu bildirir. Namaz içinde Kâbe'ye dönen sahâbîlerin bu teslimiyeti, Allah'ın emrine koşulsuz itaatin güzel bir örneği olarak hatırlanır.\n\n"
          "Bu mescide mahsus özel bir sevaba dair sahih bir rivayet yoktur; burada diğer mescitlerde olduğu gibi tahiyyetü'l-mescid namazı kılınır.",
      en: "Al-Qiblatayn Mosque is visited because it witnessed a turning point in Islamic history, the change of the qiblah. The Qur'an describes the change of qiblah as a test of who follows the Messenger and tells that the believers submitted to this command at once. The submission of the Companions who turned towards the Kaaba in the middle of their prayer is remembered as a fine example of unconditional obedience to the command of Allah.\n\n"
          "There is no authentic narration of a special reward specific to this mosque; as in any other mosque, the prayer of tahiyyat al-masjid is offered here.",
      ar: "يُزار مسجد القبلتين لأنه شهد منعطفًا مهمًا في تاريخ الإسلام هو تحويل القبلة. وقد ذكر القرآن أن تحويل القبلة كان ابتلاءً ليُعلم من يتبع الرسول، وأخبر بأن المؤمنين سلّموا لهذا الأمر من فورهم. ويُذكر استدارة الصحابة إلى الكعبة وهم في صلاتهم مثالًا حسنًا على الطاعة المطلقة لأمر الله.\n\n"
          "ولم يرد في فضل خاص بهذا المسجد حديث صحيح، ويُصلّى فيه تحية المسجد كسائر المساجد.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "قَدْ نَرَىٰ تَقَلُّبَ وَجْهِكَ فِى ٱلسَّمَآءِ ۖ فَلَنُوَلِّيَنَّكَ قِبْلَةً تَرْضَىٰهَا ۚ فَوَلِّ وَجْهَكَ شَطْرَ ٱلْمَسْجِدِ ٱلْحَرَامِ ۚ وَحَيْثُ مَا كُنتُمْ فَوَلُّوا۟ وُجُوهَكُمْ شَطْرَهُۥ",
        meal: L10nText(
          tr: "Yüzünü göğe çevirip durduğunu görüyoruz. Elbette seni hoşnut olacağın bir kıbleye çevireceğiz. Artık yüzünü Mescid-i Haram tarafına çevir. Nerede olursanız yüzlerinizi o tarafa çevirin.",
          en: "We have certainly seen the turning of your face towards the heaven, and We will surely turn you to a qiblah with which you will be pleased. So turn your face towards al-Masjid al-Haram. And wherever you are, turn your faces towards it.",
          ar: "قد نرى تقلّب وجهك في السماء، فلنولّينّك قبلة ترضاها، فولّ وجهك شطر المسجد الحرام، وحيث ما كنتم فولّوا وجوهكم شطره.",
        ),
        kaynak: L10nText(tr: "Bakara 2/144", en: "Qur'an 2:144", ar: "سورة البقرة، الآية 144"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Mescide girdiğinizde iki rekât tahiyyetü'l-mescid namazı kılın.",
        en: "On entering the mosque, pray two rak'ahs of tahiyyat al-masjid.",
        ar: "صلِّ ركعتي تحية المسجد عند دخولك.",
      ),
      L10nText(
        tr: "Bugün mescitte yalnız Kâbe yönünde bir mihrap vardır; eski kıblenin yönünü göstermek için ayrı bir işaret bulunmayabilir.",
        en: "Today the mosque has only one mihrab, facing the Kaaba; there may be no separate marker for the direction of the former qiblah.",
        ar: "في المسجد اليوم محراب واحد جهة الكعبة، وقد لا توجد علامة منفصلة لجهة القبلة الأولى.",
      ),
      L10nText(
        tr: "Kıbleteyn genellikle şehir turlarında Uhud ve Yedi Mescitler ile birlikte ziyaret edilir; namaz vaktine denk getirmek güzel olur.",
        en: "Al-Qiblatayn is usually visited on city tours together with Uhud and the Seven Mosques; it is good to arrive at a prayer time.",
        ar: "يُزار مسجد القبلتين عادةً في الجولات مع أحد والمساجد السبعة، ويحسن أن توافق زيارته وقت صلاة.",
      ),
      L10nText(
        tr: "Kadınlar bölümüne ayrı kapıdan girilir.",
        en: "The women's section is entered through a separate door.",
        ar: "يُدخل إلى مصلّى النساء من باب منفصل.",
      ),
    ],
    ziyaretSuresi: L10nText(tr: "20-30 dakika", en: "20-30 minutes", ar: "20 إلى 30 دقيقة"),
    anlatim: L10nText(
      tr: "Şimdi Mescid-i Kıbleteyn'deyiz, yani iki kıbleli mescitte. Hicretin ilk yıllarında Müslümanlar namazlarını Kudüs'teki Mescid-i Aksâ'ya yönelerek kılıyorlardı. Peygamber Efendimiz Medine'de on altı veya on yedi ay boyunca bu şekilde namaz kıldırdı. Ancak gönlü, atası Hz. İbrahim'in inşa ettiği Kâbe'ye yönelmeyi arzu ediyordu ve yüzünü sık sık göğe çeviriyordu.\n\n"
          "Kaynakların bildirdiğine göre bir gün Resûlullah, Benî Selime kabilesinin yurdundaki bu mescitte namaz kıldırırken Bakara sûresinin yüz kırk dördüncü âyeti indi. Âyette şöyle buyruluyordu. Yüzünü göğe çevirip durduğunu görüyoruz. Seni hoşnut olacağın bir kıbleye çevireceğiz. Artık yüzünü Mescid-i Haram tarafına çevir.\n\n"
          "Peygamber Efendimiz namazın içinde Kâbe'ye döndü, arkasındaki cemaat de hiç tereddüt etmeden onunla birlikte döndü. Namazın bir kısmı Kudüs'e, bir kısmı Mekke'ye doğru kılındı. İşte bu yüzden bu mescide iki kıbleli mescit denildi. Peygamberimize de iki kıblenin imamı unvanı verildi.\n\n"
          "Asırlar boyunca mescit Ömer bin Abdülaziz, Memlükler ve Kanûnî Sultan Süleyman tarafından yenilendi. Bugün gördüğünüz beyaz yapı 1987 yılında yeniden inşa edildi. İçerideki zarif yazılar, Kuba Mescidi'nde de imzası bulunan Türk hattat Hasan Çelebi'ye aittir.\n\n"
          "Burada kılacağınız iki rekât namazda, sahâbîlerin Allah'ın emrine gösterdiği o anlık teslimiyeti hatırlamak ne güzel olur. Onlar soru sormadan, tereddüt etmeden döndüler. Bizim için de bu mescit, emre teslimiyetin sessiz bir hatırlatıcısıdır.",
      en: "We are now at Masjid al-Qiblatayn, the mosque of the two qiblahs. In the first years after the Hijrah, Muslims prayed facing al-Masjid al-Aqsa in Jerusalem. In Madinah the Prophet led the prayers in this way for sixteen or seventeen months. Yet his heart longed to face the Kaaba, built by his forefather Abraham, and he would often turn his face towards the sky.\n\n"
          "According to the sources, one day while the Prophet was leading the prayer in this mosque in the land of the Banu Salimah, verse one hundred and forty-four of Surat al-Baqarah was revealed. The verse said: We have certainly seen the turning of your face towards the heaven. We will surely turn you to a qiblah with which you will be pleased. So turn your face towards al-Masjid al-Haram.\n\n"
          "The Prophet turned towards the Kaaba in the middle of the prayer, and the congregation behind him turned with him without hesitation. Part of that prayer was offered towards Jerusalem and part towards Makkah. This is why the mosque came to be called the mosque of the two qiblahs, and the Prophet was given the title imam of the two qiblahs.\n\n"
          "Over the centuries the mosque was renovated by Umar ibn Abd al-Aziz, the Mamluks and Suleiman the Magnificent. The white building you see today was rebuilt in 1987. The elegant calligraphy inside is by the Turkish calligrapher Hasan Çelebi, whose work can also be seen at Quba Mosque.\n\n"
          "As you pray two rak'ahs here, it is beautiful to remember the instant submission of the Companions to the command of Allah. They turned without asking, without hesitating. For us too, this mosque is a quiet reminder of surrender to the divine command.",
      ar: "نحن الآن في مسجد القبلتين. في السنوات الأولى بعد الهجرة كان المسلمون يصلّون مستقبلين المسجد الأقصى في بيت المقدس، وصلى النبي صلى الله عليه وسلم في المدينة على ذلك ستة عشر أو سبعة عشر شهرًا. وكان قلبه يتوق إلى أن يستقبل الكعبة التي بناها أبوه إبراهيم عليه السلام، فكان يقلّب وجهه في السماء.\n\n"
          "وتذكر المصادر أن النبي صلى الله عليه وسلم كان يصلي بالناس يومًا في هذا المسجد في ديار بني سلِمة، فنزلت الآية الرابعة والأربعون بعد المئة من سورة البقرة. قال الله تعالى: قد نرى تقلّب وجهك في السماء، فلنولّينّك قبلة ترضاها، فولّ وجهك شطر المسجد الحرام.\n\n"
          "فاستدار النبي صلى الله عليه وسلم في صلاته نحو الكعبة، واستدار معه المصلون خلفه دون تردد. فكان بعض تلك الصلاة إلى بيت المقدس وبعضها إلى مكة. ولهذا سُمّي المسجد مسجد القبلتين، ولُقّب النبي صلى الله عليه وسلم بإمام القبلتين.\n\n"
          "وعلى مر القرون جدّده عمر بن عبد العزيز والمماليك والسلطان سليمان القانوني. والمبنى الأبيض الذي ترونه اليوم أُعيد بناؤه سنة 1987م. والخطوط الأنيقة في داخله للخطاط التركي حسن جلبي الذي تُرى أعماله أيضًا في مسجد قباء.\n\n"
          "وما أجمل أن تتذكروا وأنتم تصلّون هنا ركعتين تلك الطاعة الفورية من الصحابة لأمر الله. لقد استداروا دون سؤال ودون تردد. وهذا المسجد تذكير هادئ لنا بالتسليم لأمر الله.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Mescid-i Kıbleteyn”", "https://islamansiklopedisi.org.tr/mescid-i-kibleteyn"),
      GeziKaynak("TDV İslâm Ansiklopedisi, “Kıble”", "https://islamansiklopedisi.org.tr/kible"),
      GeziKaynak("Kur'an, Bakara 2/144 (quran.com)", "https://quran.com/2/144"),
      GeziKaynak("OpenStreetMap, way 66510098", "https://www.openstreetmap.org/way/66510098"),
    ],
  ),

  // ------------------------------------------------------------------ 4
  GeziYeri(
    id: 'uhud',
    bolge: GeziBolge.medine,
    tur: GeziTur.savasAlani,
    ad: L10nText(tr: "Uhud Dağı ve Uhud Şehitliği", en: "Mount Uhud and the Martyrs of Uhud", ar: "جبل أحد ومقبرة شهداء أحد"),
    arapcaAd: L10nText.same("جبل أُحُد"),
    altBaslik: L10nText(
      tr: "Hz. Hamza ve Uhud şehitleri, Okçular Tepesi",
      en: "Hamzah and the martyrs, the Archers' Hill",
      ar: "حمزة وشهداء أحد وجبل الرماة",
    ),
    sehir: L10nText(tr: "Medine, kuzey", en: "Madinah, north", ar: "المدينة المنورة، الشمال"),
    konum: LatLng(24.5038, 39.611752), // OSM way 444240032 (Uhud Şehitliği)
    genel: L10nText(
      tr: "Uhud Dağı, Medine'nin kuzeyinde, Mescid-i Nebevî'ye yaklaşık 5 km uzaklıktadır. Çevredeki dağ silsilelerinden ayrı ve tek başına durduğu için bu adı aldığı anlaşılmaktadır. Yaklaşık 8 km uzunluğundaki dağ, Medine'den bakıldığında koyu kırmızı bir görünüme sahiptir. Hz. Peygamber Uhud için “Bu, bizi seven ve bizim de sevdiğimiz bir dağdır” buyurmuştur.\n\n"
          "Dağın eteğinde, 625 yılındaki Uhud Gazvesi'nde şehit düşen sahâbîlerin defnedildiği Uhud Şehitliği (Meşhed-i Uhud) bulunur. Hz. Peygamber'in amcası, “şehitlerin efendisi” diye anılan Hz. Hamza, Mus'ab b. Umeyr ve Abdullah b. Cahş burada yatmaktadır. Şehitliğin hemen karşısındaki küçük tepe Ayneyn ya da bugünkü adıyla Okçular Tepesi'dir (Cebelürrumât).",
      en: "Mount Uhud lies north of Madinah, about 5 km from the Prophet's Mosque. It appears to have taken its name from standing alone, apart from the surrounding ranges. The mountain, about 8 km long, looks dark red when seen from Madinah. The Prophet said of it: “This is a mountain that loves us and we love it.”\n\n"
          "At the foot of the mountain lies the cemetery of the martyrs of Uhud, where the Companions who fell in the Battle of Uhud in 625 were buried. Hamzah, the Prophet's uncle known as the “master of the martyrs”, Mus'ab ibn Umayr and Abdullah ibn Jahsh rest here. The small hill right across from the cemetery is Aynayn, known today as the Archers' Hill (Jabal ar-Rumah).",
      ar: "يقع جبل أحد شمال المدينة المنورة على بعد نحو خمسة كيلومترات من المسجد النبوي، ويبدو أنه سُمّي بذلك لتوحّده وانفراده عن سلاسل الجبال المحيطة. ويبلغ طوله نحو ثمانية كيلومترات، ويظهر من المدينة بلون أحمر داكن. وقد قال فيه النبي صلى الله عليه وسلم: «هذا جبل يحبنا ونحبه».\n\n"
          "وفي سفح الجبل مقبرة شهداء أحد التي دُفن فيها الصحابة الذين استُشهدوا في غزوة أحد سنة 3هـ (625م)، وفيها حمزة بن عبد المطلب عم النبي صلى الله عليه وسلم الملقب بسيد الشهداء، ومصعب بن عمير، وعبد الله بن جحش رضي الله عنهم. والتلّ الصغير المقابل للمقبرة هو جبل عينين المعروف اليوم بجبل الرماة.",
    ),
    tarihce: L10nText(
      tr: "Bedir'de ağır bir yenilgiye uğrayan Mekkeli müşrikler intikam için bir yıl boyunca hazırlandı ve Ebû Süfyân kumandasında 3000 kişilik bir orduyla Medine'nin kuzeyine geldi. Hz. Peygamber sahâbîlerle istişare etti; kendisi şehirde kalıp savunmayı tercih ettiği halde çoğunluğun görüşüne uyarak şehir dışında savaşmaya karar verildi. 1000 kişilik İslâm ordusundan münafık Abdullah b. Übey 300 kişiyle ayrılınca sayı 700'e düştü.\n\n"
          "Şevval 3 (Mart 625) tarihinde ordu arkasını Uhud Dağı'na verdi. Hz. Peygamber, Abdullah b. Cübeyr komutasındaki elli okçuyu Ayneyn tepesine yerleştirdi ve galip gelinse bile ikinci bir emre kadar yerlerinden ayrılmamalarını emretti. Savaşın başında Müslümanlar üstün geldi; ancak okçuların çoğu düşmanın kaçtığını görünce ganimet için yerlerini terk etti. Hâlid b. Velîd'in süvarileri tepenin arkasından dolaşarak Müslümanları arkadan vurdu.\n\n"
          "Bu karışıklıkta Hz. Hamza, Vahşî tarafından şehit edildi; Hz. Peygamber yüzünden ve dişinden yaralandı, sancaktar Mus'ab b. Umeyr şehit oldu. Peygamber'in öldürüldüğü şayiası yayılınca Müslümanlar dağıldı; Kâ'b b. Mâlik'in “Müjde, Resûlullah burada!” diye haykırmasıyla toparlanıp Uhud kayalıklarına çekildiler. Yaralı olmasına rağmen Hz. Peygamber “Allahım, kavmime hidayet et, çünkü onlar bilmiyorlar” diye dua etti.\n\n"
          "Bu savaşta yetmiş sahâbî şehit oldu. Şehitler düştükleri yerde, ikişer üçer kişi bir kabre ve elbiseleriyle defnedildi. Hz. Peygamber Uhud şehitlerini her yıl ziyaret edip onlar için dua etti; halifeler de bu ziyareti sürdürdü. Kur'an'da Âl-i İmrân sûresinin pek çok âyeti Uhud hakkındadır.",
      en: "After their heavy defeat at Badr, the Makkan polytheists prepared for revenge for a whole year and came to the north of Madinah with an army of 3,000 under Abu Sufyan. The Prophet consulted his Companions; although he himself preferred to stay in the city and defend it, the decision was made, in line with the majority, to fight outside the city. When the hypocrite Abdullah ibn Ubayy withdrew with 300 men, the Muslim army of 1,000 fell to 700.\n\n"
          "In Shawwal 3 AH (March 625) the army took up position with its back to Mount Uhud. The Prophet placed fifty archers under Abdullah ibn Jubayr on the hill of Aynayn and ordered them not to leave their positions until further orders, even in victory. At the beginning the Muslims prevailed; but when most of the archers saw the enemy fleeing, they left their posts for the spoils. Khalid ibn al-Walid's cavalry rode around behind the hill and struck the Muslims from the rear.\n\n"
          "In the confusion Hamzah was martyred by Wahshi; the Prophet was wounded in the face and lost a tooth, and the standard-bearer Mus'ab ibn Umayr was martyred. When a rumour spread that the Prophet had been killed, the Muslims scattered; they rallied when Ka'b ibn Malik shouted “Glad tidings, the Messenger of Allah is here!” and withdrew to the rocks of Uhud. Though wounded, the Prophet prayed: “O Allah, guide my people, for they do not know.”\n\n"
          "Seventy Companions were martyred in this battle. They were buried where they fell, two or three to a grave, in their own clothes. The Prophet visited the martyrs of Uhud every year and prayed for them, and the caliphs continued this practice. Many verses of Surat Al Imran in the Qur'an concern Uhud.",
      ar: "بعد هزيمة المشركين في بدر استعدوا للثأر عامًا كاملًا، وجاؤوا إلى شمال المدينة بجيش من ثلاثة آلاف مقاتل بقيادة أبي سفيان. فشاور النبي صلى الله عليه وسلم أصحابه، وكان يرى البقاء في المدينة والدفاع عنها، لكنه نزل عند رأي الأكثرية بالخروج للقتال. ولما انسحب المنافق عبد الله بن أُبيّ بثلاثمئة رجل نقص الجيش المسلم من ألف إلى سبعمئة.\n\n"
          "وفي شوال من السنة الثالثة (مارس 625م) جعل الجيش جبل أحد خلف ظهره، ووضع النبي صلى الله عليه وسلم خمسين راميًا بقيادة عبد الله بن جبير على جبل عينين، وأمرهم ألا يبرحوا مكانهم حتى يأتيهم أمره ولو رأوا النصر. وكانت الغلبة للمسلمين أول الأمر، فلما رأى أكثر الرماة فرار العدو تركوا مواقعهم طلبًا للغنيمة، فالتفّ خالد بن الوليد بخيله من خلف الجبل وباغت المسلمين من ورائهم.\n\n"
          "وفي ذلك الاضطراب استُشهد حمزة رضي الله عنه بحربة وحشي، وجُرح النبي صلى الله عليه وسلم في وجهه وكُسرت رباعيته، واستُشهد حامل اللواء مصعب بن عمير. ولما أُشيع أن النبي صلى الله عليه وسلم قُتل تفرق المسلمون، ثم اجتمعوا لما صاح كعب بن مالك: أبشروا، هذا رسول الله، وانحازوا إلى صخور أحد. وكان النبي صلى الله عليه وسلم مع جراحه يدعو: «اللهم اهدِ قومي فإنهم لا يعلمون».\n\n"
          "واستُشهد في هذه الغزوة سبعون من الصحابة، ودُفنوا حيث سقطوا، الاثنان والثلاثة في قبر واحد، في ثيابهم. وكان النبي صلى الله عليه وسلم يزور شهداء أحد كل عام ويدعو لهم، وسار الخلفاء على ذلك. وقد نزلت في أحد آيات كثيرة من سورة آل عمران.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Şevval 3 (Mart 625)", en: "Shawwal 3 AH (March 625)", ar: "شوال 3هـ (مارس 625م)"),
        metin: L10nText(
          tr: "Kureyş ordusu Medine'nin kuzeyine geldi; Hz. Peygamber istişareden sonra Uhud'a çıktı.",
          en: "The Quraysh army reached the north of Madinah; after consultation the Prophet marched to Uhud.",
          ar: "وصل جيش قريش إلى شمال المدينة، وخرج النبي صلى الله عليه وسلم إلى أحد بعد المشاورة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Savaşın başı", en: "Start of the battle", ar: "بداية المعركة"),
        metin: L10nText(
          tr: "Elli okçu Ayneyn (Okçular) tepesine yerleştirildi; Müslümanlar ilk saldırıda üstün geldi.",
          en: "Fifty archers were placed on the hill of Aynayn (the Archers' Hill); the Muslims prevailed in the first attack.",
          ar: "وُضع خمسون راميًا على جبل عينين (جبل الرماة)، وكانت الغلبة للمسلمين في الجولة الأولى.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Dönüm noktası", en: "Turning point", ar: "نقطة التحول"),
        metin: L10nText(
          tr: "Okçuların çoğu yerini terk etti; Hâlid b. Velîd'in süvarileri arkadan saldırdı.",
          en: "Most of the archers left their posts; Khalid ibn al-Walid's cavalry attacked from the rear.",
          ar: "ترك أكثر الرماة مواقعهم، فهاجمت خيل خالد بن الوليد من الخلف.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Aynı gün", en: "The same day", ar: "في اليوم نفسه"),
        metin: L10nText(
          tr: "Hz. Hamza ve Mus'ab b. Umeyr şehit oldu; Hz. Peygamber yaralandı ve sahâbîlerle kayalıklara çekildi.",
          en: "Hamzah and Mus'ab ibn Umayr were martyred; the Prophet was wounded and withdrew to the rocks with his Companions.",
          ar: "استُشهد حمزة ومصعب بن عمير، وجُرح النبي صلى الله عليه وسلم وانحاز مع أصحابه إلى الصخور.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Savaş sonrası", en: "After the battle", ar: "بعد المعركة"),
        metin: L10nText(
          tr: "Yetmiş şehit düştükleri yere defnedildi; ertesi gün Hamrâülesed seferine çıkıldı.",
          en: "Seventy martyrs were buried where they fell; the next day the expedition of Hamra al-Asad set out.",
          ar: "دُفن الشهداء السبعون حيث سقطوا، وفي الغد خرج المسلمون إلى حمراء الأسد.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Sonraki yıllar", en: "The following years", ar: "السنوات التالية"),
        metin: L10nText(
          tr: "Hz. Peygamber Uhud şehitlerini her yıl ziyaret edip onlar için dua etti.",
          en: "The Prophet visited the martyrs of Uhud every year and prayed for them.",
          ar: "كان النبي صلى الله عليه وسلم يزور شهداء أحد كل عام ويدعو لهم.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Uhud, Hz. Peygamber'in sevgiyle andığı bir dağdır: “Bu, bizi seven ve bizim de sevdiğimiz bir dağdır.” Bir defasında Hz. Ebû Bekir, Hz. Ömer ve Hz. Osman ile Uhud'a çıktığında dağ sallanmış, Resûlullah “Sakin ol Uhud! Üzerinde bir peygamber, bir sıddîk ve iki şehit var” buyurmuştur (Buhârî).\n\n"
          "Uhud Gazvesi, Kur'an'da Âl-i İmrân sûresinin pek çok âyetinde anlatılır. Bu âyetler, sabrın ve emre itaatin önemini, mağlubiyetin bile müminler için bir imtihan ve ders olduğunu hatırlatır. Allah yolunda canını verenlerin ölü olmadığını, Rableri katında diri olduklarını bildirir. Şehitliği ziyaret etmek, ahireti hatırlamaya ve fedakârlığı anlamaya vesiledir.",
      en: "Uhud is a mountain the Prophet spoke of with love: “This is a mountain that loves us and we love it.” Once, when he climbed Uhud with Abu Bakr, Umar and Uthman, the mountain shook, and the Prophet said: “Be still, Uhud! Upon you are a prophet, a truthful one and two martyrs” (al-Bukhari).\n\n"
          "The Battle of Uhud is described in many verses of Surat Al Imran in the Qur'an. These verses remind us of the importance of patience and obedience, and that even defeat is a test and a lesson for believers. They declare that those who give their lives in the way of Allah are not dead but alive with their Lord. Visiting the cemetery of the martyrs is a means of remembering the Hereafter and understanding sacrifice.",
      ar: "أُحد جبل ذكره النبي صلى الله عليه وسلم بمحبة فقال: «هذا جبل يحبنا ونحبه». وصعده مرة مع أبي بكر وعمر وعثمان رضي الله عنهم فرجف بهم، فقال: «اثبت أُحد، فإنما عليك نبي وصدّيق وشهيدان» (رواه البخاري).\n\n"
          "وقد ذُكرت غزوة أحد في آيات كثيرة من سورة آل عمران، تذكّر بأهمية الصبر والطاعة، وبأن الهزيمة نفسها ابتلاء ودرس للمؤمنين، وتخبر بأن الذين قُتلوا في سبيل الله ليسوا أمواتًا بل أحياء عند ربهم يُرزقون. وزيارة مقبرة الشهداء تذكّر بالآخرة وتعين على فهم معنى التضحية.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "هَذَا جَبَلٌ يُحِبُّنَا وَنُحِبُّهُ",
        meal: L10nText(
          tr: "Bu, bizi seven ve bizim de sevdiğimiz bir dağdır.",
          en: "This is a mountain that loves us and we love it.",
          ar: "هذا جبل يحبنا ونحبه.",
        ),
        kaynak: L10nText(tr: "Buhârî, Meğâzî, 27 (No. 4084)", en: "Sahih al-Bukhari 4084", ar: "صحيح البخاري، 4084"),
      ),
      GeziAlinti(
        arapca: "وَلَا تَحْسَبَنَّ ٱلَّذِينَ قُتِلُوا۟ فِى سَبِيلِ ٱللَّهِ أَمْوَٰتًۢا ۚ بَلْ أَحْيَآءٌ عِندَ رَبِّهِمْ يُرْزَقُونَ",
        meal: L10nText(
          tr: "Allah yolunda öldürülenleri sakın ölüler sanma. Bilakis onlar diridirler, Rableri katında rızıklandırılırlar.",
          en: "Never think of those who have been killed in the way of Allah as dead. Rather, they are alive with their Lord, receiving provision.",
          ar: "ولا تحسبنّ الذين قُتلوا في سبيل الله أمواتًا، بل أحياء عند ربهم يُرزقون.",
        ),
        kaynak: L10nText(tr: "Âl-i İmrân 3/169", en: "Qur'an 3:169", ar: "سورة آل عمران، الآية 169"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Şehitliğe vardığınızda, Hz. Peygamber'in kabir ziyaretinde öğrettiği selamı verin, Fâtiha ve İhlâs okuyup şehitler için dua edin.",
        en: "When you reach the cemetery, give the greeting the Prophet taught for visiting graves, recite al-Fatihah and al-Ikhlas, and pray for the martyrs.",
        ar: "إذا وصلت إلى المقبرة فسلّم السلام الذي علّمه النبي صلى الله عليه وسلم لزيارة القبور، واقرأ الفاتحة والإخلاص، وادعُ للشهداء.",
      ),
      L10nText(
        tr: "Kabir ziyaretinin amacı ahireti hatırlamak ve vefat edenlere dua etmektir; ölçülü ve sakin olun, kabirlerden bir şey istemeyin.",
        en: "The purpose of visiting graves is to remember the Hereafter and to pray for the deceased; be calm and measured, and ask nothing of the graves.",
        ar: "الغاية من زيارة القبور تذكّر الآخرة والدعاء للأموات، فكن هادئًا معتدلًا ولا تطلب شيئًا من القبور.",
      ),
      L10nText(
        tr: "Okçular Tepesi'ne çıkarsanız savaş alanını oradan izleyerek okçulara verilen emri ve itaatin önemini düşünün.",
        en: "If you climb the Archers' Hill, look out over the battlefield and reflect on the order given to the archers and the importance of obedience.",
        ar: "إن صعدت جبل الرماة فتأمل ساحة المعركة من هناك، وتفكّر في أمر النبي صلى الله عليه وسلم للرماة وأهمية الطاعة.",
      ),
      L10nText(
        tr: "Gündüz sıcağı çok yüksek olabilir; sabah erken gidin, su ve şapka bulundurun, kayalık yerlerde dikkatli olun.",
        en: "Daytime heat can be intense; go early in the morning, carry water and a hat, and take care on the rocky ground.",
        ar: "قد تشتد الحرارة نهارًا، فاذهب في الصباح الباكر واحمل الماء وغطاء الرأس، واحذر في المواضع الصخرية.",
      ),
      L10nText(
        tr: "Bölgede seyyar satıcılar bulunur; hurma alışverişini güvenilir dükkânlardan yapın.",
        en: "There are street vendors in the area; buy dates from reliable shops.",
        ar: "في المنطقة باعة متجولون، فاشترِ التمور من محلات موثوقة.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Uhud Şehitliği'nin içine girilmez; ziyaret, mezarlığı çevreleyen parmaklıkların önünden yapılır. Okçular Tepesi'ne çıkış zaman zaman düzenlemelerle sınırlanabilir; görevlilerin uyarılarına uyun.",
      en: "Visitors do not enter the Uhud cemetery; the visit is made from in front of the railings that surround it. Access to the Archers' Hill may at times be restricted; follow the instructions of the staff.",
      ar: "لا يُدخل إلى مقبرة شهداء أحد، وإنما تكون الزيارة من أمام السياج المحيط بها. وقد يُقيَّد الصعود إلى جبل الرماة أحيانًا، فالتزم بتعليمات المنظمين.",
    ),
    uygunSaat: L10nText(tr: "Sabah erken (serin saatler)", en: "Early morning (cooler hours)", ar: "الصباح الباكر (الأوقات المعتدلة)"),
    ziyaretSuresi: L10nText(tr: "1-1,5 saat", en: "1-1.5 hours", ar: "ساعة إلى ساعة ونصف"),
    anlatim: L10nText(
      tr: "Önünüzde yükselen bu kızıl dağ Uhud'dur. Peygamber Efendimiz onun için, bu bizi seven ve bizim de sevdiğimiz bir dağdır, buyurmuştur. Burası aynı zamanda İslâm tarihinin en acı ve en öğretici savaşlarından birinin yaşandığı yerdir.\n\n"
          "Hicretin üçüncü yılında, Bedir'de yenilen Mekkeli müşrikler üç bin kişilik bir orduyla Medine'nin kuzeyine geldiler. Peygamber Efendimiz ashabıyla istişare etti. Kendisi şehirde kalıp savunmayı düşünüyordu, ancak çoğunluğun görüşüne uyarak Uhud'a çıktı. Yolda münafıkların ayrılmasıyla İslâm ordusu yedi yüz kişi kaldı.\n\n"
          "Resûlullah ordusunun arkasını Uhud Dağı'na verdi. Karşınızdaki küçük tepeye, Abdullah bin Cübeyr komutasında elli okçu yerleştirdi. Onlara, bizim kazandığımızı da görseniz, kaybettiğimizi de görseniz, ben haber göndermedikçe yerinizden ayrılmayın, dedi. Savaşın başında Müslümanlar üstün geldi ve düşman geri çekildi. Ancak okçuların çoğu savaşın bittiğini düşünerek ganimet için tepeden indi. Bunu fırsat bilen Hâlid bin Velid'in süvarileri tepenin arkasından dolanıp Müslümanlara arkadan saldırdı.\n\n"
          "O karmaşada Peygamber Efendimizin amcası Hz. Hamza şehit edildi. Sancaktar Mus'ab bin Umeyr de şehit düştü. Resûlullah'ın mübarek yüzü yaralandı, dişi kırıldı. Buna rağmen o, Allah'ım, kavmime hidayet et, çünkü onlar bilmiyorlar, diye dua ediyordu. Sahâbîler etrafında bir halka oluşturdu ve Uhud'un kayalıklarına çekildiler.\n\n"
          "Bu savaşta yetmiş sahâbî şehit oldu ve düştükleri yere defnedildi. Önünüzdeki şehitlikte, şehitlerin efendisi diye anılan Hz. Hamza ile birlikte o kahramanlar yatmaktadır. Peygamber Efendimiz onları her yıl ziyaret eder ve dua ederdi.\n\n"
          "Kur'an-ı Kerim, Allah yolunda öldürülenlerin ölü olmadığını, Rableri katında diri olduklarını bildirir. Şimdi onlara selam verelim, Fâtiha okuyalım ve dua edelim. Uhud bize sabrı, emre itaati ve zor günlerde bile ümidi kaybetmemeyi öğretir.",
      en: "The red mountain rising before you is Uhud. The Prophet said of it: this is a mountain that loves us and we love it. It is also the place of one of the most painful and most instructive battles in Islamic history.\n\n"
          "In the third year of the Hijrah, the Makkan polytheists who had been defeated at Badr came to the north of Madinah with an army of three thousand. The Prophet consulted his Companions. He himself had thought of staying in the city to defend it, but following the view of the majority he marched out to Uhud. When the hypocrites withdrew on the way, the Muslim army was left with seven hundred men.\n\n"
          "The Prophet placed his army with its back to Mount Uhud. On the small hill in front of you he stationed fifty archers under the command of Abdullah ibn Jubayr. He told them: whether you see us winning or losing, do not leave your place until I send word to you. At the start of the battle the Muslims prevailed and the enemy fell back. But most of the archers, thinking the battle was over, came down from the hill for the spoils. Seizing the chance, Khalid ibn al-Walid's cavalry rode around behind the hill and attacked the Muslims from the rear.\n\n"
          "In that chaos Hamzah, the Prophet's uncle, was martyred. The standard-bearer Mus'ab ibn Umayr also fell. The Prophet's blessed face was wounded and a tooth was broken. Even so, he prayed: O Allah, guide my people, for they do not know. The Companions formed a ring around him and withdrew to the rocks of Uhud.\n\n"
          "Seventy Companions were martyred in this battle and buried where they fell. In the cemetery before you, those heroes rest together with Hamzah, known as the master of the martyrs. The Prophet visited them every year and prayed for them.\n\n"
          "The Qur'an declares that those killed in the way of Allah are not dead but alive with their Lord. Let us now greet them, recite al-Fatihah and pray for them. Uhud teaches us patience, obedience to command and never losing hope, even in the hardest days.",
      ar: "هذا الجبل الأحمر الذي يرتفع أمامكم هو جبل أحد، وقد قال فيه النبي صلى الله عليه وسلم: هذا جبل يحبنا ونحبه. وهو أيضًا موضع واحدة من أشد معارك تاريخ الإسلام ألمًا وأغناها عبرة.\n\n"
          "في السنة الثالثة للهجرة جاء مشركو مكة الذين هُزموا في بدر بجيش من ثلاثة آلاف مقاتل إلى شمال المدينة. فشاور النبي صلى الله عليه وسلم أصحابه، وكان يرى البقاء في المدينة والدفاع عنها، لكنه نزل عند رأي الأكثرية وخرج إلى أحد. ولما انسحب المنافقون في الطريق بقي الجيش المسلم سبعمئة رجل.\n\n"
          "وجعل النبي صلى الله عليه وسلم جبل أحد خلف ظهر الجيش، ووضع على التل الصغير الذي أمامكم خمسين راميًا بقيادة عبد الله بن جبير، وقال لهم: إن رأيتمونا ننتصر أو رأيتمونا نُهزم فلا تبرحوا مكانكم حتى أرسل إليكم. وكانت الغلبة للمسلمين في أول المعركة وتراجع العدو، لكن أكثر الرماة ظنوا أن المعركة انتهت فنزلوا من التل طلبًا للغنيمة. فاغتنم خالد بن الوليد الفرصة والتفّ بخيله من خلف التل وهاجم المسلمين من ورائهم.\n\n"
          "وفي ذلك الاضطراب استُشهد حمزة عم النبي صلى الله عليه وسلم، واستُشهد حامل اللواء مصعب بن عمير، وجُرح وجه النبي صلى الله عليه وسلم الشريف وكُسرت رباعيته. ومع ذلك كان يدعو: اللهم اهدِ قومي فإنهم لا يعلمون. والتفّ الصحابة حوله وانحازوا إلى صخور أحد.\n\n"
          "واستُشهد في هذه الغزوة سبعون من الصحابة، ودُفنوا حيث سقطوا. وفي المقبرة التي أمامكم يرقد أولئك الأبطال مع حمزة سيد الشهداء. وكان النبي صلى الله عليه وسلم يزورهم كل عام ويدعو لهم.\n\n"
          "ويخبرنا القرآن الكريم أن الذين قُتلوا في سبيل الله ليسوا أمواتًا، بل أحياء عند ربهم يُرزقون. فلنسلّم عليهم الآن، ولنقرأ الفاتحة وندعُ لهم. إن أحدًا يعلّمنا الصبر والطاعة وألا نفقد الأمل حتى في أصعب الأيام.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Uhud Gazvesi”", "https://islamansiklopedisi.org.tr/uhud-gazvesi"),
      GeziKaynak("Sahîh-i Buhârî 4084 (sunnah.com)", "https://sunnah.com/bukhari:4084"),
      GeziKaynak("Kur'an, Âl-i İmrân 3/169 (quran.com)", "https://quran.com/3/169"),
      GeziKaynak("OpenStreetMap, way 444240032 (Uhud Şehitliği)", "https://www.openstreetmap.org/way/444240032"),
      GeziKaynak("OpenStreetMap, node 4548415100 (Okçular Tepesi)", "https://www.openstreetmap.org/node/4548415100"),
    ],
  ),

  // ------------------------------------------------------------------ 5
  GeziYeri(
    id: 'baki',
    bolge: GeziBolge.medine,
    tur: GeziTur.mezarlik,
    ad: L10nText(tr: "Cennetü'l-Bakî", en: "Jannat al-Baqi", ar: "بقيع الغرقد"),
    arapcaAd: L10nText.same("بقيع الغرقد"),
    altBaslik: L10nText(
      tr: "Medine'nin ilk Müslüman mezarlığı",
      en: "The first Muslim cemetery of Madinah",
      ar: "أول مقبرة للمسلمين في المدينة",
    ),
    sehir: L10nText(tr: "Medine, Mescid-i Nebevî'nin doğusu", en: "Madinah, east of the Prophet's Mosque", ar: "المدينة المنورة، شرق المسجد النبوي"),
    konum: LatLng(24.466749, 39.616172), // OSM way 65541621
    genel: L10nText(
      tr: "Bakî' ya da Bakīu'l-Garkad, Mescid-i Nebevî'nin hemen güneydoğusunda yer alan ve Hz. Peygamber zamanından beri kullanılan Medine'nin ilk Müslüman mezarlığıdır. Türkler arasında Cennetü'l-Bakî adıyla tanınır. Bugün Mescid-i Nebevî'nin avlusuyla arasında bina kalmamıştır; Bakî kapısından çıkınca mezarlığın girişine ulaşılır.\n\n"
          "Burada Hz. Peygamber'in pek çok yakını ve binlerce sahâbî yatmaktadır. TDV İslâm Ansiklopedisi'nin kaydettiğine göre Bakî'de Hz. Peygamber'in oğlu İbrâhim, kızları Rukıyye ve Zeyneb, Hz. Fâtıma, Hz. Hasan, amcası Abbas, halası Safiyye, Hz. Ali'nin annesi Fâtıma bint Esed, sütannesi Halîme ile Hz. Âişe başta olmak üzere ezvâc-ı tâhirâtın çoğu, ayrıca Halife Hz. Osman, Abdurrahman b. Avf, Sa'd b. Ebû Vakkās, Abdullah b. Mes'ûd ve Ebû Hüreyre medfundur. Bugün kabirler üzerinde türbe ve mezar taşı bulunmaz; mezarlık hâlâ kullanılmaktadır.",
      en: "Al-Baqi, or Baqi al-Gharqad, is the first Muslim cemetery of Madinah, just south-east of the Prophet's Mosque, in use since the time of the Prophet. It is widely known as Jannat al-Baqi. Today no buildings stand between it and the courtyard of the Prophet's Mosque; leaving by the Baqi gate brings you to the entrance of the cemetery.\n\n"
          "Many of the Prophet's family and thousands of Companions rest here. According to the TDV Encyclopaedia of Islam, those buried in al-Baqi include the Prophet's son Ibrahim, his daughters Ruqayyah and Zaynab, Fatimah, al-Hasan, his uncle al-Abbas, his aunt Safiyyah, Ali's mother Fatimah bint Asad, his wet nurse Halimah, most of the Mothers of the Believers beginning with Aishah, as well as the Caliph Uthman, Abd ar-Rahman ibn Awf, Sa'd ibn Abi Waqqas, Abdullah ibn Mas'ud and Abu Hurayrah. Today there are no tombs or headstones over the graves, and the cemetery is still in use.",
      ar: "البقيع أو بقيع الغرقد هو أول مقبرة للمسلمين في المدينة المنورة، ويقع جنوب شرق المسجد النبوي مباشرةً، ويُدفن فيه منذ عهد النبي صلى الله عليه وسلم. ولم يعد بينه وبين ساحات المسجد النبوي اليوم بناء، فمن خرج من جهة باب البقيع بلغ مدخل المقبرة.\n\n"
          "وفيه يرقد كثير من آل بيت النبي صلى الله عليه وسلم وآلاف من الصحابة. ومن المدفونين فيه بحسب موسوعة وقف الديانة التركي: إبراهيم ابن النبي صلى الله عليه وسلم، وابنتاه رقية وزينب، وفاطمة الزهراء، والحسن بن علي، وعمه العباس، وعمته صفية، وفاطمة بنت أسد أم علي، ومرضعته حليمة، وأكثر أمهات المؤمنين وفي مقدمتهن عائشة، والخليفة عثمان بن عفان، وعبد الرحمن بن عوف، وسعد بن أبي وقاص، وعبد الله بن مسعود، وأبو هريرة رضي الله عنهم. ولا توجد اليوم على القبور قباب ولا شواهد، وما زال الدفن فيه مستمرًا.",
    ),
    tarihce: L10nText(
      tr: "Hz. Peygamber, vefat eden sahâbîlerin defnedilmesi için bir yer arayarak, garkad denilen bir tür çalılıkla kaplı olan Bakî' mevkiini mezarlık olarak belirledi. Muhacirlerden buraya ilk defnedilen Osman b. Maz'ûn'dur. Resûlullah onun baş ve ayak ucuna kendi getirdiği taşları koydu ve “Bu, ahirete ilk gidenimizdir” buyurdu. Ensardan ilk defnedilen ise Es'ad b. Zürâre'dir. Hz. Peygamber, oğlu İbrâhim vefat edince onun da buraya defnedilmesini emretti. Bundan sonra Medine'deki her kabile Bakî'de kendisine bir yer ayırdı.\n\n"
          "Hz. Âişe'nin rivayetine göre Resûlullah zaman zaman geceleyin Bakî'ye gider, burada yatanlara selam verip dua ederdi. Bazı cenaze namazlarını burada kıldırır, Habeş hükümdarı Necâşî'nin gıyabî cenaze namazını da burada kıldırmıştı.\n\n"
          "Sonraki asırlarda bazı kabirlerin üzerine kubbeler yapıldı: 1135'te Abbâsîler Hz. Hasan ile Hz. Abbas'ın kabirleri üzerine, 1205'te Eyyûbîler Hz. Osman'ın kabri üzerine türbe yaptırdı. Osmanlılar da bu yapıları onardı. 1806'da ve son olarak 1926'da türbeler ve mezar taşları yıkıldı. Bugün Bakî, mezar taşları olmayan sade bir mezarlık olarak kullanılmaya devam etmektedir.",
      en: "Looking for a place to bury the Companions who passed away, the Prophet chose al-Baqi, which was then covered with a kind of thorny shrub called gharqad. The first of the Emigrants buried here was Uthman ibn Maz'un. The Prophet placed stones he had brought himself at his head and feet and said: “This is the first of us to go to the Hereafter.” The first of the Helpers buried here was As'ad ibn Zurarah. When his son Ibrahim died, the Prophet had him buried here too. After that, every clan in Madinah set aside a place for itself in al-Baqi.\n\n"
          "According to Aishah, the Prophet would sometimes go out to al-Baqi at night, greet those buried there and pray for them. He led some funeral prayers here, including the funeral prayer in absentia for the Negus, the king of Abyssinia.\n\n"
          "In later centuries domes were built over some graves: in 1135 the Abbasids built one over the graves of al-Hasan and al-Abbas, and in 1205 the Ayyubids built a tomb over the grave of Uthman. The Ottomans also repaired these structures. In 1806, and finally in 1926, the tombs and headstones were demolished. Today al-Baqi continues to be used as a simple cemetery without headstones.",
      ar: "لما بحث النبي صلى الله عليه وسلم عن موضع يدفن فيه من يموت من أصحابه اختار البقيع، وكان يومئذ مكسوًّا بشجر شائك يُسمّى الغرقد. وأول من دُفن فيه من المهاجرين عثمان بن مظعون، فوضع النبي صلى الله عليه وسلم عند رأسه ورجليه حجارة جاء بها بنفسه وقال: «هذا أول من مضى منا إلى الآخرة». وأول من دُفن فيه من الأنصار أسعد بن زرارة. ولما توفي إبراهيم ابن النبي صلى الله عليه وسلم أمر بدفنه فيه، ثم جعلت كل قبيلة من أهل المدينة لها فيه موضعًا.\n\n"
          "وروت عائشة رضي الله عنها أن النبي صلى الله عليه وسلم كان يخرج أحيانًا من آخر الليل إلى البقيع فيسلّم على أهله ويدعو لهم. وكان يصلي فيه على بعض الجنائز، وصلى فيه صلاة الغائب على النجاشي ملك الحبشة.\n\n"
          "وفي القرون التالية بُنيت قباب على بعض القبور، فبنى العباسيون سنة 1135م قبة على قبري الحسن والعباس، وبنى الأيوبيون سنة 1205م قبة على قبر عثمان، ورمّم العثمانيون هذه الأبنية. ثم هُدمت القباب والشواهد سنة 1806م ثم سنة 1926م. وما زال البقيع اليوم مقبرة بسيطة بلا شواهد يُدفن فيها.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Hicretin ilk yılları", en: "Early years of the Hijrah", ar: "السنوات الأولى للهجرة"),
        metin: L10nText(
          tr: "Hz. Peygamber Bakî'yi mezarlık olarak belirledi; ilk defnedilenler Osman b. Maz'ûn ve Es'ad b. Zürâre oldu.",
          en: "The Prophet designated al-Baqi as a cemetery; the first buried were Uthman ibn Maz'un and As'ad ibn Zurarah.",
          ar: "اختار النبي صلى الله عليه وسلم البقيع مقبرةً، وكان أول من دُفن فيه عثمان بن مظعون وأسعد بن زرارة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hicrî 10 (632)", en: "10 AH (632)", ar: "10هـ (632م)"),
        metin: L10nText(
          tr: "Hz. Peygamber'in oğlu İbrâhim vefat etti ve Bakî'ye defnedildi.",
          en: "The Prophet's son Ibrahim died and was buried in al-Baqi.",
          ar: "توفي إبراهيم ابن النبي صلى الله عليه وسلم ودُفن في البقيع.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hicrî 11 (632)", en: "11 AH (632)", ar: "11هـ (632م)"),
        metin: L10nText(
          tr: "Hz. Fâtıma, babasının vefatından birkaç ay sonra vefat etti ve Bakî'ye defnedildi.",
          en: "Fatimah passed away a few months after her father and was buried in al-Baqi.",
          ar: "توفيت فاطمة رضي الله عنها بعد أبيها بأشهر ودُفنت في البقيع.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "35 (656)", en: "35 AH (656)", ar: "35هـ (656م)"),
        metin: L10nText(
          tr: "Halife Hz. Osman şehit edildi ve Bakî'ye defnedildi.",
          en: "Caliph Uthman was martyred and buried in al-Baqi.",
          ar: "استُشهد الخليفة عثمان بن عفان رضي الله عنه ودُفن في البقيع.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1135 / 1205", en: "1135 / 1205", ar: "1135م / 1205م"),
        metin: L10nText(
          tr: "Bazı kabirlerin üzerine kubbeli türbeler yapıldı.",
          en: "Domed tombs were built over some of the graves.",
          ar: "بُنيت قباب على بعض القبور.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1806 / 1926", en: "1806 / 1926", ar: "1806م / 1926م"),
        metin: L10nText(
          tr: "Türbeler ve mezar taşları yıkıldı; mezarlık bugünkü sade haline geldi.",
          en: "The tombs and headstones were demolished; the cemetery took its present simple form.",
          ar: "هُدمت القباب والشواهد، وصارت المقبرة على هيئتها البسيطة الحالية.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Bakî, Hz. Peygamber'in bizzat ziyaret ettiği, burada yatanlara selam verip mağfiret dilediği bir mezarlıktır. Hz. Âişe'nin rivayet ettiği hadiste Resûlullah'ın Bakî'de okuduğu selam ve dua yer alır; ziyaretçiler de bu sünnete uyarak aynı duayı okur.\n\n"
          "Kabir ziyaretinin asıl gayesi ölümü ve ahireti hatırlamak, vefat edenler için dua etmektir. Bakî'de Peygamber ailesinin ve sahâbenin büyüklerinin yattığını düşünmek, onların İslâm'a hizmetlerini hatırlamaya ve onlar için dua etmeye vesiledir.",
      en: "Al-Baqi is a cemetery the Prophet visited in person, greeting those buried there and seeking forgiveness for them. The hadith narrated by Aishah contains the greeting and supplication the Prophet recited at al-Baqi; visitors follow this Sunnah and recite the same words.\n\n"
          "The real purpose of visiting graves is to remember death and the Hereafter and to pray for the deceased. Remembering that members of the Prophet's family and great Companions lie in al-Baqi is a means of recalling their service to Islam and praying for them.",
      ar: "البقيع مقبرة زارها النبي صلى الله عليه وسلم بنفسه، فسلّم على أهلها واستغفر لهم. وفي حديث عائشة رضي الله عنها السلامُ والدعاء الذي كان يقوله في البقيع، فيقتدي به الزوار ويقولون مثله.\n\n"
          "والغاية من زيارة القبور تذكّر الموت والآخرة والدعاء للأموات. واستحضار أن في البقيع آل بيت النبي صلى الله عليه وسلم وكبار الصحابة يعين على تذكّر خدمتهم للإسلام والدعاء لهم.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "السَّلاَمُ عَلَيْكُمْ دَارَ قَوْمٍ مُؤْمِنِينَ وَأَتَاكُمْ مَا تُوعَدُونَ غَدًا مُؤَجَّلُونَ وَإِنَّا إِنْ شَاءَ اللَّهُ بِكُمْ لاَحِقُونَ اللَّهُمَّ اغْفِرْ لأَهْلِ بَقِيعِ الْغَرْقَدِ",
        meal: L10nText(
          tr: "Selam size ey müminler yurdunun sakinleri! Size vaat olunan şey geldi; yarına ertelenmişsiniz. Biz de inşallah size katılacağız. Allahım, Bakīu'l-Garkad ehlini bağışla.",
          en: "Peace be upon you, abode of believing people. What you were promised has come to you, deferred until tomorrow. And we, if Allah wills, shall join you. O Allah, forgive the people of Baqi al-Gharqad.",
          ar: "السلام عليكم دار قوم مؤمنين، وأتاكم ما توعدون، غدًا مؤجّلون، وإنا إن شاء الله بكم لاحقون، اللهم اغفر لأهل بقيع الغرقد.",
        ),
        kaynak: L10nText(tr: "Müslim, Cenâiz (No. 974)", en: "Sahih Muslim 974", ar: "صحيح مسلم، 974"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Girişte yukarıdaki duayı ya da kısaca “Esselâmü aleyküm ey müminler yurdunun sakinleri” diyerek selam verin.",
        en: "At the entrance, give the greeting above, or briefly say “Peace be upon you, people of the abode of the believers.”",
        ar: "سلّم عند الدخول بالدعاء السابق، أو قل باختصار: السلام عليكم أهل الديار من المؤمنين.",
      ),
      L10nText(
        tr: "Fâtiha, İhlâs ve bildiğiniz sûreleri okuyup burada yatanlar ve bütün müminler için dua edin.",
        en: "Recite al-Fatihah, al-Ikhlas and other surahs you know, and pray for those buried here and for all believers.",
        ar: "اقرأ الفاتحة والإخلاص وما تيسر، وادعُ لأهل البقيع ولجميع المؤمنين.",
      ),
      L10nText(
        tr: "Kabirlerin üzerine basmayın, üzerine oturmayın; yalnız açılan yollarda yürüyün.",
        en: "Do not step or sit on the graves; walk only along the paths provided.",
        ar: "لا تطأ القبور ولا تجلس عليها، وامشِ في الممرات المخصصة فقط.",
      ),
      L10nText(
        tr: "Ziyaret, ahireti hatırlamak ve dua etmek içindir; sesinizi yükseltmeyin, kabirlerden bir şey istemeyin.",
        en: "The visit is for remembering the Hereafter and for prayer; do not raise your voice, and ask nothing of the graves.",
        ar: "الزيارة للتذكّر والدعاء، فلا ترفع صوتك ولا تطلب شيئًا من القبور.",
      ),
      L10nText(
        tr: "Kabirlerin hangisinin kime ait olduğu çoğu zaman kesin bilinmez; dua bütün Bakî ehli için yapılır.",
        en: "It is often not known for certain which grave belongs to whom; the prayer is made for all the people of al-Baqi.",
        ar: "كثيرًا ما لا يُعرف على وجه اليقين لمن كل قبر، فيكون الدعاء لأهل البقيع جميعًا.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Bakî genellikle sabah ve ikindi namazlarından sonra belirli saatlerde ziyarete açılır; saatler hac ve ramazan dönemlerinde değişebilir. Uygulamada kadınların mezarlık içine girişine genellikle izin verilmez; kadınlar mezarlığın dışından, Mescid-i Nebevî tarafındaki parmaklıkların önünden selam verip dua edebilir.",
      en: "Al-Baqi is usually open to visitors at set times after the Fajr and Asr prayers; the hours may change during Hajj and Ramadan. In practice women are generally not permitted to enter the cemetery; women may greet and pray from outside, in front of the railings on the side of the Prophet's Mosque.",
      ar: "يُفتح البقيع للزيارة عادةً في أوقات محددة بعد صلاتي الفجر والعصر، وقد تتغير المواعيد في الحج ورمضان. ولا يُسمح للنساء غالبًا بدخول المقبرة، ويمكنهن السلام والدعاء من الخارج أمام السياج في جهة المسجد النبوي.",
    ),
    uygunSaat: L10nText(tr: "Sabah namazından sonra", en: "After the Fajr prayer", ar: "بعد صلاة الفجر"),
    ziyaretSuresi: L10nText(tr: "30-45 dakika", en: "30-45 minutes", ar: "30 إلى 45 دقيقة"),
    anlatim: L10nText(
      tr: "Mescid-i Nebevî'nin hemen yanında, şimdi önünde durduğunuz bu sade mezarlık Bakî'dir. Medine'nin ilk Müslüman mezarlığı olan bu yer, Peygamber Efendimizin zamanında garkad denilen dikenli çalılarla kaplı bir araziydi. Bu yüzden ona Bakīu'l-Garkad denildi.\n\n"
          "Resûlullah, vefat eden sahâbîlerini defnetmek için bu yeri seçti. Muhacirlerden buraya ilk defnedilen Osman bin Maz'ûn oldu. Peygamber Efendimiz onun kabrinin başına kendi taşıdığı taşları koydu ve bu, ahirete ilk gidenimizdir, dedi. Daha sonra küçük oğlu İbrâhim vefat edince onu da buraya defnetti.\n\n"
          "Bakî'de Peygamber ailesinden pek çok kişi yatmaktadır. Kızı Hz. Fâtıma, torunu Hz. Hasan, amcası Hz. Abbas, halası Safiyye ve annemiz Hz. Âişe başta olmak üzere ezvâc-ı tâhiratın çoğu buradadır. Halife Hz. Osman, Abdurrahman bin Avf, Sa'd bin Ebû Vakkas, Abdullah bin Mes'ud ve Ebû Hüreyre gibi büyük sahâbîler de burada medfundur. Burada binlerce sahâbînin yattığı kabul edilir.\n\n"
          "Annemiz Hz. Âişe anlatır. Resûlullah bazı geceler Bakî'ye çıkar ve burada yatanlara şöyle selam verirdi. Selam size ey müminler yurdunun sakinleri. Size vaat edilen geldi. Biz de inşallah size katılacağız. Allahım, Bakī ehlini bağışla.\n\n"
          "Bugün kabirlerin üzerinde taş ya da yapı bulunmaz. Her şey sade ve sessizdir. Bu sadelik, dünyanın geçiciliğini hatırlatır. Siz de Peygamber Efendimizin öğrettiği selamla burada yatanlara selam verin, Fâtiha okuyun ve onlar için, kendiniz ve bütün müminler için dua edin.",
      en: "Right beside the Prophet's Mosque, the simple cemetery you are now facing is al-Baqi. The first Muslim cemetery of Madinah, it was in the Prophet's time a piece of land covered with thorny shrubs called gharqad. That is why it was called Baqi al-Gharqad.\n\n"
          "The Prophet chose this place to bury his Companions who passed away. The first of the Emigrants buried here was Uthman ibn Maz'un. The Prophet placed stones he had carried himself at the head of his grave and said: this is the first of us to go to the Hereafter. Later, when his little son Ibrahim died, he buried him here too.\n\n"
          "Many members of the Prophet's family rest in al-Baqi. His daughter Fatimah, his grandson al-Hasan, his uncle al-Abbas, his aunt Safiyyah and most of the Mothers of the Believers, beginning with Aishah, are here. Great Companions such as the Caliph Uthman, Abd ar-Rahman ibn Awf, Sa'd ibn Abi Waqqas, Abdullah ibn Mas'ud and Abu Hurayrah are also buried here. Thousands of Companions are believed to rest in this ground.\n\n"
          "Aishah, the Mother of the Believers, relates that on some nights the Prophet would go out to al-Baqi and greet those buried there, saying: peace be upon you, abode of believing people. What you were promised has come to you. And we, if Allah wills, shall join you. O Allah, forgive the people of al-Baqi.\n\n"
          "Today there are no stones or buildings over the graves. Everything is simple and silent. This simplicity reminds us that this world is passing. Greet those who rest here with the greeting the Prophet taught, recite al-Fatihah, and pray for them, for yourself and for all believers.",
      ar: "بجوار المسجد النبوي مباشرةً تقع هذه المقبرة البسيطة التي تقفون أمامها، إنها البقيع. وهي أول مقبرة للمسلمين في المدينة، وكانت في عهد النبي صلى الله عليه وسلم أرضًا يكسوها شجر شائك يُسمّى الغرقد، ولذلك سُمّيت بقيع الغرقد.\n\n"
          "اختار النبي صلى الله عليه وسلم هذا الموضع ليدفن فيه من يموت من أصحابه. وأول من دُفن فيه من المهاجرين عثمان بن مظعون، فوضع النبي صلى الله عليه وسلم عند رأسه حجارة حملها بنفسه وقال: هذا أول من مضى منا إلى الآخرة. ولما توفي ابنه الصغير إبراهيم دفنه فيه أيضًا.\n\n"
          "ويرقد في البقيع كثير من آل بيت النبي صلى الله عليه وسلم، منهم ابنته فاطمة، وسبطه الحسن، وعمه العباس، وعمته صفية، وأكثر أمهات المؤمنين وفي مقدمتهن عائشة رضي الله عنهن. ودُفن فيه أيضًا كبار الصحابة كالخليفة عثمان بن عفان، وعبد الرحمن بن عوف، وسعد بن أبي وقاص، وعبد الله بن مسعود، وأبي هريرة رضي الله عنهم. ويُقال إن آلافًا من الصحابة يرقدون في هذه الأرض.\n\n"
          "وتروي أم المؤمنين عائشة رضي الله عنها أن النبي صلى الله عليه وسلم كان يخرج في بعض الليالي إلى البقيع فيسلّم على أهله قائلًا: السلام عليكم دار قوم مؤمنين، وأتاكم ما توعدون، وإنا إن شاء الله بكم لاحقون، اللهم اغفر لأهل بقيع الغرقد.\n\n"
          "واليوم لا توجد على القبور شواهد ولا أبنية، فكل شيء بسيط هادئ، وهذه البساطة تذكّر بفناء الدنيا. فسلّموا على أهل هذه المقبرة بالسلام الذي علّمه النبي صلى الله عليه وسلم، واقرؤوا الفاتحة، وادعوا لهم ولأنفسكم ولجميع المؤمنين.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Cennetü'l-Bakī'”", "https://islamansiklopedisi.org.tr/cennetul-baki"),
      GeziKaynak("Sahîh-i Müslim 974 (sunnah.com)", "https://sunnah.com/muslim:974a"),
      GeziKaynak("Wikipedia, “Al-Baqi Cemetery”", "https://en.wikipedia.org/wiki/Al-Baqi_Cemetery"),
      GeziKaynak("OpenStreetMap, way 65541621", "https://www.openstreetmap.org/way/65541621"),
    ],
  ),

  // ------------------------------------------------------------------ 6
  GeziYeri(
    id: 'yedi_mescitler',
    bolge: GeziBolge.medine,
    tur: GeziTur.savasAlani,
    ad: L10nText(tr: "Hendek ve Yedi Mescitler (Mescid-i Fetih)", en: "The Trench and the Seven Mosques (Masjid al-Fath)", ar: "الخندق والمساجد السبعة (مسجد الفتح)"),
    arapcaAd: L10nText.same("المساجد السبعة"),
    altBaslik: L10nText(
      tr: "Hendek Gazvesi'nin yaşandığı Sel' Dağı eteği",
      en: "The foot of Mount Sal', scene of the Battle of the Trench",
      ar: "سفح جبل سَلْع حيث وقعت غزوة الخندق",
    ),
    sehir: L10nText(tr: "Medine, kuzeybatı (Sel' Dağı)", en: "Madinah, north-west (Mount Sal')", ar: "المدينة المنورة، الشمال الغربي (جبل سلع)"),
    konum: LatLng(24.477844, 39.59566), // OSM way 1536783060 (Mescid-i Fetih)
    genel: L10nText(
      tr: "Mesâcid-i Seb'a (Yedi Mescitler), Medine'de Sel' Dağı'nın kuzeybatı eteğinde, Hendek Gazvesi'nin yaşandığı bölgede bulunan küçük mescitlerin genel adıdır. Bunlardan Mescid-i Fetih, Selmân-ı Fârisî, Hz. Ali ve Hz. Ebû Bekir mescitleri klasik kaynaklarda geçer; Hz. Ömer ve Sa'd b. Muâz (Hz. Fâtıma) mescitlerinin ise daha sonra yapıldığı tahmin edilir. “Yedi Mescitler” adı da yakın dönemde yaygınlaşmıştır.\n\n"
          "Bölgenin en önemli yapısı, Hendek kuşatması sırasında Hz. Peygamber'in çadırının kurulduğu ve dua ettiği yerde bulunan Mescid-i Fetih'tir. Yüksekçe bir yerde olduğu için Mescid-i A'lâ, kuşatmaya katılan gruplar (ahzâb) sebebiyle Mescid-i Ahzâb diye de anılır. Bazı küçük mescitler son yıllarda yıkılmış, yanlarına büyük Hendek Camii (Mescidü'l-Hendek) inşa edilmiştir.",
      en: "Al-Masajid as-Sab'ah (the Seven Mosques) is the common name for the small mosques at the north-western foot of Mount Sal' in Madinah, in the area where the Battle of the Trench took place. Of these, the mosques of al-Fath, Salman al-Farisi, Ali and Abu Bakr are mentioned in classical sources, while those of Umar and Sa'd ibn Mu'adh (also called Fatimah's mosque) are thought to have been built later. The name “Seven Mosques” itself became common in recent times.\n\n"
          "The most important building in the area is Masjid al-Fath, at the place where the Prophet's tent was pitched and where he prayed during the siege of the Trench. Because it stands on higher ground it is also called al-Masjid al-A'la, and after the confederate groups (al-Ahzab) it is called Masjid al-Ahzab. Some of the small mosques have been demolished in recent years, and the large al-Khandaq Mosque has been built beside them.",
      ar: "المساجد السبعة اسم شائع لمساجد صغيرة في السفح الشمالي الغربي لجبل سلع بالمدينة المنورة، في الموضع الذي وقعت فيه غزوة الخندق. وقد ورد في المصادر القديمة منها مسجد الفتح ومسجد سلمان الفارسي ومسجد علي بن أبي طالب ومسجد أبي بكر الصديق، أما مسجد عمر بن الخطاب ومسجد سعد بن معاذ (ويُسمّى مسجد فاطمة) فيُرجّح أنهما بُنيا لاحقًا. واسم المساجد السبعة نفسه شاع في العصر الحديث.\n\n"
          "وأهم مباني المنطقة مسجد الفتح الواقع في الموضع الذي ضُربت فيه قبة النبي صلى الله عليه وسلم ودعا فيه أثناء حصار الخندق، ويُسمّى المسجد الأعلى لارتفاعه، ومسجد الأحزاب نسبةً إلى الأحزاب الذين حاصروا المدينة. وقد أُزيلت بعض المساجد الصغيرة في السنوات الأخيرة، وبُني بجوارها مسجد الخندق الكبير.",
    ),
    tarihce: L10nText(
      tr: "Hicretin 5. yılında (627) Kureyş, Gatafân ve onlarla ittifak eden kabileler (ahzâb) yaklaşık 10-12 bin kişilik bir orduyla Medine'ye yürüdü. Hz. Peygamber ashabıyla istişare etti ve kaynakların çoğunluğuna göre Selmân-ı Fârisî'nin teklifiyle şehrin açık olan kuzey tarafına hendek kazılmasına karar verildi. Yaklaşık 5,5 km uzunluğundaki hendeği Resûlullah ashabıyla birlikte, bizzat çalışarak birkaç haftada tamamladı.\n\n"
          "Yaklaşık 3000 kişilik İslâm ordusu Sel' Dağı eteklerinde karargâh kurdu; Hz. Peygamber çadırını bugün Mescid-i Fetih'in bulunduğu yere taşıdı. Kuşatma yaklaşık bir ay sürdü. Düşman hendeği aşamadı; bir defasında hendeği geçen Amr b. Abdüved'i Hz. Ali teke tek çarpışmada yendi. Nuaym b. Mes'ûd'un tedbiriyle düşman safları arasına ayrılık düştü. Sonunda şiddetli bir soğuk ve rüzgâr müttefikleri dağıttı; Ebû Süfyân kuşatmayı kaldırıp Mekke'ye döndü.\n\n"
          "Hz. Peygamber'in dua ettiği yere önce tek revaklı bir mescit yapıldı. Ömer b. Abdülazîz onu yeniden yaptırdı; Eyyûbîler döneminde 1179'da yenilendi. Bugünkü Mescid-i Fetih, Sultan Abdülmecid'in 1853-54'te bazalt taşıyla yeniden yaptırdığı küçük mescittir.",
      en: "In the 5th year of the Hijrah (627), Quraysh, Ghatafan and their allied tribes (al-Ahzab) marched on Madinah with an army of about 10,000-12,000. The Prophet consulted his Companions and, according to most sources at the suggestion of Salman al-Farisi, it was decided to dig a trench on the open northern side of the city. The Prophet and his Companions completed the trench, about 5.5 km long, in a few weeks, with the Prophet himself digging.\n\n"
          "The Muslim army of about 3,000 camped at the foot of Mount Sal'; the Prophet moved his tent to the place where Masjid al-Fath now stands. The siege lasted about a month. The enemy could not cross the trench; when Amr ibn Abd Wudd once crossed it, Ali defeated him in single combat. Through the stratagem of Nu'aym ibn Mas'ud, discord arose among the enemy ranks. Finally a bitter cold and wind scattered the confederates; Abu Sufyan lifted the siege and returned to Makkah.\n\n"
          "A mosque with a single portico was first built at the place where the Prophet prayed. Umar ibn Abd al-Aziz rebuilt it, and it was renewed in 1179 under the Ayyubids. Today's Masjid al-Fath is the small mosque rebuilt in basalt by Sultan Abdulmejid in 1853-54.",
      ar: "في السنة الخامسة للهجرة (627م) زحفت قريش وغطفان ومن حالفهم من القبائل (الأحزاب) إلى المدينة بجيش يقارب عشرة آلاف أو اثني عشر ألفًا. فشاور النبي صلى الله عليه وسلم أصحابه، وتقرر في أكثر الروايات بمشورة سلمان الفارسي حفر خندق في الجهة الشمالية المكشوفة من المدينة. وأتمّ النبي صلى الله عليه وسلم وأصحابه حفر الخندق الذي بلغ طوله نحو خمسة كيلومترات ونصف في أسابيع، وكان يحفر معهم بنفسه.\n\n"
          "وعسكر الجيش المسلم وعدده نحو ثلاثة آلاف في سفح جبل سلع، ونقل النبي صلى الله عليه وسلم قبته إلى موضع مسجد الفتح اليوم. ودام الحصار نحو شهر، فلم يستطع العدو عبور الخندق، ولما عبره عمرو بن عبد ودّ مرةً صرعه علي بن أبي طالب في المبارزة. ووقعت الفرقة بين الأحزاب بتدبير نعيم بن مسعود، ثم فرّقتهم ريح شديدة وبرد قارس، فرفع أبو سفيان الحصار وعاد إلى مكة.\n\n"
          "وبُني في الموضع الذي دعا فيه النبي صلى الله عليه وسلم مسجد ذو رواق واحد، ثم جدّده عمر بن عبد العزيز، وجُدّد في العهد الأيوبي سنة 1179م. ومسجد الفتح الحالي هو المسجد الصغير الذي أعاد بناءه السلطان عبد المجيد بالحجر البازلتي سنة 1853-1854م.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Şevval 5 (Mart 627)", en: "Shawwal 5 AH (March 627)", ar: "شوال 5هـ (مارس 627م)"),
        metin: L10nText(
          tr: "Selmân-ı Fârisî'nin teklifiyle hendek kazıldı; Hz. Peygamber kazıya bizzat katıldı.",
          en: "At Salman al-Farisi's suggestion the trench was dug; the Prophet took part in the digging himself.",
          ar: "حُفر الخندق بمشورة سلمان الفارسي، وشارك النبي صلى الله عليه وسلم في الحفر بنفسه.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Kuşatma", en: "The siege", ar: "الحصار"),
        metin: L10nText(
          tr: "Ahzâb ordusu Medine'yi yaklaşık bir ay kuşattı; Hz. Peygamber çadırını bugünkü Mescid-i Fetih'in yerine kurdu.",
          en: "The confederate army besieged Madinah for about a month; the Prophet pitched his tent where Masjid al-Fath now stands.",
          ar: "حاصر الأحزاب المدينة نحو شهر، وضرب النبي صلى الله عليه وسلم قبته في موضع مسجد الفتح اليوم.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Kuşatma sırasında", en: "During the siege", ar: "أثناء الحصار"),
        metin: L10nText(
          tr: "Hz. Ali, hendeği geçen Amr b. Abdüved'i teke tek çarpışmada yendi.",
          en: "Ali defeated Amr ibn Abd Wudd, who had crossed the trench, in single combat.",
          ar: "صرع علي بن أبي طالب عمرو بن عبد ودّ الذي عبر الخندق في المبارزة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Zilkade 5 (Nisan 627)", en: "Dhu al-Qa'dah 5 AH (April 627)", ar: "ذو القعدة 5هـ (أبريل 627م)"),
        metin: L10nText(
          tr: "Soğuk ve şiddetli rüzgâr müttefikleri dağıttı; kuşatma kaldırıldı.",
          en: "Cold and a violent wind scattered the confederates; the siege was lifted.",
          ar: "فرّقت الريح الشديدة والبرد الأحزاب، فرُفع الحصار.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1853-1854", en: "1853-1854", ar: "1853-1854م"),
        metin: L10nText(
          tr: "Sultan Abdülmecid Mescid-i Fetih'i bazalt taşından yeniden yaptırdı.",
          en: "Sultan Abdulmejid rebuilt Masjid al-Fath in basalt.",
          ar: "أعاد السلطان عبد المجيد بناء مسجد الفتح بالحجر البازلتي.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Bu bölge, Allah'ın müminlere zor bir anda yardımını gösterdiği Hendek Gazvesi'nin hatırasını taşır. Ahzâb sûresi, müminlerin gözlerinin kaydığı, yüreklerinin ağızlarına geldiği o günleri anlatır ve Allah'ın onlara karşı bir rüzgâr ve görünmeyen ordular gönderdiğini bildirir. Müminler düşman birliklerini gördüklerinde “İşte Allah ve Resûlü'nün bize vadettiği budur” demişler ve bu onların ancak imanını ve teslimiyetini artırmıştır.\n\n"
          "Mescid-i Fetih'e mahsus özel bir sevaba dair sahih bir hadis bilinmemektedir; ziyaret, Hz. Peygamber'in bu zor günlerde gösterdiği sabrı, istişareyi ve duayı hatırlamak içindir.",
      en: "This area holds the memory of the Battle of the Trench, when Allah showed His help to the believers at a difficult moment. Surat al-Ahzab describes those days when eyes shifted in fear and hearts reached the throats, and tells that Allah sent against the enemy a wind and armies that could not be seen. When the believers saw the confederates they said, “This is what Allah and His Messenger promised us,” and it only increased them in faith and submission.\n\n"
          "No authentic hadith is known about a special reward specific to Masjid al-Fath; the visit is to remember the patience, consultation and prayer the Prophet showed in those hard days.",
      ar: "تحمل هذه البقعة ذكرى غزوة الخندق التي أرى الله فيها المؤمنين نصره في ساعة عسرة. وتصف سورة الأحزاب تلك الأيام إذ زاغت الأبصار وبلغت القلوب الحناجر، وتخبر أن الله أرسل على الأحزاب ريحًا وجنودًا لم يروها. ولما رأى المؤمنون الأحزاب قالوا: هذا ما وعدنا الله ورسوله، وما زادهم إلا إيمانًا وتسليمًا.\n\n"
          "ولا يُعرف حديث صحيح في فضل خاص بمسجد الفتح، وإنما تكون الزيارة لتذكّر صبر النبي صلى الله عليه وسلم ومشورته ودعائه في تلك الأيام الصعبة.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "يَـٰٓأَيُّهَا ٱلَّذِينَ ءَامَنُوا۟ ٱذْكُرُوا۟ نِعْمَةَ ٱللَّهِ عَلَيْكُمْ إِذْ جَآءَتْكُمْ جُنُودٌ فَأَرْسَلْنَا عَلَيْهِمْ رِيحًا وَجُنُودًا لَّمْ تَرَوْهَا ۚ وَكَانَ ٱللَّهُ بِمَا تَعْمَلُونَ بَصِيرًا",
        meal: L10nText(
          tr: "Ey iman edenler! Allah'ın size olan nimetini hatırlayın. Hani size ordular gelmişti de biz onların üzerine bir rüzgâr ve sizin görmediğiniz ordular göndermiştik. Allah yaptıklarınızı hakkıyla görmektedir.",
          en: "O you who have believed, remember the favour of Allah upon you when armies came to you and We sent upon them a wind and armies you did not see. And Allah is ever Seeing of what you do.",
          ar: "يا أيها الذين آمنوا اذكروا نعمة الله عليكم إذ جاءتكم جنود فأرسلنا عليهم ريحًا وجنودًا لم تروها، وكان الله بما تعملون بصيرًا.",
        ),
        kaynak: L10nText(tr: "Ahzâb 33/9", en: "Qur'an 33:9", ar: "سورة الأحزاب، الآية 9"),
      ),
      GeziAlinti(
        arapca: "وَلَمَّا رَءَا ٱلْمُؤْمِنُونَ ٱلْأَحْزَابَ قَالُوا۟ هَـٰذَا مَا وَعَدَنَا ٱللَّهُ وَرَسُولُهُۥ وَصَدَقَ ٱللَّهُ وَرَسُولُهُۥ ۚ وَمَا زَادَهُمْ إِلَّآ إِيمَـٰنًا وَتَسْلِيمًا",
        meal: L10nText(
          tr: "Müminler düşman birliklerini görünce “İşte bu, Allah'ın ve Resûlü'nün bize vadettiğidir. Allah ve Resûlü doğru söylemiştir” dediler. Bu, onların ancak imanını ve teslimiyetini artırdı.",
          en: "When the believers saw the confederates, they said: “This is what Allah and His Messenger promised us, and Allah and His Messenger spoke the truth.” And it increased them only in faith and submission.",
          ar: "ولما رأى المؤمنون الأحزاب قالوا هذا ما وعدنا الله ورسوله وصدق الله ورسوله، وما زادهم إلا إيمانًا وتسليمًا.",
        ),
        kaynak: L10nText(tr: "Ahzâb 33/22", en: "Qur'an 33:22", ar: "سورة الأحزاب، الآية 22"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Bölgeye gelince önce açık olan büyük Hendek Camii'nde ya da Mescid-i Fetih'te iki rekât namaz kılabilirsiniz.",
        en: "On arrival you can pray two rak'ahs in the large al-Khandaq Mosque or in Masjid al-Fath, if open.",
        ar: "عند الوصول يمكنك أن تصلي ركعتين في مسجد الخندق الكبير أو في مسجد الفتح إن كان مفتوحًا.",
      ),
      L10nText(
        tr: "Küçük mescitlerin bir kısmı kapalı olabilir; kapalı yapıların önünde toplanmaktan kaçının.",
        en: "Some of the small mosques may be closed; avoid gathering in front of closed buildings.",
        ar: "قد يكون بعض المساجد الصغيرة مغلقًا، فتجنّب التجمع أمام المباني المغلقة.",
      ),
      L10nText(
        tr: "Mescid-i Fetih'e merdivenle çıkılır; yaşlı ve yürüme güçlüğü çekenler dikkatli olmalı.",
        en: "Masjid al-Fath is reached by stairs; the elderly and those with walking difficulties should take care.",
        ar: "يُصعد إلى مسجد الفتح بدرج، فليحذر كبار السن ومن يجد صعوبة في المشي.",
      ),
      L10nText(
        tr: "Burada Hz. Peygamber'in hendek kazarken ashabıyla birlikte çalıştığını, açlık ve soğuğa sabrettiğini hatırlayın.",
        en: "Remember here that the Prophet worked alongside his Companions digging the trench and endured hunger and cold with patience.",
        ar: "تذكّر هنا أن النبي صلى الله عليه وسلم عمل مع أصحابه في حفر الخندق، وصبر على الجوع والبرد.",
      ),
    ],
    ziyaretSuresi: L10nText(tr: "30-45 dakika", en: "30-45 minutes", ar: "30 إلى 45 دقيقة"),
    anlatim: L10nText(
      tr: "Şimdi Sel' Dağı'nın eteğinde, Hendek Gazvesi'nin yaşandığı yerdeyiz. Hicretin beşinci yılında Kureyş ve ona katılan kabileler, on binden fazla askerle Medine'yi ortadan kaldırmak için yola çıktılar. Kur'an bu kalabalık orduyu ahzâb, yani gruplar diye anar.\n\n"
          "Peygamber Efendimiz ashabıyla istişare etti. Selmân-ı Fârisî, kendi memleketinde uygulanan bir savunma yöntemini, şehrin açık tarafına bir hendek kazılmasını teklif etti. Kararı verir vermez Resûlullah kazmayı eline aldı ve ashabıyla birlikte toprak taşıdı. Kış soğuğunda, açlık içinde çalışan sahâbîler, bir yandan şiirler söyleyerek birbirlerine güç veriyorlardı. Birkaç hafta içinde kilometrelerce uzunlukta bir hendek tamamlandı.\n\n"
          "Düşman ordusu geldiğinde, karşılarında bu derin hendeği görünce şaşırıp kaldı. Kuşatma yaklaşık bir ay sürdü. Peygamber Efendimizin çadırı, şu an bulunduğumuz yerde, bugün Mescid-i Fetih'in olduğu yere kurulmuştu. Bir gün düşmanın en ünlü savaşçısı Amr bin Abdüved hendeği aşarak meydan okudu. Henüz genç olan Hz. Ali karşısına çıktı ve onu yendi.\n\n"
          "Günler zorlaştıkça Resûlullah burada dua etti. Kur'an o günleri, gözlerin kaydığı ve yüreklerin ağızlara geldiği günler diye anlatır. Sonunda Allah düşmanın üzerine şiddetli bir soğuk ve rüzgâr gönderdi. Çadırlar devrildi, ateşler söndü ve ahzâb ordusu hiçbir şey elde edemeden geri döndü.\n\n"
          "Bu mescitlere Yedi Mescitler denir. En önemlisi, Peygamber Efendimizin dua ettiği yere yapılan Mescid-i Fetih'tir. Yanında Selmân-ı Fârisî'nin adını taşıyan küçük mescit ve yakın zamanda yapılan büyük Hendek Camii bulunur. Burada, zorluk anlarında istişarenin, birlikte çalışmanın ve duanın gücünü hatırlayalım.",
      en: "We are now at the foot of Mount Sal', where the Battle of the Trench took place. In the fifth year of the Hijrah, Quraysh and the tribes that joined them set out with more than ten thousand soldiers to wipe out Madinah. The Qur'an calls this large army al-Ahzab, the confederates.\n\n"
          "The Prophet consulted his Companions. Salman al-Farisi suggested a method of defence used in his homeland: digging a trench along the open side of the city. As soon as the decision was made, the Prophet took up a pickaxe and carried earth together with his Companions. Working in the winter cold and in hunger, the Companions encouraged one another by reciting verses. Within a few weeks a trench several kilometres long was completed.\n\n"
          "When the enemy army arrived and saw this deep trench before them, they were astonished. The siege lasted about a month. The Prophet's tent was pitched right here, where Masjid al-Fath stands today. One day the enemy's most famous warrior, Amr ibn Abd Wudd, crossed the trench and issued a challenge. The young Ali went out to face him and defeated him.\n\n"
          "As the days grew harder, the Prophet prayed here. The Qur'an describes those days as days when eyes shifted in fear and hearts reached the throats. In the end Allah sent a bitter cold and a violent wind against the enemy. Tents were blown down, fires went out, and the confederate army went back having gained nothing.\n\n"
          "These mosques are called the Seven Mosques. The most important is Masjid al-Fath, built where the Prophet prayed. Beside it are a small mosque bearing the name of Salman al-Farisi and the large al-Khandaq Mosque built in recent years. Here let us remember the power of consultation, of working together and of prayer in times of hardship.",
      ar: "نحن الآن في سفح جبل سلع حيث وقعت غزوة الخندق. ففي السنة الخامسة للهجرة خرجت قريش ومن انضم إليها من القبائل بأكثر من عشرة آلاف مقاتل يريدون استئصال المدينة، وقد سمّى القرآن هذا الجيش الكبير الأحزاب.\n\n"
          "فشاور النبي صلى الله عليه وسلم أصحابه، فأشار سلمان الفارسي بطريقة في الدفاع كانت معروفة في بلاده، وهي حفر خندق في الجهة المكشوفة من المدينة. وما إن اتُّخذ القرار حتى أخذ النبي صلى الله عليه وسلم المعول وحمل التراب مع أصحابه. وكان الصحابة يعملون في برد الشتاء وهم جياع، يشدّ بعضهم أزر بعض بالأراجيز. وفي أسابيع قليلة اكتمل خندق طوله كيلومترات عدة.\n\n"
          "ولما وصل جيش الأحزاب ورأى الخندق العميق أمامه أصابته الحيرة. ودام الحصار نحو شهر، وكانت قبة النبي صلى الله عليه وسلم مضروبة هنا في موضع مسجد الفتح اليوم. وفي أحد الأيام عبر أشهر فرسانهم عمرو بن عبد ودّ الخندق يطلب المبارزة، فخرج إليه علي بن أبي طالب وهو شاب فصرعه.\n\n"
          "ولما اشتدت الأيام دعا النبي صلى الله عليه وسلم هنا. ويصف القرآن تلك الأيام بأنها أيام زاغت فيها الأبصار وبلغت القلوب الحناجر. ثم أرسل الله على الأحزاب بردًا شديدًا وريحًا عاتية، فاقتلعت الخيام وأطفأت النيران، ورجع الأحزاب لم ينالوا خيرًا.\n\n"
          "وتُسمّى هذه المساجد المساجد السبعة، وأهمها مسجد الفتح المبني في موضع دعاء النبي صلى الله عليه وسلم، وبجواره مسجد صغير يحمل اسم سلمان الفارسي، ومسجد الخندق الكبير الذي بُني حديثًا. فلنتذكر هنا قوة الشورى والعمل المشترك والدعاء في أوقات الشدة.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Mesâcid-i Seb'a”", "https://islamansiklopedisi.org.tr/mesacid-i-seba"),
      GeziKaynak("TDV İslâm Ansiklopedisi, “Hendek Gazvesi”", "https://islamansiklopedisi.org.tr/hendek-gazvesi"),
      GeziKaynak("Kur'an, Ahzâb 33/9-25 (quran.com)", "https://quran.com/33/9-25"),
      GeziKaynak("OpenStreetMap, way 1536783060 (Mescid-i Fetih)", "https://www.openstreetmap.org/way/1536783060"),
      GeziKaynak("OpenStreetMap, relation 21150853 (Hendek Camii)", "https://www.openstreetmap.org/relation/21150853"),
    ],
  ),

  // ------------------------------------------------------------------ 7
  GeziYeri(
    id: 'mescid_i_cuma',
    bolge: GeziBolge.medine,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Mescid-i Cuma", en: "Al-Jumu'ah Mosque", ar: "مسجد الجمعة"),
    arapcaAd: L10nText.same("مسجد الجمعة"),
    altBaslik: L10nText(
      tr: "Hz. Peygamber'in ilk cuma namazını kıldırdığı yer",
      en: "Where the Prophet led his first Friday prayer",
      ar: "حيث صلى النبي صلى الله عليه وسلم أول جمعة",
    ),
    sehir: L10nText(tr: "Medine, Kuba yakını (Rânûnâ vadisi)", en: "Madinah, near Quba (Wadi Ranuna)", ar: "المدينة المنورة، قرب قباء (وادي رانوناء)"),
    konum: LatLng(24.445556, 39.615509), // OSM way 457212681
    genel: L10nText(
      tr: "Mescid-i Cuma, Kuba Mescidi'nin yaklaşık 700 metre kuzeyinde, Rânûnâ vadisinde, Benî Sâlim b. Avf kabilesinin yurdunda bulunur. Hz. Peygamber hicret sırasında Kuba'dan Medine'ye doğru yola çıktığında cuma vakti bu kabilenin yurduna ulaşmış ve burada ilk cuma namazını kıldırmıştır. Bu yüzden mescit Mescid-i Cuma adıyla tanınır; kaynaklarda Benî Sâlim Mescidi, Mescid-i Âtike ve Vadi Mescidi adlarıyla da geçer.\n\n"
          "TDV İslâm Ansiklopedisi, Rânûnâ vadisindeki Benî Sâlim Mescidi'nin başlangıçta Kuba'daki ilk mescit gibi üstü açık bir namazgâh olduğunu belirtir. Bugünkü yapı 1989'da genişletilerek yeniden inşa edilmiş ve 1992'de açılmıştır; ana kubbesi, dört küçük kubbesi ve yüksek minaresiyle yaklaşık 650 kişi alabilir.",
      en: "Al-Jumu'ah Mosque lies about 700 metres north of Quba Mosque, in the valley of Ranuna, in the territory of the Banu Salim ibn Awf. When the Prophet set out from Quba towards Madinah during the Hijrah, he reached this clan's land at the time of the Friday prayer and led his first Friday prayer here. Hence the mosque is known as the Friday Mosque; in the sources it is also called the Mosque of Banu Salim, Masjid Atikah and the Valley Mosque.\n\n"
          "The TDV Encyclopaedia of Islam notes that the Mosque of Banu Salim in the valley of Ranuna was originally an open-air place of prayer, like the first mosque at Quba. The present building was enlarged and rebuilt in 1989 and opened in 1992; with a main dome, four smaller domes and a tall minaret, it holds about 650 worshippers.",
      ar: "يقع مسجد الجمعة على بعد نحو سبعمئة متر شمال مسجد قباء، في وادي رانوناء، في ديار بني سالم بن عوف. ولما خرج النبي صلى الله عليه وسلم في هجرته من قباء متجهًا إلى المدينة أدركته الجمعة في ديار هذه القبيلة، فصلى بهم أول جمعة، ولذلك عُرف المسجد بمسجد الجمعة، ويُسمّى أيضًا مسجد بني سالم ومسجد عاتكة ومسجد الوادي.\n\n"
          "وتذكر موسوعة وقف الديانة التركي أن مسجد بني سالم في وادي رانوناء كان في أول أمره مصلًّى مكشوفًا كمسجد قباء الأول. وقد وُسّع المبنى الحالي وأُعيد بناؤه سنة 1989م وافتُتح سنة 1992م، وله قبة رئيسة وأربع قباب صغيرة ومئذنة عالية، ويتسع لنحو 650 مصليًا.",
    ),
    tarihce: L10nText(
      tr: "Hz. Peygamber Kuba'da birkaç gün kaldıktan sonra bir cuma günü Medine'ye doğru yola çıktı. Rânûnâ vadisinde Benî Sâlim b. Avf yurduna geldiğinde cuma vakti girmişti. Resûlullah burada yaklaşık yüz kişilik cemaate hutbe okuyup cuma namazı kıldırdı. Bu, onun kıldırdığı ilk cuma namazı olarak kabul edilir.\n\n"
          "Namazın kılındığı yer önce üstü açık bir namazgâhtı; sonradan küçük bir mescit yapıldı. Asırlar içinde birçok kez onarılan bu küçük mescit, Osmanlı döneminde de yenilenmiştir. 1989'da Suudi yönetimi mescidi genişleterek yeniden inşa etti; eski yapının yalnızca yetmiş kişi alabildiği, yeni yapının ise yaklaşık 650 kişiyi aldığı bildirilir.",
      en: "After staying a few days in Quba, the Prophet set out for Madinah on a Friday. When he reached the land of Banu Salim ibn Awf in the valley of Ranuna, the time of the Friday prayer had come. Here the Prophet delivered a sermon to a congregation of about a hundred and led the Friday prayer. This is regarded as the first Friday prayer he led.\n\n"
          "The place where the prayer was offered was at first an open-air place of prayer; a small mosque was built later. Repaired many times over the centuries, the small mosque was also renewed in the Ottoman period. In 1989 the Saudi authorities enlarged and rebuilt the mosque; it is reported that the old building held only seventy worshippers, while the new one holds about 650.",
      ar: "بعد أن أقام النبي صلى الله عليه وسلم في قباء أيامًا خرج إلى المدينة يوم جمعة، فلما بلغ ديار بني سالم بن عوف في وادي رانوناء أدركته الجمعة، فخطب في نحو مئة من المسلمين وصلى بهم الجمعة، وهي أول جمعة صلاها.\n\n"
          "وكان موضع الصلاة أول الأمر مصلًّى مكشوفًا، ثم بُني فيه مسجد صغير جُدّد مرات عبر القرون، ومنها في العهد العثماني. وفي سنة 1989م وسّعته الحكومة السعودية وأعادت بناءه، ويُذكر أن المبنى القديم كان لا يتسع إلا لسبعين مصليًا، بينما يتسع الجديد لنحو 650.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "622", en: "622", ar: "622م"),
        metin: L10nText(
          tr: "Hz. Peygamber Kuba'dan Medine'ye giderken Benî Sâlim yurdunda ilk cuma namazını kıldırdı.",
          en: "On his way from Quba to Madinah, the Prophet led his first Friday prayer in the land of Banu Salim.",
          ar: "صلى النبي صلى الله عليه وسلم أول جمعة في ديار بني سالم وهو في طريقه من قباء إلى المدينة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Sonraki asırlar", en: "Later centuries", ar: "القرون التالية"),
        metin: L10nText(
          tr: "Namazgâhın yerine küçük bir mescit yapıldı; Osmanlı döneminde de onarıldı.",
          en: "A small mosque replaced the open-air prayer place; it was also repaired in the Ottoman period.",
          ar: "بُني مسجد صغير مكان المصلّى، ورُمّم في العهد العثماني أيضًا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1989-1992", en: "1989-1992", ar: "1989-1992م"),
        metin: L10nText(
          tr: "Mescit genişletilerek yeniden inşa edildi ve 1992'de ibadete açıldı.",
          en: "The mosque was enlarged and rebuilt, and opened for worship in 1992.",
          ar: "وُسّع المسجد وأُعيد بناؤه وافتُتح للصلاة سنة 1992م.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Mescid-i Cuma, Müslümanların haftalık bayramı olan cuma namazının Hz. Peygamber tarafından kıldırılan ilk örneğine tanıklık ettiği için anlamlıdır. Kur'an, cuma günü namaz için çağrıldığında alışverişi bırakıp Allah'ı anmaya koşmayı emreder.\n\n"
          "Bu mescide mahsus özel bir sevaba dair sahih bir rivayet bilinmemektedir; burada diğer mescitlerde olduğu gibi tahiyyetü'l-mescid kılınır ve cumanın önemi hatırlanır.",
      en: "Al-Jumu'ah Mosque is meaningful because it witnessed the first Friday prayer led by the Prophet, the weekly festival of Muslims. The Qur'an commands believers to leave trade and hasten to the remembrance of Allah when called to prayer on Friday.\n\n"
          "No authentic narration is known about a special reward specific to this mosque; as in any mosque, tahiyyat al-masjid is prayed here and the importance of Friday is remembered.",
      ar: "لمسجد الجمعة مكانة لأنه شهد أول جمعة صلاها النبي صلى الله عليه وسلم، وهي عيد المسلمين الأسبوعي. وقد أمر القرآن المؤمنين إذا نودي للصلاة من يوم الجمعة أن يسعوا إلى ذكر الله ويذروا البيع.\n\n"
          "ولا يُعرف في فضل خاص بهذا المسجد حديث صحيح، ويُصلّى فيه تحية المسجد كسائر المساجد، ويُستحضر فضل الجمعة.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "يَـٰٓأَيُّهَا ٱلَّذِينَ ءَامَنُوٓا۟ إِذَا نُودِىَ لِلصَّلَوٰةِ مِن يَوْمِ ٱلْجُمُعَةِ فَٱسْعَوْا۟ إِلَىٰ ذِكْرِ ٱللَّهِ وَذَرُوا۟ ٱلْبَيْعَ ۚ ذَٰلِكُمْ خَيْرٌ لَّكُمْ إِن كُنتُمْ تَعْلَمُونَ",
        meal: L10nText(
          tr: "Ey iman edenler! Cuma günü namaz için çağrı yapıldığında Allah'ı anmaya koşun ve alışverişi bırakın. Eğer bilirseniz bu sizin için daha hayırlıdır.",
          en: "O you who have believed, when the call is made for the prayer on Friday, hasten to the remembrance of Allah and leave trade. That is better for you, if you only knew.",
          ar: "يا أيها الذين آمنوا إذا نودي للصلاة من يوم الجمعة فاسعوا إلى ذكر الله وذروا البيع، ذلكم خير لكم إن كنتم تعلمون.",
        ),
        kaynak: L10nText(tr: "Cuma 62/9", en: "Qur'an 62:9", ar: "سورة الجمعة، الآية 9"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Kuba Mescidi'ne yakın olduğu için Kuba ziyaretiyle birleştirebilirsiniz; aradaki mesafe yürünebilir.",
        en: "Since it is close to Quba Mosque, you can combine it with your Quba visit; the distance can be walked.",
        ar: "لقربه من مسجد قباء يمكن جمع زيارته مع زيارة قباء، والمسافة بينهما يسيرة مشيًا.",
      ),
      L10nText(
        tr: "Mescide girince iki rekât tahiyyetü'l-mescid namazı kılın.",
        en: "On entering, pray two rak'ahs of tahiyyat al-masjid.",
        ar: "صلِّ ركعتي تحية المسجد عند دخولك.",
      ),
      L10nText(
        tr: "Mescit küçüktür; vakit namazlarında cemaati rahatsız etmemek için kısa kalın.",
        en: "The mosque is small; keep your visit short at prayer times so as not to disturb the congregation.",
        ar: "المسجد صغير، فاجعل زيارتك قصيرة في أوقات الصلاة حتى لا تضيّق على المصلين.",
      ),
    ],
    ziyaretSuresi: L10nText(tr: "15-20 dakika", en: "15-20 minutes", ar: "15 إلى 20 دقيقة"),
    anlatim: L10nText(
      tr: "Şimdi Kuba'nın hemen kuzeyinde, Rânûnâ vadisindeki Mescid-i Cuma'dayız. Hicret yolculuğunun son durağı Kuba'ydı. Peygamber Efendimiz burada birkaç gün kalıp Kuba Mescidi'ni inşa ettikten sonra bir cuma günü Medine'ye doğru yola çıktı.\n\n"
          "Yolda, Benî Sâlim bin Avf kabilesinin yurduna, işte bu vadiye vardığında cuma vakti girmişti. Resûlullah burada durdu, yanındaki yaklaşık yüz kişilik cemaate hutbe okudu ve cuma namazını kıldırdı. Bu, Peygamber Efendimizin kıldırdığı ilk cuma namazı olarak kabul edilir. Bu yüzden bu mescide Mescid-i Cuma denilir. Kabilenin adıyla Benî Sâlim Mescidi diye de anılır.\n\n"
          "Namazın kılındığı yer önceleri üstü açık bir namazgâhtı. Zamanla burada küçük bir mescit yapıldı ve asırlar boyunca onarıldı. Uzun süre yalnızca yetmiş kişinin sığabildiği bu küçük mescit, 1989 yılında genişletilerek bugünkü haline getirildi.\n\n"
          "Kur'an-ı Kerim, cuma günü namaza çağrıldığımızda alışverişi bırakıp Allah'ı anmaya koşmamızı emreder. Burada kılacağınız iki rekât namazda, Peygamber Efendimizin Medine yolunda, yolculuğun yorgunluğuna rağmen cumayı ihmal etmediğini hatırlayın.",
      en: "We are now at al-Jumu'ah Mosque in the valley of Ranuna, just north of Quba. Quba was the last stop on the journey of the Hijrah. After staying here a few days and building Quba Mosque, the Prophet set out towards Madinah on a Friday.\n\n"
          "On the way, when he reached the land of the Banu Salim ibn Awf, this very valley, the time of the Friday prayer had come. The Prophet stopped here, delivered a sermon to the congregation of about a hundred people with him and led the Friday prayer. This is regarded as the first Friday prayer the Prophet led. That is why this mosque is called the Friday Mosque. It is also known as the Mosque of Banu Salim, after the clan.\n\n"
          "The place where the prayer was offered was at first an open-air place of prayer. In time a small mosque was built here and repaired over the centuries. For a long time this little mosque could hold only seventy people; in 1989 it was enlarged into its present form.\n\n"
          "The Qur'an commands that when we are called to prayer on Friday we leave trade and hasten to the remembrance of Allah. As you pray two rak'ahs here, remember that on the road to Madinah, despite the fatigue of the journey, the Prophet did not neglect the Friday prayer.",
      ar: "نحن الآن في مسجد الجمعة في وادي رانوناء شمال قباء مباشرة. كانت قباء آخر محطات رحلة الهجرة، فبعد أن أقام فيها النبي صلى الله عليه وسلم أيامًا وبنى مسجدها خرج متجهًا إلى المدينة يوم جمعة.\n\n"
          "وفي الطريق، لما بلغ ديار بني سالم بن عوف، في هذا الوادي نفسه، أدركته الجمعة. فوقف النبي صلى الله عليه وسلم هنا، وخطب في نحو مئة ممن كانوا معه، وصلى بهم الجمعة، وهي أول جمعة صلاها النبي صلى الله عليه وسلم. ولذلك سُمّي هذا المسجد مسجد الجمعة، ويُعرف أيضًا بمسجد بني سالم نسبةً إلى القبيلة.\n\n"
          "وكان موضع الصلاة أول الأمر مصلًّى مكشوفًا، ثم بُني فيه مسجد صغير جُدّد عبر القرون. وظل هذا المسجد الصغير زمنًا طويلًا لا يتسع إلا لسبعين مصليًا، حتى وُسّع سنة 1989م على هيئته الحالية.\n\n"
          "ويأمرنا القرآن الكريم إذا نودي للصلاة من يوم الجمعة أن نسعى إلى ذكر الله ونذر البيع. فتذكّروا وأنتم تصلّون هنا ركعتين أن النبي صلى الله عليه وسلم لم يترك الجمعة في طريقه إلى المدينة رغم مشقة السفر.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Namazgâh”", "https://islamansiklopedisi.org.tr/namazgah"),
      GeziKaynak("Saudipedia, “Which Mosque Was the First to Host the Friday Prayer?”", "https://saudipedia.com/en/which-mosque-was-the-first-to-host-the-friday-prayer"),
      GeziKaynak("Kur'an, Cuma 62/9 (quran.com)", "https://quran.com/62/9"),
      GeziKaynak("OpenStreetMap, way 457212681", "https://www.openstreetmap.org/way/457212681"),
    ],
  ),

  // ------------------------------------------------------------------ 8
  GeziYeri(
    id: 'gamame',
    bolge: GeziBolge.medine,
    tur: GeziTur.mescid,
    ad: L10nText(tr: "Gamâme Mescidi", en: "Al-Ghamamah Mosque", ar: "مسجد الغمامة"),
    arapcaAd: L10nText.same("مسجد الغمامة"),
    altBaslik: L10nText(
      tr: "Bayram namazlarının kılındığı musallâ; çevresinde Hz. Ebû Bekir ve Hz. Ali mescitleri",
      en: "The Eid prayer ground; with the mosques of Abu Bakr and Ali nearby",
      ar: "مصلّى العيد، وبجواره مسجدا أبي بكر وعلي",
    ),
    sehir: L10nText(tr: "Medine, Mescid-i Nebevî'nin batısı", en: "Madinah, west of the Prophet's Mosque", ar: "المدينة المنورة، غرب المسجد النبوي"),
    konum: LatLng(24.465808, 39.606955), // OSM way 369055309
    genel: L10nText(
      tr: "Gamâme Mescidi, Mescid-i Nebevî'nin Bâbüsselâm kapısının yaklaşık 500 metre batısındadır. Hz. Peygamber bayram namazlarını Mescid-i Nebevî'de değil, şehrin dışındaki açık bir alanda, musallâda kıldırırdı. TDV İslâm Ansiklopedisi'nin belirttiğine göre Medine musallâsının yerine sonradan Gamâme Mescidi inşa edilmiştir; bu yüzden Mescidü'l-Musallâ diye de anılır.\n\n"
          "“Gamâme” bulut demektir. Rivayete göre Hz. Peygamber burada yağmur duası (istiskâ) yaptığında bulutlar toplanmış ve yağmur yağmıştır; mescidin adının buradan geldiği nakledilir. Bugünkü yapı Sultan Abdülmecid döneminde (1859 civarı) yapılmış, sonraki dönemlerde onarılmıştır. Hemen yakınında, aynı musallâ alanının hatırasını taşıyan Mescid-i Ebû Bekir ve Mescid-i Ali bulunur.",
      en: "Al-Ghamamah Mosque lies about 500 metres west of the Bab as-Salam gate of the Prophet's Mosque. The Prophet did not lead the Eid prayers in his mosque but in an open area outside the town, the musalla. According to the TDV Encyclopaedia of Islam, al-Ghamamah Mosque was later built in place of the musalla of Madinah; it is therefore also called Masjid al-Musalla.\n\n"
          "“Ghamamah” means cloud. According to some narrations, when the Prophet prayed for rain (istisqa) here, the clouds gathered and rain fell, and the mosque is said to take its name from this. The present building dates from the reign of Sultan Abdulmejid (around 1859) and has been restored since. Close by are the Mosque of Abu Bakr and the Mosque of Ali, which share the memory of the same prayer ground.",
      ar: "يقع مسجد الغمامة على بعد نحو خمسمئة متر غرب باب السلام من المسجد النبوي. وكان النبي صلى الله عليه وسلم يصلي العيدين لا في مسجده بل في فضاء خارج البلد هو المصلّى. وتذكر موسوعة وقف الديانة التركي أن مسجد الغمامة بُني لاحقًا في موضع مصلّى المدينة، ولذلك يُسمّى أيضًا مسجد المصلّى.\n\n"
          "والغمامة هي السحابة، ويُروى أن النبي صلى الله عليه وسلم لما استسقى هنا اجتمع السحاب ونزل المطر، فسُمّي المسجد بذلك. والمبنى الحالي من عهد السلطان عبد المجيد (نحو سنة 1859م)، ورُمّم بعد ذلك. وبالقرب منه مسجد أبي بكر الصديق ومسجد علي بن أبي طالب اللذان يحملان ذكرى المصلّى نفسه.",
    ),
    tarihce: L10nText(
      tr: "Hz. Peygamber hicretin 2. yılından itibaren bayram namazlarını Medine'nin batısındaki bu açık alanda, musallâda kıldırmıştır. Musallâ aynı zamanda yağmur duası gibi kalabalık toplanmaların yeriydi.\n\n"
          "Burada ilk mescit, Ömer b. Abdülazîz'in Medine valiliği sırasında (706-712) yapıldı. Memlükler döneminde 14. yüzyılda yenilendi. Bugün görülen yapı Osmanlı Sultanı Abdülmecid döneminde inşa edilmiş, II. Abdülhamid ve Suudi yönetimi döneminde onarılmıştır. Dikdörtgen planlı mescit, bir giriş bölümü ve altı kubbeyle örtülü bir namaz bölümünden oluşur.\n\n"
          "Gamâme Mescidi'nin birkaç on metre kuzeybatısında Hz. Ebû Bekir'e, biraz daha kuzeyinde Hz. Ali'ye nispet edilen iki küçük mescit bulunur. Bu mescitlerin, bu sahâbîlerin halifelikleri döneminde bayram namazını kıldırdıkları yerlerde yapıldığı nakledilir.",
      en: "From the 2nd year of the Hijrah, the Prophet led the Eid prayers in this open area west of Madinah, the musalla. The musalla was also the place for large gatherings such as the prayer for rain.\n\n"
          "The first mosque here was built while Umar ibn Abd al-Aziz was governor of Madinah (706-712). It was renewed in the 14th century under the Mamluks. The building seen today was built under the Ottoman Sultan Abdulmejid and restored under Abdulhamid II and the Saudi authorities. Rectangular in plan, the mosque consists of an entrance section and a prayer hall covered by six domes.\n\n"
          "A few dozen metres north-west of al-Ghamamah stands a small mosque attributed to Abu Bakr, and a little further north another attributed to Ali. It is related that these mosques were built at the places where these Companions led the Eid prayer during their caliphates.",
      ar: "كان النبي صلى الله عليه وسلم منذ السنة الثانية للهجرة يصلي العيدين في هذا الفضاء غرب المدينة، وهو المصلّى، وكان المصلّى أيضًا موضع الاجتماعات الكبيرة كصلاة الاستسقاء.\n\n"
          "وبُني فيه أول مسجد في ولاية عمر بن عبد العزيز على المدينة (706-712م)، وجُدّد في العهد المملوكي في القرن الرابع عشر الميلادي. أما المبنى القائم اليوم فشُيّد في عهد السلطان العثماني عبد المجيد، ورُمّم في عهد السلطان عبد الحميد الثاني والحكومة السعودية. والمسجد مستطيل الشكل، يتكون من مدخل ومصلّى تعلوه ست قباب.\n\n"
          "وعلى بعد عشرات الأمتار شمال غرب مسجد الغمامة مسجد صغير يُنسب إلى أبي بكر الصديق، وإلى الشمال منه قليلًا مسجد يُنسب إلى علي بن أبي طالب رضي الله عنهما. ويُروى أن هذين المسجدين بُنيا في الموضعين اللذين صلّى فيهما هذان الصحابيان العيد في خلافتهما.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Hicrî 2 (624)", en: "2 AH (624)", ar: "2هـ (624م)"),
        metin: L10nText(
          tr: "Bayram namazı meşru kılındı; Hz. Peygamber bayram namazlarını musallâda kıldırmaya başladı.",
          en: "The Eid prayer was prescribed; the Prophet began leading the Eid prayers at the musalla.",
          ar: "شُرعت صلاة العيد، وبدأ النبي صلى الله عليه وسلم يصليها في المصلّى.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Rivayete göre", en: "According to narrations", ar: "يُروى"),
        metin: L10nText(
          tr: "Hz. Peygamber burada yağmur duasına çıktı ve bulutlar toplandı; mescidin adı buradan gelir.",
          en: "The Prophet came out here to pray for rain and the clouds gathered; the mosque's name comes from this.",
          ar: "خرج النبي صلى الله عليه وسلم هنا للاستسقاء فاجتمع السحاب، ومن هنا جاء اسم المسجد.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "706-712", en: "706-712", ar: "706-712م"),
        metin: L10nText(
          tr: "Ömer b. Abdülazîz musallânın yerine ilk mescidi yaptırdı.",
          en: "Umar ibn Abd al-Aziz built the first mosque on the site of the musalla.",
          ar: "بنى عمر بن عبد العزيز أول مسجد في موضع المصلّى.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "1859 civarı", en: "Around 1859", ar: "نحو 1859م"),
        metin: L10nText(
          tr: "Sultan Abdülmecid döneminde bugünkü yapı inşa edildi.",
          en: "The present building was built under Sultan Abdulmejid.",
          ar: "شُيّد المبنى الحالي في عهد السلطان عبد المجيد.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Gamâme Mescidi, Hz. Peygamber'in bayram namazlarını kıldırdığı ve ümmetiyle bayram sevincini paylaştığı musallâyı hatırlatır. Bayram namazının açık alanda, kalabalık cemaatle kılınması onun sünnetidir.\n\n"
          "Yağmur duasıyla ilgili rivayet, darlık zamanlarında Allah'a sığınmanın ve O'ndan rahmet dilemenin önemini hatırlatır. Bu mescide mahsus özel bir sevaba dair sahih bir hadis bilinmemektedir.",
      en: "Al-Ghamamah Mosque recalls the musalla where the Prophet led the Eid prayers and shared the joy of Eid with his community. Praying the Eid prayer in an open area with a large congregation is his Sunnah.\n\n"
          "The narration about the prayer for rain reminds us of the importance of turning to Allah and seeking His mercy in times of hardship. No authentic hadith is known about a special reward specific to this mosque.",
      ar: "يذكّر مسجد الغمامة بالمصلّى الذي كان النبي صلى الله عليه وسلم يصلي فيه العيدين ويشارك أمته فرحة العيد، وصلاة العيد في الفضاء مع جماعة كبيرة من سنته.\n\n"
          "وما يُروى من الاستسقاء فيه يذكّر بأهمية اللجوء إلى الله وطلب رحمته في أوقات الشدة. ولا يُعرف في فضل خاص بهذا المسجد حديث صحيح.",
    ),
    adab: [
      L10nText(
        tr: "Mescid-i Nebevî'nin batı avlusundan yürüyerek birkaç dakikada ulaşılır; Bâbüsselâm tarafından çıkın.",
        en: "It is a few minutes' walk from the western courtyard of the Prophet's Mosque; leave by the Bab as-Salam side.",
        ar: "يُوصل إليه سيرًا في دقائق من الساحة الغربية للمسجد النبوي، فاخرج من جهة باب السلام.",
      ),
      L10nText(
        tr: "Mescit açıksa iki rekât tahiyyetü'l-mescid kılın; kapalıysa dışarıdan görüp çevredeki mescitleri de görün.",
        en: "If the mosque is open, pray two rak'ahs of tahiyyat al-masjid; if closed, view it from outside along with the nearby mosques.",
        ar: "إن كان المسجد مفتوحًا فصلِّ ركعتي تحية المسجد، وإلا فشاهده من الخارج مع المساجد المجاورة.",
      ),
      L10nText(
        tr: "Hz. Ebû Bekir ve Hz. Ali mescitleri birbirine çok yakındır; üçünü birlikte kısa bir yürüyüşle görebilirsiniz.",
        en: "The mosques of Abu Bakr and Ali are very close; you can see all three on a short walk.",
        ar: "مسجدا أبي بكر وعلي قريبان جدًا، فيمكنك رؤية المساجد الثلاثة في جولة قصيرة سيرًا.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Gamâme ve çevresindeki küçük mescitler, Mescid-i Nebevî'ye yakınlıkları nedeniyle zaman zaman vakit namazlarına kapatılmış, sonra yeniden açılmıştır; açık olma durumu değişebilir.",
      en: "Because of their proximity to the Prophet's Mosque, al-Ghamamah and the small mosques around it have at times been closed for the daily prayers and later reopened; whether they are open may vary.",
      ar: "أُغلق مسجد الغمامة والمساجد الصغيرة حوله أحيانًا أمام الصلوات الخمس لقربها من المسجد النبوي ثم أُعيد فتحها، وقد يختلف وضعها من وقت لآخر.",
    ),
    ziyaretSuresi: L10nText(tr: "20-30 dakika", en: "20-30 minutes", ar: "20 إلى 30 دقيقة"),
    anlatim: L10nText(
      tr: "Mescid-i Nebevî'den batıya doğru birkaç yüz metre yürüdüğünüzde, sade taş duvarları ve küçük kubbeleriyle Gamâme Mescidi karşınıza çıkar. Peygamber Efendimizin zamanında burası şehrin dışında, açık bir alandı. Resûlullah bayram namazlarını kendi mescidinde değil, ümmetiyle birlikte bu açık alanda, musallâda kıldırırdı.\n\n"
          "Gamâme bulut demektir. Rivayete göre Medine'de kuraklık olduğu bir dönemde Peygamber Efendimiz buraya çıkıp yağmur duası yaptı. Gökyüzünde bulutlar toplandı ve yağmur yağdı. Mescidin adının bu hatıradan geldiği nakledilir.\n\n"
          "Asırlar sonra, Ömer bin Abdülaziz Medine valisiyken bu musallânın yerine bir mescit yaptırdı. Bugün gördüğünüz yapı ise Osmanlı Sultanı Abdülmecid döneminde inşa edildi. Altı kubbesiyle hâlâ o dönemin zarafetini taşır.\n\n"
          "Hemen yakınında iki küçük mescit daha vardır. Biri Hz. Ebû Bekir'e, diğeri Hz. Ali'ye nispet edilir. Nakledildiğine göre bu sahâbîler halifelikleri döneminde bayram namazlarını bu noktalarda kıldırmışlardır. Böylece bu küçük meydan, asırlar boyunca Medine'nin bayram sevincine tanıklık etmiştir.\n\n"
          "Burada, Peygamber Efendimizin bayramlarda ümmetiyle bir araya gelişini ve darlık zamanında Allah'a nasıl yöneldiğini hatırlayalım.",
      en: "If you walk a few hundred metres west from the Prophet's Mosque, al-Ghamamah Mosque appears before you with its simple stone walls and small domes. In the time of the Prophet this was an open area outside the town. The Prophet led the Eid prayers not in his own mosque but here in this open space, the musalla, together with his community.\n\n"
          "Ghamamah means cloud. According to some narrations, at a time of drought in Madinah the Prophet came out here and prayed for rain. Clouds gathered in the sky and rain fell. It is said that the mosque takes its name from this memory.\n\n"
          "Centuries later, when Umar ibn Abd al-Aziz was governor of Madinah, he had a mosque built on the site of this prayer ground. The building you see today was built under the Ottoman Sultan Abdulmejid. With its six domes, it still carries the elegance of that era.\n\n"
          "Close by there are two more small mosques. One is attributed to Abu Bakr and the other to Ali. It is related that these Companions led the Eid prayers at these spots during their caliphates. So this small square has witnessed the joy of Eid in Madinah for centuries.\n\n"
          "Here let us remember how the Prophet gathered with his community on the days of Eid, and how he turned to Allah in times of hardship.",
      ar: "إذا مشيتم بضع مئات من الأمتار غربًا من المسجد النبوي ظهر لكم مسجد الغمامة بجدرانه الحجرية البسيطة وقبابه الصغيرة. كان هذا الموضع في عهد النبي صلى الله عليه وسلم فضاءً خارج البلد، وكان صلى الله عليه وسلم يصلي العيدين لا في مسجده بل هنا في هذا الفضاء، في المصلّى، مع أمته.\n\n"
          "والغمامة هي السحابة. ويُروى أن المدينة أصابها القحط يومًا، فخرج النبي صلى الله عليه وسلم إلى هنا واستسقى، فاجتمع السحاب في السماء ونزل المطر، ويُقال إن المسجد سُمّي بهذه الذكرى.\n\n"
          "وبعد قرون، لما كان عمر بن عبد العزيز واليًا على المدينة، بنى مسجدًا في موضع هذا المصلّى. أما المبنى الذي ترونه اليوم فقد شُيّد في عهد السلطان العثماني عبد المجيد، وما زال بقبابه الست يحمل رونق تلك الحقبة.\n\n"
          "وبالقرب منه مسجدان صغيران آخران، يُنسب أحدهما إلى أبي بكر الصديق والآخر إلى علي بن أبي طالب رضي الله عنهما. ويُروى أن هذين الصحابيين صلّيا العيد في هذين الموضعين في خلافتهما. وهكذا شهدت هذه الساحة الصغيرة فرحة العيد في المدينة عبر القرون.\n\n"
          "فلنتذكر هنا كيف كان النبي صلى الله عليه وسلم يجتمع بأمته في أيام العيد، وكيف كان يلجأ إلى الله في أوقات الشدة.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi, “Namazgâh”", "https://islamansiklopedisi.org.tr/namazgah"),
      GeziKaynak("Wikipedia, “Mosque of Al-Ghamama”", "https://en.wikipedia.org/wiki/Mosque_of_Al-Ghamama"),
      GeziKaynak("OpenStreetMap, way 369055309 (Gamâme)", "https://www.openstreetmap.org/way/369055309"),
      GeziKaynak("OpenStreetMap, way 369085848 (Mescid-i Ebû Bekir)", "https://www.openstreetmap.org/way/369085848"),
      GeziKaynak("OpenStreetMap, way 444235531 (Mescid-i Ali)", "https://www.openstreetmap.org/way/444235531"),
    ],
  ),
];
