import 'package:flutter/material.dart';
import 'screens/stack_navigation_demo.dart';

void main() {
  runApp(const StackNavigationTestApp());
}

class StackNavigationTestApp extends StatelessWidget {
  const StackNavigationTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    // De momento implementamos lo mínimo para que funcione la navegación
    return MaterialApp(
      title: 'Stack Navigation Test',
      debugShowCheckedModeBanner: false,
      home: const StackNavigationDemo(),
    );
  }
}