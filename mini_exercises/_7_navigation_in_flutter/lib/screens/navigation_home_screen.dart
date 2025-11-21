import 'package:flutter/material.dart';
import '../widgets/info_card.dart';
import 'stack_navigation_demo.dart';
import 'tab_navigation_demo.dart';
import 'drawer_navigation_demo.dart';
// Screens used inside the Drawer menu
import 'favorites_screen.dart';
import 'settings_screen.dart';
import 'about_screen.dart';

class NavigationHomeScreen extends StatelessWidget {
  final ThemeMode themeMode;
  final VoidCallback onToggleTheme;

  const NavigationHomeScreen({
    super.key,
    required this.themeMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation Playground'),
          actions: [
            IconButton(
              icon: Icon(
                themeMode == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
              onPressed: onToggleTheme,
            ),
          ],
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
                  Navigator.pop(context); // close drawer first
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
          children: [StackNavigationDemo(), TabNavigationDemo(), DrawerNavigationDemo()],
        ),
      ),
    );
  }
}
