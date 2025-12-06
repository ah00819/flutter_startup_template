import 'package:flutter/material.dart';

class AppRadius {
  static const double sm = 6.0;
  static const double md = 12.0;
  static const double lg = 20.0;
}

class AppSpacing {
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
}

class AppColors {
  // Core brand colors
  static const Color primary = Color(0xFF2F3842); // Muted blue-gray
  static const Color primaryLight = Color(0xFF4B5663);
  static const Color primaryDark = Color(0xFF1C232A);
  // secondary - accent
  static const Color secondary = Color(0xFF6C757D);
  static const Color accent = Color(0xFF00B4D8); // Softer, modern cyan-blue
  // Semantic colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFB300);
  static const Color danger = Color(0xFFE53935);
  static const Color info = Color(0xFF29B6F6);
  // Backgrounds
  static const Color backgroundLight = Color(0xFFF5F6F8);
  static const Color backgroundDark = Color(0xFF121417);
  // General tones
  static const Color light = Color(0xFFFFFFFF);
  static const Color dark = Color(0xFF22262B);
  // Neutrals
  static const Color borderLight = Color(0xFFE2E5E8);
  static const Color borderDark = Color(0xFF383D45);
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: "Roboto",
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.light,
      secondary: AppColors.accent,
      onSecondary: AppColors.light,
      error: AppColors.danger,
      onError: AppColors.light,
      surface: AppColors.light,
      onSurface: AppColors.primary,
      surfaceContainerLow: AppColors.backgroundLight,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.light,
      foregroundColor: AppColors.primary,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.light,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.secondary,
      showUnselectedLabels: true,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.primary, fontSize: 16),
      bodyMedium: TextStyle(color: AppColors.secondary, fontSize: 14),
      titleLarge: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(color: AppColors.primary),
      labelMedium: TextStyle(color: AppColors.secondary),
    ),
    cardColor: AppColors.light,
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.light,
      selectedColor: AppColors.primary,
      checkmarkColor: AppColors.light,
      labelStyle: const TextStyle(color: AppColors.primary),
      secondaryLabelStyle: const TextStyle(color: AppColors.light),
      disabledColor: AppColors.borderLight,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      shape: const StadiumBorder(side: BorderSide(color: AppColors.borderLight)),
      brightness: Brightness.light,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.light,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.sm)),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: "Roboto",
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.accent,
      onPrimary: AppColors.dark,
      secondary: AppColors.accent,
      onSecondary: AppColors.dark,
      error: AppColors.danger,
      onError: AppColors.light,
      surface: AppColors.primaryDark,
      onSurface: AppColors.light,
      surfaceContainerLow: AppColors.primaryDark,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryDark,
      foregroundColor: AppColors.light,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryDark,
      selectedItemColor: AppColors.accent,
      unselectedItemColor: AppColors.secondary,
      showUnselectedLabels: true,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.light, fontSize: 16),
      bodyMedium: TextStyle(color: AppColors.secondary, fontSize: 14),
      titleLarge: TextStyle(color: AppColors.light, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(color: AppColors.light),
      labelMedium: TextStyle(color: AppColors.secondary),
    ),
    cardColor: AppColors.primaryDark,
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.primaryDark,
      selectedColor: AppColors.accent,
      disabledColor: AppColors.borderDark,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      labelStyle: const TextStyle(color: AppColors.light),
      secondaryLabelStyle: const TextStyle(color: AppColors.light),
      checkmarkColor: AppColors.light,
      shape: const StadiumBorder(side: BorderSide(color: AppColors.borderDark)),
      brightness: Brightness.dark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accent,
        foregroundColor: AppColors.dark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.sm)),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      ),
    ),
  );
}
