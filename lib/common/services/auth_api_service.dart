import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../core/config/auth_api_config.dart';
import '../../core/providers/locale_provider.dart';
import '../../features/auth/models/user_model.dart';

/// Giriş servisinin (PHP, `server/umre-api/`) hatası. Sözleşme: `tool/AUTH_SEMA.md`.
///
/// [code]: sunucunun `error` alanı (`invalid_request`, `invalid_secret`, `weak_secret`,
/// `agency_not_found`, `invalid_credentials`, `unauthorized`, `invalid_token`, `reauth_required`,
/// `forbidden`, `account_disabled`, `wrong_old_secret`, `no_secret`, `rate_limited`,
/// `migration_done`, `https_required`, `server_error`, `upstream_error` …) ya da istemci tarafı
/// `network` / `not_configured` / `bad_response`. Gösterimde sunucunun `message` alanı önceliklidir.
///
/// Girişte sunucu yanlış ID, yanlış PIN/şifre, kilit, devre dışı ve hazır olmayan hesap için
/// TEK hata verir (`invalid_credentials`; hesabın varlığı ve durumu sızmasın). `locked`,
/// `account_disabled`, `account_not_ready` eski sunucu sürümleri için hâlâ eşlenir.
class AuthApiException implements Exception {
  final String code;
  final String? serverMessage;
  final int? retryAfter;
  final int? statusCode;

  const AuthApiException(this.code, {this.serverMessage, this.retryAfter, this.statusCode});

  /// Kullanıcıya gösterilecek metin: sunucu `message` verdiyse o, yoksa koda göre çeviri.
  String get message {
    final m = serverMessage?.trim() ?? '';
    if (m.isNotEmpty) return m;
    final t = l10n;
    final wait = retryAfter ?? 0;
    final minutes = (wait + 59) ~/ 60;
    switch (code) {
      case 'invalid_credentials':
        return t.authApiErrInvalidCredentials;
      case 'locked':
        return wait > 0 ? t.authApiErrLocked(minutes) : t.authApiErrLockedShort;
      case 'rate_limited':
        return wait > 0 ? t.authApiErrRateLimitedWait(minutes) : t.authApiErrRateLimited;
      case 'forbidden':
        return t.authApiErrForbidden;
      case 'account_disabled':
        return t.authApiErrAccountDisabled;
      case 'account_not_ready':
        return t.authApiErrAccountNotReady;
      case 'wrong_old_secret':
        return t.authApiErrWrongOldSecret;
      case 'invalid_secret':
        return t.authApiErrInvalidSecret;
      case 'weak_secret':
        return t.authApiErrWeakSecret;
      case 'reauth_required':
        return t.authApiErrReauth;
      case 'migration_done':
        return t.authApiErrMigrationDone;
      case 'agency_not_found':
        return t.authApiErrAgencyNotFound;
      case 'not_found':
        return t.authApiErrNotFound;
      case 'no_secret':
        return t.authApiErrNoSecret;
      case 'unauthorized':
      case 'invalid_token':
      case 'unauthenticated':
        return t.authApiErrUnauthenticated;
      case 'invalid_request':
      case 'validation':
      case 'payload_too_large':
      case 'unsupported_media_type':
        return t.authApiErrValidation;
      case 'server_error':
      case 'upstream_error':
      case 'server':
      case 'https_required':
      case 'forbidden_origin':
        return t.authApiErrServer;
      case 'network':
        return t.authApiErrNetwork;
      case 'not_configured':
        return t.authApiNotConnected;
      default:
        return t.authApiErrUnknown;
    }
  }

  @override
  String toString() => 'AuthApiException($code, $statusCode): $message';
}

