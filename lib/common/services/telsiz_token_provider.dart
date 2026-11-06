import 'dart:convert';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

import '../../core/providers/locale_provider.dart';
import '../../features/telsiz/telsiz_config.dart';

/// Odaya bağlanmak için gereken bilgiler.
class TelsizConnectionDetails {
  final String serverUrl;
  final String token;
  const TelsizConnectionDetails({required this.serverUrl, required this.token});
}

class TelsizTokenException implements Exception {
  final String message;
  final int? statusCode;
  const TelsizTokenException(this.message, {this.statusCode});
  @override
  String toString() => 'TelsizTokenException($statusCode): $message';
}

/// Token alımı bu arayüzün arkasında. Uygulama [TelsizConfig]'e göre seçilir:
/// önce [EndpointTokenProvider], yoksa [LocalDevTokenProvider].
abstract class TelsizTokenProvider {
  /// [identity] kullanıcının uid'si, [canPublish] yalnız rehberde true.
  Future<TelsizConnectionDetails> fetch({
    required String roomName,
    required String identity,
    required String name,
    required bool canPublish,
  });

  /// Yapılandırmaya göre sağlayıcı; yapılandırılmamışsa null.
  static TelsizTokenProvider? get instance {
    if (_override != null) return _override;
    if (TelsizConfig.useEndpoint) return const EndpointTokenProvider();
    if (TelsizConfig.useLocalDev) return const LocalDevTokenProvider();
    return null;
  }

  static TelsizTokenProvider? _override;

  /// Testte değiştirmek için.
  static set instance(TelsizTokenProvider? provider) => _override = provider;
}

/// ASIL YOL: kendi token sunucumuz (Cloudflare Worker).
/// `POST <tokenEndpoint>`, `Authorization: Bearer <Firebase ID token>`,
/// gövde `{"room": "...", "name": "..."}`, yanıt `{"token": "...", "url": "wss://..."}`.
/// Kimlik (uid), rol (yayın yetkisi) ve acente/oda kontrolü sunucuda yapılır;
/// [identity] ve [canPublish] burada gönderilmez.
class EndpointTokenProvider implements TelsizTokenProvider {
  const EndpointTokenProvider();

  @override
  Future<TelsizConnectionDetails> fetch({
    required String roomName,
    required String identity,
    required String name,
    required bool canPublish,
  }) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) throw TelsizTokenException(l10n.coreSessionNotFound);
    final idToken = await user.getIdToken();
    final res = await http
        .post(
          Uri.parse(TelsizConfig.tokenEndpoint.trim()),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $idToken',
          },
          body: jsonEncode({'room': roomName, 'name': name}),
        )
        .timeout(const Duration(seconds: 15));
    if (res.statusCode < 200 || res.statusCode >= 300) {
      throw TelsizTokenException(res.body, statusCode: res.statusCode);
    }
    final data = jsonDecode(res.body);
    if (data is! Map || data['token'] is! String || (data['token'] as String).isEmpty) {
      throw TelsizTokenException(l10n.coreInvalidTokenResponse);
    }
    final url = data['url'] is String && (data['url'] as String).isNotEmpty
        ? data['url'] as String
        : TelsizConfig.serverUrl;
    return TelsizConnectionDetails(serverUrl: url, token: data['token'] as String);
  }
}

// ============================================================================
// !!! UYARI — YALNIZCA KİŞİSEL TEST İÇİN !!!
// LocalDevTokenProvider, LiveKit API GİZLİ ANAHTARINI (devApiSecret) kullanarak
// erişim token'ını CİHAZDA üretir. Gizli anahtar APK'ya gömülür; APK'yı açan
// herkes anahtarı alıp her odaya her yetkiyle token üretebilir. Bu sağlayıcıyla
// derlenmiş APK dağıtılmamalıdır. Canlıda yalnız EndpointTokenProvider kullanın.
// ============================================================================
class LocalDevTokenProvider implements TelsizTokenProvider {
  const LocalDevTokenProvider();

  @override
  Future<TelsizConnectionDetails> fetch({
    required String roomName,
    required String identity,
    required String name,
    required bool canPublish,
  }) async {
    final jwt = JWT(
      {
        'name': name,
        'video': {
          'roomJoin': true,
          'room': roomName,
          'canPublish': canPublish,
          'canSubscribe': true,
          'canPublishData': false,
        },
      },
      issuer: TelsizConfig.devApiKey.trim(),
      subject: identity,
    );
    final token = jwt.sign(
      SecretKey(TelsizConfig.devApiSecret.trim()),
      algorithm: JWTAlgorithm.HS256,
      expiresIn: const Duration(hours: 6),
      notBefore: const Duration(seconds: -10),
    );
    return TelsizConnectionDetails(serverUrl: TelsizConfig.serverUrl, token: token);
  }
}
