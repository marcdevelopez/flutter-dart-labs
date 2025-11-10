import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Con const para optimización
}

class MyApp extends StatelessWidget {
  // Agregar constructor constante
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Web',
      home: Scaffold(
        appBar: AppBar(title: Text('Hello World Web App')),
        body: Center(
          child: const Text(
            // ✅ Agregar const aquí también
            'Hello World',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
