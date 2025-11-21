import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Sobre esta app')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          InfoCard(
            title: 'Flutter Navigation Playground',
            description:
                'Proyecto educativo creado para practicar y enseñar '
                'navegación en Flutter (Stack, Tabs y Drawer), junto con '
                'temas, animaciones y tests básicos.',
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Puedes usar este proyecto como referencia rápida cuando '
              'necesites recordar cómo funciona la navegación en Flutter, '
              'o compartirlo con otros desarrolladores que estén aprendiendo.',
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
