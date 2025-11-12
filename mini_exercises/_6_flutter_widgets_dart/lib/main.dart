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

// StatelessWidget que representa la app entera con su configuracion básica
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
// La lógica interactiva vive aquí
class _GalleryHomePageState extends State<GalleryHomePage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold es un layout básico que proporciona estructura visual
    return Scaffold(
      // Gracias a este widget appBar podemos tener una barra superior
      appBar: AppBar(
        title: const Text('Widget Gallery'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => _showInfoDialog(context),
          ),
        ],
      ),
      // Y gracias a este widget podemos agregar contenido al cuerpo de la app
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Iremos agregando secciones aquí…
          // Vamos a integrar el helper _buildSectionTitle para los títulos
          _buildSectionTitle('1) Basic Widgets'),
          // (Sección 1 irá aquí))
          _buildSectionTitle('2) Layout Widgets'),
          // (Sección 2 irá aquí))
          _buildSectionTitle('1) Input Widgets'),
          // (Sección 3 irá aquí))
          _buildSectionTitle('1) Button Widgets'),
          // (Sección 4 irá aquí))
          _buildSectionTitle('1) Interactive Example'),
          // (Sección 5 irá aquí))
        ],
      ),
    );
  }

  // Helper visual para títulos de sección
  // Reutiliza estilo y mantiene el código limpio
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }

  // Muestra un dialogo con informacion sobre la app
  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const AlertDialog(
        title: Text('Widget Gallery Info'),
        content: Text(
          'Esta pequeña app demuestra:\n\n'
          '• Stateless & Stateful Widgets\n'
          '• Basic Widgets (Text, Icon, Image)\n'
          '• Layout (Column, Row, Stack, Container)\n'
          '• Inputs (TextField, Checkbox, Radio, Switch)\n'
          '• Buttons (Elevated, Text, Icon)\n'
          '• Estado y Material Design',
        ),
      ),
    );
  }
}
