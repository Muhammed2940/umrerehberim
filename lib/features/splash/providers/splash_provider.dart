import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../../common/services/firestore_service.dart';
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

  Future<bool> checkInternetConnection() async {
    bool ok;
    try {
      final r = await InternetAddress.lookup('google.com').timeout(const Duration(seconds: 5));
      ok = r.isNotEmpty && r.first.rawAddress.isNotEmpty;
    } catch (_) {
      ok = false;
    }
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
      if (user == null) {
        _status(l10n.authSplashUserNotFound);
        GlobalSnackbar.showError(l10n.authSplashUserNotFound);
        await FirebaseAuth.instance.signOut();
        await LocalCacheService.clear();
        await TokenService.clearToken();
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

    if (DateTime.now().difference(lastUpdate) > _cacheMaxAge) {
      GlobalSnackbar.showError(l10n.authSplashDataStale);
    }
    SessionLoader.apply(appState, data, isOffline: true);
  }
}
