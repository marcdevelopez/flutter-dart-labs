import 'package:flutter/material.dart';

/// End-to-end data roundtrip: push a form, pop with a result, show it, then open a result screen.
class DataPassingDemo extends StatelessWidget {
  const DataPassingDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Passing Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ElevatedButton(
            // Marked as async because you'll use await inside
            // (navigation that returns a result)
            onPressed: () async {
              // Push the form screen and wait for its return value.
              // Whatever _FormScreen passes to Navigator.pop(context, value)
              // becomes the 'result' here.
              final result = await Navigator.push(
                context,
                // _ is a BuildContext you don't use, so it's named that way.
                MaterialPageRoute(builder: (_) => const _FormScreen()),
              );

              // SAFETY CHECK:
              // If this widget was removed from the tree while awaiting (user navigated away),
              // using 'context' would cause an error.
              // This guard prevents executing further UI code in that case.
              if (!context.mounted) return;

              // Normalize result:
              // - If it is a non-empty String → clean it with trim()
              // - If it's null or empty → use the fallback 'none'
              final displayResult =
                  (result is String && result.trim().isNotEmpty)
                  ? result.trim()
                  : 'none';

              // After _FormScreen closes (await), this code runs.
              // ScaffoldMessenger.of(context) fetches the ScaffoldMessenger
              // associated with the current Scaffold.
              ScaffoldMessenger.of(context).showSnackBar(
                // Shows the normalized displayResult value
                SnackBar(content: Text('Result: $displayResult')),
              );

              // Only open ResultScreen if there is actual submitted text
              if (displayResult != 'none') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => _ResultScreen(message: displayResult),
                  ),
                );
              }
            },
            child: const Text('Open Form'),
          ),
        ),
      ),
    );
  }
}

class _FormScreen extends StatefulWidget {
  // const constructor with no parameters.
  const _FormScreen();
  @override
  State<_FormScreen> createState() => _FormScreenState();
}

// Defines the state class _FormScreenState
class _FormScreenState extends State<_FormScreen> {
  // _controller allows reading and modifying the text the user types
  final _controller = TextEditingController();
  @override
  // Called when this screen is removed from the widget tree.
  void dispose() {
    // Frees the resources used by the TextEditingController (good practice).
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Screen')),
      // body is a Padding widget wrapping the content
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              // The text typed is stored in _controller.text.
              controller: _controller,
              // Adds a label inside the field
              decoration: const InputDecoration(labelText: 'Enter message'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              // Returns _controller.text as the result to whoever called
              // Navigator.push(...).
              // That value will be received by result in DataPassingDemo.
              onPressed: () => Navigator.pop(context, _controller.text),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class _ResultScreen extends StatelessWidget {
  // Receives the message to display
  const _ResultScreen({required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result Screen')),
      body: Center(
        child: Column(
          // Column occupies only the necessary space
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Received message:'),
            const SizedBox(height: 8),
            // Displays the message with a title style
            Text(
              message,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            // “Back” button: performs Navigator.pop to return
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
