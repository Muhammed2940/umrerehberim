import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../core/providers/locale_provider.dart';
import 'firestore_service.dart';

/// Kullanıcı Google penceresini kapattı / vazgeçti. Ekranda mesaj gösterilmez.
class GoogleAuthCancelled implements Exception {
  const GoogleAuthCancelled();
}

/// Kullanıcıya gösterilecek (seçili dilde) Google giriş hatası.
class GoogleAuthException implements Exception {
  final String message;
  final String code;
  const GoogleAuthException(this.code, this.message);
  @override
  String toString() => 'GoogleAuthException($code)';
}

/// Bireysel kullanıcının Google ile girişi (tool/BIREYSEL_SEMA.md).
///
/// `google_sign_in` v7 hesabı seçtirir, dönen ID token ile Firebase Auth
/// `GoogleAuthProvider` oturumu açılır. Sunucu gerekmez.
///
/// Web istemci kimliği (serverClientId) koda yazılmaz: Android eklentisi, google-services
/// Gradle eklentisinin `google-services.json` içindeki `oauth_client` (client_type 3)
/// kaydından ürettiği `default_web_client_id` kaynağını kendisi okur. Konsolda Google
/// sağlayıcısı açılıp json yeniden indirilmezse bu kaynak oluşmaz ve giriş
/// [bireyselErrUnavailable] mesajıyla reddedilir.
///
/// iOS'ta ileride "Apple ile giriş" de eklenecek; o akış da [_firebaseSignIn] ile aynı
/// biçimde bir `AuthCredential` üretip buraya bağlanabilir.
class GoogleAuthService {
  GoogleAuthService._();

  static Future<void>? _init;

  static Future<void> _ensureInit() => _init ??= GoogleSignIn.instance.initialize().catchError((Object e) {
        _init = null; // bir sonraki denemede yeniden başlatılsın
        throw e;
      });

  /// Google hesabı seçtirir ve Firebase'e giriş yapar.
  /// Vazgeçilirse [GoogleAuthCancelled], diğer hatalarda [GoogleAuthException] fırlatır.
  static Future<UserCredential> signIn() async {
    final credential = await _googleCredential();
    try {
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      debugPrint('Google → Firebase girişi: ${e.code} ${e.message}');
      await signOut();
      throw GoogleAuthException(e.code, firebaseMessage(e.code));
    }
  }

  /// Hesap silme öncesi "yakın zamanda giriş" şartı için yeniden doğrulama.
  /// Farklı bir Google hesabı seçilirse Firebase `user-mismatch` döner.
  static Future<void> reauthenticate(User user) async {
    final credential = await _googleCredential();
    try {
      await user.reauthenticateWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      debugPrint('Google yeniden doğrulama: ${e.code} ${e.message}');
      if (e.code == 'user-mismatch') {
        throw GoogleAuthException(e.code, l10n.bireyselDeleteWrongAccount);
      }
      throw GoogleAuthException(e.code, firebaseMessage(e.code));
    }
  }

  /// Mevcut Firebase oturumu Google ile mi açıldı? Kurallarla aynı ölçüt: ID token'ın
  /// `firebase.sign_in_provider` alanı (önbellekteki token; süresi dolmuşsa yenilenir).
  /// Token okunamazsa (ör. çevrimdışı ve süresi dolmuş) temkinli davranılır: hesapta
  /// google.com sağlayıcısı varsa Google sayılır.
  static Future<bool> isGoogleSession(User? user) async {
    if (user == null) return false;
    try {
      final r = await user.getIdTokenResult().timeout(const Duration(seconds: 10));
      final p = r.signInProvider;
      if (p != null && p.isNotEmpty) return p == 'google.com';
    } catch (e) {
      debugPrint('Google oturum denetimi: $e');
    }
    return user.providerData.any((p) => p.providerId == 'google.com');
  }

