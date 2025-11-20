import 'package:flutter/material.dart';
import 'stack_navigation_demo.dart';

// Importamos las pantallas que usamos en el Drawer
import 'favorites_screen.dart';
import 'settings_screen.dart';
import 'about_screen.dart';

class NavigationHomeScreen extends StatelessWidget {
  const NavigationHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Playground'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Stack'),
              Tab(text: 'Tabs'),
              Tab(text: 'Drawer'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(child: Center(child: Text('Navigation Menu'))),

              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favoritos'),
                onTap: () {
                  Navigator.pop(context); // cierra el drawer primero
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const FavoritesScreen()),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Ajustes'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SettingsScreen()),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('Sobre la app'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AboutScreen()),
                  );
                },
              ),
            ],
          ),
        ),

        body: const TabBarView(
          children: [StackNavigationDemo(), Placeholder(), Placeholder()],
        ),
      ),
    );
  }
}
