import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../l10n/gen/app_localizations.dart';

/// Uygulamanın tek dil sağlayıcısı (main.dart MultiProvider'a `.value` ile verir).
final localeProvider = LocaleProvider();

/// BuildContext olmayan yerler (servis, provider, snackbar mesajları) için çeviriler.
/// Ekranlarda `context.l10n` tercih edin; o, dil değişince ekranı yeniden çizer.
AppLocalizations get l10n => lookupAppLocalizations(localeProvider.locale);

extension L10nContext on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

/// Desteklenen / ileride eklenecek diller.
class AppLanguage {
  final String code; // 'tr', 'en', 'ar' …
  final String nativeName; // kendi dilinde adı
  final String flag;
  final bool available; // false → "Çok yakında"

  const AppLanguage(this.code, this.nativeName, this.flag, {this.available = false});

  Locale get locale => Locale(code);
  bool get isRtl => code == 'ar' || code == 'fa' || code == 'ur';
}

/// Uygulama dili. Seçim SharedPreferences'ta (`app_locale`) saklanır.
/// Arapça seçilince MaterialApp yönü kendiliğinden sağdan sola olur.
class LocaleProvider extends ChangeNotifier {
  static const _key = 'app_locale';

  static const languages = <AppLanguage>[
    AppLanguage('tr', 'Türkçe', '🇹🇷', available: true),
    AppLanguage('en', 'English', '🇬🇧', available: true),
    AppLanguage('ar', 'العربية', '🇸🇦', available: true),
    AppLanguage('de', 'Deutsch', '🇩🇪'),
    AppLanguage('fr', 'Français', '🇫🇷'),
    AppLanguage('es', 'Español', '🇪🇸'),
    AppLanguage('it', 'Italiano', '🇮🇹'),
    AppLanguage('ru', 'Русский', '🇷🇺'),
    AppLanguage('id', 'Bahasa Indonesia', '🇮🇩'),
    AppLanguage('ms', 'Bahasa Melayu', '🇲🇾'),
    AppLanguage('ur', 'اردو', '🇵🇰'),
    AppLanguage('fa', 'فارسی', '🇮🇷'),
    AppLanguage('zh', '中文', '🇨🇳'),
    AppLanguage('ko', '한국어', '🇰🇷'),
  ];

  static List<Locale> get supportedLocales =>
      [for (final l in languages) if (l.available) l.locale];

  Locale _locale = const Locale('tr');
  Locale get locale => _locale;

  AppLanguage get current => languages.firstWhere((l) => l.code == _locale.languageCode);

  /// main.dart açılışında çağrılır.
  Future<void> load() async {
    try {
      final p = await SharedPreferences.getInstance();
      final code = p.getString(_key);
      final lang = languages.where((l) => l.code == code && l.available);
      if (lang.isNotEmpty) _locale = lang.first.locale;
    } catch (_) {}
    await _applyIntl();
  }

  Future<void> setLocale(String code) async {
    final lang = languages.where((l) => l.code == code && l.available);
    if (lang.isEmpty || code == _locale.languageCode) return;
    _locale = lang.first.locale;
    await _applyIntl();
    notifyListeners();
    try {
      final p = await SharedPreferences.getInstance();
      await p.setString(_key, code);
    } catch (_) {}
  }

  /// Tarih/sayı biçimleri (DateFormat, NumberFormat) seçili dile uysun.
  Future<void> _applyIntl() async {
    final tag = switch (_locale.languageCode) { 'tr' => 'tr_TR', 'ar' => 'ar', _ => 'en_US' };
    Intl.defaultLocale = tag;
    try {
      await initializeDateFormatting(tag);
    } catch (_) {}
  }
}
