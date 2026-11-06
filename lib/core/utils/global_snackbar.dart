import 'package:flutter/material.dart';

import '../providers/locale_provider.dart';
import '../theme/app_theme.dart';

/// Context gerektirmeyen snackbar. MaterialApp.scaffoldMessengerKey'e bağlıdır.
class GlobalSnackbar {
  static final GlobalKey<ScaffoldMessengerState> messengerKey = GlobalKey<ScaffoldMessengerState>();

  static void _show(String message, Color color, {Duration duration = const Duration(seconds: 3)}) {
    final m = messengerKey.currentState;
    if (m == null) return;
    m
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: color,
        duration: duration,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ));
  }

  static void showError(String message) => _show(message, AppColors.error);
  static void showSuccess(String message) => _show(message, AppColors.success);
  static void showInfo([String? message]) =>
      _show(message ?? l10n.coreLocationPermissionRestart, AppColors.primaryDark,
          duration: const Duration(seconds: 4));
}
