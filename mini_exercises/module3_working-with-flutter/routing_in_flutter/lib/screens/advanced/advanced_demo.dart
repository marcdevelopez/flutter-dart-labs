import 'package:flutter/material.dart';

// ------------------------------------------------------------
// AdvancedDemo – Ejemplos avanzados de navegación en Flutter
// ------------------------------------------------------------
// Este módulo demuestra tres patrones importantes de navegación:
//
// 1️pushReplacement
//     - Sustituye la ruta actual por una nueva.
//     - Caso típico: Login → Home (no se debe volver atrás al login).
//
// 2️Navegación directa con MaterialPageRoute
//     - Se construyen pantallas en tiempo real sin usar rutas nombradas.
//
// 3️Navegación condicional + pantallas protegidas
//     - _ConditionalScreen usa un switch para habilitar o deshabilitar
//       la navegación.
//     - _ProtectedScreen solo es accesible si se cumplen las condiciones.
//
// Además, incluye clases privadas (_HomeAfterLogin, _ConditionalScreen,
// _ProtectedScreen) para demostrar encapsulación dentro de un módulo.
// ------------------------------------------------------------

class AdvancedDemo extends StatelessWidget {
  const AdvancedDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Advanced Routing Demo')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ElevatedButton con una acción “especial”:
            ElevatedButton(
              // Empuja una nueva ruta y reemplaza la actual.
              // Es decir, no puedes volver atrás a la pantalla anterior con “Back”.
              onPressed: () => Navigator.pushReplacement(
                context,
                // Crea una ruta directa a la pantalla de inicio tras login
                // _ es el contexto que no usas.
                MaterialPageRoute(builder: (_) => const _HomeAfterLogin()),
              ),
              child: const Text('Simulate Login → Home (pushReplacement)'),
            ),
            ElevatedButton(
              // Usa Navigator.push normal (no reemplaza la ruta anterior).
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const _ConditionalScreen()),
              ),
              child: const Text('Conditional Navigation'),
            ),
            // Simulación de deep link: un botón que “abre” directamente una 
            // pantalla anidada (por ejemplo, “Settings → Details”) sin pasar 
            // por el flujo normal
            ElevatedButton(
              // simula abrir una pantalla interna directamente
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
    );
  }
}

// Representa una pantalla de “Home” que simula estar después de un login.
class _HomeAfterLogin extends StatelessWidget {
  const _HomeAfterLogin();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home (post-login)')),
      body: Center(
        child: ElevatedButton(
          // Cierra esta pantalla y vuelve a la anterior si existe en el stack.
          // como llegaste aquí con pushReplacement, no volverías a la pantalla
          // de login, pero en un caso real podrías venir de otra pantalla.
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
  // createState devuelve la instancia de _ConditionalScreenState, donde vive
  // el estado (bool _allowed).
  State<_ConditionalScreen> createState() => _ConditionalScreenState();
}

class _ConditionalScreenState extends State<_ConditionalScreen> {
  // Esta variable controlará si se permite navegar o no a la pantalla protegida
  bool _allowed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Conditional Navigation')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // combina un Switch + un título en una sola fila
            SwitchListTile(
              title: const Text('Allow navigation'),
              // El valor actual del switch depende de la variable _allowed.
              value: _allowed,
              // v es el nuevo valor (true o false) cuando tocas el switch.
              // Actualiza _allowed con el nuevo valor.
              // Llama a setState para reconstruir la UI y reflejar el cambio
              // (por ejemplo, habilitar o deshabilitar el botón de abajo).
              onChanged: (v) => setState(() => _allowed = v),
            ),
            // ElevatedButton que navega a una pantalla protegida
            ElevatedButton(
              onPressed: _allowed
                  // Si _allowed es true:
                  // onPressed recibe una función → el botón está habilitado.
                  ? () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const _ProtectedScreen(),
                      ),
                    )
                  // Si _allowed es false:
                  // onPressed es null → botón deshabilitado (estilo gris y no clicable).
                  : null,
              child: const Text('Go to protected screen'),
            ),
          ],
        ),
      ),
    );
  }
}

// Representa una pantalla “protegida”, accesible solo si se activa el switch.
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
            const Text(
              'Simulated deep link',
              // se crea un TextStyle directo, no usando el tema
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
