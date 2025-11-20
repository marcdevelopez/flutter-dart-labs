import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/navigation_home_screen.dart';

void main() {
  runApp(const NavigationPlaygroundApp());
}

class NavigationPlaygroundApp extends StatefulWidget {
  const NavigationPlaygroundApp({super.key});

  @override
  State<NavigationPlaygroundApp> createState() => _NavigationPlaygroundAppState();
}

class _NavigationPlaygroundAppState extends State<NavigationPlaygroundApp> {
  // ESTADO DEL TEMA
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // TEMAS
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,

      // PANTALLA PRINCIPAL
      home: NavigationHomeScreen(
        themeMode: _themeMode,
        onToggleTheme: _toggleTheme,
      ),
    );
  }
}
