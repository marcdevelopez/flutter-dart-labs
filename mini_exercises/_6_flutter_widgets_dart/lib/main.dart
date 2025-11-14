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

// StatelessWidget que representa la app entera con su configuracion global básica
// Y define la pagina de inicio
class WidgetGalleryApp extends StatelessWidget {
  const WidgetGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Gallery',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      // Apunta a la pagina de inicio
      home: const GalleryHomePage(),
    );
  }
}

// Este es un widget con estado, que puede cambiar durante la ejecucion
// Util para widgets que necesitan actualizar su UI en respuesta a eventos
// Esta es la clase (Home) del widget con estado
class GalleryHomePage extends StatefulWidget {
  const GalleryHomePage({super.key});
  @override
  State<StatefulWidget> createState() => _GalleryHomePageState();
}

// Y esta es la clase de estado asociada
// La lógica interactiva vive aquí
class _GalleryHomePageState extends State<GalleryHomePage> {
  // Estado minimo y variables de control
  // State variables for interactive widgets
  // Necesario para preparar el estado inicial
  bool _checkboxValue = false;
  bool _switchValue = true;
  int _radioValue = 1;
  // Para el TextField
  String _textFieldValue = '';
  // Para la demo de botones
  int _likeCount = 0;

  @override
  // Es la estructura visual del widget con AppBar y Body con ListView
  // En este caso será un Marcos estándar y una lista de secciones
  Widget build(BuildContext context) {
    // Scaffold es un layout básico que proporciona estructura visual
    return Scaffold(
      // Gracias a este widget appBar podemos tener una barra superior
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
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
          _buildSectionTitle('Basic Widgets'),
          _buildBasicWidgetsDemo(),
          const SizedBox(height: 24),
          _buildSectionTitle('Layout Widgets'),
          _buildLayoutWidgetsDemo(),
          const SizedBox(height: 24),
          _buildSectionTitle('Input Widgets'),
          _buildInputWidgetsDemo(),
          const SizedBox(height: 24),
          _buildSectionTitle('Button Widgets'),
          // (Sección 4 irá aquí))
          _buildSectionTitle('Interactive Example'),
          // (Sección 5 irá aquí))
        ],
      ),
    );
  }

  // Helper visual para títulos de sección
  // Reutiliza estilo y mantiene el código limpio
  Widget _buildSectionTitle(String title) {
    // Envolvemos en un Card para que sea más agradable visualmente.
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  // Seccion "Basic Widgets" (1)
  // Aquí está el código para la sección de Basic Widgets
  // Demuestra Text, Icon e Image
  Widget _buildBasicWidgetsDemo() {
    return Container(
      // Voy a aplicar un fondo azul muy suave y redondear las esquinas porque
      // esto ayuda a separar visualmente la sección del resto del contenido
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8.0),
      ),
      // En esta columna vamos a poner los widgets básicos
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text widget example
          const Text(
            'Text Widget Example',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          // Row with Icon widgets example
          Row(
            children: const [
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star_half, color: Colors.amber),
              Icon(Icons.star_border, color: Colors.amber),
              SizedBox(width: 8),
              Text('4.5/5'),
            ],
          ),
          const SizedBox(height: 8),

          // Image placeholder (using Icon as a placeholder for simplicity)
          // Quiero simular dónde iría una imagen, sin preocuparme todavía por URLs.
          // Creo un contenedor gris y pongo un ícono de imagen dentro:
          Container(
            width: 100,
            height: 100,
            color: Colors.grey.shade300,
            child: const Icon(Icons.image, size: 50, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  // Seccion "Layout Widgets" (2)
  // Demonstrates: Column, Row, Container, Stack
  Widget _buildLayoutWidgetsDemo() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Column & Row Layout',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            // Añadamos un espacio proporcional entre los elementos
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Voy a hacer tres contenedores numerados para mostrar
              // cómo Row distribuye espacio y alinea elementos:
              Container(
                width: 60,
                height: 60,
                color: Colors.red,
                child: const Center(
                  child: Text('1', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
                child: const Center(
                  child: Text('2', style: TextStyle(color: Colors.white)),
                ),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.blue,
                child: const Center(
                  child: Text('3', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
          // Añadimos una separacion vertical antes de la siguiente seccion
          const SizedBox(height: 16),
          const Text(
            'Stack Layout',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          // Ahora un Stack para superponer elementos
          // Stack example with overlapping containers
          Stack(
            children: [
              // Este es el container base
              Container(width: 150, height: 150, color: Colors.blue.shade200),
              // Este container se superpone arriba a la izquierda
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.red.shade300,
                ),
              ),
              // Este containmer se superpone abajo a la derecha
              const Positioned(
                bottom: 10,
                right: 10,
                child: Icon(Icons.layers, size: 40, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Seccion "Input Widgets" (3)
  // Esta sección demostrará widgets de entrada: TextField, Checkbox, Radio y Switch.
  Widget _buildInputWidgetsDemo() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Input Widgets Demo',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // TextField example
          const Text(
            'TextField',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Enter your name',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
            onChanged: (value) {
              setState(() {
                _textFieldValue = value;
              });
            },
          ),
          if (_textFieldValue.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Hello, $_textFieldValue!'),
            ),
          const SizedBox(height: 12),

          // Checkbox example
          const Text(
            'Checkbox',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          CheckboxListTile(
            title: const Text('Checkbox Widget'),
            value: _checkboxValue,
            // Un checkbox necesita un booleano para su estado
            // Cuando el usuario hace click, onChanged recibe el nuevo valor
            onChanged: _onCheckboxChanged,
          ),
          const SizedBox(height: 12),

          // Radio buttons example
          const Text(
            'Radio Buttons',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          RadioListTile<int>(
            title: const Text('Option 1'),
            value: 1,
            groupValue: _radioValue,
            onChanged: _onRadioChanged,
          ),
          RadioListTile<int>(
            title: const Text('Option 2'),
            value: 2,
            groupValue: _radioValue,
            onChanged: _onRadioChanged,
          ),
          const SizedBox(height: 12),

          // Switch example
          const Text(
            'Switch',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SwitchListTile(
            title: const Text('Switch Widget'),
            value: _switchValue,
            onChanged: _onSwitchChanged,
          ),
        ],
      ),
    );
  }

  // Manejador de cambio para los Radio buttons
  void _onRadioChanged(int? value) {
    if (value == null) return;

    setState(() {
      _radioValue = value;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: Text('Elegiste la opción $value', textAlign: TextAlign.center),
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  // Manejador de cambio para el Switch
  void _onSwitchChanged(bool value) {
    setState(() {
      _switchValue = value;
    });

    final estado = value ? 'activado' : 'desactivado';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: Text('Switch $estado', textAlign: TextAlign.center),
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

  // Manejador de cambio para el Checkbox
  void _onCheckboxChanged(bool? value) {
    final newValue = value ?? false;

    setState(() {
      _checkboxValue = newValue;
    });

    final estado = newValue ? 'marcado' : 'desmarcado';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: Text('Checkbox $estado', textAlign: TextAlign.center),
        ),
        duration: Duration(seconds: 2),
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
