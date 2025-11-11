import 'package:flutter/material.dart';
// Este import nos trae widgets de estilo visual de Flutter

/*
 * Flutter Widget Gallery - Interactive Showcase
 * ==============================================
 * 
 * This mini-exercise demonstrates fundamental Flutter widget concepts:
 * 
 * Concepts Covered:
 * ----------------
 * 1. Stateless vs Stateful Widgets
 * 2. Widget Tree hierarchy
 * 3. Basic Widgets (Text, Image, Icon, Button)
 * 4. Layout Widgets (Column, Row, Container, Stack)
 * 5. Input Widgets (TextField, Checkbox, Radio, Switch)
 * 6. Button Widgets (ElevatedButton, TextButton, IconButton)
 * 7. List Widgets (ListView, ListTile)
 * 8. Material Design principles
 * 
 * Purpose:
 * --------
 * This interactive gallery allows users to explore different widget types,
 * demonstrating state management and UI composition in a single application.
 * Perfect for showcasing Flutter fundamentals to recruiters and understanding
 * how widgets work together to create responsive interfaces.
 */

void main() {
  // Recordemos, const hace que el widget es inmutable antes de compilar
  // y puede ser optimizado por Flutter
  runApp(const WidgetGalleryApp());
}

class WidgetGalleryApp extends StatelessWidget {
  const WidgetGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Gallery',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const GalleryHomePage(),
    );
  }
}

// Este es un widget con estado, que puede cambiar durante la ejecucion
// Util para widgets que necesitan actualizar su UI en respuesta a eventos
// Esta es la clse del widget con estado
class GalleryHomePage extends StatefulWidget {
  const GalleryHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _GalleryHomePageState();
}

// Y esta es la clase de estado asociada
class _GalleryHomePageState extends State<GalleryHomePage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold es un layout básico que proporciona estructura visual
    return Scaffold(
      // Gracias a este widget appBar podemos tener una barra superior
      appBar: AppBar(title: const Text('Widget Gallery')),
      // Y gracias a este widget podemos agregar contenido al cuerpo de la app
      body: const Center(child: Text('Bienvenido a la galeria de widgets')),
    );
  }
}
