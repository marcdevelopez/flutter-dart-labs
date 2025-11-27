import 'package:flutter/material.dart';

// ------------------------------------------------------------
// NamedRoutesDemo – Demostración de rutas nombradas
// ------------------------------------------------------------
// ...
// ------------------------------------------------------------

class NamedRoutesDemo extends StatelessWidget {
  const NamedRoutesDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Named Routes Demo')),
      body: Center(
        child: Column(
          // Controla el tamaño de la columna en el eje principal (vertical).
          // MainAxisSize.min hace que la columna ocupe el mínimo espacio
          // vertical necesario, en lugar de expandirse a toda la altura.
          // Esto hace que los botones queden centrados sin estirarse.
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/named/first'),
              // child es el contenido del botón.
              child: const Text('Go to First'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/named/second'),
              child: const Text('Go to Second'),
            ),
          ],
        ),
      ),
    );
  }
}
