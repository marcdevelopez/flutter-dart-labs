import 'package:flutter/material.dart';

/// Demonstrates centralized navigation using the named routes registered in MaterialApp.
class NamedRoutesDemo extends StatelessWidget {
  const NamedRoutesDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Named Routes Demo')),
      body: Center(
        child: Column(
          // Controls the column's size along the main axis (vertical).
          // MainAxisSize.min makes the column take only the minimum
          // vertical space needed instead of expanding to the full height.
          // This keeps the buttons centered without stretching.
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/named/first'),
              // child is the button's displayed content.
              child: const Text('Go to First'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/named/second'),
              child: const Text('Go to Second'),
            ),
          ],
        ),
      ),
    );
  }
}
