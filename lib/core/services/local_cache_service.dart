import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/admin/models/currency_model.dart';
import '../../features/admin/models/hotel_model.dart';
import '../../features/admin/models/notification_model.dart';
import '../../features/admin/models/room_model.dart';
import '../../features/admin/models/trip_model.dart';
import '../../features/auth/models/user_model.dart';
import '../../features/home/models/prayer_time_model.dart';
import 'session_loader.dart';

/// Oturum verilerinin çevrimdışı önbelleği (SharedPreferences, JSON).
class LocalCacheService {
  static const cachedUser = 'cached_user';
  static const cachedMekkeTrip = 'cached_mekke_trip';
  static const cachedMekkeHotel = 'cached_mekke_hotel';
  static const cachedMekkeOda = 'cached_mekke_oda';
  static const cachedMekkePrayer = 'cached_mekke_prayer';
  static const cachedMedineTrip = 'cached_medine_trip';
  static const cachedMedineHotel = 'cached_medine_hotel';
  static const cachedMedineOda = 'cached_medine_oda';
  static const cachedMedinePrayer = 'cached_medine_prayer';
  static const cachedCurrencies = 'cached_currencies';
  static const cachedNotifications = 'cached_notifications';
  static const lastDataUpdate = 'last_data_update';

  static const allKeys = [
    cachedUser,
    cachedMekkeTrip,
    cachedMekkeHotel,
    cachedMekkeOda,
    cachedMekkePrayer,
    cachedMedineTrip,
    cachedMedineHotel,
    cachedMedineOda,
    cachedMedinePrayer,
    cachedCurrencies,
    cachedNotifications,
    lastDataUpdate,
  ];

  /// Oturum verisini önbelleğe yazar. Null alanların eski kaydı silinir.
  static Future<void> save(SessionData data) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      Future<void> put(String key, Map<String, dynamic>? json) =>
          json == null ? prefs.remove(key) : prefs.setString(key, jsonEncode(json));

      await put(cachedUser, data.user.toJson());
      await put(cachedMekkeTrip, data.mekkeTrip?.toJson());
      await put(cachedMekkeHotel, data.mekkeHotel?.toJson());
      await put(cachedMekkeOda, data.mekkeOda?.toJson());
      await put(cachedMekkePrayer, data.mekkePrayer?.toJson());
      await put(cachedMedineTrip, data.medineTrip?.toJson());
      await put(cachedMedineHotel, data.medineHotel?.toJson());
      await put(cachedMedineOda, data.medineOda?.toJson());
      await put(cachedMedinePrayer, data.medinePrayer?.toJson());
      await prefs.setString(cachedCurrencies, jsonEncode(data.currencies.map((c) => c.toJson()).toList()));
      await prefs.setString(cachedNotifications, jsonEncode(data.notifications.map((n) => n.toJson()).toList()));
      await prefs.setString(lastDataUpdate, data.lastUpdate.toIso8601String());
    } catch (e) {
      debugPrint('Önbelleğe yazılamadı: $e');
    }
  }

  /// Son güncelleme zamanı (önbellek yoksa null).
  static Future<DateTime?> getLastUpdate() async {
    final prefs = await SharedPreferences.getInstance();
    final s = prefs.getString(lastDataUpdate);
    return s == null ? null : DateTime.tryParse(s);
  }

  static Future<bool> hasCachedUser() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(cachedUser);
  }

  /// Önbellekten okur. Kullanıcı yoksa veya bozuksa null döner.
  static Future<SessionData?> load() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      Map<String, dynamic>? read(String key) {
        final s = prefs.getString(key);
        if (s == null) return null;
        try {
          return Map<String, dynamic>.from(jsonDecode(s) as Map);
        } catch (_) {
          return null;
        }
      }

      List<Map<String, dynamic>> readList(String key) {
        final s = prefs.getString(key);
        if (s == null) return [];
        try {
          return (jsonDecode(s) as List).map((e) => Map<String, dynamic>.from(e as Map)).toList();
        } catch (_) {
          return [];
        }
      }

      T? parse<T>(String key, T Function(Map<String, dynamic>) f) {
        final m = read(key);
        if (m == null) return null;
        try {
          return f(m);
        } catch (e) {
          debugPrint('Önbellek çözülemedi ($key): $e');
          return null;
        }
      }

      final user = parse(cachedUser, UserModel.fromJson);
      if (user == null) return null;

      final currencies = <CurrencyModel>[];
      for (final m in readList(cachedCurrencies)) {
        try {
          currencies.add(CurrencyModel.fromJson(m));
        } catch (_) {}
      }
      final notifications = <NotificationModel>[];
      for (final m in readList(cachedNotifications)) {
        try {
          notifications.add(NotificationModel.fromJson(m));
        } catch (_) {}
      }

      return SessionData(
        user: user,
        mekkeTrip: parse(cachedMekkeTrip, TripModel.fromJson),
        mekkeHotel: parse(cachedMekkeHotel, HotelModel.fromJson),
        mekkeOda: parse(cachedMekkeOda, RoomModel.fromJson),
        mekkePrayer: parse(cachedMekkePrayer, PrayerTimeModel.fromJson),
        medineTrip: parse(cachedMedineTrip, TripModel.fromJson),
        medineHotel: parse(cachedMedineHotel, HotelModel.fromJson),
        medineOda: parse(cachedMedineOda, RoomModel.fromJson),
        medinePrayer: parse(cachedMedinePrayer, PrayerTimeModel.fromJson),
        currencies: currencies,
        notifications: notifications,
        lastUpdate: DateTime.tryParse(prefs.getString(lastDataUpdate) ?? '') ?? DateTime.now(),
      );
    } catch (e) {
      debugPrint('Önbellek okunamadı: $e');
      return null;
    }
  }

  static Future<void> clear() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      for (final k in allKeys) {
        await prefs.remove(k);
      }
    } catch (e) {
      debugPrint('Önbellek temizlenemedi: $e');
    }
  }
}
