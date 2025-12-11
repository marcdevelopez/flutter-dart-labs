import 'package:flutter/material.dart';

class AppTheme {
  static const Color seed = Color(0xFF1D976C);
  static const Color accent = Color(0xFFFFC857);

  // Defining the typography styles used in the app
  static const TextTheme textTheme = TextTheme(
    // For titles and headings
    headlineSmall: TextStyle(
      // look how to use a custom font
      // Must to be exactly the same name as defined in pubspec.yaml
      fontFamily: 'InterCustom',
      fontSize: 26,
      fontWeight: FontWeight.w700,
      color: Colors.black87,
    ),
    // For paragraphs and body text
    bodyMedium: TextStyle(
      fontFamily: 'InterCustom',
      fontSize: 16,
      color: Color(0xFF2F3A4C),
      height: 1.4,
    ),
    // For buttons and labels
    labelLarge: TextStyle(
      fontFamily: 'InterCustom',
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );

  // Method to create a light theme for the app
  static ThemeData light() {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: seed,
      primary: seed,
      secondary: accent,
      surface: const Color(0xFFF6F8FB),
    );

    return ThemeData(
      // Use Material 3 design to all the app
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      textTheme: textTheme,
      // Defining the style for ElevatedButtons globally
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: textTheme.labelLarge,
          elevation: 3,
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) {
              return colorScheme.onPrimary.withAlpha((0.16 * 255).round());
            }
            if (states.contains(WidgetState.hovered)) {
              return colorScheme.onPrimary.withAlpha((0.10 * 255).round());
            }
            return null;
          }),
        ),
      ),
    );
  }
}
