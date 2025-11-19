import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget? child;

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(description),
            if (child != null) ...[const SizedBox(height: 12), child!],
          ],
        ),
      ),
    );
  }
}
