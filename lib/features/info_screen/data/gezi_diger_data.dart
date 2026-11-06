import 'package:latlong2/latlong.dart';

import 'gezilecek_yerler_data.dart';
import 'l10n_text.dart';

/// Mekke ve Medine dışındaki önemli yerler (Bedir, Taif, Hudeybiye, Hayber, Cidde).
///
/// Bilgiler: TDV İslâm Ansiklopedisi ("Bedir Gazvesi", "Tâif", "Abdullah b. Abbas",
/// "Addâs", "Hudeybiye Antlaşması", "Hayber", "Cidde"); destek olarak Vikipedi.
/// Ayetler: api.quran.com (text_uthmani), 6 Kasım 2026.
/// Koordinatlar: OpenStreetMap (Nominatim / Overpass), 6 Kasım 2026.
/// Uzaklıklar: TDV İslâm Ansiklopedisi; Hudeybiye için kuş uçuşu hesap.
const List<GeziYeri> kDigerYerler = [
  // ------------------------------------------------------------------ BEDİR
  GeziYeri(
    id: 'bedir',
    bolge: GeziBolge.diger,
    tur: GeziTur.savasAlani,
    ad: L10nText(tr: "Bedir", en: "Badr", ar: "بدر"),
    arapcaAd: L10nText.same("بدر"),
    altBaslik: L10nText(
      tr: "Bedir Savaşı'nın yaşandığı yer, Mescid-i Arîş ve Bedir Şehitliği",
      en: "Site of the Battle of Badr, the Arish Mosque and the Martyrs' Cemetery",
      ar: "موقع غزوة بدر الكبرى ومسجد العريش ومقبرة الشهداء",
    ),
    sehir: L10nText(tr: "Bedir (Medine bölgesi)", en: "Badr (Madinah Province)", ar: "بدر (منطقة المدينة المنورة)"),
    konum: LatLng(23.7751855, 38.7935112), // OSM node 3148018114 (مسجد العريش)
    uzaklik: L10nText(
      tr: "Medine'ye ~160 km (güneybatı)",
      en: "~160 km southwest of Madinah",
      ar: "نحو 160 كم جنوب غرب المدينة المنورة",
    ),
    uygunSaat: L10nText(tr: "Sabah erken, sıcaktan önce", en: "Early morning, before the heat", ar: "في الصباح الباكر قبل اشتداد الحر"),
    ziyaretSuresi: L10nText(tr: "1–1,5 saat (yol hariç)", en: "1–1.5 hours (excluding travel)", ar: "ساعة إلى ساعة ونصف (دون الطريق)"),
    genel: L10nText(
      tr: "Bedir, Medine'nin yaklaşık 160 km güneybatısında, Kızıldeniz kıyısına 30 km kadar uzaklıkta bulunan bir kasabadır. Eskiden Mekke–Medine yolunun Suriye kervan yoluyla birleştiği noktada, kuyularıyla bilinen bir konak yeriydi; burada her yıl zilkade ayının başında sekiz gün süren bir panayır kurulurdu. Bugün Medine bölgesine bağlı Bedir ilçesinin merkezidir.\n\n"
          "Ziyaretçilerin uğradığı başlıca yerler; Hz. Peygamber'in savaş sırasında karargâh olarak kullandığı gölgeliğin (arîş) bulunduğu yerde yapıldığı kabul edilen Mescid-i Arîş, savaşta şehit düşen on dört sahâbînin yattığı Bedir Şehitliği ve savaşın geçtiği ovadır. Şehitliğin önündeki levhada şehitlerin adları yazılıdır.",
      en: "Badr is a small town about 160 km southwest of Madinah and some 30 km from the Red Sea coast. In the past it was a staging post known for its wells, where the Makkah–Madinah road met the caravan route to Syria; every year a fair lasting eight days was held here at the beginning of the month of Dhul-Qa'dah. Today it is the centre of Badr Governorate in the Madinah Province.\n\n"
          "The main places visitors stop at are the Arish Mosque, believed to stand where the shelter (arish) that served as the Prophet's command post during the battle was set up; the Badr Martyrs' Cemetery, where the fourteen Companions martyred in the battle rest; and the plain where the battle took place. A plaque in front of the cemetery lists the names of the martyrs.",
      ar: "بدر بلدة صغيرة تقع على بعد نحو 160 كيلومترًا جنوب غرب المدينة المنورة، وعلى نحو 30 كيلومترًا من ساحل البحر الأحمر. وكانت قديمًا منزلًا للقوافل مشهورًا بآباره، حيث يلتقي طريق مكة والمدينة بطريق القوافل إلى الشام، وكانت تُقام فيها كل عام سوق تستمر ثمانية أيام في أول ذي القعدة. وهي اليوم مركز محافظة بدر التابعة لمنطقة المدينة المنورة.\n\n"
          "وأبرز ما يزوره الناس فيها: مسجد العريش الذي يُعتقد أنه بُني في موضع العريش الذي كان مقرّ قيادة النبي صلى الله عليه وسلم في المعركة، ومقبرة شهداء بدر التي تضم أربعة عشر صحابيًا استُشهدوا في الغزوة، والسهل الذي دارت فيه المعركة. وقد كُتبت أسماء الشهداء على لوحة أمام المقبرة.",
    ),
    tarihce: L10nText(
      tr: "Hicretin 2. yılında Ebû Süfyân idaresindeki büyük bir Kureyş ticaret kervanı Suriye'den dönüyordu. Hz. Peygamber, 12 Ramazan'da (8 Mart 624) yaklaşık 305 kişilik bir kuvvetle (bazı kaynaklarda 313) Medine'den çıktı; orduda yetmiş deve ve iki at vardı. Durumu öğrenen Ebû Süfyân sahil yolunu tutarak kervanı kurtardı ve Mekke'den yardım istedi. Ebû Cehil komutasında yaklaşık 1000 kişilik bir ordu yola çıktı; kervanın kurtulduğu haber alındığı halde güç gösterisi için Bedir'e doğru ilerlemeyi sürdürdü.\n\n"
          "Kur'an, iki ordunun Bedir'e birbirinden habersiz geldiğini bildirir (Enfâl 8/42). Savaştan önceki gece yağan şiddetli yağmur iki tarafın da hareketini durdurdu. Hz. Peygamber kuyulara Kureyş'ten önce ulaştı ve Hubâb b. Münzir'in önerisiyle mevzilendi. Savaştan önce Hz. Ömer'i elçi olarak göndererek Kureyş'e savaşmadan Mekke'ye dönmelerini teklif etti; ancak Kureyş savaşta ısrar etti.\n\n"
          "17 Ramazan 2 (13 Mart 624) günü savaş, Hz. Hamza, Hz. Ali ve Ubeyde b. Hâris'in katıldığı teke tek çarpışmalarla başladı ve ikindiye doğru müslümanların kesin zaferiyle sona erdi. Ebû Cehil dahil yetmiş müşrik öldü, yetmiş kişi esir alındı; müslümanlar on dört şehit verdi. Hz. Peygamber şehitlerin namazını kılarak onları defnettirdi; Kureyş'in ölülerini de gömdürdü.\n\n"
          "Hz. Peygamber esirlere iyi davranılmasını emretti. Esirlerin çoğu fidye karşılığında, bir kısmı karşılıksız serbest bırakıldı; okuma yazma bilenlerin ise on müslümana okuma yazma öğretmeleri karşılığında serbest bırakılması kararlaştırıldı. Bedir zaferi, Medine'deki İslâm toplumuna bütün Arap yarımadasında büyük itibar kazandırdı.",
      en: "In the second year of the Hijrah a large Quraysh trade caravan led by Abu Sufyan was returning from Syria. On 12 Ramadan (8 March 624) the Prophet set out from Madinah with about 305 men (313 in some sources); the force had seventy camels and two horses. Learning of this, Abu Sufyan took the coastal road, saved the caravan and called on Makkah for help. An army of about 1,000 men under Abu Jahl set out and, even after hearing that the caravan was safe, kept marching towards Badr to show its strength.\n\n"
          "The Qur'an states that the two armies arrived at Badr unaware of each other (al-Anfal 8:42). Heavy rain on the night before the battle halted both sides. The Prophet reached the wells before the Quraysh and took up position on the advice of Hubab ibn al-Mundhir. Before the battle he sent Umar as an envoy, offering the Quraysh to return to Makkah without fighting, but they insisted on battle.\n\n"
          "On 17 Ramadan 2 AH (13 March 624) the battle opened with single combats in which Hamzah, Ali and Ubaydah ibn al-Harith took part, and it ended towards the afternoon with a decisive victory for the Muslims. Seventy of the polytheists, including Abu Jahl, were killed and seventy were taken captive; the Muslims lost fourteen martyrs. The Prophet led the funeral prayer for the martyrs and had them buried; he also had the dead of the Quraysh buried.\n\n"
          "The Prophet ordered that the captives be treated well. Most were released for a ransom and some without any payment, while those who could read and write were freed on condition that each taught ten Muslims to read and write. The victory at Badr earned the Muslim community of Madinah great standing throughout the Arabian Peninsula.",
      ar: "في السنة الثانية للهجرة كانت قافلة تجارية كبيرة لقريش بقيادة أبي سفيان عائدة من الشام. فخرج النبي صلى الله عليه وسلم من المدينة في الثاني عشر من رمضان (8 مارس 624م) في نحو ثلاثمئة وخمسة رجال (وفي بعض المصادر ثلاثمئة وثلاثة عشر)، ومعهم سبعون بعيرًا وفرسان. فلما علم أبو سفيان بذلك سلك طريق الساحل فنجت القافلة، واستنجد بأهل مكة، فخرج جيش من نحو ألف رجل بقيادة أبي جهل، ومضى نحو بدر إظهارًا للقوة مع علمه بنجاة القافلة.\n\n"
          "ويخبر القرآن الكريم أن الجيشين وصلا إلى بدر وكلٌّ منهما لا يعلم بالآخر (الأنفال 8/42). ونزل في الليلة السابقة للمعركة مطر شديد حبس الفريقين. وسبق النبي صلى الله عليه وسلم قريشًا إلى الآبار، ونزل منزله بمشورة الحُباب بن المنذر. وقبل القتال أرسل عمر بن الخطاب إلى قريش يعرض عليهم الرجوع إلى مكة دون قتال، فأبوا إلا القتال.\n\n"
          "وفي السابع عشر من رمضان سنة 2هـ (13 مارس 624م) بدأت المعركة بالمبارزة، وخرج فيها حمزة وعلي وعبيدة بن الحارث، ثم انتهت قرب العصر بنصر حاسم للمسلمين. قُتل من المشركين سبعون منهم أبو جهل، وأُسر سبعون، واستُشهد من المسلمين أربعة عشر. وصلى النبي صلى الله عليه وسلم على الشهداء ودفنهم، وأمر بدفن قتلى قريش كذلك.\n\n"
          "وأمر النبي صلى الله عليه وسلم بالإحسان إلى الأسرى، فأُطلق أكثرهم بالفداء وبعضهم بلا مقابل، وأُطلق من يعرف القراءة والكتابة على أن يعلّم كل واحد منهم عشرة من المسلمين. وأكسب نصر بدر المجتمعَ المسلم في المدينة مكانة عظيمة في جزيرة العرب كلها.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "12 Ramazan 2 / 8 Mart 624", en: "12 Ramadan 2 AH / 8 March 624", ar: "12 رمضان 2هـ / 8 مارس 624م"),
        metin: L10nText(
          tr: "Hz. Peygamber yaklaşık 305 kişiyle Medine'den yola çıktı.",
          en: "The Prophet set out from Madinah with about 305 men.",
          ar: "خرج النبي صلى الله عليه وسلم من المدينة في نحو ثلاثمئة وخمسة رجال.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Savaştan önceki gece", en: "The night before the battle", ar: "ليلة المعركة"),
        metin: L10nText(
          tr: "Şiddetli yağmur yağdı; iki ordu da yerinde kaldı.",
          en: "Heavy rain fell and both armies stayed where they were.",
          ar: "نزل مطر شديد فبقي الجيشان في مكانهما.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "17 Ramazan 2 / 13 Mart 624, sabah", en: "17 Ramadan 2 AH / 13 March 624, morning", ar: "17 رمضان 2هـ / 13 مارس 624م، صباحًا"),
        metin: L10nText(
          tr: "Müslümanlar kuyulara önce ulaştı; Hz. Ömer barış teklifiyle Kureyş'e gönderildi, teklif reddedildi.",
          en: "The Muslims reached the wells first; Umar was sent to the Quraysh with an offer of peace, which was refused.",
          ar: "سبق المسلمون إلى الآبار، وأُرسل عمر إلى قريش يعرض الصلح فرفضوا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "17 Ramazan 2, gün içinde", en: "17 Ramadan 2 AH, during the day", ar: "17 رمضان 2هـ، أثناء النهار"),
        metin: L10nText(
          tr: "Teke tek çarpışmalarla başlayan savaş, ikindiye doğru müslümanların zaferiyle bitti; on dört sahâbî şehit oldu.",
          en: "The battle, which began with single combats, ended towards the afternoon in victory for the Muslims; fourteen Companions were martyred.",
          ar: "بدأت المعركة بالمبارزة وانتهت قرب العصر بنصر المسلمين، واستُشهد أربعة عشر صحابيًا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Savaştan sonra", en: "After the battle", ar: "بعد المعركة"),
        metin: L10nText(
          tr: "Esirlerin bir kısmı fidyeyle, okuma yazma bilenler on müslümana okuma yazma öğretmeleri karşılığında serbest bırakıldı.",
          en: "Some captives were freed for ransom; those who could read and write were freed in return for teaching ten Muslims each.",
          ar: "أُطلق بعض الأسرى بالفداء، وأُطلق من يحسن الكتابة مقابل تعليم عشرة من المسلمين.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Ramazan sonu – Şevval başı 2", en: "End of Ramadan – early Shawwal 2 AH", ar: "أواخر رمضان – أوائل شوال 2هـ"),
        metin: L10nText(
          tr: "Hz. Peygamber ordusuyla Medine'ye döndü.",
          en: "The Prophet returned to Madinah with his army.",
          ar: "عاد النبي صلى الله عليه وسلم بجيشه إلى المدينة.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Bedir, Kur'an'da adıyla anılan bir savaştır. Âl-i İmrân sûresinde, müslümanlar sayıca az ve güçsüzken Allah'ın onlara Bedir'de yardım ettiği hatırlatılır; Enfâl sûresinde ise meleklerle yardım edildiği bildirilir. Kur'an bu günü, hak ile bâtılın ayrıldığı gün anlamında “Yevmü'l-furkân” olarak anar (Enfâl 8/41).\n\n"
          "Bedir'e katılan sahâbîlere “Ehl-i Bedir” denir ve sahâbîler arasında ayrı bir yere sahiptirler. Hadis kaynaklarında, Bedir ehlinin bağışlandığı müjdesini bildiren rivayetler yer alır (Buhârî, Meğâzî, 9; Müslim, Fezâilü's-sahâbe, 161). Bedir ziyareti, sabır ve tevekkülle hareket eden az sayıdaki müminin Allah'ın yardımına nasıl eriştiğini tefekkür etmek için bir vesiledir.",
      en: "Badr is a battle mentioned by name in the Qur'an. Surah Al Imran reminds the believers that Allah helped them at Badr when they were few and weak, and Surah al-Anfal states that they were reinforced with angels. The Qur'an calls that day “the Day of the Criterion” (Yawm al-Furqan), the day on which truth was distinguished from falsehood (al-Anfal 8:41).\n\n"
          "The Companions who took part in Badr are called “the people of Badr” (Ahl Badr) and hold a special rank among the Companions. The hadith collections contain narrations giving the glad tidings that the people of Badr were forgiven (al-Bukhari, al-Maghazi, 9; Muslim, Fada'il al-Sahabah, 161). A visit to Badr is an occasion to reflect on how a small group of believers who acted with patience and trust in Allah attained His help.",
      ar: "بدر غزوة ذُكرت باسمها في القرآن الكريم؛ ففي سورة آل عمران تذكيرٌ بأن الله نصر المسلمين ببدر وهم قلة أذلة، وفي سورة الأنفال بيانٌ أنهم أُمدّوا بالملائكة. وسمّى القرآن ذلك اليوم «يوم الفرقان» الذي فُرّق فيه بين الحق والباطل (الأنفال 8/41).\n\n"
          "ويُسمّى من شهد بدرًا من الصحابة «أهل بدر»، ولهم منزلة خاصة بين الصحابة، وفي كتب الحديث روايات تبشّر أهل بدر بالمغفرة (البخاري، المغازي، 9؛ مسلم، فضائل الصحابة، 161). وزيارة بدر فرصة للتأمل في كيف نال قلةٌ من المؤمنين نصرَ الله بصبرهم وتوكلهم عليه.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "وَلَقَدْ نَصَرَكُمُ ٱللَّهُ بِبَدْرٍ وَأَنتُمْ أَذِلَّةٌ ۖ فَٱتَّقُوا۟ ٱللَّهَ لَعَلَّكُمْ تَشْكُرُونَ",
        meal: L10nText(
          tr: "Andolsun ki siz zayıf bir durumdayken Allah size Bedir'de yardım etmişti. O halde Allah'tan sakının ki şükredebilesiniz.",
          en: "Allah had already given you victory at Badr while you were weak. So fear Allah, that you may be grateful.",
          ar: "يذكّر الله المؤمنين بنصره إياهم يوم بدر وهم قليلو العدد والعُدّة، ويأمرهم بتقواه شكرًا لنعمته.",
        ),
        kaynak: L10nText(tr: "Âl-i İmrân 3/123", en: "Al Imran 3:123", ar: "آل عمران 3/123"),
      ),
      GeziAlinti(
        arapca: "إِذْ تَسْتَغِيثُونَ رَبَّكُمْ فَٱسْتَجَابَ لَكُمْ أَنِّى مُمِدُّكُم بِأَلْفٍ مِّنَ ٱلْمَلَـٰٓئِكَةِ مُرْدِفِينَ",
        meal: L10nText(
          tr: "Hani siz Rabbinizden yardım diliyordunuz; O da “Ben size birbiri ardınca gelen bin melekle yardım edeceğim” diye cevap vermişti.",
          en: "Remember when you asked your Lord for help, and He answered you: “I will reinforce you with a thousand angels, following one after another.”",
          ar: "يذكّر الله المؤمنين باستغاثتهم به يوم بدر، وبأنه استجاب لهم فأمدّهم بألف من الملائكة يتبع بعضهم بعضًا.",
        ),
        kaynak: L10nText(tr: "Enfâl 8/9", en: "Al-Anfal 8:9", ar: "الأنفال 8/9"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Şehitliğe vardığınızda selam verin; Fâtiha ve İhlâs okuyup şehitler ve bütün müminler için dua edin.",
        en: "When you reach the cemetery, greet the martyrs with salam; recite al-Fatihah and al-Ikhlas and pray for the martyrs and all believers.",
        ar: "إذا وصلت إلى المقبرة فسلّم على أهلها، واقرأ الفاتحة والإخلاص، وادعُ للشهداء ولسائر المؤمنين.",
      ),
      L10nText(
        tr: "Ziyaret ibret ve dua içindir; parmaklıklara bez bağlamak, kabirlere yüz sürmek gibi davranışlardan kaçının.",
        en: "The visit is for reflection and prayer; avoid tying cloth to the railings or rubbing your face on the graves.",
        ar: "الزيارة للعبرة والدعاء، فاجتنب ربط الخِرَق بالسياج أو التمسح بالقبور.",
      ),
      L10nText(
        tr: "Mescid-i Arîş'te vakit uygunsa namaz kılın ve sesinizi alçak tutun.",
        en: "If it is prayer time, pray at the Arish Mosque, and keep your voice low.",
        ar: "صلِّ في مسجد العريش إن وافق وقت الصلاة، واخفض صوتك.",
      ),
      L10nText(
        tr: "Bedir Medine'den uzaktır; ziyareti genellikle günübirlik tur olarak, sabah erken planlayın.",
        en: "Badr is far from Madinah; plan the visit as a day trip, setting off early in the morning.",
        ar: "بدر بعيدة عن المدينة، فخطط لزيارتها في رحلة يومية تبدأ في الصباح الباكر.",
      ),
      L10nText(
        tr: "Yaz aylarında sıcaklık çok yüksektir; su, şapka ve güneş kremi bulundurun.",
        en: "Temperatures are very high in summer; carry water, a hat and sunscreen.",
        ar: "الحرارة شديدة في الصيف، فاحمل الماء وغطاء الرأس وواقي الشمس.",
      ),
      L10nText(
        tr: "Savaş alanını gezerken ilgili ayetleri ve siyeri rehberinizden dinleyin; olayları tefekkürle yaşayın.",
        en: "While touring the battlefield, listen to the related verses and the Sirah from your guide and reflect on the events.",
        ar: "استمع من مرشدك إلى الآيات وأحداث السيرة المتعلقة بالمعركة وأنت تتجول في الموقع، وتأمل ما جرى.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Bedir Şehitliği duvar ve parmaklıkla çevrilidir; ziyaret genellikle parmaklıkların önünden yapılır. Suudi uygulamasında mezarlık ziyaretlerinde kadınlara yönelik kısıtlamalar olabilir. Mescid-i Arîş'in namaz vakitleri dışında kapalı olabileceği bildirilmektedir.",
      en: "The Badr Martyrs' Cemetery is enclosed by a wall and railings; visitors usually stand in front of the railings. Under Saudi practice there may be restrictions on women visiting cemeteries. The Arish Mosque is reported to be closed at times outside prayer times.",
      ar: "مقبرة شهداء بدر محاطة بسور وسياج، وتكون الزيارة عادةً من أمام السياج. وقد تُطبَّق في المملكة قيود على زيارة النساء للمقابر. ويُذكر أن مسجد العريش قد يكون مغلقًا في غير أوقات الصلاة.",
    ),
    anlatim: L10nText(
      tr: "Medine'den güneybatıya, Kızıldeniz'e doğru uzanan çöl yolunun sonunda, kuyularıyla bilinen küçük bir konak yeri vardı: Bedir. Burası Mekke ile Şam arasında gidip gelen kervanların su aldığı, her yıl panayır kurulan sıradan bir duraktı. Hicretin ikinci yılında bu sıradan durak, İslâm tarihinin en önemli günlerinden birine sahne oldu.\n\n"
          "Ramazan ayıydı. Hz. Peygamber, Ebû Süfyân'ın yönettiği büyük bir Kureyş kervanının Şam'dan dönmekte olduğunu öğrenmiş, üç yüz kadar sahâbîyle Medine'den yola çıkmıştı. Yanlarında yalnızca yetmiş deve ve iki at vardı. Ebû Süfyân kervanı sahil yolundan geçirerek kurtardı ve Mekke'den yardım istedi. Ebû Cehil'in komutasında bin kişilik bir ordu yola çıktı. Kervan kurtulduğu halde bu ordu, gücünü göstermek için Bedir'e doğru ilerlemeyi sürdürdü. Kur'an, iki ordunun birbirinden habersiz biçimde Bedir'e geldiğini haber verir.\n\n"
          "Savaştan önceki gece şiddetli bir yağmur yağdı. Sabah olunca Hz. Peygamber kuyulara Kureyş'ten önce ulaştı ve ashabıyla istişare ederek mevzi aldı. Savaşmadan önce Hz. Ömer'i göndererek Kureyş'e geri dönmelerini teklif etti, fakat bu teklif kabul görmedi. Ramazan'ın on yedinci günü savaş, eski Arap geleneğine göre teke tek çarpışmalarla başladı. Hz. Hamza ve Hz. Ali karşılarındakileri yendi, Ubeyde bin Hâris ise ağır yaralandı. Ardından başlayan genel çarpışma, ikindiye doğru müslümanların kesin zaferiyle sona erdi.\n\n"
          "Kur'an bu zaferi müminlere şöyle hatırlatır: Andolsun ki siz zayıf bir durumdayken Allah size Bedir'de yardım etmişti. Enfâl sûresi de müminlerin Rablerinden yardım dilediğini ve Allah'ın onlara birbiri ardınca gelen meleklerle yardım ettiğini bildirir. Savaşta on dört sahâbî şehit oldu. Hz. Peygamber onların cenaze namazını kıldırdı ve onları bu topraklara defnetti. Bugün önünde durduğunuz şehitlik, onların istirahatgâhıdır.\n\n"
          "Bedir'in bir başka dersi de esirlere gösterilen muameledir. Hz. Peygamber esirlere iyi davranılmasını emretti. Okuma yazma bilen esirler, on müslümana okuma yazma öğretmeleri karşılığında serbest bırakıldı. Böylece bir savaş meydanı, ilme verilen değerin de sembolü oldu.\n\n"
          "Bu topraklarda dururken, sayıca az ama imanı güçlü bir topluluğun sabrını ve tevekkülünü hatırlayalım. Şehitlere selam verelim, onlar için ve bütün müminler için dua edelim.",
      en: "At the end of the desert road that runs southwest from Madinah towards the Red Sea there was a small staging post known for its wells: Badr. It was an ordinary stop where caravans travelling between Makkah and Syria took on water and where a fair was held every year. In the second year of the Hijrah this ordinary stop became the scene of one of the most important days in Islamic history.\n\n"
          "It was the month of Ramadan. The Prophet had learned that a large Quraysh caravan led by Abu Sufyan was returning from Syria, and he set out from Madinah with about three hundred Companions. They had only seventy camels and two horses. Abu Sufyan saved the caravan by taking the coastal road and called on Makkah for help. An army of a thousand men set out under the command of Abu Jahl. Although the caravan was safe, this army kept marching towards Badr to show its strength. The Qur'an tells us that the two armies came to Badr unaware of each other.\n\n"
          "On the night before the battle heavy rain fell. In the morning the Prophet reached the wells before the Quraysh and took up position after consulting his Companions. Before fighting, he sent Umar to offer the Quraysh a chance to turn back, but the offer was refused. On the seventeenth day of Ramadan the battle began, in the old Arab manner, with single combats. Hamzah and Ali overcame their opponents, while Ubaydah ibn al-Harith was gravely wounded. The general battle that followed ended towards the afternoon in a decisive victory for the Muslims.\n\n"
          "The Qur'an reminds the believers of this victory with the words: Allah had already given you victory at Badr while you were weak. Surah al-Anfal also tells how the believers called on their Lord for help and how Allah reinforced them with angels coming one after another. Fourteen Companions were martyred in the battle. The Prophet led their funeral prayer and buried them in this land. The cemetery you are standing before is their resting place.\n\n"
          "Another lesson of Badr is the treatment of the captives. The Prophet ordered that they be treated well. Captives who could read and write were set free in return for teaching ten Muslims to read and write. In this way a battlefield also became a symbol of the value given to knowledge.\n\n"
          "As we stand on this ground, let us remember the patience and trust of a community that was small in number but strong in faith. Let us greet the martyrs with peace and pray for them and for all the believers.",
      ar: "في نهاية طريق الصحراء الممتد من المدينة المنورة نحو الجنوب الغربي باتجاه البحر الأحمر، كان هناك منزل صغير للقوافل اشتهر بآباره، اسمه بدر. كان محطة عادية تتزود فيها القوافل بالماء في طريقها بين مكة والشام، وتُقام فيه سوق كل عام. وفي السنة الثانية للهجرة صار هذا المكان العادي مسرحًا ليوم من أعظم أيام التاريخ الإسلامي.\n\n"
          "كان ذلك في شهر رمضان. علم النبي صلى الله عليه وسلم أن قافلة كبيرة لقريش يقودها أبو سفيان عائدة من الشام، فخرج من المدينة في نحو ثلاثمئة من أصحابه، ليس معهم إلا سبعون بعيرًا وفرسان. فسلك أبو سفيان بالقافلة طريق الساحل فنجت، واستنجد بأهل مكة، فخرج جيش من ألف رجل بقيادة أبي جهل. ومع نجاة القافلة مضى ذلك الجيش نحو بدر ليُظهر قوته. ويخبرنا القرآن الكريم أن الجيشين وصلا إلى بدر وكل منهما لا يعلم بالآخر.\n\n"
          "وفي الليلة السابقة للمعركة نزل مطر شديد. فلما أصبحوا سبق النبي صلى الله عليه وسلم قريشًا إلى الآبار، ونزل منزله بعد أن شاور أصحابه. وقبل القتال أرسل عمر بن الخطاب يعرض على قريش أن يرجعوا، فلم يقبلوا. وفي اليوم السابع عشر من رمضان بدأت المعركة بالمبارزة على عادة العرب، فغلب حمزة وعلي خصميهما، وجُرح عبيدة بن الحارث جرحًا بليغًا. ثم التحم الجيشان، وانتهت المعركة قرب العصر بنصر حاسم للمسلمين.\n\n"
          "ويذكّر القرآن المؤمنين بهذا النصر في قوله تعالى: ولقد نصركم الله ببدر وأنتم أذلة. وتخبر سورة الأنفال أن المؤمنين استغاثوا ربهم فأمدّهم بالملائكة متتابعين. واستُشهد في المعركة أربعة عشر صحابيًا، فصلى عليهم النبي صلى الله عليه وسلم ودفنهم في هذه الأرض. والمقبرة التي تقف أمامها اليوم هي مثواهم.\n\n"
          "ومن دروس بدر أيضًا معاملة الأسرى؛ فقد أمر النبي صلى الله عليه وسلم بالإحسان إليهم، وأُطلق من يحسن القراءة والكتابة منهم على أن يعلّم كل واحد منهم عشرة من المسلمين. وهكذا صار ميدان معركة رمزًا لقيمة العلم أيضًا.\n\n"
          "ونحن نقف على هذه الأرض، فلنتذكر صبر جماعة قليلة العدد قوية الإيمان وتوكلها على الله. ولنسلّم على الشهداء، وندعُ لهم ولسائر المؤمنين.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Bedir Gazvesi", "https://islamansiklopedisi.org.tr/bedir-gazvesi"),
      GeziKaynak("OpenStreetMap – مسجد العريش (node 3148018114)", "https://www.openstreetmap.org/node/3148018114"),
      GeziKaynak("OpenStreetMap – مقبرة شهداء بدر (way 309465617)", "https://www.openstreetmap.org/way/309465617"),
      GeziKaynak("Vikipedi (Arapça) – مسجد العريش",
          "https://ar.wikipedia.org/wiki/%D9%85%D8%B3%D8%AC%D8%AF_%D8%A7%D9%84%D8%B9%D8%B1%D9%8A%D8%B4"),
      GeziKaynak("Vikipedi (Arapça) – مقبرة شهداء بدر",
          "https://ar.wikipedia.org/wiki/%D9%85%D9%82%D8%A8%D8%B1%D8%A9_%D8%B4%D9%87%D8%AF%D8%A7%D8%A1_%D8%A8%D8%AF%D8%B1"),
      GeziKaynak("Quran.com – Âl-i İmrân 3/123", "https://quran.com/3/123"),
      GeziKaynak("Quran.com – Enfâl 8/9", "https://quran.com/8/9"),
    ],
  ),

  // ------------------------------------------------------------------- TAİF
  GeziYeri(
    id: 'taif',
    bolge: GeziBolge.diger,
    tur: GeziTur.tarihiSehir,
    ad: L10nText(
      tr: "Taif: İbn Abbas Camii ve Addas Mescidi",
      en: "Taif: Ibn Abbas Mosque and Addas Mosque",
      ar: "الطائف: مسجد عبد الله بن عباس ومسجد عدّاس",
    ),
    arapcaAd: L10nText.same("الطائف"),
    altBaslik: L10nText(
      tr: "Hz. Peygamber'in davet yolculuğu ve büyük müfessir İbn Abbas'ın şehri",
      en: "The Prophet's journey of invitation and the city of the great exegete Ibn Abbas",
      ar: "رحلة النبي صلى الله عليه وسلم في الدعوة ومدينة ترجمان القرآن ابن عباس",
    ),
    sehir: L10nText(tr: "Taif", en: "Taif", ar: "الطائف"),
    konum: LatLng(21.2704067, 40.4084565), // OSM way 112016836 (مسجد عبدالله بن العباس)
    uzaklik: L10nText(
      tr: "Mekke'ye ~88 km (doğu)",
      en: "~88 km east of Makkah",
      ar: "نحو 88 كم شرق مكة المكرمة",
    ),
    uygunSaat: L10nText(tr: "Sabah ya da ikindiden sonra", en: "Morning or late afternoon", ar: "في الصباح أو بعد العصر"),
    ziyaretSuresi: L10nText(tr: "2–3 saat (iki mescit)", en: "2–3 hours (both mosques)", ar: "ساعتان إلى ثلاث (للمسجدين)"),
    genel: L10nText(
      tr: "Taif, Mekke'nin yaklaşık 88 km doğusunda, Serât dağlarında, denizden yaklaşık 1700 m yükseklikteki Vec vadisinde kurulmuş bir şehirdir. Serin yaz iklimi, bağ ve bahçeleri, özellikle üzümüyle tarih boyunca Mekkelilerin sayfiye yeri olmuştur. Şehrin adı, Câhiliye döneminde Sakîf kabilesinin çevresini surla kuşatmasından gelir; “tâif” kelimesi “etrafı çevrili” anlamındadır.\n\n"
          "Şehrin merkezinde, büyük müfessir sahâbî Abdullah b. Abbas'ın kabrinin yanında yükselen İbn Abbas Camii bulunur; caminin bitişiğinde İbn Abbas Mezarlığı yer alır. Şehrin güneybatısındaki el-Mesnâ mevkiinde ise, Hz. Peygamber'e üzüm ikram ederek müslüman olan Addâs'ın adıyla anılan küçük Addas Mescidi vardır. Bu mescidin, geleneksel olarak Hz. Peygamber'in Taif'ten dönüşte sığındığı bağın bulunduğu yerde yapıldığı kabul edilir.",
      en: "Taif lies about 88 km east of Makkah in the Sarawat Mountains, in the valley of Wajj at an altitude of about 1,700 m. With its cool summers, vineyards and orchards, and above all its grapes, it has served throughout history as a summer retreat for the people of Makkah. The city's name comes from the wall with which the tribe of Thaqif surrounded it in pre-Islamic times; “ta'if” means “that which is encircled”.\n\n"
          "In the city centre stands the Ibn Abbas Mosque, next to the grave of the great Companion and exegete Abdullah ibn Abbas, with the Ibn Abbas Cemetery beside it. In the al-Mathnah area to the southwest of the city is the small Addas Mosque, named after Addas, who embraced Islam after offering grapes to the Prophet. Tradition holds that this mosque was built where the garden in which the Prophet took refuge on leaving Taif once stood.",
      ar: "الطائف مدينة تقع على بعد نحو 88 كيلومترًا شرق مكة المكرمة في جبال السراة، في وادي وَجّ على ارتفاع نحو 1700 متر عن سطح البحر. وقد كانت عبر التاريخ مصيفًا لأهل مكة لاعتدال صيفها وكثرة بساتينها وكرومها، ولا سيما عنبها. ويرجع اسمها إلى السور الذي أحاطتها به ثقيف في الجاهلية، فالطائف بمعنى المحاط.\n\n"
          "وفي وسط المدينة يقوم مسجد عبد الله بن عباس بجوار قبر الصحابي الجليل ترجمان القرآن، وإلى جانبه مقبرة ابن عباس. وفي حي المثناة جنوب غرب المدينة يقع مسجد عدّاس الصغير، المنسوب إلى عدّاس الذي أسلم بعد أن قدّم العنب للنبي صلى الله عليه وسلم، ويُقال تقليديًا إنه بُني في موضع البستان الذي لجأ إليه النبي صلى الله عليه وسلم عند خروجه من الطائف.",
    ),
    tarihce: L10nText(
      tr: "Taif, İslâm'dan önce Sakîf kabilesinin yurdu ve Mekke'den sonra Hicaz'ın en önemli şehriydi. Kuru üzüm, bal ve deri işçiliğiyle tanınır, Ukâz gibi panayırlara ürün gönderirdi. Câhiliye döneminde şehirde Lât putunun tapınağı bulunuyordu.\n\n"
          "Peygamberliğin onuncu yılının şevval ayında (Mayıs–Haziran 620), Mekke'de baskıların arttığı bir dönemde Hz. Peygamber yanına Zeyd b. Hârise'yi alarak Taif'e gitti ve Sakîf'i İslâm'a davet etti. Taifliler daveti reddettiler, onunla alay ettiler ve onu taşlattılar. Hz. Peygamber, Utbe ve Şeybe b. Rebîa'ya ait bir bağa sığındı. Burada bağ sahiplerinin hıristiyan kölesi, Ninovalı Addâs ona bir tabak üzüm getirdi; Hz. Peygamber'le konuştuktan sonra onun peygamberliğini kabul ederek müslüman oldu. Addâs'ın nerede ve ne zaman vefat ettiği bilinmemektedir.\n\n"
          "Hicretin 8. yılında Huneyn Savaşı'nın ardından Hz. Peygamber Taif'i kuşattı; İslâm tarihinde mancınık ilk kez burada kullanıldı. Şehrin güçlü surları nedeniyle yaklaşık bir ay sonra kuşatma kaldırıldı. Dönüşte kendisinden Taifliler aleyhine beddua etmesi istendiğinde, “Allahım! Sakîfoğullarına hidayet nasip eyle; onları müslüman olarak bize gönder” diye dua etti. Hicretin 9. yılının ramazanında Taif'ten gelen bir heyet Medine'de müslüman oldu; Lât'ın bulunduğu yere Hz. Peygamber'in isteğiyle bir mescit yapıldı.\n\n"
          "Abdullah b. Abbas ömrünün sonlarında Taif'e yerleşti ve burada 68 (687) yılında yaklaşık yetmiş yaşında vefat etti. Cenaze namazını Hz. Ali'nin oğlu Muhammed b. Hanefiyye kıldırdı; Taif kuşatmasında şehit olan sahâbîlerin kabirlerinin bulunduğu yere defnedildi. Daha sonra buraya, zamanla şehrin sembolü hâline gelen İbn Abbas Camii inşa edildi. 1874'te Taif'te onun adına bir vakıf kütüphanesi kuruldu.",
      en: "Before Islam, Taif was the homeland of the tribe of Thaqif and, after Makkah, the most important city of the Hijaz. It was known for its raisins, honey and leatherwork and supplied fairs such as Ukaz. In pre-Islamic times the city housed the shrine of the idol al-Lat.\n\n"
          "In the month of Shawwal of the tenth year of prophethood (May–June 620), at a time when persecution in Makkah was growing, the Prophet went to Taif with Zayd ibn Harithah and invited Thaqif to Islam. The people of Taif rejected him, mocked him and had him pelted with stones. The Prophet took refuge in a vineyard belonging to Utbah and Shaybah ibn Rabi'ah. There Addas, a Christian servant of the owners from Nineveh, brought him a plate of grapes; after speaking with the Prophet he accepted his prophethood and became a Muslim. Where and when Addas died is not known.\n\n"
          "In the eighth year of the Hijrah, after the Battle of Hunayn, the Prophet besieged Taif; the catapult was used here for the first time in Islamic history. Because of the city's strong walls the siege was lifted after about a month. On the way back, when he was asked to curse the people of Taif, he prayed instead: “O Allah, guide Thaqif and bring them to us as Muslims.” In Ramadan of the ninth year a delegation from Taif embraced Islam in Madinah, and at the Prophet's wish a mosque was built where al-Lat had stood.\n\n"
          "Abdullah ibn Abbas settled in Taif towards the end of his life and died there in 68 AH (687) at about seventy years of age. His funeral prayer was led by Muhammad ibn al-Hanafiyyah, the son of Ali, and he was buried where the Companions martyred during the siege of Taif lay. Later the Ibn Abbas Mosque, which in time became the symbol of the city, was built here. In 1874 a waqf library bearing his name was founded in Taif.",
      ar: "كانت الطائف قبل الإسلام موطن قبيلة ثقيف، وأهمَّ مدن الحجاز بعد مكة، واشتهرت بالزبيب والعسل ودباغة الجلود، وكانت تمدّ أسواقًا كعكاظ بمنتجاتها. وكان فيها في الجاهلية بيت صنم اللات.\n\n"
          "وفي شوال من السنة العاشرة للبعثة (مايو–يونيو 620م)، حين اشتد أذى قريش بمكة، خرج النبي صلى الله عليه وسلم إلى الطائف ومعه زيد بن حارثة يدعو ثقيفًا إلى الإسلام، فردّوا دعوته واستهزؤوا به وأغروا به من رماه بالحجارة. فلجأ إلى بستان لعتبة وشيبة ابني ربيعة، فجاءه فيه عدّاس، وهو غلام نصراني لهما من أهل نينوى، بطبق من عنب، فلما كلّم النبيَّ صلى الله عليه وسلم آمن بنبوته وأسلم. ولا يُعرف أين ولا متى توفي عدّاس.\n\n"
          "وفي السنة الثامنة للهجرة، بعد غزوة حنين، حاصر النبي صلى الله عليه وسلم الطائف، واستُعمل المنجنيق فيها لأول مرة في تاريخ الإسلام. ولمناعة أسوارها رُفع الحصار بعد نحو شهر. وفي طريق العودة طُلب منه أن يدعو على أهلها فقال: «اللهم اهدِ ثقيفًا وائتِ بهم مسلمين». وفي رمضان من السنة التاسعة قدم وفد ثقيف إلى المدينة فأسلموا، وبُني بأمر النبي صلى الله عليه وسلم مسجد في موضع اللات.\n\n"
          "وقد سكن عبد الله بن عباس الطائف في آخر حياته، وتوفي فيها سنة 68هـ (687م) وله نحو سبعين سنة، وصلى عليه محمد ابن الحنفية بن علي بن أبي طالب، ودُفن في الموضع الذي فيه قبور الصحابة الذين استُشهدوا في حصار الطائف. ثم بُني هناك مسجد ابن عباس الذي صار مع الزمن رمزًا للمدينة. وفي سنة 1874م أُنشئت في الطائف مكتبة وقفية باسمه.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Şevval, nübüvvetin 10. yılı / 620", en: "Shawwal, 10th year of prophethood / 620", ar: "شوال، السنة العاشرة للبعثة / 620م"),
        metin: L10nText(
          tr: "Hz. Peygamber Zeyd b. Hârise ile Taif'e gitti; davet reddedildi ve taşlandı.",
          en: "The Prophet went to Taif with Zayd ibn Harithah; his call was rejected and he was pelted with stones.",
          ar: "خرج النبي صلى الله عليه وسلم مع زيد بن حارثة إلى الطائف، فرُدّت دعوته ورُمي بالحجارة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Aynı yolculuk", en: "The same journey", ar: "في الرحلة نفسها"),
        metin: L10nText(
          tr: "Utbe ve Şeybe'nin bağında Addâs üzüm ikram etti ve müslüman oldu.",
          en: "In the vineyard of Utbah and Shaybah, Addas offered grapes and became a Muslim.",
          ar: "في بستان عتبة وشيبة قدّم عدّاس العنب وأسلم.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "11 Şevval 8 / 1 Şubat 630", en: "11 Shawwal 8 AH / 1 February 630", ar: "11 شوال 8هـ / 1 فبراير 630م"),
        metin: L10nText(
          tr: "Huneyn Savaşı; yenilen Sakîf ve Hevâzin Taif'e sığındı.",
          en: "Battle of Hunayn; the defeated Thaqif and Hawazin took refuge in Taif.",
          ar: "غزوة حنين، ولجأ المنهزمون من ثقيف وهوازن إلى الطائف.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Şevval – Zilkade 8 / Şubat 630", en: "Shawwal – Dhul-Qa'dah 8 AH / February 630", ar: "شوال – ذو القعدة 8هـ / فبراير 630م"),
        metin: L10nText(
          tr: "Taif kuşatması; yaklaşık bir ay sonra kaldırıldı. Hz. Peygamber Sakîf'in hidayeti için dua etti.",
          en: "The siege of Taif, lifted after about a month. The Prophet prayed for Thaqif to be guided.",
          ar: "حصار الطائف، ورُفع بعد نحو شهر، ودعا النبي صلى الله عليه وسلم لثقيف بالهداية.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Ramazan 9 / 630–631", en: "Ramadan 9 AH / 630–631", ar: "رمضان 9هـ / 630–631م"),
        metin: L10nText(
          tr: "Sakîf heyeti Medine'de müslüman oldu; Osman b. Ebü'l-Âs Taif'e vali atandı.",
          en: "The delegation of Thaqif embraced Islam in Madinah; Uthman ibn Abi al-As was appointed governor of Taif.",
          ar: "أسلم وفد ثقيف في المدينة، وولّي عثمان بن أبي العاص على الطائف.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "68 / 687", en: "68 AH / 687", ar: "68هـ / 687م"),
        metin: L10nText(
          tr: "Abdullah b. Abbas Taif'te vefat etti; kabrinin yanına sonradan İbn Abbas Camii yapıldı.",
          en: "Abdullah ibn Abbas died in Taif; the Ibn Abbas Mosque was later built beside his grave.",
          ar: "توفي عبد الله بن عباس في الطائف، وبُني لاحقًا بجوار قبره مسجد ابن عباس.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("1874"),
        metin: L10nText(
          tr: "Taif'te İbn Abbas adına bir vakıf kütüphanesi kuruldu.",
          en: "A waqf library named after Ibn Abbas was founded in Taif.",
          ar: "أُنشئت في الطائف مكتبة وقفية باسم ابن عباس.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Taif, Hz. Peygamber'in tebliğ yolunda karşılaştığı en ağır sıkıntılardan birinin yaşandığı yerdir. Hz. Âişe'nin, “Uhud gününden daha ağır bir gün yaşadın mı?” sorusuna Hz. Peygamber, Taif'te yaşadıklarını anlatarak cevap vermiştir. Dağlar meleği Taiflileri cezalandırmayı teklif ettiğinde ise, onların soyundan yalnız Allah'a ibadet eden ve O'na hiçbir şeyi ortak koşmayan nesiller çıkmasını umduğunu söylemiştir (Buhârî, Bed'ü'l-halk, 7; Müslim, Cihâd, 111). Taif, sabrın, affın ve ümidin şehridir.\n\n"
          "Abdullah b. Abbas, Hz. Peygamber'in “Allahım, ona Kitab'ı öğret ve onu dinde derin anlayış sahibi kıl” duasına mazhar olmuş (Buhârî, İlim, 17; Vudû, 10), tefsir ve fıkıhta otorite kabul edilen, “Tercümânü'l-Kur'ân” unvanıyla anılan büyük bir sahâbîdir. Caminin ziyareti, onun ilmini ve Hz. Peygamber'e bağlılığını hatırlamak için bir vesiledir.",
      en: "Taif is where the Prophet faced one of the hardest trials on the path of conveying the message. When Aishah asked him, “Did you ever experience a day harder than the day of Uhud?”, the Prophet answered by describing what he went through at Taif. When the angel of the mountains offered to punish the people of Taif, he said he hoped that from their descendants would come people who worship Allah alone and associate nothing with Him (al-Bukhari, Bad' al-Khalq, 7; Muslim, al-Jihad, 111). Taif is a city of patience, forgiveness and hope.\n\n"
          "Abdullah ibn Abbas was blessed with the Prophet's prayer, “O Allah, teach him the Book and grant him deep understanding of the religion” (al-Bukhari, al-Ilm, 17; al-Wudu', 10). He is a great Companion, regarded as an authority in tafsir and fiqh and known by the title “Interpreter of the Qur'an”. A visit to his mosque is an occasion to remember his knowledge and his devotion to the Prophet.",
      ar: "الطائف هي الموضع الذي لقي فيه النبي صلى الله عليه وسلم من أشد ما لقيه في سبيل الدعوة؛ فقد سألته عائشة رضي الله عنها: هل أتى عليك يوم كان أشد من يوم أحد؟ فذكر ما لقيه في الطائف. ولما عرض عليه ملك الجبال أن يُطبق عليهم الأخشبين قال إنه يرجو أن يُخرج الله من أصلابهم من يعبد الله وحده لا يشرك به شيئًا (البخاري، بدء الخلق، 7؛ مسلم، الجهاد، 111). فالطائف مدينة الصبر والعفو والرجاء.\n\n"
          "وعبد الله بن عباس صحابي جليل نال دعاء النبي صلى الله عليه وسلم: «اللهم علّمه الكتاب» و«اللهم فقّهه في الدين» (البخاري، العلم، 17؛ الوضوء، 10)، وهو مرجع في التفسير والفقه، ويُلقّب بترجمان القرآن. وزيارة مسجده فرصة لتذكّر علمه ومحبته للنبي صلى الله عليه وسلم.",
    ),
    adab: [
      L10nText(
        tr: "İbn Abbas Camii'nde namaz kılın; mezarlık tarafına geçtiğinizde selam verip dua edin.",
        en: "Pray at the Ibn Abbas Mosque; when you pass by the cemetery, greet its people with salam and pray for them.",
        ar: "صلِّ في مسجد ابن عباس، وإذا مررت بالمقبرة فسلّم على أهلها وادعُ لهم.",
      ),
      L10nText(
        tr: "Kabirlerin bulunduğu alanda yüksek sesle konuşmaktan ve kalabalık oluşturmaktan kaçının.",
        en: "Avoid speaking loudly or crowding in the area of the graves.",
        ar: "تجنّب رفع الصوت والتزاحم عند القبور.",
      ),
      L10nText(
        tr: "Addas Mescidi'nde Hz. Peygamber'in Taif'te gösterdiği sabrı ve affediciliği tefekkür edin.",
        en: "At the Addas Mosque, reflect on the patience and forgiveness the Prophet showed at Taif.",
        ar: "تأمّل في مسجد عدّاس صبر النبي صلى الله عليه وسلم وعفوه في الطائف.",
      ),
      L10nText(
        tr: "Taif Mekke'den daha yüksek ve serindir; özellikle akşamları için bir hırka ya da ceket alın.",
        en: "Taif is higher and cooler than Makkah; take a cardigan or jacket, especially for the evenings.",
        ar: "الطائف أعلى من مكة وأبرد، فخذ معك سترة خاصة للمساء.",
      ),
      L10nText(
        tr: "Mekke–Taif yolu dağlık ve virajlıdır; yol tutmasına yatkınsanız önlem alın.",
        en: "The Makkah–Taif road is mountainous and winding; take precautions if you suffer from travel sickness.",
        ar: "طريق مكة–الطائف جبلي كثير المنعطفات، فاحتط إن كنت تُصاب بدوار الطريق.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Taif, Harem bölgesinin ve mikatların dışındadır. Taif'ten Mekke'ye umre niyetiyle dönenler, yol üzerindeki Karnü'l-Menâzil (es-Seylü'l-kebîr) mikatında ya da onun hizası kabul edilen Vâdî Muhrim'de ihrama girmelidir. İbn Abbas Camii'nin yanındaki mezarlık alanına girişte, diğer mezarlıklarda olduğu gibi kadınlara yönelik kısıtlamalar uygulanabilir.",
      en: "Taif lies outside the Haram and outside the Miqat boundary. Those returning from Taif to Makkah with the intention of Umrah must enter Ihram at the Miqat of Qarn al-Manazil (As-Sayl al-Kabir) on the way, or at Wadi Muhrim, which is considered in line with it. As at other cemeteries, restrictions on women may apply at the cemetery next to the Ibn Abbas Mosque.",
      ar: "الطائف خارج حدود الحرم وخارج المواقيت. ومن عاد منها إلى مكة يريد العمرة فعليه أن يُحرم من ميقات قرن المنازل (السيل الكبير) في طريقه، أو من وادي محرم الذي يُعدّ محاذيًا له. وقد تُطبَّق على النساء قيود في دخول المقبرة المجاورة لمسجد ابن عباس كما في سائر المقابر.",
    ),
    anlatim: L10nText(
      tr: "Mekke'nin doğusunda, Serât dağlarının serin yamaçlarında, bağları ve bahçeleriyle ünlü bir şehir uzanır: Taif. Mekkeliler yüzyıllar boyunca yazın buraya çıkar, Taif'in üzümü bütün Hicaz'da bilinirdi. Fakat Taif'i bizim için asıl anlamlı kılan, Hz. Peygamber'in burada yaşadığı derin bir imtihandır.\n\n"
          "Peygamberliğin onuncu yılıydı. Mekke'de baskılar artmış, Hz. Peygamber'in en büyük destekçileri olan Hz. Hatice ve amcası Ebû Tâlib vefat etmişti. Hz. Peygamber, yanına Zeyd bin Hârise'yi alarak Taif'e geldi ve Sakîf kabilesini İslâm'a davet etti. Ancak Taifliler onu dinlemediler, onunla alay ettiler ve peşine taş atan insanlar saldılar. Yorgun ve yaralı bir halde, Utbe ve Şeybe adlı iki Mekkelinin bağına sığındı.\n\n"
          "İşte o bağda, bu acı günün içinde bir ışık doğdu. Siyer kaynaklarının anlattığına göre bağ sahiplerinin Ninovalı hıristiyan kölesi Addâs, efendilerinin emriyle ona bir tabak üzüm getirdi. Hz. Peygamber yemeğe Allah'ın adıyla başlayınca Addâs şaşırdı. Konuştular. Hz. Peygamber, onun memleketinden olan Yunus peygamberi kardeşi olarak andı. Addâs onun peygamberliğini kabul etti ve müslüman oldu. Bugün şehrin güneybatısında, onun adıyla anılan küçük Addas Mescidi bu olayı hatırlatır.\n\n"
          "Yıllar sonra Hz. Âişe, Hz. Peygamber'e Uhud gününden daha ağır bir gün yaşayıp yaşamadığını sordu. Hz. Peygamber, Taif'te yaşadıklarını anlattı. O gün dağlar meleğinin Taif halkını cezalandırmayı teklif ettiğini, kendisinin ise bunu istemediğini, onların soyundan yalnız Allah'a ibadet eden nesiller çıkmasını umduğunu söyledi. Gerçekten de birkaç yıl sonra Sakîf kabilesi Medine'ye gelerek müslüman oldu.\n\n"
          "Taif, aynı zamanda büyük bir âlimin şehridir. Hz. Peygamber'in amcasının oğlu Abdullah bin Abbas, Kur'an'ı anlama konusunda Hz. Peygamber'in duasına mazhar olmuş ve Kur'an'ın tercümanı diye anılmıştır. Ömrünün sonunda Taif'e yerleşti ve burada vefat etti. Kabrinin yanında yükselen İbn Abbas Camii, şehrin simgesi hâline geldi.\n\n"
          "Bu şehirde dolaşırken sabrı, affı ve ümidi hatırlayalım. En zor anında bile kendisini incitenlere hidayet dileyen Peygamberimizin ahlakını kendimize örnek alalım.",
      en: "East of Makkah, on the cool slopes of the Sarawat Mountains, lies a city famous for its vineyards and orchards: Taif. For centuries the people of Makkah came up here in summer, and Taif's grapes were known throughout the Hijaz. Yet what truly makes Taif meaningful for us is a profound trial the Prophet went through here.\n\n"
          "It was the tenth year of prophethood. Persecution in Makkah had grown, and the Prophet's greatest supporters, his wife Khadijah and his uncle Abu Talib, had passed away. The Prophet came to Taif with Zayd ibn Harithah and invited the tribe of Thaqif to Islam. But the people of Taif would not listen. They mocked him and set people on him who threw stones at him. Tired and wounded, he took refuge in the vineyard of two Makkans named Utbah and Shaybah.\n\n"
          "It was in that vineyard, on that painful day, that a light appeared. As the books of Sirah relate, Addas, the Christian servant of the vineyard's owners, who came from Nineveh, brought him a plate of grapes on his masters' orders. When the Prophet began eating in the name of Allah, Addas was surprised. They talked. The Prophet spoke of the prophet Jonah, from Addas's own homeland, as his brother. Addas accepted his prophethood and became a Muslim. Today the small Addas Mosque in the southwest of the city, named after him, recalls this event.\n\n"
          "Years later Aishah asked the Prophet whether he had ever lived through a day harder than the day of Uhud. The Prophet told her what had happened at Taif. He said that on that day the angel of the mountains offered to punish the people of Taif, but he did not want this, hoping instead that from their descendants would come people who worship Allah alone. Indeed, a few years later the tribe of Thaqif came to Madinah and embraced Islam.\n\n"
          "Taif is also the city of a great scholar. Abdullah ibn Abbas, the son of the Prophet's uncle, was blessed with the Prophet's prayer for understanding the Qur'an and became known as the interpreter of the Qur'an. At the end of his life he settled in Taif and died here. The Ibn Abbas Mosque that rises beside his grave has become the symbol of the city.\n\n"
          "As we walk through this city, let us remember patience, forgiveness and hope. Let us take as our example the character of our Prophet, who even in his hardest moment prayed for guidance for those who had hurt him.",
      ar: "إلى الشرق من مكة، على سفوح جبال السراة الباردة، تمتد مدينة اشتهرت بكرومها وبساتينها، هي الطائف. كان أهل مكة يصعدون إليها في الصيف منذ قرون، وكان عنبها معروفًا في الحجاز كله. غير أن ما يجعل الطائف عزيزة على قلوبنا حقًا هو ابتلاء عظيم مرّ به النبي صلى الله عليه وسلم فيها.\n\n"
          "كان ذلك في السنة العاشرة للبعثة. اشتد أذى قريش في مكة، وتوفيت خديجة رضي الله عنها وعمه أبو طالب، وهما أكبر من ناصره. فخرج النبي صلى الله عليه وسلم إلى الطائف ومعه زيد بن حارثة يدعو ثقيفًا إلى الإسلام. لكن أهل الطائف لم يستمعوا إليه، بل سخروا منه وأغروا به من يرميه بالحجارة. فلجأ متعبًا جريحًا إلى بستان لرجلين من مكة هما عتبة وشيبة.\n\n"
          "وفي ذلك البستان، في ذلك اليوم الأليم، أشرق نور. فكما تروي كتب السيرة، جاءه عدّاس، الغلام النصراني من أهل نينوى، بطبق من عنب بأمر سيديه. فلما بدأ النبي صلى الله عليه وسلم الأكل باسم الله تعجّب عدّاس، وتحدّثا، فذكر النبي صلى الله عليه وسلم نبيَّ الله يونس من بلدة عدّاس وقال إنه أخوه. فآمن عدّاس بنبوته وأسلم. واليوم يذكّر مسجد عدّاس الصغير في جنوب غرب المدينة بهذه القصة.\n\n"
          "وبعد سنين سألت عائشة رضي الله عنها النبي صلى الله عليه وسلم: هل أتى عليك يوم كان أشد من يوم أحد؟ فذكر لها ما لقيه في الطائف، وأخبرها أن ملك الجبال عرض عليه أن يعاقب أهلها، فأبى، ورجا أن يُخرج الله من أصلابهم من يعبده وحده. وبالفعل، بعد سنوات قليلة جاء وفد ثقيف إلى المدينة فأسلموا.\n\n"
          "والطائف كذلك مدينة عالم كبير. فعبد الله بن عباس، ابن عم النبي صلى الله عليه وسلم، نال دعاءه بفهم القرآن، فلُقّب بترجمان القرآن. وقد سكن الطائف في آخر عمره وتوفي فيها، وصار المسجد القائم بجوار قبره رمزًا للمدينة.\n\n"
          "ونحن نتجول في هذه المدينة، فلنتذكر الصبر والعفو والرجاء، ولنتخذ من خلق نبينا صلى الله عليه وسلم قدوة، إذ دعا بالهداية لمن آذاه حتى في أشد لحظاته.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Tâif", "https://islamansiklopedisi.org.tr/taif"),
      GeziKaynak("TDV İslâm Ansiklopedisi – Abdullah b. Abbas", "https://islamansiklopedisi.org.tr/abdullah-b-abbas"),
      GeziKaynak("TDV İslâm Ansiklopedisi – Addâs", "https://islamansiklopedisi.org.tr/addas"),
      GeziKaynak("OpenStreetMap – مسجد عبدالله بن العباس (way 112016836)", "https://www.openstreetmap.org/way/112016836"),
      GeziKaynak("OpenStreetMap – مسجد عداس (way 1172466826)", "https://www.openstreetmap.org/way/1172466826"),
      GeziKaynak("Vikipedi (Arapça) – مسجد عداس",
          "https://ar.wikipedia.org/wiki/%D9%85%D8%B3%D8%AC%D8%AF_%D8%B9%D8%AF%D8%A7%D8%B3"),
    ],
  ),

  // -------------------------------------------------------------- HUDEYBİYE
  GeziYeri(
    id: 'hudeybiye',
    bolge: GeziBolge.diger,
    tur: GeziTur.tarihiSehir,
    ad: L10nText(tr: "Hudeybiye (Şümeysî)", en: "Al-Hudaybiyah (Ash-Shumaisi)", ar: "الحديبية (الشميسي)"),
    arapcaAd: L10nText.same("الحديبية"),
    altBaslik: L10nText(
      tr: "Hudeybiye Antlaşması'nın ve Rıdvan Biatı'nın yeri",
      en: "Where the Treaty of Hudaybiyah and the Pledge of Ridwan took place",
      ar: "موضع صلح الحديبية وبيعة الرضوان",
    ),
    sehir: L10nText(tr: "Hudeybiye (Mekke bölgesi)", en: "Al-Hudaybiyah (Makkah Province)", ar: "الحديبية (منطقة مكة المكرمة)"),
    konum: LatLng(21.4386239, 39.6282059), // OSM node 12992482238 (بئر الحديبية)
    uzaklik: L10nText(
      tr: "Mekke'ye ~20 km (batı, kuş uçuşu)",
      en: "~20 km west of Makkah (as the crow flies)",
      ar: "نحو 20 كم غرب مكة المكرمة (خط مستقيم)",
    ),
    uygunSaat: L10nText(tr: "Sabah ya da ikindiden sonra", en: "Morning or late afternoon", ar: "في الصباح أو بعد العصر"),
    ziyaretSuresi: L10nText(tr: "30–45 dakika", en: "30–45 minutes", ar: "من 30 إلى 45 دقيقة"),
    genel: L10nText(
      tr: "Hudeybiye, Mekke'nin batısında, eski Mekke–Cidde yolu üzerinde ve Harem sınırında bulunan bir mevkidir. Adını, altında Rıdvan Biatı'nın yapıldığı ağaçtan ya da yakınındaki kuyudan aldığı kabul edilir. Hicrî VIII. (XIV.) yüzyıldan itibaren burası Şümeysî adıyla da anılmıştır; bugün bölge bu adla bilinir.\n\n"
          "Hudeybiye'de Harem sınırını gösteren işaretler bulunur ve burası Mekke'de bulunanların umre için ihrama girdiği yerlerden biridir. Bölgede, Hz. Ömer döneminde kesilen Rıdvan ağacının yerine yapıldığı bildirilen Hudeybiye Mescidi ile geleneksel olarak Hudeybiye kuyusu diye bilinen bir kuyu yer alır.",
      en: "Al-Hudaybiyah is a place west of Makkah, on the old Makkah–Jeddah road, at the boundary of the Haram. It is thought to take its name from the tree under which the Pledge of Ridwan was made, or from a well nearby. From the eighth century of the Hijrah (14th century CE) it has also been called Ash-Shumaisi, the name by which the area is known today.\n\n"
          "There are markers of the Haram boundary at al-Hudaybiyah, and it is one of the places where people staying in Makkah enter Ihram for Umrah. In the area are the Hudaybiyah Mosque, reported to have been built where the Tree of Ridwan, cut down in the time of Umar, once stood, and a well traditionally known as the well of Hudaybiyah.",
      ar: "الحديبية موضع غرب مكة المكرمة على طريق مكة–جدة القديم عند حدود الحرم، ويُقال إنها سُمّيت باسم الشجرة التي كانت تحتها بيعة الرضوان، أو باسم بئر قريبة منها. وصارت تُعرف منذ القرن الثامن الهجري (الرابع عشر الميلادي) باسم الشميسي، وهو الاسم المعروف للمنطقة اليوم.\n\n"
          "وفي الحديبية أعلام تحدد حدود الحرم، وهي من المواضع التي يُحرم منها من كان بمكة للعمرة. وفي المنطقة مسجد الحديبية الذي يُذكر أنه بُني في موضع شجرة الرضوان التي قُطعت في عهد عمر بن الخطاب، وبئر تُعرف تقليديًا ببئر الحديبية.",
    ),
    tarihce: L10nText(
      tr: "Hicretin 6. yılının zilkade ayı başında (Mart 628) Hz. Peygamber, gördüğü bir rüya üzerine (Fetih 48/27) umre yapmak amacıyla yaklaşık 1400–1500 sahâbîyle Medine'den yola çıktı. Müslümanlar ihrama girmiş ve yanlarına yetmiş kurbanlık deve almışlardı; barışçı bir amaçla geldikleri için savaş silahı taşımıyorlardı. Hudeybiye'ye varıldığında Hz. Peygamber'in devesi Kasvâ çöktü ve Hz. Peygamber burada konakladı.\n\n"
          "Kureyş müslümanları Mekke'ye sokmamaya karar verdi. Hz. Peygamber önce Hırâş b. Ümeyye'yi, ardından Mekke'de pek çok akrabası bulunan Hz. Osman'ı elçi olarak gönderdi. Hz. Osman'ın Mekke'de üç gün alıkonulması üzerine onun öldürüldüğü söylentisi yayıldı. Bunun üzerine Hz. Peygamber, bir ağacın altında sahâbîlerinden sonuna kadar sebat edeceklerine dair biat aldı. Kur'an'da Allah'ın razı olduğu bildirilen bu biate Rıdvan Biatı denir (Fetih 48/18).\n\n"
          "Biat haberini alan Kureyş, Hz. Osman'ı serbest bıraktı ve antlaşma yapmak üzere Süheyl b. Amr'ı gönderdi. Metnini Hz. Ali'nin yazdığı antlaşmaya göre müslümanlar o yıl umre yapmadan dönecek, ertesi yıl gelip Mekke'de üç gün kalabilecekti; taraflar arasında on yıl savaş olmayacak, diğer kabileler dilediği tarafla ittifak yapabilecekti. Mekke'den kaçıp müslümanlara sığınanların geri verilmesi, müslümanlardan Mekke'ye gidenlerin ise iade edilmemesi şartı ashabı üzdü; ancak Hz. Peygamber şartları kabul etti. Müslümanlar kurbanlarını kesip ihramdan çıktılar ve Medine'ye döndüler.\n\n"
          "Başta ağır görünen antlaşmayı Kur'an “apaçık bir fetih” olarak nitelendirdi (Fetih 48/1). Barış ortamında İslâm hızla yayıldı; Hudeybiye'den Mekke'nin fethine kadar geçen iki yılda müslüman olanların sayısının, önceki on sekiz yılda müslüman olanlardan fazla olduğu belirtilir. Ertesi yıl müslümanlar umrelerini yaptılar; Kureyş'in antlaşmayı bozması üzerine de hicretin 8. yılında Mekke fethedildi.",
      en: "At the beginning of Dhul-Qa'dah in the sixth year of the Hijrah (March 628), following a dream he had seen (al-Fath 48:27), the Prophet set out from Madinah with some 1,400–1,500 Companions to perform Umrah. The Muslims had entered Ihram and brought seventy camels for sacrifice; since they came with a peaceful purpose, they carried no weapons of war. When they reached al-Hudaybiyah the Prophet's camel al-Qaswa knelt down, and the Prophet camped there.\n\n"
          "The Quraysh decided not to let the Muslims enter Makkah. The Prophet first sent Khirash ibn Umayyah as his envoy, and then Uthman, who had many relatives in Makkah. When Uthman was held in Makkah for three days, a rumour spread that he had been killed. The Prophet then took a pledge from his Companions under a tree that they would stand firm to the end. This pledge, with which the Qur'an says Allah was pleased, is called the Pledge of Ridwan (al-Fath 48:18).\n\n"
          "On hearing of the pledge, the Quraysh released Uthman and sent Suhayl ibn Amr to make a treaty. Under the treaty, whose text was written by Ali, the Muslims would return that year without performing Umrah and could come the following year and stay in Makkah for three days; there would be no war between the parties for ten years, and other tribes could ally with whichever side they wished. The condition that those who fled from Makkah to the Muslims would be returned, while those who went from the Muslims to Makkah would not, upset the Companions, but the Prophet accepted the terms. The Muslims sacrificed their animals, left Ihram and returned to Madinah.\n\n"
          "The Qur'an described this treaty, which at first seemed hard, as “a clear victory” (al-Fath 48:1). In the atmosphere of peace Islam spread rapidly; it is noted that more people embraced Islam in the two years between al-Hudaybiyah and the conquest of Makkah than in the eighteen years before. The following year the Muslims performed their Umrah, and when the Quraysh broke the treaty, Makkah was conquered in the eighth year of the Hijrah.",
      ar: "في أول ذي القعدة من السنة السادسة للهجرة (مارس 628م) خرج النبي صلى الله عليه وسلم من المدينة معتمرًا في نحو ألف وأربعمئة إلى ألف وخمسمئة من أصحابه، بعد رؤيا رآها (الفتح 48/27). وكان المسلمون محرمين، وساقوا معهم سبعين بدنة هديًا، ولم يحملوا سلاح الحرب لأنهم جاؤوا مسالمين. فلما بلغوا الحديبية بركت ناقته القصواء، فنزل بها النبي صلى الله عليه وسلم.\n\n"
          "وعزمت قريش على منع المسلمين من دخول مكة. فبعث النبي صلى الله عليه وسلم أولًا خِراش بن أمية، ثم بعث عثمان بن عفان لكثرة أقاربه في مكة. فاحتبسته قريش ثلاثة أيام، وشاع أنه قُتل، فبايع النبي صلى الله عليه وسلم أصحابه تحت شجرة على الثبات حتى النهاية. وهذه البيعة التي أخبر القرآن أن الله رضي عن أهلها تُسمّى بيعة الرضوان (الفتح 48/18).\n\n"
          "فلما بلغ قريشًا خبر البيعة أطلقت عثمان، وأرسلت سهيل بن عمرو للصلح. وكتب علي بن أبي طالب كتاب الصلح، وفيه أن يرجع المسلمون عامهم هذا دون عمرة، ثم يأتوا في العام المقبل فيقيموا بمكة ثلاثة أيام، وأن توضع الحرب بين الفريقين عشر سنين، وأن من شاء من القبائل دخل في عهد أي الفريقين. وشقّ على الصحابة شرطُ ردّ من جاء من مكة مسلمًا وعدم ردّ من ذهب من المسلمين إلى مكة، لكن النبي صلى الله عليه وسلم قبل الشروط. فنحر المسلمون هديهم وتحللوا من إحرامهم وعادوا إلى المدينة.\n\n"
          "وقد سمّى القرآن هذا الصلح الذي بدا شاقًا في أول الأمر «فتحًا مبينًا» (الفتح 48/1). وانتشر الإسلام سريعًا في ظل السلم، حتى ذُكر أن من أسلم في السنتين بين الحديبية وفتح مكة أكثر ممن أسلم في الثماني عشرة سنة قبلها. وفي العام التالي أدّى المسلمون عمرتهم، ولما نقضت قريش العهد فُتحت مكة في السنة الثامنة للهجرة.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "Zilkade başı 6 / Mart 628", en: "Early Dhul-Qa'dah 6 AH / March 628", ar: "أول ذي القعدة 6هـ / مارس 628م"),
        metin: L10nText(
          tr: "Hz. Peygamber umre için yaklaşık 1400–1500 sahâbîyle Medine'den yola çıktı.",
          en: "The Prophet set out from Madinah for Umrah with some 1,400–1,500 Companions.",
          ar: "خرج النبي صلى الله عليه وسلم من المدينة معتمرًا في نحو ألف وأربعمئة إلى ألف وخمسمئة من أصحابه.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hudeybiye'ye varış", en: "Arrival at al-Hudaybiyah", ar: "الوصول إلى الحديبية"),
        metin: L10nText(
          tr: "Kasvâ çöktü; müslümanlar Hudeybiye'de konakladı.",
          en: "Al-Qaswa knelt down and the Muslims camped at al-Hudaybiyah.",
          ar: "بركت القصواء ونزل المسلمون بالحديبية.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Elçilik görüşmeleri", en: "Exchange of envoys", ar: "تبادل الرسل"),
        metin: L10nText(
          tr: "Hz. Osman elçi olarak Mekke'ye gitti ve üç gün alıkonuldu.",
          en: "Uthman went to Makkah as envoy and was held there for three days.",
          ar: "ذهب عثمان بن عفان رسولًا إلى مكة فاحتُبس ثلاثة أيام.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Rıdvan Biatı", en: "The Pledge of Ridwan", ar: "بيعة الرضوان"),
        metin: L10nText(
          tr: "Sahâbîler ağacın altında Hz. Peygamber'e biat etti (Fetih 48/18).",
          en: "The Companions pledged allegiance to the Prophet under the tree (al-Fath 48:18).",
          ar: "بايع الصحابة النبي صلى الله عليه وسلم تحت الشجرة (الفتح 48/18).",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Zilkade 6 / Mart 628", en: "Dhul-Qa'dah 6 AH / March 628", ar: "ذو القعدة 6هـ / مارس 628م"),
        metin: L10nText(
          tr: "Hudeybiye Antlaşması imzalandı; müslümanlar kurbanlarını kesip ihramdan çıktı.",
          en: "The Treaty of Hudaybiyah was concluded; the Muslims sacrificed their animals and left Ihram.",
          ar: "عُقد صلح الحديبية، ونحر المسلمون هديهم وتحللوا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "7 / 629", en: "7 AH / 629", ar: "7هـ / 629م"),
        metin: L10nText(
          tr: "Antlaşma gereği müslümanlar ertesi yıl Mekke'ye gelip umrelerini yaptı.",
          en: "As agreed, the Muslims came to Makkah the following year and performed their Umrah.",
          ar: "أتى المسلمون مكة في العام التالي وفق الصلح وأدّوا عمرتهم.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "8 / 630", en: "8 AH / 630", ar: "8هـ / 630م"),
        metin: L10nText(
          tr: "Kureyş'in antlaşmayı bozması üzerine Mekke fethedildi.",
          en: "After the Quraysh broke the treaty, Makkah was conquered.",
          ar: "فُتحت مكة بعد أن نقضت قريش العهد.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Hz. Ömer dönemi (634–644)", en: "Caliphate of Umar (634–644)", ar: "خلافة عمر (634–644م)"),
        metin: L10nText(
          tr: "Rıdvan ağacı kesildi; yerine sonradan Hudeybiye Mescidi yapıldığı bildirilir.",
          en: "The Tree of Ridwan was cut down; the Hudaybiyah Mosque is reported to have been built later in its place.",
          ar: "قُطعت شجرة الرضوان، ويُذكر أن مسجد الحديبية بُني في موضعها لاحقًا.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Hudeybiye, Kur'an'ın Fetih sûresinde doğrudan anılan olayların yeridir. Sûre, antlaşmayı “apaçık bir fetih” olarak müjdeler ve ağacın altında biat eden müminlerden Allah'ın razı olduğunu bildirir. Bu sebeple Rıdvan Biatı'na katılan sahâbîler (Ehl-i Bey'ati'r-rıdvân) ayrı bir fazilete sahip kabul edilir.\n\n"
          "Hudeybiye; sabrın, istişarenin ve ahde vefanın dersidir. Hz. Peygamber, antlaşma yazılırken Mekke'den kaçıp gelen Ebû Cendel'i bile antlaşma şartları gereği geri göndermiş ve verilen söze sadık kalmıştır. Kısa vadede kayıp gibi görünen bir barışın uzun vadede büyük bir zafere dönüştüğü bu olay, müminlere aceleci olmamayı ve Allah'ın takdirine güvenmeyi öğretir.",
      en: "Al-Hudaybiyah is the site of events mentioned directly in Surah al-Fath of the Qur'an. The surah heralds the treaty as “a clear victory” and declares that Allah was pleased with the believers who pledged allegiance under the tree. For this reason the Companions who took part in the Pledge of Ridwan are regarded as having a special virtue.\n\n"
          "Al-Hudaybiyah is a lesson in patience, consultation and faithfulness to one's word. While the treaty was being written, the Prophet sent back even Abu Jandal, who had fled from Makkah, in keeping with its terms, and stayed true to his promise. This event, in which a peace that seemed a loss in the short term became a great victory in the long term, teaches believers not to be hasty and to trust in Allah's decree.",
      ar: "الحديبية موضع أحداث ذكرتها سورة الفتح صراحة؛ فقد بشّرت بالصلح «فتحًا مبينًا»، وأخبرت أن الله رضي عن المؤمنين الذين بايعوا تحت الشجرة، ولذلك عُدّ أهل بيعة الرضوان أصحاب فضل خاص.\n\n"
          "والحديبية درس في الصبر والشورى والوفاء بالعهد؛ فقد ردّ النبي صلى الله عليه وسلم أبا جندل الذي فرّ من مكة أثناء كتابة الصلح وفاءً بشروطه. وهذه الحادثة التي بدا فيها الصلح خسارةً في المدى القريب ثم صار نصرًا عظيمًا في المدى البعيد، تعلّم المؤمنين ألا يستعجلوا وأن يثقوا بتقدير الله.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "إِنَّا فَتَحْنَا لَكَ فَتْحًا مُّبِينًا",
        meal: L10nText(
          tr: "Şüphesiz biz sana apaçık bir fetih verdik.",
          en: "Indeed, We have granted you a clear victory.",
          ar: "بشارة من الله لنبيه صلى الله عليه وسلم بأن صلح الحديبية فتح ظاهر بيّن.",
        ),
        kaynak: L10nText(tr: "Fetih 48/1", en: "Al-Fath 48:1", ar: "الفتح 48/1"),
      ),
      GeziAlinti(
        arapca: "لَّقَدْ رَضِىَ ٱللَّهُ عَنِ ٱلْمُؤْمِنِينَ إِذْ يُبَايِعُونَكَ تَحْتَ ٱلشَّجَرَةِ فَعَلِمَ مَا فِى قُلُوبِهِمْ فَأَنزَلَ ٱلسَّكِينَةَ عَلَيْهِمْ وَأَثَـٰبَهُمْ فَتْحًا قَرِيبًا",
        meal: L10nText(
          tr: "Andolsun ki Allah, ağacın altında sana biat ederlerken müminlerden razı olmuştur. Kalplerindekini bilmiş, onlara huzur ve güven indirmiş ve onları yakın bir fetihle ödüllendirmiştir.",
          en: "Allah was certainly pleased with the believers when they pledged allegiance to you under the tree. He knew what was in their hearts, so He sent down tranquillity upon them and rewarded them with an imminent victory.",
          ar: "يخبر الله برضاه عن المؤمنين الذين بايعوا النبي صلى الله عليه وسلم تحت الشجرة، وأنه أنزل السكينة عليهم وجزاهم فتحًا قريبًا.",
        ),
        kaynak: L10nText(tr: "Fetih 48/18", en: "Al-Fath 48:18", ar: "الفتح 48/18"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Ziyaret sırasında Fetih sûresinin ilk ayetlerini okuyun ya da dinleyin.",
        en: "During the visit, recite or listen to the opening verses of Surah al-Fath.",
        ar: "اقرأ أو استمع إلى أوائل سورة الفتح أثناء الزيارة.",
      ),
      L10nText(
        tr: "Rıdvan ağacının yeri bugün kesin olarak bilinmemektedir; ziyaret, tefekkür ve dua içindir.",
        en: "The exact location of the Tree of Ridwan is not known today; the visit is for reflection and prayer.",
        ar: "لا يُعرف اليوم موضع شجرة الرضوان على وجه اليقين، والزيارة للتأمل والدعاء.",
      ),
      L10nText(
        tr: "Mekke'de kalırken yeniden umre yapmak isteyenler için Hudeybiye, Harem dışındaki ihram yerlerinden biridir; niyet ve ihramı rehberinizle planlayın.",
        en: "For those staying in Makkah who wish to perform another Umrah, al-Hudaybiyah is one of the places outside the Haram where Ihram can be entered; plan the intention and Ihram with your guide.",
        ar: "الحديبية من المواضع التي يُحرم منها خارج الحرم لمن كان بمكة وأراد عمرة أخرى، فرتّب النية والإحرام مع مرشدك.",
      ),
      L10nText(
        tr: "Bölge şehir dışındadır; tur ya da taksi kullanın ve dönüş aracınızı önceden ayarlayın.",
        en: "The area is outside the city; use a tour or taxi and arrange your return transport in advance.",
        ar: "المنطقة خارج المدينة، فاستعمل رحلة منظمة أو سيارة أجرة ورتّب وسيلة العودة مسبقًا.",
      ),
      L10nText(
        tr: "Sıcak saatlerden kaçının ve yanınızda su bulundurun.",
        en: "Avoid the hottest hours and carry water.",
        ar: "تجنّب ساعات الحر واحمل معك الماء.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Hudeybiye, eski Cidde yolu üzerinde Harem sınırındadır; burada gayrimüslimlerin Harem bölgesine girişini denetleyen bir kontrol noktası bulunduğu bildirilmektedir. Buradan ihrama girmek isteyenler, ulaşım ve mescidin açık olduğu saatler hakkında kafile rehberinden bilgi almalıdır.",
      en: "Al-Hudaybiyah lies at the Haram boundary on the old Jeddah road; there is reported to be a checkpoint here that controls the entry of non-Muslims into the Haram. Those wishing to enter Ihram here should ask their group guide about transport and the mosque's opening hours.",
      ar: "تقع الحديبية عند حدود الحرم على طريق جدة القديم، ويُذكر أن فيها نقطة تفتيش تمنع غير المسلمين من دخول الحرم. ومن أراد الإحرام منها فليسأل مرشد مجموعته عن المواصلات وأوقات فتح المسجد.",
    ),
    anlatim: L10nText(
      tr: "Mekke'nin batısında, eski Cidde yolu üzerinde, Harem sınırının hemen yanında sessiz bir mevki vardır: Hudeybiye. Bugün Şümeysî adıyla bilinen bu yer, İslâm tarihinin en önemli barış antlaşmalarından birine ev sahipliği yaptı.\n\n"
          "Hicretin altıncı yılıydı. Hz. Peygamber rüyasında ashabıyla birlikte Mescid-i Haram'a girdiklerini görmüştü. Bunun üzerine bin dört yüzü aşkın sahâbîyle umre için Medine'den yola çıktı. Hepsi ihramlıydı ve yanlarında kurbanlık develer vardı. Savaşmaya değil, Kâbe'yi ziyarete geliyorlardı. Hudeybiye'ye vardıklarında Hz. Peygamber'in devesi Kasvâ çöktü ve yerinden kalkmadı. Hz. Peygamber burada konakladı.\n\n"
          "Kureyş, müslümanları Mekke'ye sokmamaya kararlıydı. Hz. Peygamber, görüşmek için Hz. Osman'ı Mekke'ye gönderdi. Hz. Osman'a Kâbe'yi tavaf edebileceği söylendi, fakat o, Allah'ın Resûlü tavaf etmeden tavaf etmeyeceğini bildirdi. Mekkeliler onu üç gün alıkoydu ve öldürüldüğü haberi yayıldı. Bunun üzerine Hz. Peygamber, bir ağacın altında ashabından sonuna kadar sebat edeceklerine dair biat aldı. Kur'an bu biat hakkında şöyle der: Andolsun ki Allah, ağacın altında sana biat ederlerken müminlerden razı olmuştur.\n\n"
          "Biatı duyan Kureyş, Hz. Osman'ı serbest bıraktı ve antlaşma için elçi gönderdi. Antlaşmaya göre müslümanlar o yıl geri dönecek, ertesi yıl umrelerini yapacaklardı. On yıl savaş olmayacaktı. Bazı şartlar ashaba çok ağır geldi. Ancak Hz. Peygamber şartları kabul etti ve verdiği söze sonuna kadar sadık kaldı. Müslümanlar kurbanlarını burada kesip ihramdan çıktılar.\n\n"
          "Medine'ye dönerken Fetih sûresi indi ve bu antlaşmayı apaçık bir fetih olarak müjdeledi. Gerçekten de barış ortamında İslâm hızla yayıldı. İki yıl içinde müslüman olanların sayısı, önceki yıllarda müslüman olanlardan fazla oldu. Ve sonunda Mekke, neredeyse hiç kan dökülmeden fethedildi.\n\n"
          "Hudeybiye bize sabrı, istişareyi ve ahde vefayı öğretir. Bazen kayıp gibi görünen bir sonuç, Allah'ın takdiriyle büyük bir kazanca dönüşür. Burada dururken, ağacın altında biat eden o mümin topluluğu rahmetle analım.",
      en: "West of Makkah, on the old Jeddah road, right beside the boundary of the Haram, there is a quiet place called al-Hudaybiyah. Known today as Ash-Shumaisi, it was the scene of one of the most important peace treaties in Islamic history.\n\n"
          "It was the sixth year of the Hijrah. The Prophet had seen in a dream that he and his Companions were entering the Sacred Mosque. So he set out from Madinah for Umrah with more than one thousand four hundred Companions. All of them were in Ihram, and they had sacrificial camels with them. They had come not to fight, but to visit the Kaaba. When they reached al-Hudaybiyah, the Prophet's camel al-Qaswa knelt down and would not get up. The Prophet camped here.\n\n"
          "The Quraysh were determined not to let the Muslims into Makkah. The Prophet sent Uthman to Makkah to negotiate. Uthman was told that he could perform tawaf around the Kaaba, but he replied that he would not do so before the Messenger of Allah. The Makkans held him for three days, and news spread that he had been killed. The Prophet then took a pledge from his Companions under a tree that they would stand firm to the end. The Qur'an says of this pledge: Allah was certainly pleased with the believers when they pledged allegiance to you under the tree.\n\n"
          "Hearing of the pledge, the Quraysh released Uthman and sent an envoy to make a treaty. Under the treaty, the Muslims would turn back that year and perform their Umrah the following year. There would be no war for ten years. Some of the terms felt very hard to the Companions. But the Prophet accepted them and remained true to his word to the end. The Muslims sacrificed their animals here and left Ihram.\n\n"
          "On the way back to Madinah, Surah al-Fath was revealed, heralding this treaty as a clear victory. Indeed, in the atmosphere of peace Islam spread rapidly. Within two years more people embraced Islam than in all the years before. And in the end Makkah was conquered almost without bloodshed.\n\n"
          "Al-Hudaybiyah teaches us patience, consultation and faithfulness to our word. Sometimes an outcome that looks like a loss becomes, by Allah's decree, a great gain. As we stand here, let us remember with mercy that community of believers who pledged allegiance under the tree.",
      ar: "إلى الغرب من مكة المكرمة، على طريق جدة القديم، بجوار حدود الحرم، موضع هادئ اسمه الحديبية. ويُعرف اليوم بالشميسي، وقد شهد واحدًا من أعظم عهود الصلح في التاريخ الإسلامي.\n\n"
          "كان ذلك في السنة السادسة للهجرة. رأى النبي صلى الله عليه وسلم في منامه أنه يدخل المسجد الحرام هو وأصحابه، فخرج من المدينة معتمرًا في أكثر من ألف وأربعمئة من أصحابه، كلهم محرمون، ومعهم الهدي. لم يأتوا للقتال، بل لزيارة البيت. فلما بلغوا الحديبية بركت ناقته القصواء فلم تقم، فنزل النبي صلى الله عليه وسلم هناك.\n\n"
          "وكانت قريش عازمة على منع المسلمين من دخول مكة. فبعث النبي صلى الله عليه وسلم عثمان بن عفان إليهم يفاوضهم، فقيل لعثمان: طُف بالبيت إن شئت، فأبى أن يطوف قبل رسول الله صلى الله عليه وسلم. فاحتبسه أهل مكة ثلاثة أيام، وشاع أنه قُتل. فبايع النبي صلى الله عليه وسلم أصحابه تحت شجرة على الثبات حتى النهاية. وفي هذه البيعة يقول الله تعالى: لقد رضي الله عن المؤمنين إذ يبايعونك تحت الشجرة.\n\n"
          "فلما سمعت قريش بالبيعة أطلقت عثمان، وأرسلت من يعقد الصلح. وكان من شروطه أن يرجع المسلمون عامهم هذا ويعتمروا في العام المقبل، وأن توضع الحرب عشر سنين. وشقّت بعض الشروط على الصحابة، لكن النبي صلى الله عليه وسلم قبلها ووفّى بعهده إلى النهاية. ونحر المسلمون هديهم هنا وتحللوا من إحرامهم.\n\n"
          "وفي طريق العودة إلى المدينة نزلت سورة الفتح تبشّر بأن هذا الصلح فتح مبين. وبالفعل انتشر الإسلام في ظل السلم انتشارًا سريعًا، فأسلم في سنتين أكثر ممن أسلم في السنين التي قبلها، ثم فُتحت مكة في النهاية بلا قتال يُذكر.\n\n"
          "والحديبية تعلّمنا الصبر والشورى والوفاء بالعهد؛ فقد يكون ما يبدو خسارة ربحًا عظيمًا بتقدير الله. ونحن نقف هنا، فلنذكر بالرحمة أولئك المؤمنين الذين بايعوا تحت الشجرة.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Hudeybiye Antlaşması", "https://islamansiklopedisi.org.tr/hudeybiye-antlasmasi"),
      GeziKaynak("OpenStreetMap – بئر الحديبية (node 12992482238)", "https://www.openstreetmap.org/node/12992482238"),
      GeziKaynak("OpenStreetMap – Harem sınırı, eski Cidde yolu (node 13158530871)", "https://www.openstreetmap.org/node/13158530871"),
      GeziKaynak("Vikipedi (Arapça) – صلح الحديبية",
          "https://ar.wikipedia.org/wiki/%D8%B5%D9%84%D8%AD_%D8%A7%D9%84%D8%AD%D8%AF%D9%8A%D8%A8%D9%8A%D8%A9"),
      GeziKaynak("Quran.com – Fetih 48/1", "https://quran.com/48/1"),
      GeziKaynak("Quran.com – Fetih 48/18", "https://quran.com/48/18"),
    ],
  ),

  // ----------------------------------------------------------------- HAYBER
  GeziYeri(
    id: 'hayber',
    bolge: GeziBolge.diger,
    tur: GeziTur.tarihiSehir,
    ad: L10nText(tr: "Hayber", en: "Khaybar", ar: "خيبر"),
    arapcaAd: L10nText.same("خيبر"),
    altBaslik: L10nText(
      tr: "Kaleleri ve vahasıyla Hayber Gazvesi'nin yaşandığı yer",
      en: "The oasis and fortresses where the Expedition of Khaybar took place",
      ar: "واحة خيبر وحصونها، موضع غزوة خيبر",
    ),
    sehir: L10nText(tr: "Hayber (Medine bölgesi)", en: "Khaybar (Madinah Province)", ar: "خيبر (منطقة المدينة المنورة)"),
    konum: LatLng(25.7307157, 39.2679368), // OSM way 1536420359 (حصن القموص / Qamus Fort)
    uzaklik: L10nText(
      tr: "Medine'ye ~180 km (kuzey)",
      en: "~180 km north of Madinah",
      ar: "نحو 180 كم شمال المدينة المنورة",
    ),
    uygunSaat: L10nText(tr: "Serin aylarda, sabah erken", en: "In the cooler months, early morning", ar: "في الأشهر المعتدلة، صباحًا مبكرًا"),
    ziyaretSuresi: L10nText(tr: "2–3 saat (yolla birlikte tam gün)", en: "2–3 hours (a full day with travel)", ar: "ساعتان إلى ثلاث (يوم كامل مع الطريق)"),
    genel: L10nText(
      tr: "Hayber, Medine'nin yaklaşık 180 km kuzeyinde, denizden 850–1000 m yükseklikte, volkanik arazilerle (harre) çevrili geniş bir vadinin ve bu vadideki vahanın adıdır. Bol su kaynakları, hurmalıkları ve sağlam kaleleriyle tanınırdı. Arap yarımadasının kuzey–güney ana yolu üzerinde önemli bir ticaret merkeziydi; her yıl hac mevsiminden sonra burada büyük bir panayır kurulurdu.\n\n"
          "Bugün vahada eski kalelerin kalıntıları arkeolojik alan olarak korunmaktadır. Bunların en tanınmışı, Hayber Gazvesi'nde Hz. Ali'nin fethettiği kale olarak tanıtılan Kamus Kalesi'dir. Kalelerin eski adları zamanla unutulduğu için bazılarının yeri kesin olarak bilinmemektedir. Vahada ayrıca eski bentler ve yerleşim izleri bulunur.",
      en: "Khaybar is the name of a broad valley, surrounded by volcanic lava fields (harrah), about 180 km north of Madinah at an altitude of 850–1,000 m, and of the oasis within it. It was known for its abundant springs, its palm groves and its strong fortresses. It was an important trading centre on the main north–south route of the Arabian Peninsula, and a large fair was held here every year after the Hajj season.\n\n"
          "Today the remains of the old fortresses in the oasis are protected as archaeological sites. The best known is the Qamus Fort, presented as the fortress conquered by Ali during the Expedition of Khaybar. Because the old names of the fortresses were forgotten over time, the locations of some of them are not known with certainty. The oasis also has ancient dams and traces of settlement.",
      ar: "خيبر اسم لوادٍ فسيح تحيط به الحِرار البركانية، يقع على بعد نحو 180 كيلومترًا شمال المدينة المنورة، على ارتفاع 850 إلى 1000 متر عن سطح البحر، واسمٌ للواحة التي فيه. وقد اشتهرت بكثرة عيونها ونخيلها ومناعة حصونها، وكانت مركزًا تجاريًا مهمًا على الطريق الرئيس بين شمال الجزيرة العربية وجنوبها، وكانت تُقام فيها سوق كبيرة كل عام بعد موسم الحج.\n\n"
          "وتُحفظ اليوم بقايا حصونها القديمة مواقعَ أثرية، وأشهرها حصن القموص الذي يُعرَّف بأنه الحصن الذي فتحه علي بن أبي طالب في غزوة خيبر. ولأن أسماء الحصون القديمة نُسيت مع الزمن فإن مواضع بعضها غير معروفة على وجه اليقين. وفي الواحة أيضًا سدود قديمة وآثار استيطان.",
    ),
    tarihce: L10nText(
      tr: "Hayber'e dair en eski bilgiler, son Babil kralı Nabonidus'un (MÖ 556–539) bir yazıtında geçer. İslâm'ın doğuşu sırasında Hayber'de, ayrı kalelerden oluşan müstahkem yerleşimlerde yaşayan varlıklı yahudi toplulukları bulunuyordu; Medine'den çıkarılan Benî Nadîr de buraya yerleşmişti.\n\n"
          "Hayber'in önde gelenleri, Mekkeli müşrikler ve çevredeki bazı kabilelerle Medine'ye karşı ittifak kurmuştu; Hendek Savaşı (5/627) bu ittifakın sonucuydu. Hudeybiye Antlaşması'yla Kureyş tarafında barış sağlandıktan sonra, bir aydan kısa bir süre içinde Hz. Peygamber yaklaşık 1500 kişilik bir kuvvetle Hayber'e yürüdü (7/628).\n\n"
          "Kaleler birer birer alındı. Şehrin içindeki Kamus Kalesi Hz. Ali'nin üstün gayretiyle fethedildi; bazı kaleler ise barış yoluyla teslim oldu. Hz. Peygamber halkın canını bağışladı ve onların topraklarında kalarak ürünün yarısı karşılığında ortakçılık yapmalarına izin verdi. Kaynaklar, ganimetler arasındaki Tevrat nüshalarının sahiplerine geri verildiğini de nakleder. Hayber'deki yahudi topluluğu, Hz. Ömer'in halifeliğinde (20/641) Suriye taraflarına gönderilinceye kadar burada yaşadı.\n\n"
          "Hayber'in fethinden sonra Hz. Peygamber, esirler arasında bulunan Huyey b. Ahtab'ın kızı Safiyye'yi âzat ederek onunla evlendi; Hz. Safiyye müminlerin annelerinden biri oldu. Yine Hayber'de Hz. Peygamber'e zehirli et ikram edildi; Hz. Peygamber ilk lokmayı hemen çıkardı, ancak birlikte yiyen Bişr b. Berâ vefat etti.",
      en: "The earliest information about Khaybar is found in an inscription of Nabonidus, the last king of Babylon (556–539 BCE). At the time of the rise of Islam, Khaybar was home to prosperous Jewish communities living in fortified settlements made up of separate fortresses; the Banu Nadir, who had left Madinah, had also settled here.\n\n"
          "The leaders of Khaybar had formed an alliance against Madinah with the Makkan polytheists and some of the surrounding tribes; the Battle of the Trench (5 AH / 627) was the result of this alliance. After peace with the Quraysh was secured by the Treaty of Hudaybiyah, the Prophet marched on Khaybar in less than a month with a force of about 1,500 men (7 AH / 628).\n\n"
          "The fortresses were taken one by one. The Qamus fortress in the town was conquered through the outstanding effort of Ali, while some fortresses surrendered peacefully. The Prophet spared the lives of the inhabitants and allowed them to remain on their land as sharecroppers in return for half of the harvest. The sources also report that copies of the Torah found among the spoils were returned to their owners. The Jewish community of Khaybar lived there until it was sent to the regions of Syria during the caliphate of Umar (20 AH / 641).\n\n"
          "After the conquest of Khaybar, the Prophet freed Safiyyah, the daughter of Huyayy ibn Akhtab, who was among the captives, and married her; Safiyyah became one of the Mothers of the Believers. It was also at Khaybar that poisoned meat was offered to the Prophet; he spat out the first mouthful at once, but Bishr ibn al-Bara, who ate with him, died.",
      ar: "أقدم ما يُعرف عن خيبر ورد في نقش لنبونيد آخر ملوك بابل (556–539 ق.م). وعند ظهور الإسلام كانت تسكن خيبر جماعات يهودية موسرة في مستوطنات محصّنة مؤلفة من حصون متفرقة، وقد نزلها بنو النضير بعد خروجهم من المدينة.\n\n"
          "وكان زعماء خيبر قد حالفوا مشركي مكة وبعض القبائل المجاورة على المدينة، وكانت غزوة الخندق (5هـ/627م) ثمرة هذا التحالف. فلما أمن النبي صلى الله عليه وسلم جانب قريش بصلح الحديبية، سار إلى خيبر في أقل من شهر بجيش من نحو ألف وخمسمئة رجل (7هـ/628م).\n\n"
          "وفُتحت الحصون واحدًا بعد آخر، وفُتح حصن القموص داخل البلدة بجهد عظيم من علي بن أبي طالب، وسلّم بعض الحصون صلحًا. وحقن النبي صلى الله عليه وسلم دماء أهلها، وأقرّهم في أرضهم يعملون فيها على نصف ثمرها. وتذكر المصادر أن نسخ التوراة التي كانت في الغنائم رُدّت إلى أصحابها. وبقي يهود خيبر فيها حتى أجلاهم عمر بن الخطاب إلى نواحي الشام في خلافته (20هـ/641م).\n\n"
          "وبعد فتح خيبر أعتق النبي صلى الله عليه وسلم صفية بنت حيي بن أخطب، وكانت في السبي، وتزوجها، فصارت من أمهات المؤمنين. وفي خيبر أيضًا قُدّمت للنبي صلى الله عليه وسلم شاة مسمومة، فلفظ أول لقمة، ومات بشر بن البراء الذي أكل معه.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "MÖ 6. yüzyıl", en: "6th century BCE", ar: "القرن السادس قبل الميلاد"),
        metin: L10nText(
          tr: "Babil kralı Nabonidus'un yazıtında Hayber'den söz edildi.",
          en: "Khaybar was mentioned in an inscription of the Babylonian king Nabonidus.",
          ar: "ورد ذكر خيبر في نقش الملك البابلي نبونيد.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "5 / 627", en: "5 AH / 627", ar: "5هـ / 627م"),
        metin: L10nText(
          tr: "Hayber'in de yer aldığı ittifak, Hendek Savaşı'nda Medine'yi kuşattı.",
          en: "The alliance in which Khaybar took part besieged Madinah in the Battle of the Trench.",
          ar: "حاصر التحالف الذي شاركت فيه خيبر المدينةَ في غزوة الخندق.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "7 / 628", en: "7 AH / 628", ar: "7هـ / 628م"),
        metin: L10nText(
          tr: "Hudeybiye'den bir aydan kısa süre sonra Hz. Peygamber 1500 kişiyle Hayber'e yürüdü.",
          en: "Less than a month after al-Hudaybiyah, the Prophet marched on Khaybar with 1,500 men.",
          ar: "بعد أقل من شهر من الحديبية سار النبي صلى الله عليه وسلم إلى خيبر في ألف وخمسمئة رجل.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Kuşatma", en: "The siege", ar: "الحصار"),
        metin: L10nText(
          tr: "Kaleler birer birer alındı; Kamus Kalesi'ni Hz. Ali fethetti, bazı kaleler barışla teslim oldu.",
          en: "The fortresses were taken one by one; Ali conquered the Qamus fortress, and some fortresses surrendered peacefully.",
          ar: "فُتحت الحصون واحدًا بعد آخر، وفتح علي حصن القموص، وسلّم بعضها صلحًا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "Fetihten sonra", en: "After the conquest", ar: "بعد الفتح"),
        metin: L10nText(
          tr: "Halkın canı bağışlandı; ürünün yarısı karşılığında topraklarında kalmalarına izin verildi. Fedek halkı da barış yaptı.",
          en: "The inhabitants' lives were spared and they were allowed to stay on their land for half of the harvest. The people of Fadak also made peace.",
          ar: "حُقنت دماء أهلها وأُقرّوا في أرضهم على نصف الثمر، وصالح أهل فدك كذلك.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "20 / 641", en: "20 AH / 641", ar: "20هـ / 641م"),
        metin: L10nText(
          tr: "Hz. Ömer döneminde Hayber'deki yahudi topluluğu Suriye taraflarına gönderildi.",
          en: "During the caliphate of Umar, the Jewish community of Khaybar was sent to the regions of Syria.",
          ar: "في خلافة عمر أُجلي يهود خيبر إلى نواحي الشام.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Hayber'in fethi, Hudeybiye dönüşünde inen Fetih sûresindeki “yakın fetih” ve “alacağınız birçok ganimet” müjdeleriyle ilişkilendirilmiştir; müfessirlerin bir kısmı Fetih sûresi 20. ayetteki vaadin Hayber'i de kapsadığını söyler.\n\n"
          "Buhârî ve Müslim'de geçen rivayete göre Hz. Peygamber Hayber'de, sancağı Allah'ı ve Resûlünü seven, Allah'ın ve Resûlünün de kendisini sevdiği birine vereceğini söylemiş ve ertesi gün sancağı Hz. Ali'ye vermiştir. Hayber aynı zamanda fethedilen bir halka gösterilen adaletin örneğidir: Halkın canı bağışlanmış, topraklarında kalmalarına izin verilmiş ve kutsal kitapları kendilerine iade edilmiştir.",
      en: "The conquest of Khaybar has been associated with the glad tidings of “an imminent victory” and “many spoils that you will take” in Surah al-Fath, revealed on the way back from al-Hudaybiyah; some exegetes say that the promise in verse 20 of Surah al-Fath includes Khaybar.\n\n"
          "According to a narration in al-Bukhari and Muslim, the Prophet said at Khaybar that he would give the banner to a man who loves Allah and His Messenger and whom Allah and His Messenger love, and the next day he gave it to Ali. Khaybar is also an example of the justice shown to a conquered people: their lives were spared, they were allowed to remain on their land, and their holy scriptures were returned to them.",
      ar: "رُبط فتح خيبر بما بشّرت به سورة الفتح النازلة في طريق العودة من الحديبية من «فتح قريب» و«مغانم كثيرة تأخذونها»، وقال بعض المفسرين إن الوعد في الآية العشرين من سورة الفتح يشمل خيبر.\n\n"
          "وفي رواية البخاري ومسلم أن النبي صلى الله عليه وسلم قال يوم خيبر إنه سيعطي الراية رجلًا يحب الله ورسوله ويحبه الله ورسوله، فأعطاها من الغد علي بن أبي طالب. وخيبر كذلك مثال على العدل مع أهل البلد المفتوح؛ فقد حُقنت دماؤهم، وأُقرّوا في أرضهم، ورُدّت إليهم كتبهم المقدسة.",
    ),
    alintilar: [
      GeziAlinti(
        arapca: "وَعَدَكُمُ ٱللَّهُ مَغَانِمَ كَثِيرَةً تَأْخُذُونَهَا فَعَجَّلَ لَكُمْ هَـٰذِهِۦ وَكَفَّ أَيْدِىَ ٱلنَّاسِ عَنكُمْ وَلِتَكُونَ ءَايَةً لِّلْمُؤْمِنِينَ وَيَهْدِيَكُمْ صِرَٰطًا مُّسْتَقِيمًا",
        meal: L10nText(
          tr: "Allah size alacağınız birçok ganimet vaat etti; bunu size hemen verdi ve insanların ellerini sizden çekti. Bu, müminler için bir işaret olsun ve sizi dosdoğru bir yola iletsin diyedir.",
          en: "Allah has promised you many spoils that you will take, and He has hastened this for you and held back the hands of people from you, so that it may be a sign for the believers and that He may guide you to a straight path.",
          ar: "وعدٌ من الله للمؤمنين بمغانم كثيرة، عجّل لهم بعضها وكفّ عنهم أيدي أعدائهم، ليكون ذلك آية لهم ويهديهم صراطًا مستقيمًا.",
        ),
        kaynak: L10nText(tr: "Fetih 48/20", en: "Al-Fath 48:20", ar: "الفتح 48/20"),
      ),
    ],
    adab: [
      L10nText(
        tr: "Kale kalıntıları tarihî ve arkeolojik alanlardır; kalıntılara tırmanmayın, taş ya da obje almayın.",
        en: "The fortress remains are historical and archaeological sites; do not climb on the ruins or take stones or objects.",
        ar: "بقايا الحصون مواقع تاريخية وأثرية، فلا تتسلقها ولا تأخذ منها حجارة أو أشياء.",
      ),
      L10nText(
        tr: "Uzun bir yolculuk gerektirir; Medine'den günübirlik ziyarete sabah erken başlayın.",
        en: "It is a long journey; start a day trip from Madinah early in the morning.",
        ar: "الرحلة طويلة، فابدأ الزيارة اليومية من المدينة في الصباح الباكر.",
      ),
      L10nText(
        tr: "Volkanik ve kayalık arazide kapalı ve sağlam ayakkabı giyin.",
        en: "Wear sturdy, closed shoes on the volcanic, rocky ground.",
        ar: "البس حذاءً مغلقًا متينًا في الأرض البركانية الصخرية.",
      ),
      L10nText(
        tr: "Bu tarihî olayları konuşurken saygılı ve ölçülü bir dil kullanın; Hayber, fethedilen halka gösterilen adaletin de hatırlandığı bir yerdir.",
        en: "Speak about these historical events in a respectful and measured way; Khaybar is also a place where the justice shown to a conquered people is remembered.",
        ar: "تحدّث عن هذه الأحداث التاريخية بأدب واعتدال، فخيبر موضع يُذكر فيه العدل مع أهل البلد المفتوح أيضًا.",
      ),
      L10nText(
        tr: "Su, şapka ve güneş kremi bulundurun; yazın sıcaklık çok yüksektir.",
        en: "Carry water, a hat and sunscreen; temperatures are very high in summer.",
        ar: "احمل الماء وغطاء الرأس وواقي الشمس، فالحرارة شديدة صيفًا.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Hayber'deki kale kalıntıları koruma altındaki arkeolojik alanlardandır; bazı bölümler restorasyon veya kazı çalışmaları nedeniyle ziyarete kapalı olabilir. Hayber Medine'ye uzak olduğu için genellikle özel tur ya da araçla gidilir; kafile programlarında her zaman yer almaz.",
      en: "The fortress remains at Khaybar are protected archaeological sites; some parts may be closed to visitors because of restoration or excavation work. As Khaybar is far from Madinah, people usually go by private tour or car; it is not always included in group programmes.",
      ar: "بقايا حصون خيبر من المواقع الأثرية المحمية، وقد تكون بعض أجزائها مغلقة أمام الزوار بسبب أعمال الترميم أو التنقيب. ولبُعد خيبر عن المدينة يُذهب إليها غالبًا برحلة خاصة أو بالسيارة، ولا تكون دائمًا ضمن برامج المجموعات.",
    ),
    anlatim: L10nText(
      tr: "Medine'den kuzeye doğru yaklaşık yüz seksen kilometre ilerlediğinizde, kara volkanik taşlarla çevrili yeşil bir vadiye ulaşırsınız: Hayber. Bol suyu, uçsuz bucaksız hurmalıkları ve tepelere kurulmuş sağlam kaleleriyle Hayber, Arap yarımadasının en zengin vahalarından biriydi.\n\n"
          "İslâm'ın doğduğu yıllarda Hayber'de, kalelerde yaşayan varlıklı yahudi toplulukları bulunuyordu. Hayber'in önde gelenleri, Mekkeli müşrikler ve bazı kabilelerle birlikte Medine'ye karşı bir ittifak kurmuştu. Hendek Savaşı'nda Medine'yi kuşatan ordular bu ittifakın sonucuydu. Hudeybiye Antlaşması'yla Mekke tarafında barış sağlanınca, Hz. Peygamber bir aydan kısa bir süre sonra yaklaşık bin beş yüz kişiyle Hayber'e yürüdü.\n\n"
          "Kaleler güçlüydü ve kuşatma kolay değildi. Rivayete göre Hz. Peygamber bir akşam, ertesi gün sancağı Allah'ı ve Resûlünü seven, Allah'ın ve Resûlünün de kendisini sevdiği birine vereceğini söyledi. Ertesi sabah sancağı Hz. Ali'ye verdi. Hz. Ali'nin üstün gayretiyle Kamus Kalesi fethedildi. Diğer kaleler de birer birer alındı, bazıları ise barış yoluyla teslim oldu.\n\n"
          "Fetihten sonra Hz. Peygamber'in tutumu dikkat çekicidir. Halkın canı bağışlandı. Onlar kendi topraklarında kaldılar ve ürünün yarısını almak üzere bahçelerini işlemeye devam ettiler. Kaynaklar, ganimetler arasında bulunan Tevrat nüshalarının sahiplerine geri verildiğini nakleder. Hayber, fethedilen bir halka gösterilen adaletin de örneği oldu.\n\n"
          "Hayber'in fethi, müminlerin hayatında başka izler de bıraktı. Esirler arasında bulunan Safiyye âzat edildi ve Hz. Peygamber'le evlenerek müminlerin annelerinden biri oldu. Kur'an'ın Fetih sûresinde müminlere vaat edilen yakın fethin ve bol ganimetin, müfessirlerin bir kısmına göre Hayber'le gerçekleştiği söylenir.\n\n"
          "Bugün Hayber'in kale kalıntıları arasında dolaşırken, zaferin yanında adaleti, gücün yanında merhameti hatırlayalım. Hz. Peygamber'in ahlakı, en zor anlarda bile ölçülü ve adil olmayı öğretir.",
      en: "If you travel about one hundred and eighty kilometres north from Madinah, you reach a green valley surrounded by black volcanic rock: Khaybar. With its abundant water, endless palm groves and strong fortresses built on the hills, Khaybar was one of the richest oases of the Arabian Peninsula.\n\n"
          "In the years when Islam emerged, Khaybar was home to prosperous Jewish communities living in fortresses. The leaders of Khaybar had formed an alliance against Madinah together with the Makkan polytheists and some tribes. The armies that besieged Madinah in the Battle of the Trench were the result of this alliance. When peace with Makkah was secured by the Treaty of Hudaybiyah, the Prophet marched on Khaybar less than a month later with about one thousand five hundred men.\n\n"
          "The fortresses were strong and the siege was not easy. According to the narration, one evening the Prophet said that the next day he would give the banner to a man who loves Allah and His Messenger and whom Allah and His Messenger love. The next morning he gave the banner to Ali. Through Ali's outstanding effort the Qamus fortress was conquered. The other fortresses were taken one by one, and some surrendered peacefully.\n\n"
          "The Prophet's conduct after the conquest is remarkable. The lives of the inhabitants were spared. They remained on their own land and continued to tend their orchards in return for half of the harvest. The sources report that copies of the Torah found among the spoils were returned to their owners. Khaybar also became an example of the justice shown to a conquered people.\n\n"
          "The conquest of Khaybar left other marks on the lives of the believers as well. Safiyyah, who was among the captives, was freed and, by marrying the Prophet, became one of the Mothers of the Believers. According to some exegetes, the imminent victory and the abundant spoils promised to the believers in Surah al-Fath were fulfilled with Khaybar.\n\n"
          "Today, as we walk among the fortress ruins of Khaybar, let us remember justice alongside victory and mercy alongside strength. The character of the Prophet teaches us to be measured and fair even in the most difficult moments.",
      ar: "إذا سرت من المدينة المنورة شمالًا نحو مئة وثمانين كيلومترًا بلغت واديًا أخضر تحيط به الحجارة البركانية السوداء، هو خيبر. كانت خيبر بمائها الوفير ونخيلها الممتد وحصونها المنيعة على التلال من أغنى واحات جزيرة العرب.\n\n"
          "وفي السنوات التي ظهر فيها الإسلام كانت تسكن خيبرَ جماعات يهودية موسرة في حصونها. وكان زعماء خيبر قد تحالفوا مع مشركي مكة وبعض القبائل على المدينة، وكانت الجيوش التي حاصرت المدينة في غزوة الخندق ثمرة هذا التحالف. فلما أمن النبي صلى الله عليه وسلم جانب مكة بصلح الحديبية، سار إلى خيبر بعد أقل من شهر في نحو ألف وخمسمئة رجل.\n\n"
          "كانت الحصون منيعة ولم يكن الحصار سهلًا. وفي الرواية أن النبي صلى الله عليه وسلم قال ذات مساء إنه سيعطي الراية غدًا رجلًا يحب الله ورسوله ويحبه الله ورسوله. فلما أصبح أعطاها علي بن أبي طالب، ففُتح حصن القموص بجهده العظيم، ثم فُتحت الحصون الأخرى واحدًا بعد آخر، وسلّم بعضها صلحًا.\n\n"
          "ومسلك النبي صلى الله عليه وسلم بعد الفتح جدير بالتأمل؛ فقد حُقنت دماء أهلها، وبقوا في أرضهم يعملون في بساتينهم على نصف ثمرها. وتذكر المصادر أن نسخ التوراة التي وُجدت في الغنائم رُدّت إلى أصحابها. فصارت خيبر مثالًا على العدل مع أهل البلد المفتوح.\n\n"
          "وترك فتح خيبر آثارًا أخرى في حياة المؤمنين؛ فقد أُعتقت صفية بنت حيي، وكانت في السبي، وتزوجها النبي صلى الله عليه وسلم فصارت من أمهات المؤمنين. ويرى بعض المفسرين أن الفتح القريب والمغانم الكثيرة التي وُعد بها المؤمنون في سورة الفتح قد تحققت بخيبر.\n\n"
          "واليوم ونحن نتجول بين أطلال حصون خيبر، فلنتذكر العدل مع النصر، والرحمة مع القوة؛ فخُلق النبي صلى الله عليه وسلم يعلّمنا الاعتدال والإنصاف حتى في أصعب اللحظات.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Hayber", "https://islamansiklopedisi.org.tr/hayber"),
      GeziKaynak("TDV İslâm Ansiklopedisi – Hudeybiye Antlaşması", "https://islamansiklopedisi.org.tr/hudeybiye-antlasmasi"),
      GeziKaynak("OpenStreetMap – حصن القموص / Qamus Fort (way 1536420359)", "https://www.openstreetmap.org/way/1536420359"),
      GeziKaynak("Wikipedia – Khaybar", "https://en.wikipedia.org/wiki/Khaybar"),
      GeziKaynak("Quran.com – Fetih 48/20", "https://quran.com/48/20"),
    ],
  ),

  // ------------------------------------------------------------ CİDDE BALAD
  GeziYeri(
    id: 'cidde_balad',
    bolge: GeziBolge.diger,
    tur: GeziTur.tarihiSehir,
    ad: L10nText(tr: "Cidde Tarihî Bölgesi (el-Beled)", en: "Historic Jeddah (Al-Balad)", ar: "جدة التاريخية (البلد)"),
    arapcaAd: L10nText.same("جدة التاريخية"),
    altBaslik: L10nText(
      tr: "“Mekke'nin Kapısı”: UNESCO Dünya Mirası mercan taşı evler",
      en: "“The Gate to Makkah”: UNESCO World Heritage coral-stone houses",
      ar: "«بوابة مكة»: بيوت الحجر المنقبي المدرجة في التراث العالمي",
    ),
    sehir: L10nText(tr: "Cidde", en: "Jeddah", ar: "جدة"),
    konum: LatLng(21.4839642, 39.1876680), // OSM node 2520141053 (Naseef House / بيت نصيف)
    uzaklik: L10nText(
      tr: "Mekke'ye ~70 km, Medine'ye ~420 km",
      en: "~70 km from Makkah, ~420 km from Madinah",
      ar: "نحو 70 كم من مكة و420 كم من المدينة المنورة",
    ),
    uygunSaat: L10nText(tr: "İkindiden sonra ve akşam", en: "Late afternoon and evening", ar: "بعد العصر وفي المساء"),
    ziyaretSuresi: L10nText(tr: "2–3 saat", en: "2–3 hours", ar: "ساعتان إلى ثلاث"),
    genel: L10nText(
      tr: "Cidde, Kızıldeniz kıyısında, Mekke'ye yaklaşık 70 km uzaklıkta bulunan, Suudi Arabistan'ın en büyük şehirlerinden biridir. Şehrin tarihî çekirdeği olan ve halk arasında “el-Beled” (şehir) diye anılan bölge, 2014 yılında “Tarihî Cidde, Mekke'nin Kapısı” adıyla UNESCO Dünya Mirası Listesi'ne alınmıştır.\n\n"
          "El-Beled; kıyıdaki lagünlerden çıkarılan mercan kökenli taşla (menkabî) örülmüş, ahşap kirişlerle desteklenmiş, bazıları 30 metreyi aşan çok katlı evleri ve “rûşen” denilen oymalı ahşap cumbalarıyla tanınır. Bölgede Mazlûm, Şam, Yemen ve Bahr mahalleleri; Şâfiî Camii ve Osman b. Affân (Abanoz) Camii gibi tarihî camiler; eski çarşılar ve bugün müze olarak kullanılan Nasîf Evi bulunur.",
      en: "Jeddah, on the Red Sea coast about 70 km from Makkah, is one of the largest cities in Saudi Arabia. The city's historic core, popularly called “Al-Balad” (the town), was inscribed on the UNESCO World Heritage List in 2014 as “Historic Jeddah, the Gate to Makkah”.\n\n"
          "Al-Balad is known for its multi-storey houses, some over 30 metres high, built of coral-based stone (manqabi) quarried from the coastal lagoons and reinforced with timber beams, and for the carved wooden bay windows called “rawasheen”. The area includes the al-Mazloum, al-Sham, al-Yemen and al-Bahr quarters; historic mosques such as the al-Shafi'i Mosque and the Uthman ibn Affan (Ebony) Mosque; old souqs; and Naseef House, now used as a museum.",
      ar: "جدة مدينة على ساحل البحر الأحمر، على بعد نحو 70 كيلومترًا من مكة المكرمة، ومن كبرى مدن المملكة العربية السعودية. وقد أُدرجت نواتها التاريخية المعروفة محليًا باسم «البلد» في قائمة التراث العالمي لليونسكو سنة 2014 باسم «جدة التاريخية، بوابة مكة».\n\n"
          "وتشتهر البلد ببيوتها المتعددة الطوابق المبنية من الحجر المنقبي المستخرج من بحيرات الساحل والمدعّمة بأخشاب أفقية، وقد يزيد ارتفاع بعضها على 30 مترًا، وبرواشينها الخشبية المنقوشة. وتضم حارات المظلوم والشام واليمن والبحر، ومساجد تاريخية مثل مسجد الشافعي ومسجد عثمان بن عفان (مسجد الأبنوس)، والأسواق القديمة، وبيت نصيف الذي صار متحفًا.",
    ),
    tarihce: L10nText(
      tr: "Cidde'nin İslâm öncesi dönemi hakkında çok az şey bilinir. Şehrin önemi, Hz. Osman'ın halifeliği sırasında (26/647) güneydeki Şuaybe limanı yerine Cidde'nin Mekke'nin limanı olarak seçilmesiyle arttı. O tarihten itibaren deniz yoluyla Kuzey Afrika, Mısır ve Hindistan'dan gelen hacılar Mekke'ye giderken Cidde'de karaya çıktılar.\n\n"
          "Orta çağ seyyahları şehrin surlarından, taş hanlarından ve camilerinden söz eder. Memlükler döneminde Portekiz saldırılarına karşı Hüseyin el-Kürdî tarafından 1511'de şehre kale yapıldı ve şehir surla çevrildi. Cidde 1517'de Osmanlı idaresine geçti; Portekizlilerin 1541'deki saldırısı püskürtüldü. Osmanlı döneminde sancak merkezi olan şehre Kara Mustafa Paşa uzaktan su getirtip han, hamam ve cami yaptırdı.\n\n"
          "Rivayete göre Hz. Havva'ya ait olduğu söylenen bir kabir Cidde'de ziyaret edilirdi; ancak bu bilgi sahih bir kaynakla sabit değildir ve kabir 1928'de yıkılmıştır.\n\n"
          "1925'teki kuşatmanın ardından Cidde Suudi idaresine geçti. Şehri çevreleyen surlar 1947'de şehrin büyümesiyle kaldırıldı. Petrol döneminde halkın önemli bir kısmı yeni mahallelere taşındı; tarihî bölgenin korunması için 1970'lerden itibaren çalışmalar başladı. 2014'te UNESCO listesine giren bölgede, 2019'da başlatılan projeyle yıkılma tehlikesindeki 56 tarihî bina güçlendirildi.",
      en: "Very little is known about Jeddah before Islam. The city's importance grew when, during the caliphate of Uthman (26 AH / 647), Jeddah was chosen as the port of Makkah in place of the harbour of Shu'aybah to the south. From then on, pilgrims arriving by sea from North Africa, Egypt and India landed at Jeddah on their way to Makkah.\n\n"
          "Medieval travellers mention the city's walls, stone inns and mosques. In the Mamluk period a fortress was built in 1511 by Husayn al-Kurdi against Portuguese attacks, and the city was enclosed by a wall. Jeddah came under Ottoman rule in 1517, and a Portuguese attack in 1541 was repelled. In the Ottoman period the city became the seat of a sanjak, and Kara Mustafa Pasha brought water from afar and built an inn, a bathhouse and a mosque.\n\n"
          "According to some narrations, a grave said to belong to Eve (Hawwa) used to be visited in Jeddah; however, this is not established by any authentic source, and the grave was demolished in 1928.\n\n"
          "After the siege of 1925 Jeddah passed under Saudi rule. The walls surrounding the city were removed in 1947 as the city grew. In the oil era many residents moved to new districts, and efforts to preserve the historic area began in the 1970s. After its inscription on the UNESCO list in 2014, 56 historic buildings at risk of collapse were stabilised under a project launched in 2019.",
      ar: "لا يُعرف عن جدة قبل الإسلام إلا القليل. وقد عظُمت مكانتها حين اتخذها الخليفة عثمان بن عفان ميناءً لمكة سنة 26هـ (647م) بدلًا من ميناء الشعيبة في الجنوب، فصار الحجاج القادمون بحرًا من شمال إفريقيا ومصر والهند ينزلون بجدة في طريقهم إلى مكة.\n\n"
          "ويذكر رحالة العصور الوسطى أسوارها وخاناتها الحجرية ومساجدها. وفي العهد المملوكي بنى حسين الكردي سنة 1511م قلعة وسورًا للمدينة لصدّ هجمات البرتغاليين. ودخلت جدة في الحكم العثماني سنة 1517م، ورُدّ هجوم برتغالي سنة 1541م. وصارت في العهد العثماني مركز سنجق، وجلب إليها قره مصطفى باشا الماء من مكان بعيد وبنى فيها خانًا وحمّامًا ومسجدًا.\n\n"
          "ويُروى أن قبرًا يُنسب إلى أمنا حواء كان يُزار في جدة، غير أن هذا لا يثبت بخبر صحيح، وقد أُزيل القبر سنة 1928م.\n\n"
          "وبعد حصار سنة 1925م دخلت جدة في الحكم السعودي، وأُزيل سورها سنة 1947م مع توسع العمران. وفي عهد النفط انتقل كثير من أهلها إلى الأحياء الجديدة، وبدأت جهود الحفاظ على المنطقة التاريخية منذ السبعينيات. وبعد إدراجها في قائمة اليونسكو سنة 2014 دُعّم 56 مبنى تاريخيًا مهددًا بالسقوط ضمن مشروع بدأ سنة 2019.",
    ),
    olaylar: [
      GeziOlay(
        tarih: L10nText(tr: "26 / 647", en: "26 AH / 647", ar: "26هـ / 647م"),
        metin: L10nText(
          tr: "Hz. Osman, Cidde'yi Mekke'nin limanı olarak seçti.",
          en: "Caliph Uthman chose Jeddah as the port of Makkah.",
          ar: "اتخذ الخليفة عثمان بن عفان جدة ميناءً لمكة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("1511"),
        metin: L10nText(
          tr: "Memlük emîri Hüseyin el-Kürdî Portekiz saldırılarına karşı kale ve sur yaptırdı.",
          en: "The Mamluk emir Husayn al-Kurdi built a fortress and wall against Portuguese attacks.",
          ar: "بنى الأمير المملوكي حسين الكردي قلعة وسورًا لصدّ هجمات البرتغاليين.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("1517"),
        metin: L10nText(
          tr: "Cidde Osmanlı idaresine geçti.",
          en: "Jeddah came under Ottoman rule.",
          ar: "دخلت جدة في الحكم العثماني.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("1541"),
        metin: L10nText(
          tr: "Portekiz saldırısı Mekke Şerifi Ebû Nümey tarafından püskürtüldü.",
          en: "A Portuguese attack was repelled by the Sharif of Makkah, Abu Numayy.",
          ar: "ردّ شريف مكة أبو نمي هجومًا برتغاليًا.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("1925"),
        metin: L10nText(
          tr: "Kuşatmanın ardından şehir Suudi idaresine geçti.",
          en: "After a siege the city passed under Saudi rule.",
          ar: "دخلت المدينة في الحكم السعودي بعد الحصار.",
        ),
      ),
      GeziOlay(
        tarih: L10nText.same("1947"),
        metin: L10nText(
          tr: "Şehri çevreleyen surlar kaldırıldı.",
          en: "The walls surrounding the city were removed.",
          ar: "أُزيل سور المدينة.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "21 Haziran 2014", en: "21 June 2014", ar: "21 يونيو 2014"),
        metin: L10nText(
          tr: "“Tarihî Cidde, Mekke'nin Kapısı” UNESCO Dünya Mirası Listesi'ne alındı.",
          en: "“Historic Jeddah, the Gate to Makkah” was inscribed on the UNESCO World Heritage List.",
          ar: "أُدرجت «جدة التاريخية، بوابة مكة» في قائمة التراث العالمي لليونسكو.",
        ),
      ),
      GeziOlay(
        tarih: L10nText(tr: "2019–2024", en: "2019–2024", ar: "2019–2024"),
        metin: L10nText(
          tr: "Yıkılma tehlikesindeki 56 tarihî binanın güçlendirme projesi tamamlandı.",
          en: "The project to stabilise 56 historic buildings at risk of collapse was completed.",
          ar: "اكتمل مشروع تدعيم 56 مبنى تاريخيًا مهددًا بالسقوط.",
        ),
      ),
    ],
    fazilet: L10nText(
      tr: "Cidde'nin özel bir dinî fazileti rivayet edilmez; önemi, yüzyıllar boyunca Mekke'ye giden hacıların kapısı olmasından gelir. Denizden gelen hacılar burada karaya çıkar, buradan Mekke'ye doğru yola koyulurdu. Bu yüzden şehrin kültürü, dünyanın dört bir yanından gelen hacıların ve tüccarların izlerini taşır.\n\n"
          "Bugün de Mekke'ye gelen ziyaretçilerin büyük kısmı Cidde'den geçer. El-Beled'i gezmek, hac ve umre yolculuğunun tarih içindeki serüvenini, hacılara hizmet eden şehir halkının mimarisini ve gündelik hayatını yakından görme fırsatı sunar.",
      en: "No special religious virtue is narrated for Jeddah; its importance comes from having been, for centuries, the gateway for pilgrims travelling to Makkah. Pilgrims arriving by sea landed here and set out from here towards Makkah. For this reason the city's culture bears the traces of pilgrims and merchants from every corner of the world.\n\n"
          "Today, too, most visitors to Makkah pass through Jeddah. Touring Al-Balad offers a chance to see up close the historical journey of Hajj and Umrah, and the architecture and daily life of the townspeople who served the pilgrims.",
      ar: "لم يُروَ لجدة فضل ديني خاص، وإنما تأتي أهميتها من كونها بوابة الحجاج إلى مكة قرونًا طويلة؛ فقد كان القادمون بحرًا ينزلون فيها ثم يتوجهون منها إلى مكة، ولذلك تحمل ثقافتها آثار الحجاج والتجار من أنحاء العالم.\n\n"
          "واليوم أيضًا يمر أكثر زوار مكة بجدة. وزيارة البلد فرصة للاطلاع عن قرب على رحلة الحج والعمرة عبر التاريخ، وعلى عمارة أهل المدينة الذين خدموا الحجاج وحياتهم اليومية.",
    ),
    adab: [
      L10nText(
        tr: "En uygun saat ikindiden sonrası ve akşam serinliğidir; dar sokaklar ve çarşılar bu saatlerde daha canlıdır.",
        en: "The best time is late afternoon and the cool of the evening, when the narrow streets and souqs are most lively.",
        ar: "أنسب الأوقات بعد العصر وفي برودة المساء، حين تكون الأزقة والأسواق أكثر حيوية.",
      ),
      L10nText(
        tr: "Tarihî binalara saygı gösterin; restorasyondaki yapılara girmeyin, ahşap rûşenlere dokunmayın.",
        en: "Respect the historic buildings; do not enter buildings under restoration or touch the wooden rawasheen.",
        ar: "احترم المباني التاريخية، ولا تدخل المباني التي تحت الترميم، ولا تلمس الرواشين الخشبية.",
      ),
      L10nText(
        tr: "Sokaklar dar ve zeminler yer yer düzensizdir; rahat yürüyüş ayakkabısı giyin.",
        en: "The streets are narrow and the ground is uneven in places; wear comfortable walking shoes.",
        ar: "الأزقة ضيقة والأرض غير مستوية في بعض المواضع، فالبس حذاءً مريحًا للمشي.",
      ),
      L10nText(
        tr: "Vakit girdiğinde tarihî camilerden birinde (ör. Şâfiî Camii) namaz kılabilirsiniz.",
        en: "When prayer time comes, you can pray at one of the historic mosques, such as the al-Shafi'i Mosque.",
        ar: "إذا حان وقت الصلاة فصلِّ في أحد المساجد التاريخية كمسجد الشافعي.",
      ),
      L10nText(
        tr: "Yerel geleneklere uygun, örtünmeye dikkat eden bir kıyafet tercih edin.",
        en: "Choose modest clothing that respects local customs.",
        ar: "اختر لباسًا محتشمًا يراعي أعراف البلد.",
      ),
      L10nText(
        tr: "Çarşıda alışveriş yaparken fiyatı önceden sorun; pazarlık yapılabilir.",
        en: "Ask the price before buying in the souq; bargaining is possible.",
        ar: "اسأل عن السعر قبل الشراء في السوق، فالمساومة ممكنة.",
      ),
    ],
    ziyaretNotu: L10nText(
      tr: "Bazı tarihî binalar ve müzeler (ör. Nasîf Evi) restorasyon ya da etkinlikler nedeniyle kapalı olabilir veya bilet gerektirebilir; giriş saatleri Suudi Kültür Bakanlığı'nın Tarihî Cidde programına göre değişir. Cidde Harem sınırları dışındadır; umre için Mekke'ye gidecekseniz ihrama girme yerini ve zamanını kafile rehberinizle netleştirin.",
      en: "Some historic buildings and museums (such as Naseef House) may be closed for restoration or events, or may require a ticket; opening hours depend on the Saudi Ministry of Culture's Historic Jeddah programme. Jeddah is outside the Haram; if you are going on to Makkah for Umrah, confirm where and when to enter Ihram with your group guide.",
      ar: "قد تكون بعض المباني التاريخية والمتاحف (مثل بيت نصيف) مغلقة للترميم أو للفعاليات، أو تتطلب تذكرة، وتختلف أوقات الدخول بحسب برنامج جدة التاريخية التابع لوزارة الثقافة السعودية. وجدة خارج حدود الحرم، فإن كنت متوجهًا إلى مكة للعمرة فتأكد مع مرشد مجموعتك من مكان الإحرام ووقته.",
    ),
    anlatim: L10nText(
      tr: "Kızıldeniz'in kıyısında, yüzyıllardır Mekke'ye giden yolun başında duran bir şehir var: Cidde. Bugün gökdelenleriyle büyük bir modern şehir olan Cidde'nin kalbinde, dar sokakları ve yüksek taş evleriyle bambaşka bir dünya saklıdır. Halk buraya kısaca el-Beled, yani şehir der.\n\n"
          "Cidde'nin yıldızı, Hz. Osman'ın halifeliği döneminde parladı. Hz. Osman, Mekke'nin limanı olarak Cidde'yi seçti. O günden sonra Mısır'dan, Kuzey Afrika'dan, Hindistan'dan ve daha nice uzak diyardan gemilerle gelen hacılar bu kıyıya ayak bastılar. Burada dinlendiler, ihtiyaçlarını gördüler ve Mekke'ye doğru yola koyuldular. Bu yüzden Cidde'ye Mekke'nin kapısı denir.\n\n"
          "Etrafınıza bakın. Bu evler, kıyıdaki lagünlerden çıkarılan mercan kökenli taşlarla örülmüş ve ahşap kirişlerle desteklenmiştir. Bazıları otuz metreyi aşar. Cephelerdeki oymalı ahşap cumbalara rûşen denir. Rûşenler hem serin deniz rüzgârını içeri alır hem de gölge yapar. Böylece bu evler, sıcak iklimde yaşamak için ustalıkla tasarlanmış birer sanat eseri olmuştur.\n\n"
          "Şehrin tarihi mücadelelerle de doludur. On altıncı yüzyılın başında Portekiz gemilerine karşı şehre kale ve sur yapıldı. Kısa süre sonra Cidde Osmanlı idaresine geçti ve yüzyıllar boyunca hacılara hizmet etmeyi sürdürdü. Şehri çevreleyen surlar ise bin dokuz yüz kırk yedi yılında kaldırıldı.\n\n"
          "İki bin on dört yılında Tarihî Cidde, Mekke'nin Kapısı adıyla UNESCO Dünya Mirası Listesi'ne alındı. Sokaklarda dolaşırken Şâfiî Camii gibi tarihî camileri, eski çarşıları ve bugün müze olan Nasîf Evi'ni görebilirsiniz.\n\n"
          "El-Beled'de yürürken, sizden önce bu kıyıya ayak basmış milyonlarca hacıyı düşünün. Her biri tıpkı sizin gibi, kalbinde Kâbe'nin hasretiyle bu sokaklardan geçti. Bu şehir, o büyük yolculuğun ilk durağıydı.",
      en: "On the shore of the Red Sea stands a city that has for centuries marked the beginning of the road to Makkah: Jeddah. Today Jeddah is a large modern city of skyscrapers, but hidden in its heart is a completely different world of narrow streets and tall stone houses. People simply call it Al-Balad, which means the town.\n\n"
          "Jeddah's star rose during the caliphate of Uthman. Uthman chose Jeddah as the port of Makkah. From that day on, pilgrims arriving by ship from Egypt, North Africa, India and many other distant lands set foot on this shore. Here they rested, saw to their needs and set out on the road to Makkah. That is why Jeddah is called the Gate to Makkah.\n\n"
          "Look around you. These houses were built of coral-based stone quarried from the coastal lagoons and reinforced with timber beams. Some of them rise more than thirty metres. The carved wooden bay windows on the façades are called rawasheen. They let in the cool sea breeze and also provide shade. In this way these houses became works of art, skilfully designed for living in a hot climate.\n\n"
          "The city's history is also full of struggle. At the beginning of the sixteenth century a fortress and walls were built against Portuguese ships. Soon afterwards Jeddah came under Ottoman rule and continued to serve the pilgrims for centuries. The walls that surrounded the city were removed in nineteen forty-seven.\n\n"
          "In twenty fourteen, Historic Jeddah, the Gate to Makkah, was inscribed on the UNESCO World Heritage List. As you stroll through the streets you can see historic mosques such as the al-Shafi'i Mosque, the old souqs, and Naseef House, which is now a museum.\n\n"
          "As you walk through Al-Balad, think of the millions of pilgrims who set foot on this shore before you. Each of them, just like you, passed through these streets with a longing for the Kaaba in their heart. This city was the first stop on that great journey.",
      ar: "على شاطئ البحر الأحمر تقوم مدينة كانت منذ قرون أول الطريق إلى مكة المكرمة، هي جدة. وجدة اليوم مدينة حديثة كبيرة بناطحات سحابها، لكن في قلبها عالمًا آخر من الأزقة الضيقة والبيوت الحجرية العالية، يسميه أهلها البلد.\n\n"
          "سطع نجم جدة في خلافة عثمان بن عفان رضي الله عنه حين اتخذها ميناءً لمكة. ومنذ ذلك اليوم نزل على هذا الشاطئ الحجاج القادمون بالسفن من مصر وشمال إفريقيا والهند وبلاد بعيدة كثيرة، فاستراحوا فيها وقضوا حوائجهم ثم توجهوا إلى مكة. ولهذا سُمّيت جدة بوابة مكة.\n\n"
          "انظر حولك؛ فهذه البيوت مبنية من الحجر المنقبي المستخرج من بحيرات الساحل، ومدعّمة بأخشاب أفقية، ويزيد ارتفاع بعضها على ثلاثين مترًا. والنوافذ الخشبية المنقوشة البارزة في واجهاتها تُسمّى الرواشين، وهي تُدخل نسيم البحر البارد وتلقي الظل في آن واحد. وهكذا صارت هذه البيوت تحفًا فنية صُمّمت بمهارة للعيش في المناخ الحار.\n\n"
          "وتاريخ المدينة مليء بالأحداث أيضًا؛ ففي أوائل القرن السادس عشر بُنيت لها قلعة وسور لصدّ السفن البرتغالية، ثم دخلت بعد قليل في الحكم العثماني، وظلت تخدم الحجاج قرونًا. أما السور الذي كان يحيط بها فقد أُزيل سنة ألف وتسعمئة وسبع وأربعين.\n\n"
          "وفي سنة ألفين وأربع عشرة أُدرجت جدة التاريخية، بوابة مكة، في قائمة التراث العالمي لليونسكو. وأنت تتجول في أزقتها تستطيع أن ترى المساجد التاريخية كمسجد الشافعي، والأسواق القديمة، وبيت نصيف الذي صار متحفًا.\n\n"
          "وأنت تمشي في البلد، تذكّر ملايين الحجاج الذين نزلوا هذا الشاطئ قبلك، وقد مرّ كل واحد منهم في هذه الأزقة مثلك، وفي قلبه شوق إلى الكعبة. لقد كانت هذه المدينة المحطة الأولى في تلك الرحلة العظيمة.",
    ),
    kaynaklar: [
      GeziKaynak("TDV İslâm Ansiklopedisi – Cidde", "https://islamansiklopedisi.org.tr/cidde"),
      GeziKaynak("UNESCO – Historic Jeddah, the Gate to Makkah", "https://whc.unesco.org/en/list/1361"),
      GeziKaynak("Wikipedia – Al-Balad, Jeddah", "https://en.wikipedia.org/wiki/Al-Balad,_Jeddah"),
      GeziKaynak("Vikipedi (Arapça) – جدة التاريخية",
          "https://ar.wikipedia.org/wiki/%D8%AC%D8%AF%D8%A9_%D8%A7%D9%84%D8%AA%D8%A7%D8%B1%D9%8A%D8%AE%D9%8A%D8%A9"),
      GeziKaynak("OpenStreetMap – Naseef House (node 2520141053)", "https://www.openstreetmap.org/node/2520141053"),
      GeziKaynak("OpenStreetMap – جدة التاريخية (way 1192695373)", "https://www.openstreetmap.org/way/1192695373"),
    ],
  ),
];
