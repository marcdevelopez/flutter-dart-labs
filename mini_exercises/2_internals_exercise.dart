/******************************************************************************
 * 
 * This file is designed to help you practice essential concepts for modern
 * Dart and Flutter development.
 *
 * Showcase of Dart Internals concepts:
 *   - async/await (Futures)
 *   - Streams
 *   - dart:convert (Dart ↔ JSON)
 *   - Isolates (parallel computation)
 *
 * How to run:
 *   dart run mini_exercises/internals_exercise.dart
 *
 * Note: This file is educational; each demo is independent and can serve
 * as a template for future practice.
 *
 * Here, you'll explore topics such as async/await, isolates, and how to use
 * Dart's 'convert' library to seamlessly transform data between popular formats
 * like JSON or XML and Dart objects, and vice versa.
 * 
 ******************************************************************************/

import 'dart:async';
import 'dart:convert';
import 'dart:isolate';

Future<void> main() async {
  print("=== Internals of Dart - Mini Exercises ===\n");

  await demoAsyncAwait();
  await demoStreams();
  demoJsonConvert();
  await demoIsolate();

  print('\n === End of Demos ===');
}

/// ---------------------------------------------------------------------------
/// 1) async/await (Futures)
/// ---------------------------------------------------------------------------

Future<void> demoAsyncAwait() async {
  print("1) async/await");
  print("   Inicio del programa (antes del await)");

  try {
    // Simmula una operacion asincrona (I/O) que tarda 800 ms.
    await Future.delayed(const Duration(milliseconds: 800), () {
      print(".  Tarea asincrona completada (Future.delayed)");
    });

    // Otra demo: una funcion que devuelve un Future con un valor calculado.
    final int respuesta = await tareaAsincronaConResultado(21);
    print(".  Resultado de tareaAsincronaConResultado(21) = $respuesta");
  } catch (e) {
    print(".  Error en Async/await: $e");
  }

  print(".  Fin del programa (despues del await)\n");
}

Future<int> tareaAsincronaConResultado(int base) async {
  await Future.delayed(const Duration(milliseconds: 250));
  return base * 2;
}


