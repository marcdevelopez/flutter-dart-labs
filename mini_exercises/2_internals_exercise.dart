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
  await demoStream();
  demoJsonConvert();
  await demoIsolate();

  print('\n === End of Demos ===');
}

/// ---------------------------------------------------------------------------
/// 1) async/await (Futures)
/// ---------------------------------------------------------------------------
Future<void> demoAsyncAwait() async {
  print("1) async/await");
  print("   Program start (before await)");

  try {
    // Simulates an asynchronous operation (I/O) that takes 800 ms.
    await Future.delayed(const Duration(milliseconds: 800), () {
      print("   Asynchronous task completed (Future.delayed)");
    });

    // Another demo: a function that returns a Future with a calculated value.
    final int result = await asyncTaskWithResult(21);
    print("   Result of asyncTaskWithResult(21) = $result");
  } catch (e) {
    print("   Error in Async/await: $e");
  }

  print("   Program end (after await)\n");
}

Future<int> asyncTaskWithResult(int base) async {
  await Future.delayed(const Duration(milliseconds: 2000));
  return base * 2;
}

/// ---------------------------------------------------------------------------
/// 2) Streams
/// ---------------------------------------------------------------------------
Future<void> demoStream() async {
  print("2) Streams");
  print("   Emitting a sequence 1..5 with delay...");

  try {
    await for (final int n in countStream(5, delayMs: 150)) {
      print("   Emitted number: $n");
    }

    // Here we create a new Stream from countStream(8, delayMs: 60)
    // - .map((int n) => n * n): transforms each emitted number into its square.
    //   For example, if the original stream emits 1, 2, 3..., this method converts
    //   them to 1, 4, 9...
    //   The .map method receives a function that is applied to each element of the stream
    //   and returns a new stream with the transformed values.
    //   In other words, for each value emitted by the original stream, .map executes
    //   the function and emits the result.
    // - .where((int n) => n.isEven): filters the stream to keep only even values.
    //   The isEven property is a Dart int property that returns true if the number is even.
    // In summary: this stream emits the squares of numbers from 1 to 8, but
    // only prints those that are even.
    final Stream<int> transformedStream = countStream(8, delayMs: 60)
        .map((int n) => n * n) // transforms each element into its square
        .where((int n) => n.isEven); // filters only even numbers using isEven

    print("   Transformed stream (even squares up to 8):");
    await for (final int n in transformedStream) {
      print("   Value: $n");
    }
  } catch (e) {
    print("   Error in Streams: $e");
  }
  print("");
}

// This function generates a Stream of integers from 1 to [max], emitting each value
// after a delay.
// The use of 'async*' indicates that it is an asynchronous generator, which allows
// emitting multiple values asynchronously using 'yield'.
// Each time 'yield' is called, the current value is emitted to the stream and the function
// pauses until the consumer requests the next value.
// Without 'async*' and 'yield', you could only return a single value (with 'async' and
// 'return'), not a sequence.
// In summary: use 'async*' and 'yield' to build streams that emit multiple
// values over time.
Stream<int> countStream(int max, {int delayMs = 100}) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(milliseconds: delayMs));
    yield i; // Emits the current value and pauses the function until the next cycle
  }
}

/// ---------------------------------------------------------------------------
/// 3) dart:convert (Dart ↔ JSON)
/// ---------------------------------------------------------------------------

void demoJsonConvert() {
  print("3).  dart:convert (Dart ↔ JSON)");

  // We create a Dart map (could be a data model in a real app)
  // With dynamic we can assign different types, very useful for working with JSON
  final Map<String, dynamic> person = {
    'name': 'Raquel',
    'age': 29,
    'skills': ['Cooking', 'Making people laugh', 'Teaching Spanish'],
    'active': true,
  };

  // Convert Dart -> JSON (serialization)
  // jsonEncode from the dart:convert library (imported above) converts a
  // Dart object (Map, List, etc.) to a JSON string.
  final String jsonString = jsonEncode(person);
  print(".  Dart -> JSON: $jsonString \n");

  // Convert JSON -> Dart (deserialization)
  // jsonDecode converts a JSON string to a Dart object (Map, List, etc.)
  final String inputJson = '{"name": "Ezequiel", "age": 38, "active": true}';
  // Now we create the Dart Map to collect the data from JSON, which could
  // also be obtained from a Dart class model created in this project.
  final Map<String, dynamic> personFromJson = jsonDecode(inputJson);
  print(".  JSON -> Dart: $personFromJson \n");

  print("");
}

/// ---------------------------------------------------------------------------
/// 4) Isolates (parallel computation)
/// ---------------------------------------------------------------------------

// An isolate is a separate thread that runs in parallel to the main one, with its own heap memory.
// Isolates cannot directly access each other's variables, so communication is done via messages using SendPort and ReceivePort.
// Typical flow:
//   1. The parent (main code) creates a ReceivePort (mailbox to receive messages).
//   2. The parent launches a child isolate with Isolate.spawn, passing the SendPort of the ReceivePort.
//   3. The child runs its function (isolateEntry), does the heavy work, and uses the SendPort to send the result back to the parent.
//   4. The parent receives the result through the ReceivePort.
// Note: SendPort is only for sending messages in one direction. If you want two-way communication, you need two pairs of ReceivePort/SendPort.

Future<void> demoIsolate() async {
  print("4) Isolates (parallel computation)");

  // 1. The parent creates a ReceivePort to receive messages from the child isolate.
  final ReceivePort receivePort = ReceivePort();

  // 2. The parent launches the child (new isolate) and passes the SendPort so the
  //    child can send messages back. Isolate.spawn runs the isolateEntry function
  //    in the child and passes the argument (the SendPort).
  await Isolate.spawn(isolateEntry, receivePort.sendPort);

  // 3. The parent waits for the first message from the child (the result of the calculation).
  //    While waiting, the parent can continue doing other things (it is not blocked).
  //    We use the 'first' method to get only the first message.
  print("   Waiting for result from child isolate...");
  final result = await receivePort.first;

  print(".  Result received from child isolate: $result\n");

  // 4. Close the ReceivePort as it is no longer needed.
  receivePort.close();
}

// This function runs in the child isolate.
// It receives as an argument the parent's SendPort, which is only used to send messages
// from child to parent.
// Here you can perform any heavy computation without blocking the main thread.
// In this example, the child calculates the sum of the first 10,000,000,000 natural numbers,
// which may take a long time depending on your computer's performance.
void isolateEntry(SendPort sendPort) {
  int sum = 0;
  for (int i = 1; i <= 10000000000; i++) {
    sum += i;
  }
  // The child sends the result to the parent using the SendPort.
  sendPort.send(sum);
}