/// Servis hesabı açtı ama uygulama `users/{uid}` belgesini yazamadı. Bilgiler bir kez
/// döndüğü için hata ile birlikte gösterilir; yönetici aynı formu yeniden kaydederek
/// (aynı uid ile) belgeyi tekrar yazmayı dener. Belge yazılana kadar giriş
/// `account_not_ready` döner.
class AccountDocWriteException implements Exception {
  final IssuedCredentials credentials;
  final Object cause;
  const AccountDocWriteException(this.credentials, this.cause);
  @override
  String toString() => 'AccountDocWriteException(${credentials.uid}): $cause';
}

/// Servisin bir kez döndürdüğü giriş bilgisi (hesap açma, yeni PIN, taşıma).
class IssuedCredentials {
  final String uid;
  final String loginId;

  /// PIN (misafir, 6 rakam) veya şifre (personel). Yalnız bu yanıtta görünür.
  final String secret;
  final String userName;
  final String userType;

  const IssuedCredentials({
    required this.uid,
    required this.loginId,
    required this.secret,
    this.userName = '',
    this.userType = '',
  });

  /// Misafirin gizli bilgisi PIN'dir; diğer herkesin şifre.
  bool get isPin => AuthApiService.usesPin(userType);

  IssuedCredentials withUser(String name, String type) =>
      IssuedCredentials(uid: uid, loginId: loginId, secret: secret, userName: name, userType: type);

  factory IssuedCredentials.fromJson(Map<String, dynamic> j, {String userName = '', String userType = ''}) =>
      IssuedCredentials(
        // Önizlemede (dry_run) login_id ve secret null gelir.
        uid: (j['uid'] ?? '').toString(),
        loginId: (j['login_id'] ?? '').toString(),
        secret: (j['secret'] ?? '').toString(),
        userName: (j['user_name'] ?? userName).toString(),
        userType: (j['user_type'] ?? userType).toString(),
      );
}

/// `/v1/admin/migrate` bir partisinin sonucu.
class MigrateBatch {
  final List<IssuedCredentials> accounts;
  final List<String> warnings;

  /// Eski şifresi karıştırılamadığı için taşınmayan uid'ler.
  final List<String> failed;

  /// Zaten Kullanıcı ID'si olan, yalnız "taşındı" işaretlenen uid'ler (yeni bilgi verilmez).
  final List<String> closed;

  /// Bu geçişte henüz bakılmamış hesap sayısı (0 ise geçiş bitti).
  final int remaining;

  /// Taşınmamış toplam hesap (başarısızlar dahil).
  final int pendingTotal;
  final String nextAfter;

  /// Tüm hesaplar taşındı; sunucu taşıma ucunu kapattı.
  final bool done;

  const MigrateBatch({
    required this.accounts,
    required this.warnings,
    this.failed = const [],
    this.closed = const [],
    this.remaining = 0,
    this.pendingTotal = 0,
    this.nextAfter = '',
    this.done = false,
  });
}

/// Kullanıcı ID + PIN/şifre servisi istemcisi. Yalnız [authApiEnabled] iken kullanılır.
class AuthApiService {
  AuthApiService._();

  static const _timeout = Duration(seconds: 20);

  /// Misafir PIN kullanır (6 rakam); personel şifre (en az 8 karakter).
  static bool usesPin(String userType) => userType == UserType.misafir;

  static final RegExp loginIdPattern = RegExp(r'^[1-9][0-9]{6}$');
  static final RegExp pinPattern = RegExp(r'^[0-9]{6}$');
  static const minPasswordLength = 8;

  // ---------------------------------------------------------------- yetki
  /// [caller] [target] için yeni PIN/şifre üretebilir mi (sözleşmedeki tablo).
  /// Esnaf yeni girişte değil; kişi kendi bilgisini profilinden değiştirir (sunucu kendine 403 verir).
  static bool canReset(UserModel? caller, UserModel target) {
    if (caller == null || target.isMerchant || caller.id == target.id) return false;
    return canManageType(caller, target.userType, target.agencyId);
  }

