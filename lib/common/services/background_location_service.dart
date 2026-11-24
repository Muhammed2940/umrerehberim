import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/providers/app_state_provider.dart';
import '../../core/providers/locale_provider.dart';
import '../../core/services/local_cache_service.dart';
import '../../features/auth/models/user_model.dart';
import '../../features/hatim/data/hatim_watcher.dart';
import '../../core/utils/firebase_init.dart';
import 'local_notification_service.dart';
import 'location_filter.dart';
import 'location_firebase_service.dart';
import 'location_permission.dart';
import 'tracking_public_service.dart';
import '../../features/aile_takibi/models/tracking_link.dart';
import 'notification_watcher.dart';

String get _notifTitle => l10n.appTitle;
String get _notifText => l10n.coreLocationSharingNotification;

/// Arka plan konum paylaşımı (Android foreground service, `flutter_background_service`).
///
/// - main.dart: [configure] (autoStart: false).
/// - Giriş sonrası AppWrapper: [ensureStarted] → izin akışı → servis başlar.
/// - Çıkış: [stop] (servisi ve ana isolate'teki duyuru dinleyicisini durdurur).
///
/// Duyuru dinleyicisi ([NotificationWatcher]) servis çalışıyorsa servis isolate'inde,
/// çalışmıyorsa ana isolate'te çalışır.
class BackgroundLocationService {
  BackgroundLocationService._();

  /// Kullanıcının paylaşım tercihi (varsayılan açık).
  static const sharingKey = 'location_sharing_enabled';

  /// Aile Takibi (bireysel): kullanıcı Aile Takibi ekranında paylaşımı açtı mı (varsayılan kapalı).
  static const familySharingKey = 'family_sharing_enabled';

  /// Son başarılı gönderim zamanı (ms).
  static const lastSentKey = 'last_location_sent_ms';

  static const int notificationId = 888;

  static NotificationWatcher? _mainWatcher;
  static UserModel? _user;
  static String? _ensuredFor;
  static bool _busy = false;

  static FlutterBackgroundService get _service => FlutterBackgroundService();

  /// Servis her konum gönderdiğinde `{latitude, longitude, timestamp}` yayar.
  static Stream<Map<String, dynamic>?> get updates => _service.on('location');

  static Future<void>? _configureFuture;

  /// Tek sefer çalışır; tekrar çağrılırsa ilk çağrının sonucunu döner.
  /// main.dart bunu beklemeden başlatır, [_start] servis açılmadan önce bekler.
  static Future<void> configure() => _configureFuture ??= _configure()
      .timeout(const Duration(seconds: 15), onTimeout: () => debugPrint('BackgroundLocationService.configure: zaman aşımı'));

  static Future<void> _configure() async {
    try {
      await LocalNotificationService.init();
      await _service.configure(
        androidConfiguration: AndroidConfiguration(
          onStart: onStart,
          autoStart: false,
          autoStartOnBoot: false,
          isForegroundMode: true,
          notificationChannelId: LocalNotificationService.locationChannelId,
          initialNotificationTitle: _notifTitle,
          initialNotificationContent: _notifText,
          foregroundServiceNotificationId: notificationId,
          foregroundServiceTypes: [AndroidForegroundType.location],
        ),
        iosConfiguration: IosConfiguration(autoStart: false, onForeground: onStart),
      );
      // Servis kendini durdurursa duyurular ana isolate'te dinlenmeye devam etsin.
      _service.on('serviceStopped').listen((_) {
        final u = _user;
        if (u != null) _startMainWatcher(u);
      });
    } catch (e) {
      debugPrint('BackgroundLocationService.configure: $e');
    }
  }

