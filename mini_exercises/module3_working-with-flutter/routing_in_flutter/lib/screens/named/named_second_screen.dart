import 'package:flutter/material.dart';

// ------------------------------------------------------------
// NamedSecondScreen – Segunda pantalla de la demo de rutas nombradas
// ------------------------------------------------------------
// Esta pantalla forma parte del flujo de "Named Routes".
// Muestra un botón que permite regresar a la pantalla anterior
// utilizando Navigator.pop(context), demostrando la navegación
// básica de retorno dentro del sistema de rutas nombradas.
// ------------------------------------------------------------

class NamedSecondScreen extends StatelessWidget {
  const NamedSecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
