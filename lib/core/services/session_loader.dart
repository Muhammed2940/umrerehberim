import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../common/services/firebase_messaging_service.dart';
import '../../common/services/firestore_service.dart';
import '../../common/services/notification_topic_service.dart';
import '../../features/admin/models/currency_model.dart';
import '../../features/admin/models/hotel_model.dart';
import '../../features/admin/models/notification_model.dart';
import '../../features/admin/models/room_model.dart';
import '../../features/admin/models/trip_model.dart';
import '../../features/auth/models/user_model.dart';
import '../../features/home/models/prayer_time_model.dart';
import '../providers/app_state_provider.dart';

/// Bir oturum için yüklenen veriler (Firestore'dan veya önbellekten).
class SessionData {
  final UserModel user;
  final TripModel? mekkeTrip;
  final TripModel? medineTrip;
  final HotelModel? mekkeHotel;
  final HotelModel? medineHotel;
  final RoomModel? mekkeOda;
  final RoomModel? medineOda;
  final PrayerTimeModel? mekkePrayer;
  final PrayerTimeModel? medinePrayer;
  final List<CurrencyModel> currencies;
  final List<NotificationModel> notifications;
  final DateTime lastUpdate;

  const SessionData({
    required this.user,
    this.mekkeTrip,
    this.medineTrip,
    this.mekkeHotel,
    this.medineHotel,
    this.mekkeOda,
    this.medineOda,
    this.mekkePrayer,
    this.medinePrayer,
    this.currencies = const [],
    this.notifications = const [],
    required this.lastUpdate,
  });
}

/// Giriş ve splash'in ortak veri yükleyicisi.
/// Her adım ayrı korunur: tek bir hata girişi bozmaz, ilgili alan null/boş kalır.
class SessionLoader {
  static final _fs = FirestoreService.instance;

  /// Kullanıcıya ait tüm oturum verisini Firestore'dan yükler.
  /// Adminler (süper admin, yönetici, acente admini) ve esnaf için yalnızca kullanıcı döner.
  static Future<SessionData> load(UserModel user) async {
    if (user.isAdmin || user.isMerchant) {
      return SessionData(user: user, lastUpdate: DateTime.now());
    }

    final agencyId = user.agencyId;
    final results = await Future.wait<Object?>([
      _safe('mekke seferi', () => _byId(user.mekkeSeferiId, _fs.getTripById)),
      _safe('medine seferi', () => _byId(user.medineSeferiId, _fs.getTripById)),
      _safe('mekke oteli', () => _byId(user.mekkeOtelId, _fs.getHotelById)),
      _safe('medine oteli', () => _byId(user.medineOtelId, _fs.getHotelById)),
      _safe('mekke odası', () => _byId(user.mekkeOdaId, _fs.getRoomById)),
      _safe('medine odası', () => _byId(user.medineOdaId, _fs.getRoomById)),
      _safe('mekke ezan vakitleri', _fs.getPrayerTimeMekkeByToday),
      _safe('medine ezan vakitleri', _fs.getPrayerTimeMedineByToday),
      _safe('döviz kurları', () async => _isSet(agencyId) ? await _fs.getCurrenciesByAgency(agencyId!) : null),
      _safe('duyurular',
          () async => _isSet(agencyId) ? await _fs.getNotificationsByAgency(agencyId!, limit: 3) : null),
    ]);

    return SessionData(
      user: user,
      mekkeTrip: results[0] as TripModel?,
      medineTrip: results[1] as TripModel?,
      mekkeHotel: results[2] as HotelModel?,
      medineHotel: results[3] as HotelModel?,
      mekkeOda: results[4] as RoomModel?,
      medineOda: results[5] as RoomModel?,
      mekkePrayer: results[6] as PrayerTimeModel?,
      medinePrayer: results[7] as PrayerTimeModel?,
      currencies: (results[8] as List<CurrencyModel>?) ?? const [],
      notifications: (results[9] as List<NotificationModel>?) ?? const [],
      lastUpdate: DateTime.now(),
    );
  }

  /// Yüklenen veriyi AppStateProvider'a yazar.
  static void apply(AppStateProvider appState, SessionData d, {bool isOffline = false}) {
    appState.setSessionData(
      user: d.user,
      mekkeTrip: d.mekkeTrip,
      medineTrip: d.medineTrip,
      mekkeHotel: d.mekkeHotel,
      medineHotel: d.medineHotel,
      mekkeOda: d.mekkeOda,
      medineOda: d.medineOda,
      mekkePrayer: d.mekkePrayer,
      medinePrayer: d.medinePrayer,
      currencies: d.currencies,
      notifications: d.notifications,
      isOffline: isOffline,
      lastDataUpdate: d.lastUpdate,
    );
  }

  /// FCM token'ı kaydeder ve topic'lere abone olur. Bekletmeden (arka planda) çağrılabilir.
  static Future<void> registerMessaging(UserModel user) async {
    final api = FirebaseApi();
    try {
      final token = await api.getFcmToken().timeout(const Duration(seconds: 10));
      if (token != null && token.isNotEmpty) {
        await _fs.updateUserFcmToken(user.id, token);
      }
    } catch (e) {
      debugPrint('FCM token kaydedilemedi: $e');
    }
    for (final topic in topicsFor(user)) {
      try {
        await api.subscribe(topic).timeout(const Duration(seconds: 10));
      } catch (e) {
        debugPrint('Topic aboneliği başarısız ($topic): $e');
      }
    }
  }

  /// Çıkışta topic aboneliklerini kaldırır.
  static Future<void> unregisterMessaging(UserModel user) async {
    final api = FirebaseApi();
    for (final topic in topicsFor(user)) {
      try {
        await api.unsubscribe(topic).timeout(const Duration(seconds: 5));
      } catch (e) {
        debugPrint('Topic aboneliği kaldırılamadı ($topic): $e');
      }
    }
  }

  /// Topic adlarının tek kaynağı NotificationTopicService'tir:
  /// herkes `agency_<id>`, misafir ayrıca `trip_<seferId>`.
  static List<String> topicsFor(UserModel user) => NotificationTopicService.topicsFor(user);

  static bool _isSet(String? s) => s != null && s.isNotEmpty;

  static Future<T?> _byId<T>(String? id, Future<T?> Function(String) fetch) async =>
      _isSet(id) ? await fetch(id!) : null;

  static Future<T?> _safe<T>(String label, Future<T?> Function() f) async {
    try {
      return await f().timeout(const Duration(seconds: 15));
    } catch (e) {
      debugPrint('Yüklenemedi ($label): $e');
      return null;
    }
  }
}
