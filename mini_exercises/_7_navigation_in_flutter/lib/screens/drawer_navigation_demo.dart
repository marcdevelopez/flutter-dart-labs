import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import 'favorites_screen.dart';
import 'settings_screen.dart';
import 'about_screen.dart';

/// Demo que explica Drawer Navigation. El Drawer real está
/// en NavigationHomeScreen, pero aquí damos más contexto.
class DrawerNavigationDemo extends StatelessWidget {
  const DrawerNavigationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        const InfoCard(
          title: 'Drawer Navigation',
          description:
              'El Drawer es un panel lateral que se desliza desde el borde '
              'de la pantalla. Es útil cuando tienes muchas secciones o '
              'ajustes que no caben en una barra de pestañas.',
        ),
        InfoCard(
          title: 'Atajo rápido',
          description:
              'Puedes abrir pantallas del Drawer también desde aquí para '
              'probar la navegación sin usar el gesto lateral.',
          child: SizedBox(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 12,
              runSpacing: 8,
              children: [
                OutlinedButton.icon(
                  icon: const Icon(Icons.favorite),
                  label: const Text('Favoritos'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const FavoritesScreen(),
                      ),
                    );
                  },
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.settings),
                  label: const Text('Ajustes'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SettingsScreen(),
                      ),
                    );
                  },
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.info_outline),
                  label: const Text('Sobre la app'),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const AboutScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
