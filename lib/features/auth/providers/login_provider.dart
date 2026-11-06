import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/services/background_location_service.dart';
import '../../../common/services/firestore_service.dart';
import '../../../common/services/token_service.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/services/local_cache_service.dart';
import '../../../core/services/session_loader.dart';
import '../../../core/utils/auth_utils.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../esnaf/esnaf_config.dart';
import '../models/user_model.dart';

/// Giriş / çıkış akışı.
class LoginProvider extends ChangeNotifier {
  bool isLoading = false;
  String? errorMessage;

  void _setLoading(bool v) {
    isLoading = v;
    notifyListeners();
  }

  /// TC + giriş tipi ile giriş yapar: `<tc>@umrerehberim.app` / şifre TC ile
  /// FirebaseAuth girişi, ardından users/{uid} belgesi. Başarılıysa true döner; AppWrapper
  /// [AppStateProvider.currentUser] değişince doğru ekrana geçer.
  Future<bool> handleLogin({
    required String tc,
    required String userType,
    required AppStateProvider appState,
  }) async {
    if (isLoading) return false;
    errorMessage = null;
    _setLoading(true);
    try {
      final cleanTc = tc.trim();
      final cred = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: tcToEmail(cleanTc), password: tcToPassword(cleanTc));
      final uid = cred.user?.uid;
      final user = uid == null ? null : await FirestoreService.instance.getUserByToken(uid);
      if (user == null) {
        await FirebaseAuth.instance.signOut();
        _fail(_notFound());
        return false;
      }

      // Esnaf hesabı yalnız "Esnaf" girişiyle (kod + PIN) açılır.
      if (user.isMerchant) {
        await FirebaseAuth.instance.signOut();
        _fail(l10n.esnafLoginUseMerchant);
        return false;
      }

      // Seçilen giriş tipi hesapla uyuşmalı (super_admin, yonetici ve acente_admin "Yönetici" girişidir).
      final wantsAdmin = userType != UserType.misafir;
      if (wantsAdmin != user.isAdmin) {
        await FirebaseAuth.instance.signOut();
        _fail(user.isAdmin ? l10n.authAccountIsAdmin : l10n.authAccountIsGuest);
        return false;
      }

      await TokenService.saveUserToken(user.id);
      final data = await SessionLoader.load(user);
      await LocalCacheService.save(data);
      if (user.userType == UserType.misafir) {
        try {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('show_download_dialog_on_login', true);
        } catch (_) {}
      }
      // FCM token + topic aboneliği girişi bekletmesin.
      unawaited(SessionLoader.registerMessaging(user));

      isLoading = false;
      notifyListeners();
      SessionLoader.apply(appState, data);
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint('Giriş hatası (auth): ${e.code} ${e.message}');
      _fail(_authMessage(e.code));
    } on FirebaseException catch (e) {
      debugPrint('Giriş hatası (firestore): ${e.code} ${e.message}');
      await _safeSignOut();
      _fail(e.code == 'unavailable' ? _network() : l10n.authLoginFailed);
    } catch (e) {
      debugPrint('Giriş hatası: $e');
      await _safeSignOut();
      _fail(l10n.commonError);
    }
    return false;
  }

  /// Esnaf girişi: dükkan kodu + PIN → `esnaf_<kod>@umrerehberim.app` / `esnaf-<pin>`.
  /// Hesap esnaf değilse oturum kapatılır. Misafir verisi yüklenmez, FCM aboneliği yapılmaz.
  Future<bool> handleMerchantLogin({
    required String code,
    required String pin,
    required AppStateProvider appState,
  }) async {
    if (isLoading) return false;
    errorMessage = null;
    _setLoading(true);
    try {
      final cred = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: EsnafConfig.merchantEmail(code),
        password: EsnafConfig.merchantPassword(pin),
      );
      final uid = cred.user?.uid;
      final user = uid == null ? null : await FirestoreService.instance.getUserByToken(uid);
      if (user == null || !user.isMerchant) {
        await _safeSignOut();
        _fail(user == null ? l10n.esnafLoginWrong : l10n.esnafLoginNotMerchant);
        return false;
      }
      await TokenService.saveUserToken(user.id);
      isLoading = false;
      notifyListeners();
      appState.setUser(user);
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint('Esnaf girişi hatası (auth): ${e.code} ${e.message}');
      final m = _authMessage(e.code);
      _fail(m == _notFound() ? l10n.esnafLoginWrong : m);
    } on FirebaseException catch (e) {
      debugPrint('Esnaf girişi hatası (firestore): ${e.code} ${e.message}');
      await _safeSignOut();
      _fail(e.code == 'unavailable' ? _network() : l10n.authLoginFailed);
    } catch (e) {
      debugPrint('Esnaf girişi hatası: $e');
      await _safeSignOut();
      _fail(l10n.commonError);
    }
    return false;
  }

  static String _notFound() => l10n.authUserNotFound;
  static String _network() => l10n.authNoInternet;

  static String _authMessage(String code) {
    switch (code) {
      case 'user-not-found':
      case 'invalid-credential':
      case 'wrong-password':
      case 'invalid-email':
        return _notFound();
      case 'network-request-failed':
        return _network();
      case 'too-many-requests':
        return l10n.authTooManyRequests;
      case 'user-disabled':
        return l10n.authUserDisabled;
      default:
        return l10n.authLoginFailed;
    }
  }

  static Future<void> _safeSignOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (_) {}
  }

  void _fail(String message) {
    errorMessage = message;
    isLoading = false;
    notifyListeners();
    GlobalSnackbar.showError(message);
  }

  /// Oturumu kapatır: FCM token silinir, topic abonelikleri kaldırılır,
  /// FirebaseAuth.signOut, önbellek temizlenir, AppStateProvider.clear() ve kök ekrana dönülür.
  Future<void> logout(BuildContext context) async {
    final appState = context.read<AppStateProvider>();
    final navigator = Navigator.of(context);
    final user = appState.currentUser;

    if (user != null && !user.isMerchant) {
      try {
        await FirestoreService.instance.logoutUserFcmToken(user.id).timeout(const Duration(seconds: 8));
      } catch (e) {
        debugPrint('FCM token silinemedi: $e');
      }
      await SessionLoader.unregisterMessaging(user);
    }
    try {
      await BackgroundLocationService.stop();
    } catch (e) {
      debugPrint('Konum servisi durdurulamadı: $e');
    }
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      debugPrint('Çıkış hatası: $e');
    }
    await LocalCacheService.clear();
    try {
      await TokenService.clearToken();
    } catch (_) {}

    errorMessage = null;
    isLoading = false;
    notifyListeners();

    if (navigator.mounted) navigator.popUntil((r) => r.isFirst);
    appState.clear();
  }
}
