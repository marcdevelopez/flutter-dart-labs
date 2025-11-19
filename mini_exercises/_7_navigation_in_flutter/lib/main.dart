import 'package:flutter/material.dart';
import 'screens/stack_navigation_demo.dart';

void main() {
  runApp(const StackNavigationApp());
}

class StackNavigationApp extends StatelessWidget {
  const StackNavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StackNavigationDemo(),
    );
  }
}
