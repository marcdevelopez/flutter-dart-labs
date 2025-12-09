import 'package:flutter/material.dart';

class AppTheme {
  static const Color seed = Color(0xFF1D976C);
  static const Color accent = Color(0xFFFFC857);

  static const TextTheme textTheme = TextTheme(
    headlineSmall: TextStyle(
      fontFamily: 'InterCustom',
      fontSize: 26,
      fontWeight: FontWeight.w700,
      color: Colors.black87,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'InterCustom',
      fontSize: 16,
      color: Color(0xFF2F3A4C),
      height: 1.4,
    ),
    labelLarge: TextStyle(
      fontFamily: 'InterCustom',
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: seed,
      primary: seed,
      secondary: accent,
      background: const Color(0xFFF6F8FB),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
      textTheme: textTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: seed,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: textTheme.labelLarge,
          elevation: 3,
        ),
      ),
    );
  }
}
