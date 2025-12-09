import 'package:flutter/material.dart';

void main() {
  runApp(const StyleLabApp());
}

// Entry point app to host styling exercises.
class StyleLabApp extends StatelessWidget {
  const StyleLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Implementing Styles in Flutter',
      // Theme object where we'll add TextTheme, fonts, ElevatedButtonTheme, etc.
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      // Initial screen for the app
      home: const StyleLabHome(),
    );
  }
}

class StyleLabHome extends StatelessWidget {
  const StyleLabHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implementing styles in Flutter'),
      ),
      body: const Center(
        child: Text('Pantalla base lista para aplicar estilos.'),
      ),
    );
  }
}
