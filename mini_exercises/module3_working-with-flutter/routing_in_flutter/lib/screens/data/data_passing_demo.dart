import 'package:flutter/material.dart';

// ------------------------------------------------------------
// DataPassingDemo – Demostración de paso de datos (ida y vuelta)
// ------------------------------------------------------------
// Este archivo muestra cómo enviar y recibir datos entre pantallas.
//
// ✔ DataPassingDemo abre una pantalla (_FormScreen) usando
//   Navigator.push y espera un valor devuelto mediante 'await'.
//
// ✔ _FormScreen es un StatefulWidget que contiene un TextField.
//   Al pulsar "Submit", cierra la pantalla con Navigator.pop,
//   devolviendo el texto escrito como resultado.
//
// ✔ Al volver a DataPassingDemo, el valor recibido se muestra
//   en un SnackBar, demostrando el flujo completo:
//   Parent → Child → Parent (push → pop with result).
// ------------------------------------------------------------

class DataPassingDemo extends StatelessWidget {
  const DataPassingDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Passing Demo')),
      body: Center(
        child: ElevatedButton(
          // Se marca como async porque dentro vas a usar await 
          // (navegación que devuelve resultado)
          onPressed: () async {
            // Llamas a Navigator.push y esperas (await) a que la pantalla que 
            // abras se cierre.
            // Lo que esa pantalla devuelva al hacer Navigator.pop(context, algo) 
            // se guarda en result.
            // result será el valor que venga de _FormScreen (o null si no 
            // devuelve nada).
            final result = await Navigator.push(
              context,
              // El _ es un BuildContext que no usas, por eso lo nombras así
              MaterialPageRoute(builder: (_) => const _FormScreen()),
            );
            if (!context.mounted) return;
            // Después de que _FormScreen se cierra (await), este código se ejecuta
            // ScaffoldMessenger.of(context) obtiene el ScaffoldMessenger asociado 
            //al Scaffold actual.
            ScaffoldMessenger.of(context).showSnackBar(
              // Si result es null, muestra 'none'.
              SnackBar(content: Text('Result: ${result ?? 'none'}')),
            );
          },
          child: const Text('Open Form'),
        ),
      ),
    );
  }
}
class _FormScreen extends StatefulWidget {
  // Constructor const sin parámetros.
  const _FormScreen();
  @override
  State<_FormScreen> createState() => _FormScreenState();
}
// Defines la clase de estado _FormScreenState
class _FormScreenState extends State<_FormScreen> {
  // _controller permitirá leer y modificar el texto que el usuario escribe
  final _controller = TextEditingController();
  @override
  // Se llama cuando esta pantalla se elimina del árbol de widgets.
  void dispose() {
    // libera los recursos usados por el TextEditingController (buena práctica).
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Screen')),
      // body es un Padding que envuelve el contenido
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              // El texto escrito se guarda en _controller.text.
              controller: _controller,
              // Añade un label dentro del campo
              decoration: const InputDecoration(labelText: 'Enter message'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              // Devuelve el valor _controller.text como resultado a quien hizo 
              // el Navigator.push(...).
              // Ese valor lo recogerá result en DataPassingDemo.
              onPressed: () => Navigator.pop(context, _controller.text),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