  static Future<bool> isSharingEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();
    return prefs.getBool(sharingKey) ?? true;
  }

  static Future<bool> isFamilySharingEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();
    return prefs.getBool(familySharingKey) ?? false;
  }

  /// Aile Takibi ekranındaki anahtar (yalnız hak sahibi bireysel kullanıcı için çağrılır).
  /// Açınca izin akışı + servis; kapatınca servis durur ve `personal_locations/{uid}` silinir.
  /// Sonuçta paylaşımın açık olup olmadığını döner.
  static Future<bool> setFamilySharing(BuildContext context, bool enabled) async {
    final user = context.read<AppStateProvider>().currentUser;
    if (user == null || !user.isBireysel) return false;
    _user = user;
    final prefs = await SharedPreferences.getInstance();
    if (enabled) {
      if (!context.mounted) return false;
      final access = await LocationPermissionHelper.checkLocationPermission(context, force: true);
      if (!access.canTrack) return false;
      await prefs.setBool(familySharingKey, true);
      await _start();
      return true;
    }
    await prefs.setBool(familySharingKey, false);
    _service.invoke('stopService');
    await LocationFirebaseService.removePersonalLocation(user.id);
    await TrackingPublicService.clearLocationsFor(user.id, user.userName);
    return false;
  }

  static Future<DateTime?> lastSentAt() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.reload();
    final ms = prefs.getInt(lastSentKey);
    return ms == null ? null : DateTime.fromMillisecondsSinceEpoch(ms);
  }

  static Future<bool> isRunning() async {
    try {
      return await _service.isRunning();
    } catch (_) {
      return false;
    }
  }

  /// Oturum açıkken (misafir/yönetici ana ekranı kurulunca) bir kez çağrılır.
  /// Paylaşım açıksa izinleri ister ve servisi başlatır; duyuru dinleyicisini kurar.
  static Future<void> ensureStarted(BuildContext context) async {
    final user = context.read<AppStateProvider>().currentUser;
    if (user == null || _busy || _ensuredFor == user.id) return;
    _busy = true;
    _ensuredFor = user.id;
    _user = user;
    // Toplu Hatim bildirimleri: her zaman ana isolate'te (esnaf buraya gelmez).
    if (!user.isMerchant) HatimWatcher.startFor(user.id);
    // Bireysel kullanıcı (acentesiz): konum servisi ve duyuru dinleyicisi YOK
    // (tool/BIREYSEL_SEMA.md). Yalnız Toplu Hatim bildirimleri için bildirim izni istenir.
    if (user.isBireysel) {
      try {
        await LocationPermissionHelper.requestNotificationPermission();
        // Aile Takibi: paylaşım açıksa servis yeniden kurulur (hakkı servis kendisi doğrular).
        if (await isFamilySharingEnabled()) {
          if (!context.mounted) return;
          final access = await LocationPermissionHelper.checkLocationPermission(context);
          if (access.canTrack) await _start();
        }
      } catch (e) {
        debugPrint('ensureStarted (bireysel): $e');
      } finally {
        _busy = false;
      }
      return;
    }
    try {
      // Genel adminler ve platform personeli (destek/muhasebe) konum paylaşmaz.
      final canShare = !user.isGlobalAdmin && !user.isPlatformStaff && (user.agencyId ?? '').isNotEmpty;
      if (canShare && await isSharingEnabled()) {
        if (!context.mounted) return;
        final access = await LocationPermissionHelper.checkLocationPermission(context);
        if (access.canTrack) await _start();
      } else {
        await LocationPermissionHelper.requestNotificationPermission();
      }
    } catch (e) {
      debugPrint('ensureStarted: $e');
    } finally {
      _busy = false;
      await _syncMainWatcher();
    }
  }

  /// Profil/ayarlar ekranındaki anahtar. Sonuçta paylaşımın açık olup olmadığını döner.
  static Future<bool> setSharingEnabled(BuildContext context, bool enabled) async {
    final user = context.read<AppStateProvider>().currentUser;
    if (user != null && user.isBireysel) return false; // acentesi yok, paylaşacak yer yok
    _user = user ?? _user;
    final prefs = await SharedPreferences.getInstance();
    if (enabled) {
      if (!context.mounted) return false;
      final access = await LocationPermissionHelper.checkLocationPermission(context, force: true);
      if (!access.canTrack) return false;
      await prefs.setBool(sharingKey, true);
      await _start();
      await _syncMainWatcher();
      return true;
    }
    await prefs.setBool(sharingKey, false);
    _service.invoke('stopService');
    if (user != null && (user.agencyId ?? '').isNotEmpty) {
      await LocationFirebaseService.removeUserLocation(agencyId: user.agencyId!, uid: user.id);
    }
    if (user != null) _startMainWatcher(user);
    return false;
  }

  /// Çıkışta çağrılmalı: servis ve duyuru dinleyicisi durur.
  static Future<void> stop() async {
    _ensuredFor = null;
    _user = null;
    try {
      _service.invoke('stopService');
    } catch (e) {
      debugPrint('BackgroundLocationService.stop: $e');
    }
    await _mainWatcher?.stop();
    _mainWatcher = null;
    await HatimWatcher.stop(); // Toplu Hatim dinleyicisi de oturumla kapanır.
  }

  static Future<void> _start() async {
    try {
      await configure();
      if (!await isRunning()) await _service.startService();
    } catch (e) {
      debugPrint('startService: $e');
    }
  }

  static Future<void> _syncMainWatcher() async {
    final u = _user;
    if (u == null) return;
    if (await isRunning()) {
      await _mainWatcher?.stop();
      _mainWatcher = null;
    } else {
      _startMainWatcher(u);
    }
  }

  static void _startMainWatcher(UserModel u) {
    if (u.isBireysel) return; // acente duyurusu yok
    if (_mainWatcher?.isRunning == true) return;
    _mainWatcher = NotificationWatcher.fromUserMap(u.id, u.toJson())?..start();
  }
}

