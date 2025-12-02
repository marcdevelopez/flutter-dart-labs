// Flutter Material widgets and theming.
import 'package:flutter/material.dart';

// Screens registered in the route map.
import 'screens/home_screen.dart';
import 'screens/named/named_routes_demo.dart';
import 'screens/named/named_first_screen.dart';
import 'screens/named/named_second_screen.dart';
import 'screens/direct/direct_routes_demo.dart';
import 'screens/data/data_passing_demo.dart';
import 'screens/advanced/advanced_demo.dart';

void main() {
  // runApp boots the app and mounts RoutingApp as the root widget.
  runApp(const RoutingApp());
}

/// Root widget that wires the route table and global Material 3 theme for all demos.
class RoutingApp extends StatelessWidget {
  const RoutingApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root configured with theme and route table.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Informational app title (used by Android task switcher)
      title: 'Routing in Flutter',

      // Global theme for the demos (Material 3 seed palette, rounded 12px cards, roomy text).
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          secondary: Colors.amber,
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        cardColor: Colors.grey.shade100,
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          ),
        ),
        cardTheme: const CardTheme(
          margin: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // Initial route when the app launches.
      initialRoute: '/',

      // Named route map → each key is a route name and each value a screen.
      routes: {
        // Home screen (menu hub)
        '/': (context) => const HomeScreen(),

        // Named routes demo
        '/named-demo': (context) => const NamedRoutesDemo(),
        // First screen inside the named routes flow
        '/named/first': (context) => const NamedFirstScreen(),
        // Second screen inside the named routes flow
        '/named/second': (context) => const NamedSecondScreen(),

        // Direct navigation using MaterialPageRoute
        '/direct-demo': (context) => const DirectRoutesDemo(),

        // Data passing flow between screens
        '/data-demo': (context) => const DataPassingDemo(),

        // Advanced navigation patterns
        '/advanced': (context) => const AdvancedDemo(),
      },
    );
  }
}
