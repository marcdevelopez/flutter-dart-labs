import 'package:flutter/material.dart';

class StackNavigationDemo extends StatelessWidget {
  const StackNavigationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Navigation Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StackDetailScreen()),
            );
          },
          child: const Text('Ir a la pantalla de detalles'),
        ),
      ),
    );
  }
}

class StackDetailScreen extends StatelessWidget {
  const StackDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // De momento implementamos lo mínimo para que funcione la navegación
    // Luego añadiré animación, InfoCards y estilo.
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Volver'),
        ),
      ),
    );
  }
}