  /// Firebase ve Google oturumlarını kapatır; hata fırlatmaz.
  static Future<void> signOutAll() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      debugPrint('Firebase çıkışı: $e');
    }
    await signOut();
  }

  /// Kaydı tamamlanmamış Google hesabını kapatır (Kayıt Tamamla'dan vazgeçme, açılışta
  /// belgesi olmayan Google oturumu). Önce Auth kaydı silinmeye çalışılır (oturum tazeyse
  /// başarılı olur; sahipsiz Auth hesabı birikmesin), hata yok sayılır; sonra çıkış.
  /// Güvenlik: yalnız Google oturumunda ve `users/{uid}` SUNUCUDA gerçekten yoksa silinir
  /// (önbellek/ağ hatası ya da bağlanmış bir personel hesabı yanlışlıkla silinmesin).
  static Future<void> discardUnregistered() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null && await isGoogleSession(user)) {
      try {
        final doc = await FirestoreService.instance.usersCollection
            .doc(user.uid)
            .get(const GetOptions(source: Source.server))
            .timeout(const Duration(seconds: 10));
        if (!doc.exists) await user.delete().timeout(const Duration(seconds: 10));
      } catch (e) {
        debugPrint('Kayıtsız Google hesabı silinemedi (yok sayıldı): $e');
      }
    }
    await signOutAll();
  }

  /// Google tarafındaki oturumu kapatır (bir sonraki girişte hesap yeniden sorulur).
  /// Hata fırlatmaz.
  static Future<void> signOut() async {
    try {
      await _ensureInit().timeout(const Duration(seconds: 5));
      await GoogleSignIn.instance.signOut().timeout(const Duration(seconds: 5));
    } catch (e) {
      debugPrint('Google çıkışı: $e');
    }
  }

  static Future<AuthCredential> _googleCredential() async {
    try {
      await _ensureInit();
      if (!GoogleSignIn.instance.supportsAuthenticate()) {
        throw GoogleAuthException('unsupported', l10n.bireyselErrUnavailable);
      }
      final account = await GoogleSignIn.instance.authenticate(scopeHint: const ['email']);
      final idToken = account.authentication.idToken;
      if (idToken == null || idToken.isEmpty) {
        throw GoogleAuthException('no-id-token', l10n.bireyselErrUnavailable);
      }
      return GoogleAuthProvider.credential(idToken: idToken);
    } on GoogleSignInException catch (e) {
      debugPrint('Google girişi: ${e.code} ${e.description}');
      switch (e.code) {
        case GoogleSignInExceptionCode.canceled:
        case GoogleSignInExceptionCode.interrupted:
          throw const GoogleAuthCancelled();
        case GoogleSignInExceptionCode.clientConfigurationError:
        case GoogleSignInExceptionCode.providerConfigurationError:
        case GoogleSignInExceptionCode.uiUnavailable:
          throw GoogleAuthException(e.code.name, l10n.bireyselErrUnavailable);
        default:
          // Android Credential Manager ağ hatasını ayrı kodla vermiyor; açıklamaya bakılır.
          final d = (e.description ?? '').toLowerCase();
          if (d.contains('network') || d.contains('internet')) {
            throw GoogleAuthException('network', l10n.authNoInternet);
          }
          throw GoogleAuthException(e.code.name, l10n.bireyselErrGeneric);
      }
    }
  }

  /// Google kimliğiyle Firebase'e girişteki hata kodlarının mesajı.
  static String firebaseMessage(String code) {
    switch (code) {
      case 'operation-not-allowed': // konsolda Google sağlayıcısı kapalı
      case 'invalid-credential':
      case 'invalid-api-key':
      case 'app-not-authorized':
        return l10n.bireyselErrUnavailable;
      case 'network-request-failed':
        return l10n.authNoInternet;
      case 'account-exists-with-different-credential':
        return l10n.bireyselErrAccountExists;
      case 'user-disabled':
        return l10n.authUserDisabled;
      case 'too-many-requests':
        return l10n.authTooManyRequests;
      case 'requires-recent-login':
        return l10n.bireyselDeleteRecentLogin;
      default:
        return l10n.bireyselErrGeneric;
    }
  }
}
