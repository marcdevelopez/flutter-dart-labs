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

/// ---------------------------------------------------------------------------
/// 2) Streams
/// ---------------------------------------------------------------------------
///
Future<void> demoStream() async {
  print("2) Streams");
  print("   Emitiendo una secuencia 1..5 con retraso...");

  try {
    await for (final int n in countStream(5, delayMs: 150)) {
      print(".  Numero emitido: $n");
    }

    // Aquí creamos un nuevo Stream a partir de countStream(8, delayMs: 60)
    // - .map((int n) => n * n): transforma cada número emitido por el stream en
    // su cuadrado.
    //   Es decir, si el stream original emite 1, 2, 3..., este método los convierte
    // en 1, 4, 9...
    //   El método .map recibe una función que se aplica a cada elemento del stream
    // y devuelve un nuevo stream con los valores transformados.
    //   En otras palabras, por cada valor que emite el stream original, .map ejecuta
    // la función y emite el resultado.
    // - .where((int n) => n.isEven): filtra el stream para dejar solo los valores
    // pares.
    //   El método isEven es una propiedad de int en Dart que devuelve true si el
    // número es par.
    // En resumen: este stream emite los cuadrados de los números del 1 al 8, pero
    // solo imprime los que son pares.
    final Stream<int> streamTransformado = countStream(8, delayMs: 60)
        .map((int n) => n * n) // transforma cada elemento en su cuadrado
        .where((int n) => n.isEven); // filtra solo los pares usando isEven

    print(".  Stream transformado (cuadrados pares hasta 8):");
    await for (final int n in streamTransformado) {
      print(".  Valor: $v");
    }
  } catch (e) {
    print(".  Error en Streams: $e");
  }
  print("");
}

// Esta función genera un Stream de enteros del 1 al [max], emitiendo cada valor
// tras un retardo.
// El uso de 'async*' indica que es un generador asíncrono, lo que permite emitir
// múltiples valores de forma asíncrona usando 'yield'.
// Cada vez que se llama a 'yield', se emite un valor al stream y la función se
// pausa hasta que el consumidor pide el siguiente valor.
// Sin 'async*' y 'yield', solo podrías devolver un único valor (con 'async' y
// 'return'), no una secuencia.
// En resumen: usa 'async*' y 'yield' para construir streams que emiten varios
// valores a lo largo del tiempo.
Stream<int> countStream(int max, {int delayMs = 100}) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(milliseconds: delayMs));
    yield i; // Emite el valor actual y pausa la función hasta el siguiente ciclo
  }
}
