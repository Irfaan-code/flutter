import 'package:flutter/material.dart';

class AppTheme {
  // Couleurs principales
  static const Color primaryGreen = Color(0xFF2E7D32); // Vert profond
  static const Color secondaryGold = Color(0xFFFFD54F); // Or doux
  static const Color surfaceWhite = Color(0xFFFFFFFF); // Blanc
  static const Color textBlack = Color(0xFF212121); // Noir discret
  static const Color backgroundLight = Color(0xFFF5F5F5); // Fond léger

  // Couleurs islamiques supplémentaires
  static const Color islamicBlue = Color(0xFF0066CC); // Bleu islamique
  static const Color islamicBurgundy = Color(0xFF800020); // Bordeaux
  static const Color islamicTeal = Color(0xFF008080); // Turquoise
  static const Color islamicPurple = Color(0xFF4B0082); // Violet
  static const Color islamicOrange = Color(0xFFFF8C00); // Orange
  static const Color islamicRed = Color(0xFFDC143C); // Rouge cramoisi

  // Thème clair
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryGreen,
      brightness: Brightness.light,
      primary: primaryGreen,
      secondary: secondaryGold,
      surface: surfaceWhite,
      onPrimary: surfaceWhite,
      onSecondary: textBlack,
      onSurface: textBlack,
    ),
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryGreen,
      foregroundColor: surfaceWhite,
      elevation: 0,
    ),
    // cardTheme: const CardTheme(
    //   elevation: 2,
    //   margin: EdgeInsets.zero,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(12)),
    //   ),
    // ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: textBlack,
        height: 1.2,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: textBlack,
        height: 1.3,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: textBlack,
        height: 1.4,
      ),
      headlineLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: textBlack,
        height: 1.4,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: textBlack,
        height: 1.5,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: textBlack,
        height: 1.5,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textBlack,
        height: 1.5,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textBlack,
        height: 1.5,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: textBlack,
        height: 1.5,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: textBlack,
        height: 1.6,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: textBlack,
        height: 1.6,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: textBlack,
        height: 1.6,
      ),
    ),
  );

  // Thème sombre (optionnel)
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryGreen,
      brightness: Brightness.dark,
      primary: primaryGreen,
      secondary: secondaryGold,
      surface: Color(0xFF1E1E1E),
      onPrimary: surfaceWhite,
      onSecondary: textBlack,
      onSurface: surfaceWhite,
    ),
    scaffoldBackgroundColor: Color(0xFF121212),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF1E1E1E),
      foregroundColor: surfaceWhite,
      elevation: 0,
    ),
    // cardTheme: const CardTheme(
    //   elevation: 2,
    //   margin: EdgeInsets.zero,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.all(Radius.circular(12)),
    //   ),
    //   color: Color(0xFF1E1E1E),
    // ),
    textTheme: lightTheme.textTheme.apply(
      bodyColor: surfaceWhite,
      displayColor: surfaceWhite,
    ),
  );
}
