import 'package:flutter/material.dart';

// ------------------------------------------------------------
// HomeScreen – Hub principal de navegación
// ------------------------------------------------------------
// Esta pantalla actúa como el "Home Hub" de la aplicación.
// Desde aquí el usuario puede acceder a todas las demostraciones
// de navegación: rutas nombradas, rutas directas, paso de datos
// y ejemplos avanzados. Cada opción se representa como un elemento
// interactivo en una lista y navega usando rutas nombradas.
// ------------------------------------------------------------

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override // build se llama cuando Flutter tiene que dibujar esta pantalla
  Widget build(BuildContext context) {
    // Defines una lista inmutable (la referencia no cambia) llamada items.
    // Cada elemento de la lista es un record de Dart (sintaxis nueva tipo tupla).
    final items = [
      // Cada uno es un record de 3 posiciones:
      // 1. El título que se muestra en la lista
      // 2. La ruta nombrada a la que navega
      // 3. El icono que se muestra junto al título
      // Así tienes una mini “tabla” de opciones de menú.
      ('Named Routes', '/named-demo', Icons.label),
      ('Direct Routes', '/direct-demo', Icons.route),
      ('Data Passing', '/data-demo', Icons.swap_horiz),
      ('Advanced', '/advanced', Icons.upgrade),
    ];
    // Scaffold es la estructura base de una pantalla de Material Design.
    return Scaffold(
      appBar: AppBar(title: const Text('Routing in Flutter')),
      // ListView.separated crea una lista scrollable donde puedes definir un
      // separador entre elementos (en lugar de ListView.builder).
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        // Indica cuántos elementos tendrá la lista.
        // Usa items.length, es decir, el número de records que definiste antes
        // (en este caso 4).
        itemCount: items.length,
        // (_, __) son parámetros que no te interesan (BuildContext y el índice),
        // por eso se nombran con guiones bajos.
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        // itemBuilder construye cada elemento de la lista según su posición index.
        itemBuilder: (context, index) {
          // Extrae cada posición del record en variables
          final (title, route, icon) = items[index];
          // Cada elemento de la lista será una tarjeta
          return Card(
            // ListTile, que es un widget estándar para filas de listas:
            child: ListTile(
              // widget que aparece al principio de la fila (a la izquierda)
              leading: Icon(icon),
              title: Text(title),
              // widget que aparece al final de la fila (a la derecha)
              trailing: const Icon(Icons.chevron_right),
              // Usa el Navigator de Flutter para navegar a una ruta nombrada
              onTap: () => Navigator.pushNamed(context, route),
            ),
          );
        },
      ),
    );
  }
}
