import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart' as ph;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/providers/locale_provider.dart';
import '../../core/utils/global_snackbar.dart';
import 'local_notification_service.dart';

/// Konum izni sonucu.
enum LocationAccess { serviceDisabled, denied, deniedForever, whileInUse, always }

extension LocationAccessX on LocationAccess {
  /// Arka plan servisi başlatılabilir mi (en az "uygulama kullanılırken" izni).
  bool get canTrack => this == LocationAccess.whileInUse || this == LocationAccess.always;
}

/// İzin akışı: önce "uygulama kullanılırken" konum izni, sonra açıklama diyaloğuyla
/// "Her zaman izin ver" (arka plan), ardından Android 13+ bildirim izni.
class LocationPermissionHelper {
  LocationPermissionHelper._();

  static const _bgAskedKey = 'bg_location_asked';

  /// Sadece mevcut durumu okur, pencere açmaz.
  static Future<LocationAccess> currentAccess() async {
    try {
      if (!await Geolocator.isLocationServiceEnabled()) return LocationAccess.serviceDisabled;
      return _map(await Geolocator.checkPermission());
    } catch (e) {
      debugPrint('currentAccess: $e');
      return LocationAccess.denied;
    }
  }

  static LocationAccess _map(LocationPermission p) {
    switch (p) {
      case LocationPermission.always:
        return LocationAccess.always;
      case LocationPermission.whileInUse:
        return LocationAccess.whileInUse;
      case LocationPermission.deniedForever:
        return LocationAccess.deniedForever;
      default:
        return LocationAccess.denied;
    }
  }

  /// Orijinaldeki `checkLocationPermission`. [force] true ise arka plan izni
  /// daha önce sorulmuş olsa da yeniden sorulur (profil/ayarlar ekranından).
  static Future<LocationAccess> checkLocationPermission(BuildContext? context, {bool force = false}) async {
    try {
      if (!await Geolocator.isLocationServiceEnabled()) {
        GlobalSnackbar.showError(l10n.coreLocationServiceOffSnack);
        if (context != null && context.mounted) {
          final open = await _ask(
            context,
            icon: Icons.location_off_rounded,
            title: l10n.coreLocationServiceOffTitle,
            message: l10n.coreLocationServiceOffMessage,
            confirm: l10n.coreLocationServiceOpen,
          );
          if (open) await Geolocator.openLocationSettings();
        }
        return LocationAccess.serviceDisabled;
      }

      var perm = await Geolocator.checkPermission();
      if (perm == LocationPermission.denied) perm = await Geolocator.requestPermission();

      if (perm == LocationPermission.denied || perm == LocationPermission.deniedForever) {
        GlobalSnackbar.showInfo(l10n.coreLocationPermissionRestart);
        if (context != null && context.mounted) {
          final open = await _ask(
            context,
            icon: Icons.location_disabled_rounded,
            title: l10n.coreLocationPermissionTitle,
            message: l10n.coreLocationPermissionMessage,
            confirm: l10n.coreGoToSettings,
          );
          if (open) await Geolocator.openAppSettings();
        }
        return _map(perm);
      }

      // Arka plan ("Her zaman izin ver") izni.
      if (perm == LocationPermission.whileInUse) {
        final prefs = await SharedPreferences.getInstance();
        final asked = prefs.getBool(_bgAskedKey) ?? false;
        if ((force || !asked) && context != null && context.mounted) {
          unawaited(prefs.setBool(_bgAskedKey, true));
          final go = await _ask(
            context,
            icon: Icons.share_location_rounded,
            title: l10n.coreBackgroundLocationTitle,
            message: l10n.coreBackgroundLocationMessage,
            confirm: l10n.coreContinue,
          );
          if (go) {
            final st = await ph.Permission.locationAlways.request();
            if (st.isGranted) perm = LocationPermission.always;
          }
        }
      }

      await requestNotificationPermission();
      return _map(perm);
    } catch (e) {
      debugPrint('checkLocationPermission: $e');
      return LocationAccess.denied;
    }
  }

  /// Android 13+ bildirim izni (konum servisinin kalıcı bildirimi ve duyurular için).
  static Future<void> requestNotificationPermission() async {
    try {
      final st = await ph.Permission.notification.status;
      if (st.isDenied) await LocalNotificationService.requestPermission();
    } catch (e) {
      debugPrint('notification permission: $e');
    }
  }

  static Future<bool> _ask(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String message,
    required String confirm,
  }) async {
    final r = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        icon: Icon(icon, size: 32),
        title: Text(title),
        content: Text(message, textAlign: TextAlign.center),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: Text(l10n.coreNotNow)),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: Text(confirm)),
        ],
      ),
    );
    return r ?? false;
  }
}
