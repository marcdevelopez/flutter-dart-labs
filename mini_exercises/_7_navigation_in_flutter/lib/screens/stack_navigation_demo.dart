import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import 'stack_detail_screen.dart';

class StackNavigationDemo extends StatelessWidget {
  const StackNavigationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // este es el unico Scaffold permitido
      appBar: AppBar(title: const Text("Stack Navigation")),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const InfoCard(
            title: 'Stack Navigation',
            description:
                'Cada vez que navegas con Navigator.push(), una nueva pantalla se apila. '
                'Navigator.pop() quita la pantalla superior.',
          ),
          InfoCard(
            title: 'Demostración',
            description:
                'Pulsa para ver la segunda pantalla. Luego vuelve con pop().',
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const StackDetailScreen()),
                );
              },
              child: const Text('Abrir detalle'),
            ),
          ),
        ],
      ),
    );
  }
}
