import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = _buildLightTheme();
  static final ThemeData darkTheme = _buildDarkTheme();

  // ---------------------------
  // PRIVATE STYLE BUILDERS
  // ---------------------------

  static AppBarTheme _appBarTheme() {
    return const AppBarTheme(centerTitle: true, elevation: 2);
  }

  static CardTheme _cardTheme() {
    return const CardTheme(
      elevation: 2,
      margin: EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }

  static TextTheme _textTheme() {
    return const TextTheme(
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 16),
      bodySmall: TextStyle(fontSize: 14),
    );
  }

  // ---------------------------
  // LIGHT THEME
  // ---------------------------

  static ThemeData _buildLightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        brightness: Brightness.light,
      ),
      appBarTheme: _appBarTheme(),
      // ignore: argument_type_not_assignable
      cardTheme: _cardTheme(),
      textTheme: _textTheme(),
    );
  }

  // ---------------------------
  // DARK THEME
  // ---------------------------

  static ThemeData _buildDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.teal,
        brightness: Brightness.dark,
      ),
      appBarTheme: _appBarTheme(),
      // ignore: argument_type_not_assignable
      cardTheme: _cardTheme(),
      textTheme: _textTheme(),
    );
  }
}
