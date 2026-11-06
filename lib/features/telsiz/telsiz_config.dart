/// Telsiz (LiveKit) yapılandırması. Değerler kaynağa YAZILMAZ, derlemede verilir:
/// `flutter build apk --release --dart-define-from-file=telsiz.env.json`
/// (telsiz.env.json gitignore'da: LIVEKIT_URL, LIVEKIT_DEV_API_KEY, LIVEKIT_DEV_API_SECRET,
/// isteğe bağlı TELSIZ_TOKEN_ENDPOINT).
///
/// Token kaynağı önceliği:
///  1. [tokenEndpoint] doluysa: kendi token sunucumuz (Cloudflare Worker).
///     Firebase ID token'ı doğrular, rol/acente kontrolü yapar. ASIL YOL.
///  2. Değilse [devApiKey] + [devApiSecret] doluysa: JWT cihazda üretilir (yalnız test).
///  3. İkisi de boşsa Telsiz ekranı "Telsiz yapılandırılmadı" uyarısı gösterir.
class TelsizConfig {
  TelsizConfig._();

  /// Token sunucusu adresi, ör. `https://telsiz-token.<hesap>.workers.dev/token`.
  /// İstek: `POST`, `Authorization: Bearer <Firebase ID token>`,
  /// gövde `{"room": "...", "name": "..."}`; yanıt `{"token": "...", "url": "wss://..."}`.
  static const String tokenEndpoint = String.fromEnvironment('TELSIZ_TOKEN_ENDPOINT');

  /// LiveKit sunucu adresi. Token sunucusu `url` döndürmezse bu kullanılır.
  static const String serverUrl =
      String.fromEnvironment('LIVEKIT_URL', defaultValue: 'wss://umrerehberim-4y16m8km.livekit.cloud');

  // ==========================================================================
  // !!! UYARI — YALNIZCA KİŞİSEL TEST İÇİN !!!
  // Bu iki alan doldurulursa LiveKit API GİZLİ ANAHTARI APK'nın içine gömülür.
  // APK'yı açan herkes anahtarı okuyup projenizde sınırsız token üretebilir.
  // Bu değerlerle derlenmiş APK'yı ASLA dağıtmayın / Play Store'a yüklemeyin.
  // [tokenEndpoint] doluysa bu alanlar hiç kullanılmaz.
  // ==========================================================================
  static const String devApiKey = String.fromEnvironment('LIVEKIT_DEV_API_KEY');
  static const String devApiSecret = String.fromEnvironment('LIVEKIT_DEV_API_SECRET');

  static bool get useEndpoint => tokenEndpoint.trim().isNotEmpty;
  static bool get useLocalDev => devApiKey.trim().isNotEmpty && devApiSecret.trim().isNotEmpty;
  static bool get isConfigured => useEndpoint || useLocalDev;
}
