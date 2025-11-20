import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre esta app')),
      body: const Center(
        child: Text('Esto es una app demostrativa de navegación'),
      ),
    );
  }
}
