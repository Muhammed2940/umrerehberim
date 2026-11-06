import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import '../../features/auth/models/user_model.dart';

/// FCM topic abonelikleri.
///
/// Topic adları (Firebase konsolundaki Messaging kampanyalarında hedef olarak kullanılır):
/// - `agency_<agencyId>`: acentenin tüm kullanıcıları
/// - `trip_<tripId>`: o seferdeki misafirler (Mekke ve Medine seferleri ayrı ayrı)
class NotificationTopicService {
  NotificationTopicService({FirebaseMessaging? messaging}) : _messagingOverride = messaging;

  final FirebaseMessaging? _messagingOverride;
  FirebaseMessaging get _messaging => _messagingOverride ?? FirebaseMessaging.instance;

  static const Duration _timeout = Duration(seconds: 10);

  static String agencyTopic(String agencyId) => 'agency_$agencyId';
  static String tripTopic(String tripId) => 'trip_$tripId';

  /// Kullanıcının abone olması gereken topic'ler.
  /// Acentesi olan herkes (acente admini dahil) kendi acentesinin topic'ine, misafirler ayrıca
  /// Mekke/Medine sefer topic'lerine abone olur. Acentesi olmayan genel admin hiçbir topic'e abone olmaz.
  static List<String> topicsFor(UserModel user) {
    final topics = <String>{
      if (_isSet(user.agencyId)) agencyTopic(user.agencyId!),
      if (!user.isAdmin && _isSet(user.mekkeSeferiId)) tripTopic(user.mekkeSeferiId!),
      if (!user.isAdmin && _isSet(user.medineSeferiId)) tripTopic(user.medineSeferiId!),
    };
    return topics.where(_isValidTopic).toList();
  }

  /// Girişten sonra çağrılır. Hata olursa uygulamayı durdurmaz, başarılı topic'leri döner.
  Future<List<String>> subscribeForUser(UserModel user) async {
    final done = <String>[];
    for (final topic in topicsFor(user)) {
      try {
        await _messaging.subscribeToTopic(topic).timeout(_timeout);
        done.add(topic);
      } catch (e) {
        debugPrint('Topic aboneliği başarısız ($topic): $e');
      }
    }
    return done;
  }

  /// Çıkışta çağrılır.
  Future<void> unsubscribeAll(UserModel user) async {
    for (final topic in topicsFor(user)) {
      try {
        await _messaging.unsubscribeFromTopic(topic).timeout(_timeout);
      } catch (e) {
        debugPrint('Topic aboneliği kaldırılamadı ($topic): $e');
      }
    }
  }

  /// Kullanıcının seferi/acentesi değiştiyse eski topic'lerden çıkar, yenilere abone olur.
  Future<void> updateForUser(UserModel oldUser, UserModel newUser) async {
    final oldTopics = topicsFor(oldUser).toSet();
    final newTopics = topicsFor(newUser).toSet();
    for (final topic in oldTopics.difference(newTopics)) {
      try {
        await _messaging.unsubscribeFromTopic(topic).timeout(_timeout);
      } catch (e) {
        debugPrint('Topic aboneliği kaldırılamadı ($topic): $e');
      }
    }
    for (final topic in newTopics.difference(oldTopics)) {
      try {
        await _messaging.subscribeToTopic(topic).timeout(_timeout);
      } catch (e) {
        debugPrint('Topic aboneliği başarısız ($topic): $e');
      }
    }
  }

  static bool _isSet(String? v) => v != null && v.trim().isNotEmpty;

  /// FCM topic adı kuralı: [a-zA-Z0-9-_.~%]+
  static bool _isValidTopic(String t) => RegExp(r'^[a-zA-Z0-9\-_.~%]+$').hasMatch(t);
}
