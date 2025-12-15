import 'package:flutter/material.dart';

// contains the SecondScreen widget, which displays the user data passed from the HomeScreen
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  // Helper method to format the date for display
  String _formatDate(dynamic date) {
    if (date is DateTime) {
      final year = date.year.toString().padLeft(4, '0');
      final month = date.month.toString().padLeft(2, '0');
      final day = date.day.toString().padLeft(2, '0');
      return '$year-$month-$day';
    }
    return '$date';
  }

  @override
  Widget build(BuildContext context) {
    // The data is retrieved using ModalRoute.of(context)?.settings.arguments
    final Map<String, dynamic> userData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(title: const Text('User Information')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${userData['name']}'),
            Text('Age: ${userData['age']}'),
            // without this method, the date would be displayed in its default format
            // including time and miliseconds
            Text('Date of Birth: ${_formatDate(userData['dateOfBirth'])}'),
            Text('Gender: ${userData['gender']}'),
          ],
        ),
      ),
    );
  }
}
