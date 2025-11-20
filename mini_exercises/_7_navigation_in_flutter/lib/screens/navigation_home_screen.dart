import 'package:flutter/material.dart';
import 'stack_navigation_demo.dart';

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
        body: const TabBarView(
          children: [StackNavigationDemo(), Placeholder(), Placeholder()],
        ),
      ),
    );
  }
}
