/// Yeni giriş sistemi (Kullanıcı ID + PIN/şifre) için PHP servisinin adresi.
///
/// Derlerken `--dart-define=AUTH_API=https://alanadi/umre-api` (veya
/// `--dart-define-from-file` ile JSON içinde `"AUTH_API"`) verilir. `/v1` öneki
/// servis tarafından eklenir; adreste olsa da olmasa da çalışır.
///
/// Boşsa [AuthMode.firebaseId] çalışır (Kullanıcı ID + şifre, Firebase Auth); PIN
/// sıfırlama "sunucu kurulunca açılacak" der. Sözleşme: `tool/AUTH_SEMA.md`.
///
/// Adres `https://` ile başlamıyorsa servis KAPALI sayılır (PIN/şifre ve jetonlar
/// açık ağda gitmesin) ve bir kez uyarı yazılır.
library;

import 'package:flutter/foundation.dart';

const authApiBaseUrl = String.fromEnvironment('AUTH_API', defaultValue: '');

/// Giriş yöntemi (tek yerden seçilir): AUTH_API doluysa PHP servisi, boşsa Firebase kimlik modu.
/// TC ile giriş artık hiçbir modda yoktur.
enum AuthMode {
  /// Kullanıcı ID + PIN/şifre, PHP servisi (custom token). Sözleşme: `tool/AUTH_SEMA.md`.
  api,

  /// Sunucusuz ara mod: Kullanıcı ID + şifre, Firebase Auth e-posta/şifre
  /// (e-posta `id<loginId>@umrerehberim.app`). PHP sunucusu kurulunca kaldırılır.
  firebaseId,
}

AuthMode get authMode => authApiEnabled ? AuthMode.api : AuthMode.firebaseId;

/// Firebase kimlik modu mu (AUTH_API kapalı).
bool get authFirebaseIdMode => authMode == AuthMode.firebaseId;

bool _warned = false;

bool get authApiEnabled {
  final url = authApiBaseUrl.trim();
  if (url.isEmpty) return false;
  final ok = url.toLowerCase().startsWith('https://') && (Uri.tryParse(url)?.host.isNotEmpty ?? false);
  if (!ok && !_warned) {
    _warned = true;
    debugPrint('AUTH_API "https://" ile başlamıyor ya da geçersiz; yeni giriş kapalı sayılıyor.');
  }
  return ok;
}
