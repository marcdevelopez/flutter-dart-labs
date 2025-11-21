import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import 'stack_detail_screen.dart';

class StackNavigationDemo extends StatelessWidget {
  const StackNavigationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // este es el unico Scaffold permitido
      appBar: AppBar(title: const Text("Stack Navigation")),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          InfoCard(
            title: 'Stack Navigation',
            description:
                'Cada vez que navegas con Navigator.push(), una nueva pantalla se apila. '
                'Navigator.pop() quita la pantalla superior.',
          ),
          InfoCard(
            title: 'Demostración',
            description:
                'Pulsa para ver la segunda pantalla. Luego vuelve con pop().',
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(_buildAnimatedRoute());
              },
              child: const Text('Abrir detalle (push)'),
            ),
          ),
        ],
      ),
    );
  }

  Route _buildAnimatedRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const StackDetailScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // 1. Definir el Tween del desplazamiento
        final offsetTween = Tween<Offset>(
          begin: const Offset(1.0, 0.0), // desde la derecha
          end: Offset.zero,
        );

        // 2. Aplicar una curva
        final curvedAnimation = animation.drive(
          CurveTween(curve: Curves.easeInOut),
        );

        // 3. Combinar el Tween + la curva
        final offsetAnimation = curvedAnimation.drive(offsetTween);

        // 4. Devolver la transición final
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}
