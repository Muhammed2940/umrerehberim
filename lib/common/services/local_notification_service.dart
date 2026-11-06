import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../core/providers/locale_provider.dart';

/// Yerel (cihaz içi) bildirimler. Hem ana isolate'te hem arka plan servisi
/// isolate'inde ayrı ayrı [init] edilmelidir.
class LocalNotificationService {
  LocalNotificationService._();

  /// Duyurular ve FCM mesajları. AndroidManifest'te FCM varsayılan kanalı da bu.
  static const String channelId = 'high_importance_channel';
  static String get channelName => l10n.coreChannelAnnouncements;

  /// Arka plan konum servisinin kalıcı bildirimi.
  static const String locationChannelId = 'location_service_channel';
  static String get locationChannelName => l10n.coreChannelLocation;

  static final FlutterLocalNotificationsPlugin plugin = FlutterLocalNotificationsPlugin();
  static bool _initialized = false;

  static Future<void> init() async {
    if (_initialized) return;
    try {
      await plugin.initialize(
        settings: const InitializationSettings(
          android: AndroidInitializationSettings('@mipmap/ic_launcher'),
          iOS: DarwinInitializationSettings(
            requestAlertPermission: false,
            requestBadgePermission: false,
            requestSoundPermission: false,
          ),
        ),
      );
      final android = plugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
      await android?.createNotificationChannel(AndroidNotificationChannel(
        channelId,
        channelName,
        description: l10n.coreChannelAnnouncementsDesc,
        importance: Importance.high,
      ));
      await android?.createNotificationChannel(AndroidNotificationChannel(
        locationChannelId,
        locationChannelName,
        description: l10n.coreChannelLocationDesc,
        importance: Importance.low,
        playSound: false,
        enableVibration: false,
      ));
      _initialized = true;
    } catch (e) {
      debugPrint('LocalNotificationService.init: $e');
    }
  }

  /// Android 13+ bildirim izni (sistem penceresi).
  static Future<bool> requestPermission() async {
    try {
      final android = plugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
      return await android?.requestNotificationsPermission() ?? true;
    } catch (e) {
      debugPrint('LocalNotificationService.requestPermission: $e');
      return false;
    }
  }

  /// Bildirim gösterir. Aynı [key] ile gösterilen bildirim bir öncekinin yerine geçer
  /// (iki isolate aynı duyuruyu gösterse bile ekranda tek bildirim kalır).
  static Future<void> show(String title, String body, {String? key}) async {
    await init();
    final id = (key ?? '$title|$body|${DateTime.now().millisecondsSinceEpoch}').hashCode & 0x7fffffff;
    try {
      await plugin.show(
        id: id,
        title: title,
        body: body,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            channelId,
            channelName,
            importance: Importance.high,
            priority: Priority.high,
            styleInformation: BigTextStyleInformation(body),
          ),
          iOS: const DarwinNotificationDetails(),
        ),
      );
    } catch (e) {
      debugPrint('LocalNotificationService.show: $e');
    }
  }
}
