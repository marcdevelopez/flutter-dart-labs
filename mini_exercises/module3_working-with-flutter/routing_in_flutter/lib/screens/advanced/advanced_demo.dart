import 'package:flutter/material.dart';

/// Advanced patterns: pushReplacement (login→home), conditional navigation, and a simulated deep link.
class AdvancedDemo extends StatelessWidget {
  const AdvancedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Advanced Routing Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // NOTE:
              // Use pushReplacement instead of push when you want to REMOVE the previous
              // screen from the navigation stack — for example, after a successful login,
              // onboarding, splash screen, or any flow where going “back” no longer makes sense.
              // Use push when the user SHOULD be able to return to the previous screen.

              // ElevatedButton with a “special” action:
              ElevatedButton(
                // Pushes a new route and replaces the current one.
                // Meaning: you can't go back to the previous screen with “Back”.
                onPressed: () => Navigator.pushReplacement(
                  context,
                  // Creates a direct route to the home screen after login
                  // _ is the unused BuildContext.
                  MaterialPageRoute(builder: (_) => const _HomeAfterLogin()),
                ),
                child: const Text('Simulate Login → Home (pushReplacement)'),
              ),

              ElevatedButton(
                // Uses Navigator.push normally (does NOT replace the previous route).
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const _ConditionalScreen()),
                ),
                child: const Text('Conditional Navigation'),
              ),

              // Deep-link simulation: a button that “opens” a nested screen
              // directly (e.g., “Settings → Details”) without going through
              // the normal flow.
              ElevatedButton(
                // Simulates opening an internal screen directly
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const _DeepLinkSimulatedScreen(),
                  ),
                ),
                child: const Text('Simulated Deep Link'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Represents a “Home” screen that simulates being after a login flow.
class _HomeAfterLogin extends StatelessWidget {
  const _HomeAfterLogin();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home (post-login)')),
      body: Center(
        child: ElevatedButton(
          // Closes this screen and returns to the previous one if it exists.
          // Since you arrived here via pushReplacement, you would NOT return
          // to the login screen — but in a real case you might come from elsewhere.
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}

class _ConditionalScreen extends StatefulWidget {
  const _ConditionalScreen();

  @override
  // createState returns the instance of _ConditionalScreenState,
  // where the state (bool _allowed) lives.
  State<_ConditionalScreen> createState() => _ConditionalScreenState();
}

class _ConditionalScreenState extends State<_ConditionalScreen> {
  // This variable controls whether navigation to the protected screen is allowed.
  bool _allowed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conditional Navigation')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // NOTE:
            // The purpose of this toggle is to mimic “protected navigation”
            // (e.g., accessing a restricted page only if the user has permission,
            // is authenticated, or has enabled a required setting).
            // When _allowed is false, the button is disabled and navigation is blocked.

            // Combines a Switch + a title into a single row.
            SwitchListTile(
              title: const Text('Allow navigation'),
              // The switch value depends on _allowed.
              value: _allowed,
              // v is the new value (true or false) when toggling the switch.
              // Updates _allowed with the new value.
              // setState rebuilds the UI to reflect the change
              // (e.g., enabling or disabling the button below).
              onChanged: (v) => setState(() => _allowed = v),
            ),
            // ElevatedButton that navigates to the protected screen
            ElevatedButton(
              onPressed: _allowed
                  // If _allowed is true:
                  // onPressed receives a function → button is enabled.
                  ? () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const _ProtectedScreen(),
                      ),
                    )
                  // If _allowed is false:
                  // onPressed is null → button is disabled (grey/baseline style).
                  : null,
              child: const Text('Go to protected screen'),
            ),
          ],
        ),
      ),
    );
  }
}

// Represents a “protected” screen, only accessible when the switch is enabled.
class _ProtectedScreen extends StatelessWidget {
  const _ProtectedScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Protected Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}

class _DeepLinkSimulatedScreen extends StatelessWidget {
  const _DeepLinkSimulatedScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Deep Link: Settings > Details')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Simulated deep link',
              // Creates a direct TextStyle, not using the theme
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            const Text(
              'Opened directly as if from a deep link to settings/details.',
            ),
            const SizedBox(height: 16),
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
