import 'package:flutter/material.dart';

/// First screen in the Named Routes demo.
/// Displays a simple button that navigates back using `Navigator.pop`,
/// demonstrating basic backward navigation in a named-route flow.
class NamedFirstScreen extends StatelessWidget {
  // Being const allows optimizations.
  const NamedFirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
