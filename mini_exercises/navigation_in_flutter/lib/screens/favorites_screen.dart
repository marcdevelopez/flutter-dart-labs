import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favoritos')),
      body: const InfoCard(
        title: 'Pantalla de Favoritos',
        description:
            'En una app real aquí verías elementos marcados como favoritos. '
            'En este playground, la pantalla sirve para demostrar cómo '
            'navegar desde un Drawer con Navigator.push().',
      ),
    );
  }
}
