import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../core/utils/auth_utils.dart';
import 'auth_api_service.dart';

/// Firebase kimlik modu (AUTH_API boş): Kullanıcı ID + şifre, Firebase Auth e-posta/şifre.
/// E-posta `id<loginId>@umrerehberim.app` ([loginIdToAuthEmail]). Hata tipi olarak PHP
/// servisiyle aynı [AuthApiException] kullanılır (`fb_*` kodları).
/// TODO PHP kurulunca kaldır: giriş ve şifre değiştirme sunucuya geçer.
class FirebaseIdAuthService {
  FirebaseIdAuthService._();

  static const _timeout = Duration(seconds: 20);

  /// Kullanıcı ID + şifre ile oturum açar, uid döner. Yanlış ID/şifre tek hata verir
  /// (`fb_invalid_credentials`; hesabın varlığı sızmasın). Ağ/çok deneme hataları
  /// [FirebaseAuthException] olarak çağırana gider.
  static Future<String?> signIn(String loginId, String password) async {
    try {
      final cred = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: loginIdToAuthEmail(loginId), password: password)
          .timeout(_timeout);
      return cred.user?.uid;
    } on FirebaseAuthException catch (e) {
      if (const {'user-not-found', 'invalid-credential', 'wrong-password', 'invalid-email'}.contains(e.code)) {
        throw const AuthApiException('fb_invalid_credentials');
      }
      rethrow;
    }
  }

  /// Oturumdaki kullanıcının şifresini değiştirir: önce eski şifreyle yeniden doğrulama,
  /// sonra `updatePassword`. Oturum açık kalır (true döner; çıkış gerekmez).
  /// Zayıf şifre `fb_weak_password`, yanlış eski şifre `fb_wrong_old_password`.
  static Future<bool> changePassword(String oldPassword, String newPassword, {String? loginId}) async {
    if (newPassword.length < AuthApiService.minPasswordLength || isWeakPassword(newPassword, loginId: loginId)) {
      throw const AuthApiException('fb_weak_password');
    }
    final user = FirebaseAuth.instance.currentUser;
    final email = user?.email;
    if (user == null || email == null || email.isEmpty) throw const AuthApiException('unauthenticated');
    try {
      await user
          .reauthenticateWithCredential(EmailAuthProvider.credential(email: email, password: oldPassword))
          .timeout(_timeout);
      await user.updatePassword(newPassword).timeout(_timeout);
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint('changePassword: ${e.code}');
      switch (e.code) {
        case 'wrong-password':
        case 'invalid-credential':
          throw const AuthApiException('fb_wrong_old_password');
        case 'weak-password':
          throw const AuthApiException('fb_weak_password');
        case 'network-request-failed':
          throw const AuthApiException('network');
        case 'too-many-requests':
          throw const AuthApiException('rate_limited');
        default:
          rethrow;
      }
    } on TimeoutException {
      throw const AuthApiException('network');
    }
  }
}
