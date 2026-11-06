import 'package:flutter/material.dart';

/// Uygulama renkleri: zümrüt paleti.
/// #051F20 · #0B2B26 · #163832 · #235347 · #8EB69B · #DAF1DE
class AppColors {
  // Paletin kendisi (koyudan açığa)
  static const emerald900 = Color(0xFF051F20);
  static const emerald800 = Color(0xFF0B2B26);
  static const emerald700 = Color(0xFF163832);
  static const emerald600 = Color(0xFF235347);
  static const sage = Color(0xFF8EB69B);
  static const mint = Color(0xFFDAF1DE);

  // Anlamsal adlar (uygulama bunları kullanır)
  static const primary = emerald600;
  static const primaryDark = emerald700;
  static const primaryLight = mint;

  /// AppBar ve vurgulu kartlar için zümrüt geçişi.
  static const primaryGradient = LinearGradient(
    colors: [emerald800, emerald600],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Vurgu (çizgi, nokta, ilerleme, rozet). Üzerine yazı gerekiyorsa [onAccent].
  static const accent = sage;
  static const onAccent = emerald900;

  static const background = Color(0xFFF3F8F4); // mint'in çok açık hali
  static const surface = Colors.white;
  static const text = emerald900;
  static const textMuted = Color(0xFF5E7A6E);
  static const error = Color(0xFFC0392B);
  static const success = Color(0xFF2E7D5B);
  static const divider = Color(0xFFDCE8E0);
  static const warning = Color(0xFFB7791F); // bağlanıyor, uyarı gibi geçici durumlar

  // Mushaf okuyucusu
  static const paper = Color(0xFFFBF5E6); // krem kâğıt
  static const paperDark = Color(0xFFF1E6CB); // kâğıt kenarı / süs zemini
  static const paperGold = Color(0xFFB8963E); // çerçeve ve süs altını
  static const paperInk = Color(0xFF1B1B18); // mushaf mürekkebi
}

class AppTheme {
  static ThemeData light() {
    final scheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      secondary: AppColors.accent,
      surface: AppColors.surface,
      error: AppColors.error,
    );
    final radius = BorderRadius.circular(12);
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        // Alt köşeleri oval
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(22)),
        ),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 2,
        shadowColor: Colors.black12,
        shape: RoundedRectangleBorder(borderRadius: radius),
        margin: const EdgeInsets.symmetric(vertical: 6),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          minimumSize: const Size(64, 48),
          shape: RoundedRectangleBorder(borderRadius: radius),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.primary),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          minimumSize: const Size(64, 48),
          shape: RoundedRectangleBorder(borderRadius: radius),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(borderRadius: radius, borderSide: const BorderSide(color: AppColors.divider)),
        enabledBorder: OutlineInputBorder(borderRadius: radius, borderSide: const BorderSide(color: AppColors.divider)),
        focusedBorder: OutlineInputBorder(borderRadius: radius, borderSide: const BorderSide(color: AppColors.primary, width: 2)),
        errorBorder: OutlineInputBorder(borderRadius: radius, borderSide: const BorderSide(color: AppColors.error)),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((s) => s.contains(WidgetState.selected) ? AppColors.primary : null),
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: radius),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textMuted,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      dividerTheme: const DividerThemeData(color: AppColors.divider, thickness: 1),
      listTileTheme: const ListTileThemeData(iconColor: AppColors.primary),
    );
  }
}
