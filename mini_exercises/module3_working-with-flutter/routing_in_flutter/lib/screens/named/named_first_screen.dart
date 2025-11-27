import 'package:flutter/material.dart';

// ------------------------------------------------------------
// NamedFirstScreen – Primera pantalla de la demo de rutas nombradas
// ------------------------------------------------------------
// Esta pantalla forma parte del flujo de "Named Routes".
// Muestra un botón simple que permite volver atrás utilizando
// Navigator.pop(context), demostrando el comportamiento básico
// de la navegación mediante rutas nombradas.
// ------------------------------------------------------------

class NamedFirstScreen extends StatelessWidget {
  // Al ser const permite optimizaciones.
  const NamedFirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
