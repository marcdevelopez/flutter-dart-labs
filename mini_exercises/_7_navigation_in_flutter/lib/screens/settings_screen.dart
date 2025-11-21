import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class SettingsScreen extends StatelessWidget{
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
      ),
      body: const InfoCard(
        title: 'Pantalla de Ajustes',
        description:
            'Aquí podrías colocar interruptores, sliders y otros widgets '
            'para configurar la app. Esta pantalla demuestra la transición '
            'desde el Drawer usando Navigator.push().',
      ),
    );
  }
}