import 'l10n_text.dart';

/// Gezilecek Yerler ve Gezi Detay ekranlarının kısa arayüz metinleri.
///
/// Not: Bu metinler bilerek ARB'ye (lib/l10n/parts/info.json) eklenmedi;
/// o dosyalarda başka bir oturum çalışıyordu. İleride `info…` anahtarlarına
/// taşınabilir. `{n}`, `{t}`, `{d}`, `{dil}` yer tutucuları `fill` ile doldurulur.
class GeziMetin {
  GeziMetin._();

  static const tabMekke = L10nText(tr: 'Mekke', en: 'Makkah', ar: 'مكة المكرمة');
  static const tabMedine = L10nText(tr: 'Medine', en: 'Madinah', ar: 'المدينة المنورة');
  static const tabDiger = L10nText(tr: 'Diğer Yerler', en: 'Other Places', ar: 'أماكن أخرى');

  static const yerSayisi = L10nText(tr: '{n} yer', en: '{n} places', ar: '{n} مكانًا');
  static const listeNotu = L10nText(
    tr: 'Bir yere dokunarak ayrıntılı bilgiye ve sesli rehbere ulaşabilirsiniz.',
    en: 'Tap a place for full details and the audio guide.',
    ar: 'اضغط على أي مكان لعرض المعلومات المفصلة والدليل الصوتي.',
  );

  static const sesliRehberRozet = L10nText(tr: 'Sesli rehber', en: 'Audio guide', ar: 'دليل صوتي');
  static const sesliRehberBaslik = L10nText(tr: 'Sesli Rehber', en: 'Audio Guide', ar: 'الدليل الصوتي');
  static const uzak = L10nText(tr: 'Uzak', en: 'Far', ar: 'بعيد');
  static const sizeUzaklik = L10nText(tr: 'Size {d}', en: '{d} from you', ar: 'يبعد عنك {d}');

  static const bolum = L10nText(tr: 'Bölüm {n}/{t}', en: 'Part {n} of {t}', ar: 'الجزء {n} من {t}');
  static const dinle = L10nText(tr: 'Dinle', en: 'Listen', ar: 'استمع');
  static const duraklat = L10nText(tr: 'Duraklat', en: 'Pause', ar: 'إيقاف مؤقت');
  static const devamEt = L10nText(tr: 'Devam et', en: 'Resume', ar: 'متابعة');
  static const bastan = L10nText(tr: 'Baştan', en: 'Restart', ar: 'من البداية');
  static const hiz = L10nText(tr: 'Hız', en: 'Speed', ar: 'السرعة');
  static const hazirlaniyor = L10nText(tr: 'Hazırlanıyor…', en: 'Preparing…', ar: 'جارٍ التحضير…');
  static const bitti = L10nText(
    tr: 'Anlatım tamamlandı.',
    en: 'The narration has finished.',
    ar: 'انتهى السرد.',
  );
  static const metniGoster = L10nText(tr: 'Anlatım metnini göster', en: 'Show transcript', ar: 'عرض نص السرد');
  static const metniGizle = L10nText(tr: 'Metni gizle', en: 'Hide transcript', ar: 'إخفاء النص');
  static const telsizEngel = L10nText(
    tr: 'Telsiz açıkken sesli rehber kullanılamaz.',
    en: 'The audio guide cannot be used while the radio is on.',
    ar: 'لا يمكن استخدام الدليل الصوتي أثناء تشغيل اللاسلكي.',
  );
  static const ttsHata = L10nText(
    tr: 'Sesli rehber başlatılamadı. Cihazın metin okuma (TTS) motorunu kontrol edin.',
    en: "The audio guide could not start. Check the device's text-to-speech engine.",
    ar: 'تعذر تشغيل الدليل الصوتي. تحقق من محرك تحويل النص إلى كلام في الجهاز.',
  );
  static const dilYok = L10nText(
    tr: 'Cihazınızda {dil} ses paketi bulunamadı. Sesli rehberi dinlemek için telefonun Ayarlar › Sistem › '
        'Diller ve giriş › Metin okuma çıkışı bölümünden {dil} sesini indirin. O zamana kadar anlatımı aşağıda okuyabilirsiniz.',
    en: 'No {dil} voice was found on your device. To listen to the audio guide, download the {dil} voice from '
        'Settings › System › Languages & input › Text-to-speech output. Meanwhile you can read the narration below.',
    ar: 'لم يُعثر على صوت {dil} في جهازك. لاستماع الدليل الصوتي نزّل صوت {dil} من الإعدادات › النظام › '
        'اللغات والإدخال › تحويل النص إلى كلام. ويمكنك إلى ذلك الحين قراءة السرد أدناه.',
  );
  static const dilAdi = L10nText(tr: 'Türkçe', en: 'English', ar: 'العربية');

  static const genel = L10nText(tr: 'Genel Bilgi', en: 'Overview', ar: 'معلومات عامة');
  static const tarihce = L10nText(tr: 'Tarihçe', en: 'History', ar: 'نبذة تاريخية');
  static const olaylar = L10nText(tr: 'Önemli Olaylar', en: 'Key Events', ar: 'أحداث مهمة');
  static const fazilet = L10nText(tr: 'Dini Önemi ve Fazileti', en: 'Religious Significance', ar: 'المكانة الدينية والفضل');
  static const adab = L10nText(tr: 'Ziyaret Adabı ve İpuçları', en: 'Etiquette and Tips', ar: 'آداب الزيارة ونصائح');
  static const ziyaretNotu = L10nText(tr: 'Ziyaret Notu', en: 'Visiting Note', ar: 'ملاحظة للزيارة');
  static const ziyaretNotuAlt = L10nText(
    tr: 'Suudi düzenlemeleri',
    en: 'Saudi regulations',
    ar: 'الأنظمة السعودية',
  );
  static const kaynaklar = L10nText(tr: 'Kaynaklar', en: 'Sources', ar: 'المصادر');
  static const konum = L10nText(tr: 'Konum', en: 'Location', ar: 'الموقع');
  static const haritadaAc = L10nText(tr: 'Haritada aç', en: 'Open in maps', ar: 'فتح في الخرائط');
  static const kaynakNotu = L10nText(
    tr: 'Tarihî ve dinî bilgiler TDV İslâm Ansiklopedisi ve Diyanet kaynaklarından derlenmiştir. Konumlar OpenStreetMap verisidir.',
    en: 'Historical and religious information is compiled from TDV İslâm Ansiklopedisi and Diyanet sources. Locations are OpenStreetMap data.',
    ar: 'جُمعت المعلومات التاريخية والدينية من موسوعة TDV الإسلامية ومصادر رئاسة الشؤون الدينية التركية. المواقع من بيانات OpenStreetMap.',
  );
  static const yerYok = L10nText(tr: 'Yer bulunamadı.', en: 'Place not found.', ar: 'المكان غير موجود.');
}

/// `{x}` yer tutucularını doldurur.
String fill(String s, Map<String, Object> values) {
  var out = s;
  values.forEach((k, v) => out = out.replaceAll('{$k}', '$v'));
  return out;
}
