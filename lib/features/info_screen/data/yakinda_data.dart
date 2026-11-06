import 'package:flutter/material.dart';

import 'l10n_text.dart';

/// "Çok Yakında" alanındaki tanıtım kartı (Genel Bilgiler'in en üstü).
class YakindaOzellik {
  const YakindaOzellik({
    required this.icon,
    required this.renk,
    required this.baslik,
    required this.kisa,
    required this.aciklama,
    required this.maddeler,
  });

  final IconData icon;
  final Color renk;
  final L10nText baslik;

  /// Kartta görünen tek satırlık tanıtım.
  final L10nText kisa;

  /// Ayrıntı penceresindeki açıklama paragrafı.
  final L10nText aciklama;

  /// Ayrıntı penceresindeki öne çıkan maddeler.
  final List<L10nText> maddeler;
}

const kYakindaOzellikler = <YakindaOzellik>[
  YakindaOzellik(
    icon: Icons.sim_card_rounded,
    renk: Color(0xFF2E7D9A),
    baslik: L10nText(tr: 'Umre Cell E-SIM', en: 'Umre Cell eSIM', ar: 'شريحة Umre Cell الإلكترونية'),
    kisa: L10nText(
      tr: 'İner inmez internet, hat kuyruğu yok',
      en: 'Online the moment you land, no SIM queues',
      ar: 'إنترنت فور الوصول دون طوابير',
    ),
    aciklama: L10nText(
      tr: 'Suudi Arabistan için hazırlanmış internet ve arama paketlerini doğrudan uygulamadan alacaksınız. '
          'E-SIM\'i yola çıkmadan telefonunuza kurun, uçak iner inmez bağlanın.',
      en: 'You will be able to buy internet and calling packages made for Saudi Arabia right in the app. '
          'Install the eSIM before you travel and get connected as soon as your plane lands.',
      ar: 'ستتمكن من شراء باقات إنترنت ومكالمات مخصصة للسعودية من داخل التطبيق مباشرة. '
          'ثبّت الشريحة الإلكترونية قبل السفر واتصل بالإنترنت فور هبوط الطائرة.',
    ),
    maddeler: [
      L10nText(tr: 'Umre süresine göre gün ve GB seçenekleri', en: 'Day and GB options sized for your Umrah', ar: 'خيارات أيام وجيجابايت حسب مدة العمرة'),
      L10nText(tr: 'Türkiye\'deki numaranız açık kalır', en: 'Your home number stays active', ar: 'يبقى رقمك الأساسي فعّالًا'),
      L10nText(tr: 'Kafileyle toplu alım indirimi', en: 'Group discount for your party', ar: 'خصم للشراء الجماعي مع المجموعة'),
    ],
  ),
  YakindaOzellik(
    icon: Icons.credit_card_rounded,
    renk: Color(0xFFC9A54C),
    baslik: L10nText(tr: 'Sadakat Kartı', en: 'Loyalty Card', ar: 'بطاقة الولاء'),
    kisa: L10nText(
      tr: 'Her alışverişte puan, her umrede ayrıcalık',
      en: 'Points on every purchase, perks on every Umrah',
      ar: 'نقاط مع كل شراء ومزايا في كل عمرة',
    ),
    aciklama: L10nText(
      tr: 'Anlaşmalı dükkanlarda kazandığınız puanlar dijital Umre Rehberim kartında toplanacak. '
          'Puanlarınızı sonraki umrenizde, ailenizin alışverişlerinde ve partner hizmetlerde kullanabileceksiniz.',
      en: 'The points you earn at partner shops will be collected on a digital Umre Rehberim card. '
          'You will be able to use them on your next Umrah, for family purchases and with partner services.',
      ar: 'ستُجمع النقاط التي تكسبها في المتاجر المتعاقدة على بطاقة رقمية من Umre Rehberim، '
          'ويمكنك استخدامها في عمرتك القادمة ومشتريات عائلتك ولدى الخدمات الشريكة.',
    ),
    maddeler: [
      L10nText(tr: 'Seviye sistemi: Yeşil, Gümüş, Altın', en: 'Tiers: Green, Silver, Gold', ar: 'مستويات: أخضر وفضي وذهبي'),
      L10nText(tr: 'Kafile ve aile puan birleştirme', en: 'Combine points with family and group', ar: 'جمع النقاط مع العائلة والمجموعة'),
      L10nText(tr: 'Doğum günü ve bayram hediye puanları', en: 'Gift points on birthdays and Eid', ar: 'نقاط هدية في أعياد الميلاد والأعياد'),
    ],
  ),
  YakindaOzellik(
    icon: Icons.flight_takeoff_rounded,
    renk: Color(0xFF235347),
    baslik: L10nText(tr: 'Umre Rehberim Seyahat Acentesi', en: 'Umre Rehberim Travel Agency', ar: 'وكالة Umre Rehberim للسفر'),
    kisa: L10nText(
      tr: 'Umrenizi uygulamadan planlayın',
      en: 'Plan your Umrah right from the app',
      ar: 'خطّط لعمرتك من التطبيق',
    ),
    aciklama: L10nText(
      tr: 'Uçak, otel, vize ve transferi tek yerden ayarlayan kendi seyahat acentemizle tanışacaksınız. '
          'Şeffaf fiyat, net program ve yolculuk boyunca uygulama içinden destek.',
      en: 'You will meet our own travel agency, arranging flights, hotels, visas and transfers in one place. '
          'Transparent prices, a clear programme and in-app support throughout your journey.',
      ar: 'ستتعرف على وكالتنا للسفر التي تنظّم الطيران والفندق والتأشيرة والنقل في مكان واحد، '
          'بأسعار واضحة وبرنامج محدد ودعم من داخل التطبيق طوال الرحلة.',
    ),
    maddeler: [
      L10nText(tr: 'Ekonomik, standart ve konfor paketleri', en: 'Economy, standard and comfort packages', ar: 'باقات اقتصادية وعادية ومريحة'),
      L10nText(tr: 'Harem\'e yürüme mesafesinde oteller', en: 'Hotels within walking distance of the Haram', ar: 'فنادق على مسافة قريبة من الحرم'),
      L10nText(tr: 'Taksitli ödeme seçenekleri', en: 'Instalment payment options', ar: 'خيارات الدفع بالتقسيط'),
    ],
  ),
  YakindaOzellik(
    icon: Icons.video_camera_front_rounded,
    renk: Color(0xFFD9822B),
    baslik: L10nText(tr: 'Canlı Rehberler', en: 'Live Guides', ar: 'مرشدون مباشرون'),
    kisa: L10nText(
      tr: 'Uzman rehberle görüntülü ve sesli görüşme',
      en: 'Video and voice calls with expert guides',
      ar: 'مكالمات صوتية ومرئية مع مرشدين خبراء',
    ),
    aciklama: L10nText(
      tr: 'Tavaf, sa\'y ya da ziyaret sırasında aklınıza takılan soruyu anında soracağınız, alanında uzman '
          'rehber ve din görevlileriyle görüntülü ve sesli görüşme hizmeti.',
      en: 'A video and voice service with expert guides and religious officials, so you can ask your question '
          'instantly during tawaf, sa\'y or a visit.',
      ar: 'خدمة مكالمات مرئية وصوتية مع مرشدين وعلماء متخصصين، لتسأل عن أي شيء فورًا أثناء الطواف أو السعي أو الزيارة.',
    ),
    maddeler: [
      L10nText(tr: 'Türkçe, Arapça ve İngilizce rehberler', en: 'Guides in Turkish, Arabic and English', ar: 'مرشدون بالتركية والعربية والإنجليزية'),
      L10nText(tr: 'Randevulu özel ziyaret turları', en: 'Private guided visits by appointment', ar: 'جولات زيارة خاصة بموعد مسبق'),
      L10nText(tr: 'Fıkhi sorularda anında destek', en: 'Instant help with fiqh questions', ar: 'مساعدة فورية في المسائل الفقهية'),
    ],
  ),
  YakindaOzellik(
    icon: Icons.person_pin_circle_rounded,
    renk: Color(0xFF8E5A9B),
    baslik: L10nText(tr: 'Bireysel Paketler', en: 'Individual Packages', ar: 'باقات فردية'),
    kisa: L10nText(
      tr: 'Kafile beklemeden, size uygun tarihte umre',
      en: 'Umrah on your own dates, no group needed',
      ar: 'عمرة في الموعد الذي يناسبك دون انتظار مجموعة',
    ),
    aciklama: L10nText(
      tr: 'Tek başına ya da ailenizle, istediğiniz tarihte ve sürede umreye gitmeniz için kişiye özel paketler. '
          'Uygulamanın tüm rehberlik özellikleri yolculuğunuz boyunca yanınızda olacak.',
      en: 'Personal packages so you can go on Umrah alone or with your family, on the dates and for the length you choose. '
          'All of the app\'s guidance features will be with you throughout your journey.',
      ar: 'باقات خاصة لتؤدي العمرة وحدك أو مع عائلتك في الموعد والمدة اللذين تختارهما، '
          'مع جميع مزايا الإرشاد في التطبيق طوال رحلتك.',
    ),
    maddeler: [
      L10nText(tr: 'Esnek tarih ve süre', en: 'Flexible dates and length', ar: 'مواعيد ومدة مرنة'),
      L10nText(tr: 'Aile ve engelli dostu seçenekler', en: 'Family- and accessibility-friendly options', ar: 'خيارات مناسبة للعائلات وذوي الاحتياجات'),
      L10nText(tr: 'Dijital rehber ve 7/24 destek', en: 'Digital guide and 24/7 support', ar: 'مرشد رقمي ودعم على مدار الساعة'),
    ],
  ),
  YakindaOzellik(
    icon: Icons.airport_shuttle_rounded,
    renk: Color(0xFF3B6E5C),
    baslik: L10nText(tr: 'Transfer ve Ulaşım', en: 'Transfers and Transport', ar: 'النقل والتنقلات'),
    kisa: L10nText(
      tr: 'Havalimanı, otel ve ziyaret transferleri',
      en: 'Airport, hotel and visit transfers',
      ar: 'نقل من المطار والفندق وإلى المزارات',
    ),
    aciklama: L10nText(
      tr: 'Cidde ve Medine havalimanından otelinize, Mekke-Medine arasına ve ziyaret yerlerine güvenilir '
          'araçlarla, sabit fiyatlı transfer rezervasyonu.',
      en: 'Fixed-price bookings with reliable vehicles from Jeddah and Madinah airports to your hotel, '
          'between Makkah and Madinah, and to the places of visit.',
      ar: 'حجز نقل بسعر ثابت وبمركبات موثوقة من مطاري جدة والمدينة إلى فندقك، وبين مكة والمدينة، وإلى المزارات.',
    ),
    maddeler: [
      L10nText(tr: 'Karşılama ve bagaj desteği', en: 'Meet-and-greet and luggage help', ar: 'استقبال ومساعدة في الأمتعة'),
      L10nText(tr: 'Haremeyn treni bilet rehberi', en: 'Haramain train ticket guide', ar: 'دليل تذاكر قطار الحرمين'),
      L10nText(tr: 'Uygulamadan canlı araç takibi', en: 'Live vehicle tracking in the app', ar: 'تتبع المركبة مباشرة من التطبيق'),
    ],
  ),
  YakindaOzellik(
    icon: Icons.health_and_safety_rounded,
    renk: Color(0xFFC0392B),
    baslik: L10nText(tr: 'Seyahat Sağlık Sigortası', en: 'Travel Health Insurance', ar: 'تأمين السفر الصحي'),
    kisa: L10nText(
      tr: 'Yolculuğunuz boyunca güvencede olun',
      en: 'Stay covered throughout your journey',
      ar: 'كن مؤمَّنًا طوال رحلتك',
    ),
    aciklama: L10nText(
      tr: 'Umre yolculuğuna özel sağlık ve seyahat sigortasını birkaç adımda uygulamadan yaptırabileceksiniz. '
          'Poliçeniz ve acil durum numaralarınız her zaman cebinizde olacak.',
      en: 'You will be able to buy health and travel insurance made for Umrah in a few steps in the app. '
          'Your policy and emergency numbers will always be in your pocket.',
      ar: 'ستتمكن من شراء تأمين صحي وتأمين سفر خاص بالعمرة بخطوات قليلة من التطبيق، '
          'وستكون وثيقتك وأرقام الطوارئ معك دائمًا.',
    ),
    maddeler: [
      L10nText(tr: 'Acil sağlık ve hastane masrafları', en: 'Emergency medical and hospital costs', ar: 'تكاليف الطوارئ الطبية والمستشفى'),
      L10nText(tr: 'Bagaj ve uçuş gecikmesi güvencesi', en: 'Luggage and flight delay cover', ar: 'تغطية الأمتعة وتأخر الرحلات'),
      L10nText(tr: 'Poliçe uygulamada, tek dokunuşla', en: 'Policy in the app, one tap away', ar: 'الوثيقة في التطبيق بلمسة واحدة'),
    ],
  ),
];

/// Ortak metinler.
class YakindaMetin {
  static const baslik = L10nText(tr: 'Çok Yakında', en: 'Coming Soon', ar: 'قريبًا');
  static const altBaslik = L10nText(
    tr: 'Umre yolculuğunuzu kolaylaştıracak yeni hizmetler',
    en: 'New services to make your Umrah journey easier',
    ar: 'خدمات جديدة لتسهيل رحلة عمرتك',
  );
  static const rozet = L10nText(tr: 'ÇOK YAKINDA', en: 'COMING SOON', ar: 'قريبًا');
  static const detay = L10nText(tr: 'Detaylar', en: 'Details', ar: 'التفاصيل');
  static const bilgi = L10nText(
    tr: 'Bu hizmet çok yakında Umre Rehberim\'de. Yayına girdiğinde size bildirim göndereceğiz.',
    en: 'This service is coming soon to Umre Rehberim. We will send you a notification when it goes live.',
    ar: 'هذه الخدمة قادمة قريبًا إلى Umre Rehberim، وسنرسل لك إشعارًا عند إطلاقها.',
  );
  static const tamam = L10nText(tr: 'Tamam', en: 'OK', ar: 'حسنًا');
}
