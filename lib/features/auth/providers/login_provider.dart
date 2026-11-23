import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/services/auth_api_service.dart';
import '../../../common/services/background_location_service.dart';
import '../../../common/services/firestore_service.dart';
import '../../../common/services/google_auth_service.dart';
import '../../../common/services/location_firebase_service.dart';
import '../../../common/services/notification_watcher.dart';
import '../../../common/services/token_service.dart';
import '../../../core/providers/app_state_provider.dart';
import '../../../core/providers/locale_provider.dart';
import '../../../core/services/local_cache_service.dart';
import '../../../core/services/session_loader.dart';
import '../../../core/utils/auth_utils.dart';
import '../../../core/utils/global_snackbar.dart';
import '../../esnaf/esnaf_config.dart';
import '../../hatim/data/hatim_service.dart';
import '../../hatim/data/hatim_watcher.dart';
import '../../splash/providers/splash_provider.dart';
import '../models/user_model.dart';

/// Giriş / çıkış akışı.
class LoginProvider extends ChangeNotifier {
  bool isLoading = false;
  String? errorMessage;

  /// Google ile oturum açıldı ama `users/{uid}` yok: Kayıt Tamamla ekranı bunu bekler.
  /// [completeGoogleRegistration] ya da [cancelGoogleRegistration] ile temizlenir.
  User? pendingGoogleUser;

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
  }) {
    final cleanTc = tc.trim();
    return _signInAndComplete(
      () async => (await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: tcToEmail(cleanTc), password: tcToPassword(cleanTc)))
          .user
          ?.uid,
      userType: userType,
      appState: appState,
    );
  }

  /// Yeni giriş (AUTH_API açıkken): Kullanıcı ID + PIN/şifre → servis custom token
  /// verir → `signInWithCustomToken`. Sonrası TC girişiyle aynı yoldur.
  Future<bool> handleApiLogin({
    required String loginId,
    required String secret,
    required String userType,
    required AppStateProvider appState,
  }) {
    return _signInAndComplete(
      () async {
        final token = await AuthApiService.login(loginId.trim(), secret);
        return (await FirebaseAuth.instance.signInWithCustomToken(token)).user?.uid;
      },
      userType: userType,
      appState: appState,
    );
  }

  /// Bireysel giriş: Google hesabı → Firebase `GoogleAuthProvider`.
  /// - users/{uid} varsa normal giriş akışı (rol ne ise AppWrapper ona yönlendirir).
  /// - yoksa oturum açık kalır, [pendingGoogleUser] dolar ve false döner; ekran
  ///   Kayıt Tamamla'yı açar.
  /// Vazgeçilirse sessizce false döner.
  Future<bool> handleGoogleLogin({required AppStateProvider appState}) {
    pendingGoogleUser = null;
    return _signInAndComplete(
      () async => (await GoogleAuthService.signIn()).user?.uid,
      userType: null,
      appState: appState,
      allowRegistration: true,
    );
  }

  /// Kayıt Tamamla: kendi users/{uid} belgesini sözleşmedeki alanlarla oluşturur,
  /// sonra normal giriş sonrası akışa devam eder.
  Future<bool> completeGoogleRegistration({
    required String userName,
    required bool locationConsent,
    required AppStateProvider appState,
  }) {
    final authUser = pendingGoogleUser ?? FirebaseAuth.instance.currentUser;
    return _signInAndComplete(
      () async {
        if (authUser == null) return null;
        final email = authUser.email ?? '';
        if (email.isEmpty || !authUser.emailVerified) {
          throw GoogleAuthException('email-unverified', l10n.bireyselErrEmailUnverified);
        }
        final ref = FirestoreService.instance.usersCollection.doc(authUser.uid);
        try {
          await ref.set(UserModel.bireyselNewDoc(
            userName: userName,
            email: email,
            locationConsent: locationConsent,
          ));
        } on FirebaseException catch (e) {
          // Belge zaten varsa (önceki denemenin yazımı sunucuya ulaştı ama yanıt kayboldu,
          // ya da başka cihazdan tamamlandı) set bir "update" sayılır ve kural reddeder.
          // Belge sunucuda varsa girişe devam edilir; bireysel olup olmadığını aşağıdaki
          // ortak akış denetler.
          if (e.code != 'permission-denied') rethrow;
          final existing = await ref.get(const GetOptions(source: Source.server));
          if (!existing.exists) rethrow;
        }
        pendingGoogleUser = null;
        return authUser.uid;
      },
      userType: null,
      appState: appState,
      keepSessionOnError: true,
      fallbackError: l10n.bireyselRegisterFailed,
    );
  }

  /// Kayıt Tamamla'dan vazgeçildi: Google ve Firebase oturumları kapanır.
  /// Kayıt sürerken (yazım/okuma yolda) vazgeçilemez: yarım kalan kayıtla çıkış olmasın.
  /// Belgesi olmayan Auth kaydı silinmeye çalışılır (taze oturum), sonra çıkış.
  Future<void> cancelGoogleRegistration() async {
    if (isLoading) return;
    pendingGoogleUser = null;
    await GoogleAuthService.discardUnregistered();
    isLoading = false;
    notifyListeners();
  }

  /// [signIn] Firebase oturumunu açıp uid döner; ardından ortak giriş sonrası akış:
  /// users/{uid}, esnaf engeli, giriş tipi kontrolü, oturum verisi ve önbellek.
  /// [userType] null ise giriş tipi denetlenmez (Google: rolü belge belirler).
  /// [allowRegistration]: belge yoksa çıkış yapılmaz, [pendingGoogleUser] doldurulur.
  /// [keepSessionOnError]: hata olursa oturum kapanmaz (Kayıt Tamamla yeniden denenebilsin).
  Future<bool> _signInAndComplete(
    Future<String?> Function() signIn, {
    required String? userType,
    required AppStateProvider appState,
    bool allowRegistration = false,
    bool keepSessionOnError = false,
    String? fallbackError,
  }) async {
    if (isLoading) return false;
    errorMessage = null;
    _setLoading(true);
    try {
      final uid = await signIn();
      final user = uid == null ? null : await FirestoreService.instance.getUserByToken(uid);
      if (user == null) {
        final authUser = FirebaseAuth.instance.currentUser;
        if (allowRegistration && uid != null && authUser != null && authUser.uid == uid) {
          // İlk Google girişi: oturum açık kalır, ekran Kayıt Tamamla'yı açar.
          pendingGoogleUser = authUser;
          isLoading = false;
          notifyListeners();
          return false;
        }
        if (keepSessionOnError) {
          _fail(fallbackError ?? _notFound());
          return false;
        }
        await _safeSignOut();
        _fail(_notFound());
        return false;
      }

      // İkinci savunma hattı: Google yolu (userType == null) yalnız bireysel belgeyle açılır.
      // E-postayla hesap bağlama bir Google oturumunu personel/acente hacısı belgesine
      // düşürürse (kurallar zaten yetki vermez) oturum kapatılır, "kullanıcı bulunamadı".
      if (userType == null && !user.isBireysel) {
        await _safeSignOut();
        _fail(_notFound());
        return false;
      }

      // Esnaf hesabı yalnız "Esnaf" girişiyle (kod + PIN) açılır.
      if (user.isMerchant) {
        await _safeSignOut();
        _fail(l10n.esnafLoginUseMerchant);
        return false;
      }

      // Seçilen giriş tipi hesapla uyuşmalı (super_admin, yonetici ve acente_admin "Yönetici" girişidir).
      // Google girişinde tip seçilmez; rolü belge belirler, AppWrapper doğru ekrana geçer.
      if (userType != null) {
        final wantsAdmin = userType != UserType.misafir;
        if (wantsAdmin != user.isAdmin) {
          await _safeSignOut();
          _fail(user.isAdmin ? l10n.authAccountIsAdmin : l10n.authAccountIsGuest);
          return false;
        }
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
    } on GoogleAuthCancelled {
      // Kullanıcı Google penceresini kapattı: mesaj yok.
      isLoading = false;
      notifyListeners();
    } on GoogleAuthException catch (e) {
      debugPrint('Giriş hatası (google): ${e.code}');
      if (!keepSessionOnError) await _safeSignOut();
      _fail(e.message);
    } on AuthApiException catch (e) {
      debugPrint('Giriş hatası (servis): ${e.code}');
      _fail(e.message);
    } on FirebaseAuthException catch (e) {
      debugPrint('Giriş hatası (auth): ${e.code} ${e.message}');
      _fail(_authMessage(e.code));
    } on FirebaseException catch (e) {
      debugPrint('Giriş hatası (firestore): ${e.code} ${e.message}');
      if (!keepSessionOnError) await _safeSignOut();
      _fail(e.code == 'unavailable' ? _network() : (fallbackError ?? l10n.authLoginFailed));
    } catch (e) {
      debugPrint('Giriş hatası: $e');
      if (!keepSessionOnError) await _safeSignOut();
      _fail(fallbackError ?? l10n.commonError);
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

  /// Firebase ve Google oturumunu kapatır; hata fırlatmaz.
  static Future<void> _safeSignOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (_) {}
    await GoogleAuthService.signOut();
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
    // Google oturumu da kapanır (bir sonraki girişte hesap yeniden sorulur).
    if (user == null || user.authProvider == 'google' || user.isBireysel) await GoogleAuthService.signOut();
    await _clearLocal();

    errorMessage = null;
    isLoading = false;
    notifyListeners();

    if (navigator.mounted) navigator.popUntil((r) => r.isFirst);
    appState.clear();
  }

  /// Oturuma bağlı yerel veriler: LocalCacheService anahtarları + kullanıcı token'ı +
  /// kullanıcıya özgü tercih/iz anahtarları (sonraki hesap öncekinin izini görmesin).
  /// Cihaz tercihleri (dil, Kur'an yer imleri/ayarları, zikirler, ihtiyaç listesi,
  /// konum izni soruldu bilgisi) kalır: hesapla değil cihazla ilgilidir.
  static Future<void> _clearLocal() async {
    await LocalCacheService.clear();
    try {
      await TokenService.clearToken();
    } catch (_) {}
    try {
      final prefs = await SharedPreferences.getInstance();
      for (final k in _userScopedKeys) {
        await prefs.remove(k);
      }
      // ActivityPing: 'last_active_ping_<uid>' (kontrol merkezi etkinlik izi).
      for (final k in prefs.getKeys().where((k) => k.startsWith('last_active_ping_')).toList()) {
        await prefs.remove(k);
      }
    } catch (e) {
      debugPrint('Kullanıcı tercihleri temizlenemedi: $e');
    }
  }

  /// Kullanıcıya özgü SharedPreferences anahtarları (lib içinde SharedPreferences
  /// anahtarları taranarak çıkarıldı).
  static const _userScopedKeys = <String>[
    HatimWatcher.lastSeenKey, // last_seen_hatim_ms
    HatimWatcher.joinNotifiedKey, // hatim_join_notified
    NotificationWatcher.lastSeenKey, // last_seen_notification_ms
    BackgroundLocationService.sharingKey, // location_sharing_enabled
    BackgroundLocationService.lastSentKey, // last_location_sent_ms
    'notifications_last_read_ms', // HomeProvider._lastReadKey
    'cuzdan_hide_balance', // CuzdanScreen._hideKey
    'show_download_dialog_on_login',
  ];

  /// Bireysel "Hesabımı sil" (tool/BIREYSEL_SEMA.md, mağaza şartı). Onay ekranda alınır.
  /// Sıra: internet denetimi → Google ile yeniden doğrulama → servisler durur → Toplu Hatim
  /// temizliği (sunucudan okunur; alınmış parçalar bırakılır, üyesi olduğu gruplardan
  /// ayrılır, sahibi olduklarını siler; HERHANGİ bir adım başarısızsa iptal) → users/{uid}
  /// (waitForPendingWrites ile sunucu onayı) → RTDB `locations/...` (varsa) →
  /// `currentUser.delete()` (bir kez yeniden denenir) → çıkış → yerel veriler → giriş ekranı.
  /// Başarılıysa true; vazgeçilir ya da hata olursa false (mesaj gösterilir).
  Future<bool> deleteBireyselAccount(BuildContext context) async {
    final appState = context.read<AppStateProvider>();
    final navigator = Navigator.of(context);
    final me = appState.currentUser;
    final authUser = FirebaseAuth.instance.currentUser;
    if (isLoading || me == null || !me.isBireysel || authUser == null || authUser.uid != me.id) return false;
    errorMessage = null;
    _setLoading(true);

    // Çevrimdışı silme reddedilir: Firestore silmeyi kuyruğa alıp sonra uygulayabilir,
    // kullanıcı ise yarım bir durumla kalırdı.
    if (!await SplashProvider.isOnline()) {
      _fail(l10n.bireyselDeleteOffline);
      return false;
    }

    var docDeleted = false;
    var servicesStopped = false;
    var authDeleteFailed = false;
    String? error;
    try {
      await GoogleAuthService.reauthenticate(authUser);

      // Dinleyiciler (Toplu Hatim, duyuru) silinen verilerde yetki hatası basmasın.
      servicesStopped = true;
      try {
        await BackgroundLocationService.stop();
      } catch (e) {
        debugPrint('Hesap silme: servis durdurulamadı: $e');
      }

      // 1) Toplu Hatim: sıkı. Bir grup adımı bile başarısızsa belge silinmez (iptal).
      try {
        await HatimService().cleanupForAccountDeletion(me);
      } catch (e) {
        debugPrint('Hesap silme: hatim temizliği: $e');
        throw _HatimCleanupFailed();
      }

      // 2) users/{uid}. Yazım kuyruğu sunucuya ulaşana kadar beklenir; zaman aşımında belge
      // silinmiş sayılmaz ve Auth hesabı silinmez (sahipsiz belge kalmasın). Hata dinleyicisi
      // hemen bağlanır (bekleme sırasında yakalanmamış hata oluşmasın).
      final del = FirestoreService.instance
          .deleteUser(me.id)
          .then<Object?>((_) => null, onError: (Object e) => e);
      await FirebaseFirestore.instance.waitForPendingWrites().timeout(const Duration(seconds: 20));
      final delError = await del.timeout(const Duration(seconds: 10));
      if (delError != null) throw delError;
      docDeleted = true;

      // 3) RTDB konum kaydı: yalnız acente yolu varsa (bireyselde normalde yok).
      final agencyId = me.agencyId ?? '';
      if (agencyId.isNotEmpty) {
        try {
          await LocationFirebaseService.removeUserLocation(agencyId: agencyId, uid: me.id);
        } catch (e) {
          debugPrint('Hesap silme: konum kaydı silinemedi: $e');
        }
      }

      // 4) Firebase Auth hesabı: başarısızsa bir kez daha denenir.
      try {
        await authUser.delete();
      } catch (e) {
        debugPrint('Hesap silme: Auth silinemedi, yeniden deneniyor: $e');
        await Future<void>.delayed(const Duration(seconds: 1));
        try {
          await authUser.delete();
        } catch (e2) {
          debugPrint('Hesap silme: Auth ikinci denemede de silinemedi: $e2');
          authDeleteFailed = true;
        }
      }
    } on GoogleAuthCancelled {
      isLoading = false;
      notifyListeners();
      return false;
    } on GoogleAuthException catch (e) {
      error = e.message;
    } on _HatimCleanupFailed {
      error = l10n.bireyselDeleteHatimFailed;
    } on FirebaseAuthException catch (e) {
      debugPrint('Hesap silme (auth): ${e.code} ${e.message}');
      error = e.code == 'network-request-failed' ? _network() : GoogleAuthService.firebaseMessage(e.code);
    } on FirebaseException catch (e) {
      debugPrint('Hesap silme (firestore): ${e.code} ${e.message}');
      error = e.code == 'unavailable' ? _network() : l10n.bireyselDeleteFailed;
    } on TimeoutException catch (e) {
      debugPrint('Hesap silme (zaman aşımı): $e');
      error = _network();
    } catch (e) {
      debugPrint('Hesap silme: $e');
      error = l10n.bireyselDeleteFailed;
    }

    // Belge silinmeden hata: oturum açık kalır, durdurulan servisler yeniden başlar,
    // kullanıcı tekrar deneyebilir.
    if (!docDeleted) {
      if (servicesStopped && context.mounted) {
        try {
          await BackgroundLocationService.ensureStarted(context);
        } catch (e) {
          debugPrint('Hesap silme: servisler yeniden başlatılamadı: $e');
        }
      }
      _fail(error ?? l10n.bireyselDeleteFailed);
      return false;
    }

    // 5) Çıkış, yerel veriler, giriş ekranı. Belge silinip Auth silinemediyse de oturum
    // kapanır; bir sonraki Google girişi Kayıt Tamamla'ya düşer, vazgeçilince
    // (GoogleAuthService.discardUnregistered) Auth kaydı da silinir.
    if (authDeleteFailed) error = l10n.bireyselDeleteAuthPartial;
    await GoogleAuthService.signOutAll();
    await _clearLocal();

    errorMessage = error;
    isLoading = false;
    notifyListeners();
    if (navigator.mounted) navigator.popUntil((r) => r.isFirst);
    appState.clear();
    if (error != null) {
      GlobalSnackbar.showError(error);
      return false;
    }
    GlobalSnackbar.showSuccess(l10n.bireyselDeleted);
    return true;
  }
}

/// Hesap silmede Toplu Hatim adımı başarısız: işlem iptal edilir.
class _HatimCleanupFailed implements Exception {}