// -----------------------------------------------------------------------------
// Servis isolate'i
// -----------------------------------------------------------------------------

@pragma('vm:entry-point')
Future<void> onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  // Servis isolate'i ayrı çalışır: bildirim metinleri için kayıtlı dili yükle.
  try {
    await localeProvider.load().timeout(const Duration(seconds: 5));
  } catch (e) {
    debugPrint('onStart locale: $e');
  }

  StreamSubscription<Position>? posSub;
  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>? linksSub;
  Timer? timer;
  NotificationWatcher? watcher;
  var stopped = false;

  Future<void> shutdown() async {
    if (stopped) return;
    stopped = true;
    timer?.cancel();
    await posSub?.cancel();
    await linksSub?.cancel();
    await watcher?.stop();
    service.invoke('serviceStopped');
    await service.stopSelf();
  }

  service.on('stopService').listen((_) => shutdown());

  if (service is AndroidServiceInstance) {
    try {
      await service.setAsForegroundService();
      await service.setForegroundNotificationInfo(title: _notifTitle, content: _notifText);
    } catch (e) {
      debugPrint('foreground: $e');
    }
  }

  try {
    await ensureFirebaseInitialized();
  } catch (e) {
    debugPrint('Servis Firebase başlatma: $e');
  }
  await LocalNotificationService.init();

  // FirebaseAuth oturumu isolate'ler arasında paylaşılır.
  final auth = FirebaseAuth.instance;
  final user = auth.currentUser ??
      await auth.authStateChanges().firstWhere((u) => u != null).timeout(
            const Duration(seconds: 15),
            onTimeout: () => null,
          );
  if (user == null) {
    debugPrint('Servis: oturum yok, durduruluyor');
    return shutdown();
  }
  final uid = user.uid;

  final prefs = await SharedPreferences.getInstance();
  await prefs.reload();
  if (prefs.getBool(BackgroundLocationService.sharingKey) == false) return shutdown();

  // Kullanıcı bilgisi: önce önbellek, yoksa Firestore.
  Map<String, dynamic>? userMap;
  try {
    final s = prefs.getString(LocalCacheService.cachedUser);
    if (s != null) {
      final m = Map<String, dynamic>.from(jsonDecode(s) as Map);
      if (m['id']?.toString() == uid) userMap = m;
    }
  } catch (_) {}
  if (userMap == null) {
    try {
      final doc = await FirebaseFirestore.instance.collection('users').doc(uid).get();
      userMap = doc.data();
    } catch (e) {
      debugPrint('Servis users/$uid okunamadı: $e');
    }
  }
  var agencyId = userMap?['agency_id']?.toString() ?? '';
  if (agencyId.isEmpty) {
    try {
      final claims = (await user.getIdTokenResult()).claims;
      agencyId = claims?['agencyId']?.toString() ?? '';
    } catch (_) {}
  }
  // Aile Takibi (bireysel): acentesiz, yalnız paylaşım açık + hak varsa personal_locations'a yazar.
  final personal = agencyId.isEmpty && userMap?['account_kind']?.toString() == 'bireysel';

  /// Hak: entitlements/{uid} paket aile|full, status active, paid_until > now.
  Future<bool> familyEntitled() async {
    try {
      final d = (await FirebaseFirestore.instance.collection('entitlements').doc(uid).get()).data();
      final until = d?['paid_until'];
      return d != null &&
          (d['paket'] == 'aile' || d['paket'] == 'full') &&
          d['status'] == 'active' &&
          until is Timestamp &&
          until.toDate().isAfter(DateTime.now());
    } catch (e) {
      debugPrint('Servis entitlements okunamadı: $e');
      return true; // çevrimdışıyken kesme; kural ve web hakkı ayrıca denetler
    }
  }

  Future<void> stopPersonal() async {
    await LocationFirebaseService.removePersonalLocation(uid);
    await TrackingPublicService.removeAllFor(uid);
    await prefs.setBool(BackgroundLocationService.familySharingKey, false);
    await shutdown();
  }

  if (personal) {
    if (prefs.getBool(BackgroundLocationService.familySharingKey) != true) return shutdown();
    if (!await familyEntitled()) return stopPersonal();
  } else if (agencyId.isEmpty) {
    debugPrint('Servis: agencyId yok, durduruluyor');
    return shutdown();
  }
  final userName = (userMap?['user_name']?.toString() ?? '').trim();

  // Aile Takibi ara mod (PHP'siz): etkin bağlantıların web düğümlerine de yazılır.
  var links = <TrackingLink>[];
  Position? lastPos;
  Future<void> publishLinks() async {
    final p = lastPos;
    for (final l in links) {
      await TrackingPublicService.publish(
        link: l,
        ownerUid: uid,
        userName: userName,
        lat: p?.latitude,
        lng: p?.longitude,
        accuracy: p?.accuracy,
      );
    }
  }

  linksSub = FirebaseFirestore.instance
      .collection('tracking_links')
      .where('owner_uid', isEqualTo: uid)
      .snapshots()
      .listen((snap) {
    final all = snap.docs.map((d) => TrackingLink.fromDoc(d.id, d.data())).toList();
    for (final l in all.where((l) => !l.isActive())) {
      TrackingPublicService.remove(l.hash);
    }
    links = all.where((l) => l.isActive()).toList();
    publishLinks();
  }, onError: (Object e) => debugPrint('Servis tracking_links: $e'));

  // Duyuru dinleyicisi bu isolate'te.
  if (!personal) watcher = NotificationWatcher.fromUserMap(uid, {...?userMap, 'agency_id': agencyId})?..start();

  var lastWriteMs = 0;
  var writing = false;
  // Kaba ağ tahminlerini ve yansıma sıçramalarını atar, kalan ölçümleri birleştirir.
  final filter = LocationFilter();

  /// Ham ölçümü filtreden geçirir; yazılacak konum (filtrelenmiş) ya da null.
  Position? filtered(Position raw) {
    final f = filter.add(LocationFix(
      lat: raw.latitude,
      lng: raw.longitude,
      accuracy: raw.accuracy,
      time: raw.timestamp,
    ));
    if (f == null) {
      debugPrint('Konum atlandı: ±${raw.accuracy.round()} m (tahmin ±${filter.estimate?.accuracy.round()} m)');
      return null;
    }
    return Position(
      latitude: f.lat,
      longitude: f.lng,
      accuracy: f.accuracy,
      timestamp: f.time,
      altitude: raw.altitude,
      altitudeAccuracy: raw.altitudeAccuracy,
      heading: raw.heading,
      headingAccuracy: raw.headingAccuracy,
      speed: raw.speed,
      speedAccuracy: raw.speedAccuracy,
      isMocked: raw.isMocked,
    );
  }

  Future<void> write(Position raw) async {
    if (stopped || writing) return;
    final p = filtered(raw);
    if (p == null) return;
    writing = true;
    try {
      if (personal) {
        await LocationFirebaseService.updatePersonalLocation(uid: uid, position: p);
      } else {
        await LocationFirebaseService.updateUserLocation(
          agencyId: agencyId,
          uid: uid,
          userName: userName.isEmpty ? 'Kullanıcı' : userName,
          position: p,
        );
      }
      final now = DateTime.now().millisecondsSinceEpoch;
      lastWriteMs = now;
      lastPos = p;
      await publishLinks();
      await prefs.setInt(BackgroundLocationService.lastSentKey, now);
      service.invoke('location', {'latitude': p.latitude, 'longitude': p.longitude, 'timestamp': now});
    } catch (e) {
      debugPrint('Konum yazılamadı: $e');
    } finally {
      writing = false;
    }
  }

  /// getCurrentPosition çoğu zaman İLK gelen (kaba, ağ tabanlı) konumu döndürür.
  /// Bunun yerine 25 sn boyunca ölçüm toplanır, en iyisi alınır; ±15 m'ye
  /// inen ölçüm gelirse hemen bitirilir.
  Future<Position?> bestFix() async {
    Position? best;
    final done = Completer<void>();
    final sub = Geolocator.getPositionStream(
      locationSettings: AndroidSettings(
        accuracy: LocationAccuracy.best,
        distanceFilter: 0,
        intervalDuration: const Duration(seconds: 2),
      ),
    ).listen(
      (p) {
        final b = best;
        if (b == null || p.accuracy < b.accuracy) best = p;
        if (p.accuracy <= 15 && !done.isCompleted) done.complete();
      },
      onError: (Object e) {
        debugPrint('bestFix: $e');
        if (!done.isCompleted) done.complete();
      },
    );
    await done.future.timeout(const Duration(seconds: 25), onTimeout: () {});
    await sub.cancel();
    return best;
  }

  Future<void> writeCurrent() async {
    try {
      final p = await bestFix();
      if (p == null) throw StateError('ölçüm yok');
      await write(p);
    } catch (e) {
      debugPrint('bestFix: $e');
      // GPS cevap vermediyse yalnızca TAZE (≤2 dk) bir sistem konumu kullanılır.
      // Eski önbellek konumu asla "şimdiki konum" diye yazılmaz (yüzlerce metre
      // kayma ve saatler önceki yer görünmesi buna yol açıyordu).
      final p = await Geolocator.getLastKnownPosition();
      final fresh = p != null && DateTime.now().difference(p.timestamp).inMinutes < 2;
      if (fresh) await write(p);
    }
  }

  void listenStream() {
    if (stopped) return;
    posSub = Geolocator.getPositionStream(
      locationSettings: AndroidSettings(
        accuracy: LocationAccuracy.best,
        distanceFilter: 10,
        intervalDuration: const Duration(seconds: 20),
      ),
    ).listen(
      write,
      onError: (Object e) => debugPrint('Konum akışı hatası: $e'),
      onDone: () {
        posSub = null;
        if (!stopped) Future.delayed(const Duration(seconds: 30), listenStream);
      },
      cancelOnError: false,
    );
  }

  await writeCurrent();
  listenStream();

  // Konum değişmese de (distanceFilter) en az 2 dakikada bir yaz.
  timer = Timer.periodic(const Duration(minutes: 1), (_) {
    final now = DateTime.now().millisecondsSinceEpoch;
    if (now - lastWriteMs >= const Duration(minutes: 2).inMilliseconds) writeCurrent();
  });

  // Paket bitince (kullanıcı uygulamayı açmasa bile) paylaşım kapanır, kayıt silinir.
  if (personal) {
    Timer.periodic(const Duration(minutes: 30), (t) async {
      if (stopped) return t.cancel();
      if (!await familyEntitled()) {
        t.cancel();
        await stopPersonal();
      }
    });
  }
}
