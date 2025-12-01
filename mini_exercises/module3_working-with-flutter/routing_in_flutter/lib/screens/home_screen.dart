import 'package:flutter/material.dart';

/// Home hub that lists every routing demo and navigates via named routes.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override // build is called when Flutter needs to draw this screen
  Widget build(BuildContext context) {
    // Defines an immutable list (the reference does not change) called items.
    // Each element of the list is a Dart record (new tuple-like syntax).
    final items = [
      // Each one is a 3-position record:
      // 1. The title displayed in the list
      // 2. The named route to navigate to
      // 3. The icon displayed next to the title
      // This creates a mini “menu table” of options.
      ('Named Routes', '/named-demo', Icons.label),
      ('Direct Routes', '/direct-demo', Icons.route),
      ('Data Passing', '/data-demo', Icons.swap_horiz),
      ('Advanced', '/advanced', Icons.upgrade),
    ];
    // Scaffold is the basic structure of a Material Design screen.
    return Scaffold(
      appBar: AppBar(title: const Text('Routing in Flutter')),
      // ListView.separated creates a scrollable list where you can define
      // a separator between items (instead of ListView.builder).
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        // Indicates how many items the list will have.
        // Uses items.length — the number of records defined above
        // (in this case, 4).
        itemCount: items.length,
        // (_, __) are parameters you don’t care about (BuildContext and index),
        // so they are named with underscores.
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        // itemBuilder constructs each list item according to its index.
        itemBuilder: (context, index) {
          // Extracts each position of the record into variables.
          final (title, route, icon) = items[index];
          // Each list item will be a Card.
          return Card(
            // ListTile is a standard widget for list rows:
            child: ListTile(
              // Widget that appears at the start of the row (on the left)
              leading: Icon(icon),
              title: Text(title),
              // Widget that appears at the end of the row (on the right)
              trailing: const Icon(Icons.chevron_right),
              // Uses Flutter’s Navigator to navigate to a named route
              onTap: () => Navigator.pushNamed(context, route),
            ),
          );
        },
      ),
    );
  }
}
