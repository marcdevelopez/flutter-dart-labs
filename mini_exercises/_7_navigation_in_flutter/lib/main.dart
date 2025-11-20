import 'package:flutter/material.dart';
import 'screens/navigation_home_screen.dart';

void main() {
  runApp(const NavigationPlaygroundApp());
}

class NavigationPlaygroundApp extends StatelessWidget {
  const NavigationPlaygroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationHomeScreen(),
    );
  }
}
