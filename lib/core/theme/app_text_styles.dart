import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppTextStyles {
  static const appBarTitle = TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600);
  static const sectionTitle = TextStyle(color: AppColors.text, fontSize: 18, fontWeight: FontWeight.bold);
  static const cardTitle = TextStyle(color: AppColors.text, fontSize: 16, fontWeight: FontWeight.w600);
  static const body = TextStyle(color: AppColors.text, fontSize: 14);
  static const muted = TextStyle(color: AppColors.textMuted, fontSize: 13);

  /// Arapça dua metinleri için (assets/fonts/amiri).
  static const arabic = TextStyle(fontFamily: 'Amiri', fontSize: 24, height: 1.8, color: AppColors.text);
}
