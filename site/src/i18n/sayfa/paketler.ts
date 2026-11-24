// Paketler sayfası metinleri. Paket adı, fiyat, süre ve maddeler BURADA DEĞİL: data/paketler.json (uygulamadan, tek kaynak).
// Buradakiler onaylı referans görselin (04-paketler) yerleşim metinleri: başlık, kısa açıklamalar, düğmeler.
import type { SayfaSozluk } from '../sayfa';

type Anahtar =
  | 'baslik'
  | 'alt'
  | 'aciklama'
  | 'ucretsizAlt'
  | 'umreAlt'
  | 'aileAlt'
  | 'ucretsizBasla'
  | 'paketiSec'
  | 'seyahatPaketi'
  | 'fullAlt'
  | 'basvur'
  | 'basvurNot'
  | 'karsilastirBaslik'
  | 'ozellik'
  | 'var'
  | 'yok'
  | 'telefonGorsel'
  | 'dahilHizmetler'
  | 'fiyat'
  | 'sureKisi'
  | 'incele';

export const PAKETLER: SayfaSozluk<Anahtar> = {
  tr: {
    baslik: 'Uygulama Paketleri',
    alt: 'Umre hazırlığından ibadet sırasında rehberliğe kadar, ihtiyaçlarınıza uygun dijital planı seçin.',
    aciklama: 'Umre Rehberim dijital paketleri ve Full Umre seyahat paketi: fiyatlar, kapsam ve karşılaştırma.',
    ucretsizAlt: 'Temel Umre rehberliği, herkes için ücretsiz.',
    umreAlt: 'Umre yolculuğunuzda ihtiyacınız olan tüm dijital rehberlik.',
    aileAlt: 'Aileniz veya arkadaş grubunuzla birlikte, daha avantajlı kullanım.',
    ucretsizBasla: 'Ücretsiz Başla',
    paketiSec: 'Paketi Seç',
    seyahatPaketi: 'Seyahat Paketi',
    fullAlt: 'Uçuş, konaklama, transfer ve rehberlik hizmetleri dahil, konforlu ve manevi açıdan huzurlu bir umre yolculuğu.',
    basvur: 'Başvur',
    basvurNot: 'Umre tarihleri ve detaylı program için hemen başvurun.',
    karsilastirBaslik: 'Paketleri karşılaştırın',
    ozellik: 'Özellik',
    var: 'Dahil',
    yok: 'Dahil değil',
    telefonGorsel: 'Umre Rehberim uygulamasının ana ekranı',
    dahilHizmetler: 'Dahil hizmetler',
    fiyat: 'Fiyat',
    sureKisi: 'Süre ve kişi sayısı',
    incele: 'Detayları incele',
  },
  en: {
    baslik: 'App Packages',
    alt: 'From preparing for Umrah to guidance during worship, choose the digital plan that fits your needs.',
    aciklama: 'My Umrah Guide digital packages and the Full Umrah travel package: prices, coverage and comparison.',
    ucretsizAlt: 'Basic Umrah guidance, free for everyone.',
    umreAlt: 'All the digital guidance you need on your Umrah journey.',
    aileAlt: 'Together with your family or friends, at better value.',
    ucretsizBasla: 'Start for free',
    paketiSec: 'Choose package',
    seyahatPaketi: 'Travel Package',
    fullAlt: 'Flights, accommodation, transfers and guidance included: a comfortable and spiritually peaceful Umrah journey.',
    basvur: 'Apply',
    basvurNot: 'Apply now for Umrah dates and the detailed programme.',
    karsilastirBaslik: 'Compare the packages',
    ozellik: 'Feature',
    var: 'Included',
    yok: 'Not included',
    telefonGorsel: 'Home screen of the My Umrah Guide app',
    dahilHizmetler: 'Included services',
    fiyat: 'Price',
    sureKisi: 'Period and number of people',
    incele: 'See details',
  },
  ar: {
    baslik: 'باقات التطبيق',
    alt: 'من الاستعداد للعمرة إلى الإرشاد أثناء العبادة، اختر الخطة الرقمية التي تناسب احتياجاتك.',
    aciklama: 'باقات دليل العمرة الرقمية وباقة العمرة الشاملة للسفر: الأسعار والمحتوى والمقارنة.',
    ucretsizAlt: 'إرشاد أساسي للعمرة، مجاني للجميع.',
    umreAlt: 'كل الإرشاد الرقمي الذي تحتاجه في رحلة العمرة.',
    aileAlt: 'مع عائلتك أو أصدقائك، باستخدام أوفر.',
    ucretsizBasla: 'ابدأ مجانًا',
    paketiSec: 'اختر الباقة',
    seyahatPaketi: 'باقة سفر',
    fullAlt: 'تشمل الطيران والإقامة والنقل والإرشاد: رحلة عمرة مريحة يملؤها السكينة.',
    basvur: 'قدّم طلبك',
    basvurNot: 'قدّم طلبك الآن لمعرفة مواعيد العمرة والبرنامج المفصل.',
    karsilastirBaslik: 'قارن بين الباقات',
    ozellik: 'الميزة',
    var: 'مشمول',
    yok: 'غير مشمول',
    telefonGorsel: 'الشاشة الرئيسية لتطبيق دليل العمرة',
    dahilHizmetler: 'الخدمات المشمولة',
    fiyat: 'السعر',
    sureKisi: 'المدة وعدد الأشخاص',
    incele: 'عرض التفاصيل',
  },
};