  /// Hesap açma ve yeni gizli bilgi için ortak tablo. Sunucudaki Permissions.php ve
  /// firestore.rules (users create/update) ile AYNI:
  /// süper admin herkes; yönetici misafir + acente admini (acentesi dolu);
  /// acente admini yalnız kendi acentesindeki misafir; destek/muhasebe hiçbiri.
  static bool canManageType(UserModel caller, String targetType, String? targetAgencyId) {
    switch (caller.userType) {
      case UserType.superAdmin:
        return true;
      case UserType.yonetici:
        return (targetType == UserType.misafir || targetType == UserType.acenteAdmin) &&
            (targetAgencyId ?? '').isNotEmpty;
      case UserType.acenteAdmin:
        return targetType == UserType.misafir &&
            (caller.agencyId ?? '').isNotEmpty &&
            targetAgencyId == caller.agencyId;
      default:
        return false;
    }
  }

  // ---------------------------------------------------------------- uç noktalar
  /// Kullanıcı ID + gizli bilgi → Firebase custom token.
  static Future<String> login(String loginId, String secret) async {
    final j = await _post('/auth/login', {'login_id': loginId.trim(), 'secret': secret}, authed: false);
    final token = (j['token'] ?? '').toString();
    if (token.isEmpty) throw const AuthApiException('bad_response');
    return token;
  }

  /// Oturumdaki kullanıcının PIN/şifresini değiştirir. Sunucu bu sırada tüm açık oturumları
  /// kapatır (çalınmış cihaz düşsün); bu cihaz yeni bilgiyle sessizce yeniden giriş yapar.
  /// Dönüş: true = oturum yenilendi; false = kullanıcı çıkış yapıp yeniden girmeli.
  static Future<bool> changeSecret(String oldSecret, String newSecret) async {
    final loginId = await _ownLoginId();
    await _post('/auth/change-secret', {'old_secret': oldSecret, 'new_secret': newSecret});
    if (loginId == null) return false;
    try {
      final token = await login(loginId, newSecret);
      await FirebaseAuth.instance.signInWithCustomToken(token).timeout(_timeout);
      return true;
    } catch (e) {
      debugPrint('changeSecret sonrası yeniden giriş yapılamadı: $e');
      return false;
    }
  }

