import 'package:flutter/widgets.dart';

import '../../../core/providers/locale_provider.dart';

/// Uzun içerik metinleri için küçük çok dilli metin sınıfı.
///
/// Bilgi ekranlarındaki paragraflar ARB'ye girmez; veri dosyasında
/// `L10nText(tr: ..., en: ..., ar: ...)` olarak tutulur. Eksik dil Türkçe'ye düşer.
class L10nText {
  const L10nText({required this.tr, this.en, this.ar});

  /// Üç dilde de aynı kalan metin (özel ad, telefon, link).
  const L10nText.same(String text)
      : tr = text,
        en = null,
        ar = null;

  final String tr;
  final String? en;
  final String? ar;

  /// Verilen dil koduna göre metin.
  String forCode(String code) {
    switch (code) {
      case 'en':
        return en ?? tr;
      case 'ar':
        return ar ?? en ?? tr;
      default:
        return tr;
    }
  }

  /// Ekranın diline göre metin (dil değişince widget yeniden çizilir).
  String of(BuildContext context) => forCode(Localizations.localeOf(context).languageCode);

  /// BuildContext olmayan yerler için uygulamanın o anki dili.
  String get current => forCode(localeProvider.locale.languageCode);

  @override
  String toString() => current;
}
