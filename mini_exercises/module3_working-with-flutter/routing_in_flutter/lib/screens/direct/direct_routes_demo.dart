import 'package:flutter/material.dart';

// ------------------------------------------------------------
// DirectRoutesDemo – Demostración de navegación directa
// ------------------------------------------------------------
// Esta pantalla muestra cómo navegar a otras pantallas creando
// rutas de forma directa usando MaterialPageRoute, en lugar de
// utilizar rutas nombradas.
//
// Incluye además una pantalla privada (_DirectScreen) que recibe
// datos mediante su constructor, demostrando cómo pasar
// información al navegar sin usar el sistema de rutas nombradas.
// ------------------------------------------------------------

class DirectRoutesDemo extends StatelessWidget {
  const DirectRoutesDemo({super.key});
  // Metodo privado para evitar repetir el código de navegación en cada botón
  void _goTo(BuildContext context, String title) {
    // Ruta directa usando MaterialPageRoute:
    // Útiles cuando:
    // la pantalla necesita datos complejos,
    // la ruta no es global,
    // estás prototipando,
    // o quieres más flexibilidad.
    // Súper flexible, ideal para pantallas que necesitan datos
    Navigator.push(
      // El Navigator usa esto para saber desde qué “árbol” de widgets debe navegar.
      context,
      // MaterialPageRoute crea una transición estándar de Material Design 
      // entre pantallas.
      // builder es una función que recibe un BuildContext 
      // (lo marcamos como _ porque no lo usamos).
      MaterialPageRoute(builder: (_) => _DirectScreen(title: title)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Direct Routes Demo')),
      body: Center(
        child: Column(
          // La columna solo ocupa el mínimo espacio necesario en el eje vertical, 
          // en lugar de expandirse a toda la pantalla.
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => _goTo(context, 'Profile Screen'),
              child: const Text('Go to Profile'),
            ),
            ElevatedButton(
              onPressed: () => _goTo(context, 'Settings Screen'),
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
class _DirectScreen extends StatelessWidget {
  // Usa un parámetro con nombre title marcado como required, es decir, obligatorio.
  const _DirectScreen({required this.title});
  final String title;
  @override
  // Definir la UI de _DirectScreen
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
