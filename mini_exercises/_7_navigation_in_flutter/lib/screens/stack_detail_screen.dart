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
                'Llegaste aquí con Navigator.push(). Usando Navigator.pop() volverás atrás.',
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Volver"),
            ),
          )
        ],
      ),
    );
  }
}