  /// Oturumdaki kullanıcının Kullanıcı ID'si (kendi users belgesinden).
  static Future<String?> _ownLoginId() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return null;
    try {
      final d = await FirebaseFirestore.instance.collection('users').doc(uid).get().timeout(_timeout);
      final id = (d.data()?['login_id'] ?? '').toString().trim();
      return loginIdPattern.hasMatch(id) ? id : null;
    } catch (e) {
      debugPrint('login_id okunamadı: $e');
      return null;
    }
  }

  /// Yeni hesap (Auth uid + login_id + gizli bilgi). `users/{uid}` belgesini uygulama yazar.
  static Future<IssuedCredentials> createAccount({required String userType, required String agencyId}) async {
    final j = await _post('/admin/accounts', {'user_type': userType, 'agency_id': agencyId});
    return _credentials(j, userType: userType);
  }

  /// [uid] için yeni gizli bilgi; login_id yoksa servis üretir.
  static Future<IssuedCredentials> resetSecret(String uid) async {
    final j = await _post('/admin/reset-secret', {'uid': uid});
    return _credentials(j);
  }

  /// Toplu taşıma, TEK parti (yalnız süper admin). [dryRun] yalnız listeler (login_id/secret boş).
  /// Sunucu en fazla [limit] hesabı işler; [after] önceki partinin [MigrateBatch.nextAfter] değeridir.
  /// `warnings` ekranda gösterilir; `failed` hesaplar taşınmamıştır (tekrar çalıştırılır).
  static Future<MigrateBatch> migrate({bool dryRun = false, int limit = 20, String after = ''}) async {
    final j = await _post('/admin/migrate', {
      if (dryRun) 'dry_run': true,
      if (!dryRun) 'limit': limit,
      if (!dryRun && after.isNotEmpty) 'after': after,
    });
    final list = j['accounts'];
    if (list is! List) throw const AuthApiException('bad_response');
    List<String> strings(Object? w) => [
          if (w is List)
            for (final x in w)
              if (x != null && '$x'.trim().isNotEmpty) x is Map ? (x['message'] ?? x).toString() : '$x',
        ];
    int toInt(Object? v) => v is num ? v.toInt() : int.tryParse('${v ?? ''}') ?? 0;
    return MigrateBatch(
      accounts: [
        for (final e in list)
          if (e is Map) IssuedCredentials.fromJson(Map<String, dynamic>.from(e)),
      ],
      warnings: strings(j['warnings']),
      failed: strings(j['failed']),
      closed: strings(j['closed']),
      remaining: toInt(j['remaining']),
      pendingTotal: toInt(j['pending_total']),
      nextAfter: (j['next_after'] ?? '').toString(),
      done: j['done'] == true,
    );
  }

  static IssuedCredentials _credentials(Map<String, dynamic> j, {String userType = ''}) {
    final c = IssuedCredentials.fromJson(j, userType: userType);
    if (c.uid.isEmpty || c.loginId.isEmpty || c.secret.isEmpty) throw const AuthApiException('bad_response');
    return c;
  }

  // ---------------------------------------------------------------- HTTP
  static Uri _uri(String path) {
    var base = authApiBaseUrl.trim();
    while (base.endsWith('/')) {
      base = base.substring(0, base.length - 1);
    }
    if (!base.endsWith('/v1')) base = '$base/v1';
    return Uri.parse('$base$path');
  }

  static Future<Map<String, dynamic>> _post(String path, Map<String, dynamic> body, {bool authed = true}) async {
    if (!authApiEnabled) throw const AuthApiException('not_configured');
    final headers = <String, String>{
      'Content-Type': 'application/json; charset=utf-8',
      'Accept': 'application/json',
    };
    if (authed) {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) throw const AuthApiException('unauthenticated');
      String? idToken;
      try {
        idToken = await user.getIdToken().timeout(_timeout);
      } on TimeoutException {
        throw const AuthApiException('network');
      } on FirebaseAuthException catch (e) {
        throw AuthApiException(e.code == 'network-request-failed' ? 'network' : 'unauthenticated');
      }
      if (idToken == null || idToken.isEmpty) throw const AuthApiException('unauthenticated');
      headers['Authorization'] = 'Bearer $idToken';
    }

    final http.Response res;
    try {
      res = await http.post(_uri(path), headers: headers, body: jsonEncode(body)).timeout(_timeout);
    } on TimeoutException {
      throw const AuthApiException('network');
    } on SocketException {
      throw const AuthApiException('network');
    } on HandshakeException {
      throw const AuthApiException('network');
    } on http.ClientException {
      throw const AuthApiException('network');
    }

    Map<String, dynamic>? json;
    try {
      final decoded = jsonDecode(utf8.decode(res.bodyBytes));
      if (decoded is Map) json = Map<String, dynamic>.from(decoded);
    } catch (_) {}

    if (res.statusCode >= 200 && res.statusCode < 300 && json != null && json['error'] == null) return json;

    final code = (json?['error'] ?? '').toString();
    final retry = json?['retry_after'];
    debugPrint('AuthApi $path → ${res.statusCode} $code');
    throw AuthApiException(
      code.isNotEmpty ? code : _codeForStatus(res.statusCode),
      serverMessage: json?['message']?.toString(),
      retryAfter: retry is num ? retry.toInt() : int.tryParse('${retry ?? ''}'),
      statusCode: res.statusCode,
    );
  }

  static String _codeForStatus(int s) {
    if (s == 401) return 'unauthorized';
    if (s == 403) return 'forbidden';
    if (s == 404) return 'not_found';
    if (s == 429) return 'rate_limited';
    if (s == 400 || s == 413 || s == 422) return 'invalid_request';
    if (s == 502 || s == 503) return 'upstream_error';
    if (s >= 500) return 'server_error';
    return 'bad_response';
  }
}
