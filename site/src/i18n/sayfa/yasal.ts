// Yasal sayfa şablonu metinleri (Yasal.astro). Belge gövdeleri content/yasal/*.md'de; burada yalnız
// şablonun çerçeve metinleri ve başlık altı kısa açıklamalar var. KVKK açıklaması onaylı görselden (11-kvkk).
import type { SayfaSozluk } from '../sayfa';

export const YASAL = {
  tr: {
    konum: 'Bulunduğunuz yer',
    icindekiler: 'İçindekiler',
    taslakRozet: 'Taslak',
    bilgiler: 'Veri Sorumlusu Bilgileri',
    ilgili: 'İlgili metinler',
    acikKvkk: 'Kişisel verilerinizin işlenmesine ilişkin sizi bilgilendirmek amacıyla hazırlanan aydınlatma metnidir.',
    acikGizlilik: 'Uygulama ve web sitesi kullanılırken hangi kişisel verilerin, hangi amaçla işlendiğini ve haklarınızı açıklar.',
    acikAcikRiza: 'Açık rızanıza dayanan veri işleme faaliyetlerini ve bu rızayı nasıl verip geri alabileceğinizi açıklar.',
    acikKosullar: 'Umre Rehberim uygulamasını ve web sitesini kullanırken geçerli olan koşulları açıklar.',
  },
  en: {
    konum: 'You are here',
    icindekiler: 'Contents',
    taslakRozet: 'Draft',
    bilgiler: 'Data Controller Details',
    ilgili: 'Related documents',
    acikKvkk: 'This notice is prepared to inform you about how your personal data is processed.',
    acikGizlilik: 'Explains which personal data is processed, for what purposes, and your rights when you use the app and this website.',
    acikAcikRiza: 'Explains the processing based on your explicit consent and how you can give or withdraw that consent.',
    acikKosullar: 'Explains the terms that apply when you use the My Umrah Guide app and website.',
  },
  ar: {
    konum: 'أنت هنا',
    icindekiler: 'المحتويات',
    taslakRozet: 'مسودة',
    bilgiler: 'بيانات المسؤول عن البيانات',
    ilgili: 'نصوص ذات صلة',
    acikKvkk: 'نصّ إعلامي أُعدّ لإطلاعك على كيفية معالجة بياناتك الشخصية.',
    acikGizlilik: 'يوضح البيانات الشخصية التي تُعالج والغرض منها وحقوقك عند استخدام التطبيق وهذا الموقع.',
    acikAcikRiza: 'يوضح المعالجة القائمة على موافقتك الصريحة وكيف تمنح هذه الموافقة أو تسحبها.',
    acikKosullar: 'يوضح الشروط التي تسري عند استخدام تطبيق دليل العمرة والموقع.',
  },
} satisfies SayfaSozluk;
