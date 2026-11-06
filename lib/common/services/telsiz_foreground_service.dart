import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';

import '../../core/providers/locale_provider.dart';

/// Telsiz için Android foreground service (flutter_foreground_task).
///
/// WebRTC ana isolate'te çalışır; servis yalnızca süreci ve ana isolate'i
/// ekran kapalıyken canlı tutar ve kalıcı bildirimi gösterir. Görev
/// işleyicisi ([_TelsizTaskHandler]) bilerek boş: iş yapmaz.
/// Konum servisi (flutter_background_service) ayrı, ona dokunulmaz.
/// iOS'ta kullanılmaz: orada `UIBackgroundModes: audio` yeterli.
class TelsizForegroundService {
  TelsizForegroundService._();

  static const int _serviceId = 4711;
  static bool _initialized = false;

  static bool get _supported => !kIsWeb && Platform.isAndroid;

  static void _init() {
    if (_initialized) return;
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: 'telsiz_channel',
        channelName: l10n.coreChannelRadio,
        channelDescription: l10n.coreChannelRadioDesc,
        channelImportance: NotificationChannelImportance.LOW,
        priority: NotificationPriority.LOW,
        onlyAlertOnce: true,
      ),
      iosNotificationOptions: const IOSNotificationOptions(showNotification: false, playSound: false),
      foregroundTaskOptions: ForegroundTaskOptions(
        eventAction: ForegroundTaskEventAction.nothing(),
        autoRunOnBoot: false,
        autoRunOnMyPackageReplaced: false,
        allowWakeLock: true,
        allowWifiLock: true,
        allowAutoRestart: false,
        stopWithTask: true,
      ),
    );
    _initialized = true;
  }

  /// Bildirim izni (Android 13+). Reddedilse de servis çalışır, bildirim görünmez.
  static Future<void> requestNotificationPermission() async {
    if (!_supported) return;
    try {
      final p = await FlutterForegroundTask.checkNotificationPermission();
      if (p != NotificationPermission.granted) {
        await FlutterForegroundTask.requestNotificationPermission();
      }
    } catch (e) {
      debugPrint('Telsiz bildirim izni: $e');
    }
  }

  /// [microphone]: rehber yayını (mikrofon + medya), değilse yalnız dinleme (medya).
  static Future<void> start({required bool microphone, required String title, required String text}) async {
    if (!_supported) return;
    try {
      _init();
      final types = microphone
          ? const [ForegroundServiceTypes.microphone, ForegroundServiceTypes.mediaPlayback]
          : const [ForegroundServiceTypes.mediaPlayback];
      if (await FlutterForegroundTask.isRunningService) {
        await FlutterForegroundTask.stopService();
      }
      final r = await FlutterForegroundTask.startService(
        serviceId: _serviceId,
        serviceTypes: types,
        notificationTitle: title,
        notificationText: text,
        callback: telsizForegroundCallback,
      );
      if (r is ServiceRequestFailure) debugPrint('Telsiz servisi başlamadı: ${r.error}');
    } catch (e) {
      debugPrint('Telsiz servisi başlatılamadı: $e');
    }
  }

  static Future<void> update({required String title, required String text}) async {
    if (!_supported) return;
    try {
      if (await FlutterForegroundTask.isRunningService) {
        await FlutterForegroundTask.updateService(notificationTitle: title, notificationText: text);
      }
    } catch (_) {}
  }

  static Future<void> stop() async {
    if (!_supported) return;
    try {
      if (await FlutterForegroundTask.isRunningService) {
        await FlutterForegroundTask.stopService();
      }
    } catch (e) {
      debugPrint('Telsiz servisi durdurulamadı: $e');
    }
  }
}

@pragma('vm:entry-point')
void telsizForegroundCallback() {
  FlutterForegroundTask.setTaskHandler(_TelsizTaskHandler());
}

class _TelsizTaskHandler extends TaskHandler {
  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {}

  @override
  void onRepeatEvent(DateTime timestamp) {}

  @override
  Future<void> onDestroy(DateTime timestamp, bool isTimeout) async {}

  @override
  void onNotificationPressed() => FlutterForegroundTask.launchApp();
}
