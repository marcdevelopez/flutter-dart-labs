import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class StackDetailScreen extends StatelessWidget {
  const StackDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detalle (Stack)")),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const InfoCard(
            title: 'Segunda pantalla',
            description:
                'Has navegado aquí usando Navigator.push() con una PageRouteBuilder para añadir una animación de deslizamiento.',
            child: Text(
              'Cuando pulses el botón de atrás del AppBar o el botón físico '
              'del dispositivo, Flutter llamará a Navigator.pop() y esta '
              'pantalla se eliminará de la pila.',
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Volver (pop)"),
            ),
          ),
        ],
      ),
    );
  }
}
