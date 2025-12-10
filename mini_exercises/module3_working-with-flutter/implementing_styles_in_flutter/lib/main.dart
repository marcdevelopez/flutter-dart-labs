import 'package:flutter/material.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const StyleLabApp());
}

// Entry point app to host styling exercises.
class StyleLabApp extends StatelessWidget {
  const StyleLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Implementing Styles in Flutter',
      // Applying the custom light theme
      // We are using our theme defined in app_theme.dart
      theme: AppTheme.light(),
      // Initial screen for the app
      home: const StyleLabHome(),
    );
  }
}

// list of cards + layout base for styling experiments
class StyleLabHome extends StatelessWidget {
  const StyleLabHome({super.key});

  static const List<StyleCardInfo> styleCards = [
    StyleCardInfo(
      title: 'Typography kit',
      description:
          'Review the heading, body, and label hierarchy ready to style.',
      buttonLabel: 'Preview text',
    ),
    StyleCardInfo(
      title: 'Buttons & actions',
      description:
          'Check the default button states before applying the custom theme.',
      buttonLabel: 'Try action',
    ),
    StyleCardInfo(
      title: 'Containers & surfaces',
      description: 'See the base layout for cards before adding decoration.',
      buttonLabel: 'Inspect layout',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implementing styles in Flutter'),
      ),
      // Let scroll the content if needed
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Style playground',
            // Use the headline style from the theme
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Each card is a placeholder to experiment with colors, text, and components.',
            // Style standard body text from the theme
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          // Range through list of StyleCardInfo to create cards
          // ... spread operator to insert multiple widgets inside children
          ...styleCards.map(
            (card) => _StyleCard(card: card),
          ),
        ],
      ),
    );
  }
}

class _StyleCard extends StatelessWidget {
  const _StyleCard({required this.card});

  final StyleCardInfo card;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(card.title),
          const SizedBox(height: 8),
          Text(card.description),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: Text(card.buttonLabel),
          ),
        ],
      ),
    );
  }
}

// Simple Data Model to hold info for each style card
// Make more clean code in UI building
class StyleCardInfo {
  final String title;
  final String description;
  final String buttonLabel;

  const StyleCardInfo({
    required this.title,
    required this.description,
    required this.buttonLabel,
  });
}
