// Özellikler sayfası metinleri. TR: onaylı referans görsel (03-ozellikler) birebir.
import type { SayfaSozluk } from '../sayfa';

type Anahtar =
  | 'baslik'
  | 'alt'
  | 'aciklama'
  | 'ibadetBaslik'
  | 'ibadetMetin'
  | 'ibadetM1'
  | 'ibadetM2'
  | 'ibadetM3'
  | 'ibadetGorsel'
  | 'rehberBaslik'
  | 'rehberMetin'
  | 'rehberM1'
  | 'rehberM2'
  | 'rehberM3'
  | 'rehberGorsel'
  | 'sesliBaslik'
  | 'sesliMetin'
  | 'sesliM1'
  | 'sesliM2'
  | 'sesliM3'
  | 'sesliGorsel'
  | 'aileBaslik'
  | 'aileMetin'
  | 'aileM1'
  | 'aileM2'
  | 'aileM3'
  | 'aileGorsel'
  | 'paketlereGit';

export const OZELLIKLER: SayfaSozluk<Anahtar> = {
  tr: {
    baslik: 'Umre Rehberim’in Özellikleri',
    alt: 'Umre yolculuğunuzda ibadetlerinizi doğru, güvenli ve huzurlu şekilde yaşamanız için geliştirilmiş kapsamlı özellikler.',
    aciklama: 'İbadet asistanı, Mekke ve Medine rehberi, internetsiz sesli rehber, aile takibi ve grup telsizi.',
    ibadetBaslik: 'İbadet Asistanı',
    ibadetMetin: 'Umre ibadetlerinizi adım adım, doğru ve kolay şekilde yapmanız için yanınızda.',
    ibadetM1: 'Tavaf, sa’y, ihram ve diğer ibadetler için adım adım rehberlik',
    ibadetM2: 'Dualar, zikirler ve okunacak metinler',
    ibadetM3: 'İbadetlerde sık sorulan sorular ve pratik bilgiler',
    ibadetGorsel: 'Kâbe çevresinde tavaf eden hacılar',
    rehberBaslik: 'Mekke ve Medine Rehberi',
    rehberMetin: 'Mekke ve Medine’deki kutsal mekânları, tarihî yerleri ve önemli durakları keşfedin.',
    rehberM1: 'Kâbe, Mescid-i Nebevî ve çevresindeki önemli mekânlar',
    rehberM2: 'Tarihî ve manevi bilgilerle zengin içerikler',
    rehberM3: 'Harita üzerinde konumlar ve kolay ulaşım',
    rehberGorsel: 'Mescid-i Nebevî ve Yeşil Kubbe',
    sesliBaslik: 'İnternetsiz Sesli Rehber',
    sesliMetin: 'İnternet bağlantısı olmasa bile, umre boyunca sesli anlatımlarla rehberliğe devam edin.',
    sesliM1: 'Çevrimdışı (internetsiz) sesli rehber içerikleri',
    sesliM2: 'İbadet adımları ve mekân anlatımları',
    sesliM3: 'Pil dostu, pratik ve kesintisiz kullanım',
    sesliGorsel: 'Uygulamanın internetsiz sesli rehber ekranı',
    aileBaslik: 'Aile Takibi ve Grup Telsizi',
    aileMetin: 'Ailenizle veya tur grubunuzla her zaman bağlantıda kalın, kalabalıkta bile birbirinizi kolayca bulun.',
    aileM1: 'Aile ve grup üyelerinin konumunu görme',
    aileM2: 'Telsiz (anlık sesli iletişim) ile hızlı ve kolay iletişim',
    aileM3: 'Güvenli, tur gruplarına özel kullanım',
    aileGorsel: 'Haritada grubunu gösteren telefon ve Kâbe önünde bir aile',
    paketlereGit: 'Paketleri incele',
  },
  en: {
    baslik: 'My Umrah Guide Features',
    alt: 'A complete set of features designed to help you perform your worship correctly, safely and peacefully throughout your Umrah journey.',
    aciklama: 'Worship assistant, Makkah and Madinah guide, offline audio guide, family tracking and group walkie-talkie.',
    ibadetBaslik: 'Worship Assistant',
    ibadetMetin: 'With you at every step, so you can perform your Umrah rites correctly and easily.',
    ibadetM1: 'Step-by-step guidance for tawaf, sa’i, ihram and other rites',
    ibadetM2: 'Prayers, dhikr and texts to recite',
    ibadetM3: 'Frequently asked questions and practical tips on worship',
    ibadetGorsel: 'Pilgrims performing tawaf around the Kaaba',
    rehberBaslik: 'Makkah and Madinah Guide',
    rehberMetin: 'Discover the holy sites, historic places and key stops in Makkah and Madinah.',
    rehberM1: 'The Kaaba, the Prophet’s Mosque and important sites around them',
    rehberM2: 'Content rich in historical and spiritual information',
    rehberM3: 'Locations on the map and easy directions',
    rehberGorsel: 'The Prophet’s Mosque and the Green Dome',
    sesliBaslik: 'Offline Audio Guide',
    sesliMetin: 'Keep being guided by audio narration throughout your Umrah, even without an internet connection.',
    sesliM1: 'Offline audio guide content',
    sesliM2: 'Narration of worship steps and places',
    sesliM3: 'Battery-friendly, practical and uninterrupted use',
    sesliGorsel: 'The app’s offline audio guide screen',
    aileBaslik: 'Family Tracking and Group Walkie-Talkie',
    aileMetin: 'Stay connected with your family or tour group at all times and find each other easily, even in crowds.',
    aileM1: 'See the location of family and group members',
    aileM2: 'Quick, easy communication by walkie-talkie (instant voice)',
    aileM3: 'Secure use, dedicated to tour groups',
    aileGorsel: 'A phone showing the group on a map and a family in front of the Kaaba',
    paketlereGit: 'View packages',
  },
  ar: {
    baslik: 'مزايا دليل العمرة',
    alt: 'مزايا شاملة صُمّمت لتؤدي عباداتك في رحلة العمرة بشكل صحيح وآمن وبطمأنينة.',
    aciklama: 'مساعد العبادة، ودليل مكة والمدينة، والدليل الصوتي دون إنترنت، ومتابعة العائلة واللاسلكي الجماعي.',
    ibadetBaslik: 'مساعد العبادة',
    ibadetMetin: 'معك خطوة بخطوة لتؤدي مناسك العمرة بشكل صحيح وسهل.',
    ibadetM1: 'إرشاد خطوة بخطوة للطواف والسعي والإحرام وسائر المناسك',
    ibadetM2: 'الأدعية والأذكار والنصوص التي تُتلى',
    ibadetM3: 'الأسئلة الشائعة والمعلومات العملية في العبادات',
    ibadetGorsel: 'حجاج يطوفون حول الكعبة',
    rehberBaslik: 'دليل مكة والمدينة',
    rehberMetin: 'اكتشف الأماكن المقدسة والمواقع التاريخية والمحطات المهمة في مكة والمدينة.',
    rehberM1: 'الكعبة والمسجد النبوي والأماكن المهمة حولهما',
    rehberM2: 'محتوى غني بالمعلومات التاريخية والروحية',
    rehberM3: 'المواقع على الخريطة وسهولة الوصول',
    rehberGorsel: 'المسجد النبوي والقبة الخضراء',
    sesliBaslik: 'دليل صوتي دون إنترنت',
    sesliMetin: 'تابع الإرشاد بالشرح الصوتي طوال العمرة حتى دون اتصال بالإنترنت.',
    sesliM1: 'محتوى الدليل الصوتي دون اتصال (دون إنترنت)',
    sesliM2: 'شرح خطوات العبادة والأماكن',
    sesliM3: 'استخدام موفّر للبطارية وعملي ودون انقطاع',
    sesliGorsel: 'شاشة الدليل الصوتي دون إنترنت في التطبيق',
    aileBaslik: 'متابعة العائلة واللاسلكي الجماعي',
    aileMetin: 'ابقَ على تواصل مع عائلتك أو مجموعتك في كل وقت، وجِد بعضكم بسهولة حتى في الزحام.',
    aileM1: 'رؤية مواقع أفراد العائلة والمجموعة',
    aileM2: 'تواصل سريع وسهل عبر اللاسلكي (اتصال صوتي فوري)',
    aileM3: 'استخدام آمن مخصص لمجموعات الرحلات',
    aileGorsel: 'هاتف يعرض المجموعة على الخريطة وعائلة أمام الكعبة',
    paketlereGit: 'عرض الباقات',
  },
};
