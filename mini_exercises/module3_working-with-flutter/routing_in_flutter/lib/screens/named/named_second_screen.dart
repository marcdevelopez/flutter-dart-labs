import 'package:flutter/material.dart';

/// Second screen in the Named Routes demo.
/// Shows a simple button that navigates back using `Navigator.pop`,
/// illustrating basic backward navigation in a named-route flow.
class NamedSecondScreen extends StatelessWidget {
  const NamedSecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
