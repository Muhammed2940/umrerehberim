import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../../common/services/firestore_service.dart';
import '../../../common/services/google_auth_service.dart';
import '../../../common/services/token_service.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/services/local_cache_service.dart';
import '../../../core/services/session_loader.dart';
import '../../../core/utils/global_snackbar.dart';

/// Açılış: internet kontrolü, oturum varsa veriyi yükleme (online) veya
/// önbellekten açma (offline). Navigasyon yapmaz; AppWrapper [isLoading]'e bakar.
class SplashProvider extends ChangeNotifier {
  bool isLoading = true;
  bool hasInternet = true;
  String statusMessage = '';

  bool _started = false;
  static const _cacheMaxAge = Duration(days: 7);
  static const _minSplash = Duration(milliseconds: 1200);

  void _status(String msg) {
    statusMessage = msg;
    notifyListeners();
  }

  void closeLoading() {
    isLoading = false;
    notifyListeners();
  }

  void setHasInternet(bool v) {
    hasInternet = v;
    notifyListeners();
  }

  /// Uygulamanın ortak internet denetimi (DNS çözümü). Durum değiştirmez; başka
  /// akışlar da (ör. hesap silme) bunu kullanır.
  static Future<bool> isOnline() async {
    try {
      final r = await InternetAddress.lookup('google.com').timeout(const Duration(seconds: 5));
      return r.isNotEmpty && r.first.rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  Future<bool> checkInternetConnection() async {
    final ok = await isOnline();
    setHasInternet(ok);
    return ok;
  }

  /// Uygulama açılışında bir kez çağrılır (SplashScreen).
  Future<void> initializeApp(AppStateProvider appState) async {
    if (_started) return;
    _started = true;
    final started = DateTime.now();
    try {
      _status(l10n.authSplashCheckingInternet);
      final online = await checkInternetConnection();
      if (online) {
        await userCheck(appState);
      } else {
        _status(l10n.authSplashOfflineStart);
        await userCheckOffline(appState);
      }
    } catch (e) {
      debugPrint('Açılış hatası: $e');
    } finally {
      final elapsed = DateTime.now().difference(started);
      if (elapsed < _minSplash) await Future<void>.delayed(_minSplash - elapsed);
      isLoading = false;
      notifyListeners();
    }
  }

  /// Online: FirebaseAuth oturumu varsa kullanıcıyı ve verileri yükler.
  Future<void> userCheck(AppStateProvider appState) async {
    final authUser = FirebaseAuth.instance.currentUser;
    if (authUser == null) {
      _status(l10n.authSplashPleaseLogin);
      return;
    }
    await loginWithToken(appState, authUser.uid);
  }

  Future<void> loginWithToken(AppStateProvider appState, String userId) async {
    _status(l10n.authSplashLoadingUser);
    try {
      final user = await FirestoreService.instance.getUserByToken(userId).timeout(const Duration(seconds: 15));
      final viaGoogle = await GoogleAuthService.isGoogleSession(FirebaseAuth.instance.currentUser);
      if (user == null) {
        if (viaGoogle) {
          // Google ile girip Kayıt Tamamla'yı bitirmeden çıkan kullanıcı: Auth kaydı
          // silinmeye çalışılır (hata yok sayılır), sessizce giriş ekranına.
          await GoogleAuthService.discardUnregistered();
        } else {
          _status(l10n.authSplashUserNotFound);
          GlobalSnackbar.showError(l10n.authSplashUserNotFound);
          await FirebaseAuth.instance.signOut();
        }
        await LocalCacheService.clear();
        await TokenService.clearToken();
        return;
      }
      // İkinci savunma hattı (kurallar zaten Google token'ına personel yetkisi vermez):
      // Google oturumu yalnız bireysel belgeyle açılır. E-postayla hesap bağlama yüzünden
      // personel/acente hacısı belgesine düşen Google oturumu kapatılır.
      if (viaGoogle && !user.isBireysel) {
        await _rejectGoogleSession();
        return;
      }
      await TokenService.saveUserToken(user.id);
      // Esnaf: misafir verisi, önbellek ve FCM aboneliği yok; doğrudan esnaf paneli.
      if (user.isMerchant) {
        appState.setUser(user);
        return;
      }
      _status(l10n.authSplashLoadingData);
      final data = await SessionLoader.load(user);
      await LocalCacheService.save(data);
      unawaited(SessionLoader.registerMessaging(user));
      SessionLoader.apply(appState, data);
    } catch (e) {
      debugPrint('Oturum yüklenemedi, önbelleğe dönülüyor: $e');
      // Sunucuya ulaşılamadıysa önbellekle açmayı dene.
      final cached = await LocalCacheService.load();
      if (cached != null && cached.user.id == userId) {
        if (!cached.user.isBireysel && await GoogleAuthService.isGoogleSession(FirebaseAuth.instance.currentUser)) {
          await _rejectGoogleSession();
          return;
        }
        SessionLoader.apply(appState, cached, isOffline: true);
      } else {
        GlobalSnackbar.showError(l10n.authLoginFailed);
      }
    }
  }

  /// Offline: önbellekteki veriyle açar.
  Future<void> userCheckOffline(AppStateProvider appState) async {
    final authUser = FirebaseAuth.instance.currentUser;
    final hasCached = await LocalCacheService.hasCachedUser();
    if (authUser == null && !hasCached) {
      _status(l10n.authSplashPleaseLogin);
      GlobalSnackbar.showError(l10n.authSplashNoInternetLogin);
      return;
    }

    final lastUpdate = await LocalCacheService.getLastUpdate();
    if (lastUpdate == null || !hasCached) {
      _status(l10n.authSplashDataNotFound);
      GlobalSnackbar.showError(l10n.authSplashDataNotFound);
      return;
    }

    _status(l10n.authSplashLoadingLocal);
    final data = await LocalCacheService.load();
    if (data == null || (authUser != null && data.user.id != authUser.uid)) {
      _status(l10n.authSplashDataLoadFailed);
      GlobalSnackbar.showError(l10n.authSplashDataLoadFailed);
      return;
    }

    // Google oturumu yalnız bireysel belgeyle açılır (çevrimiçi yoldaki denetimle aynı).
    if (!data.user.isBireysel && await GoogleAuthService.isGoogleSession(authUser)) {
      await _rejectGoogleSession();
      return;
    }

    if (DateTime.now().difference(lastUpdate) > _cacheMaxAge) {
      GlobalSnackbar.showError(l10n.authSplashDataStale);
    }
    SessionLoader.apply(appState, data, isOffline: true);
  }

  /// Bireysel olmayan belgeye düşen Google oturumu: Firebase + Google çıkışı, yerel
  /// oturum verisi silinir, giriş ekranı. Auth kaydı SİLİNMEZ (belge başkasına ait olabilir).
  Future<void> _rejectGoogleSession() async {
    debugPrint('Google oturumu bireysel olmayan belgeyle eşleşti; oturum kapatılıyor.');
    await GoogleAuthService.signOutAll();
    await LocalCacheService.clear();
    try {
      await TokenService.clearToken();
    } catch (_) {}
    _status(l10n.authSplashUserNotFound);
    GlobalSnackbar.showError(l10n.authUserNotFound);
  }
}
