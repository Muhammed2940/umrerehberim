import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import '../../core/providers/locale_provider.dart';
import '../../core/utils/firebase_init.dart';
import 'local_notification_service.dart';

/// Uygulama kapalıyken gelen bildirim. Üst düzey (top-level) olmalı.
/// `notification` içeren FCM mesajlarını Android sistemi kendisi gösterir
/// (kanal: AndroidManifest'teki `high_importance_channel`).
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await ensureFirebaseInitialized();
  debugPrint('Arka plan bildirimi: ${message.notification?.title}');
}

/// FCM izin, token ve topic işlemleri.
///
/// Sunucu yok: Firebase konsolundaki Messaging kampanyaları `agency_<id>` /
/// `trip_<id>` topic'lerine gönderilir. Ön planda gelen mesaj yerel bildirim olarak gösterilir.
class FirebaseApi {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  /// Ön plan dinleyicisini kurar. Android'de bildirim izni konum izin akışında
  /// (girişten sonra) istenir; iki izin penceresi çakışmasın diye burada istenmez.
  Future<void> initNotifications({void Function(RemoteMessage)? onForegroundMessage}) async {
    await LocalNotificationService.init();
    if (defaultTargetPlatform != TargetPlatform.android) {
      await _messaging.requestPermission(alert: true, badge: true, sound: true);
      await _messaging.setForegroundNotificationPresentationOptions(alert: true, badge: true, sound: true);
    }
    FirebaseMessaging.onMessage.listen((m) {
      final n = m.notification;
      if (n != null && defaultTargetPlatform == TargetPlatform.android) {
        LocalNotificationService.show(n.title ?? l10n.appTitle, n.body ?? '', key: 'fcm_${m.messageId}');
      }
      onForegroundMessage?.call(m);
    });
  }

  Future<String?> getFcmToken() async {
    try {
      return await _messaging.getToken();
    } catch (e) {
      debugPrint('FCM token alınamadı: $e');
      return null;
    }
  }

  Future<void> subscribe(String topic) => _messaging.subscribeToTopic(topic);
  Future<void> unsubscribe(String topic) => _messaging.unsubscribeFromTopic(topic);
}
