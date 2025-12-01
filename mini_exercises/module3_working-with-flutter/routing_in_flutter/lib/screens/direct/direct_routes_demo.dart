import 'package:flutter/material.dart';

/// Shows direct navigation with MaterialPageRoute when you need inline flexibility or data passing.
class DirectRoutesDemo extends StatelessWidget {
  const DirectRoutesDemo({super.key});
  // Private method to avoid repeating navigation code on each button
  void _goTo(BuildContext context, String title) {
    // Direct route using MaterialPageRoute:
    // Useful when:
    // the screen needs complex data,
    // the route is not global,
    // you're prototyping,
    // or you want extra flexibility.
    // Super flexible, ideal for screens that need data.
    Navigator.push(
      // Navigator uses this to know from which widget “tree” it should navigate.
      context,
      // MaterialPageRoute creates a standard Material Design transition
      // between screens.
      // builder is a function that receives a BuildContext
      // (marked as _ because it's unused).
      MaterialPageRoute(builder: (_) => _DirectScreen(title: title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Direct Routes Demo')),
      body: Center(
        child: Column(
          // The column only occupies the minimum vertical space needed,
          // instead of expanding to the entire height.
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => _goTo(context, 'Profile Screen'),
              child: const Text('Go to Profile'),
            ),
            ElevatedButton(
              onPressed: () => _goTo(context, 'Settings Screen'),
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

class _DirectScreen extends StatelessWidget {
  // Uses a named parameter 'title' marked as required, meaning it's mandatory.
  const _DirectScreen({required this.title});
  final String title;
  @override
  // Defines the UI of _DirectScreen
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
