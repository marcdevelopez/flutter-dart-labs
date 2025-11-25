// ---------------------------------------------
// Async Library Example (dart:async)
// ---------------------------------------------

import 'dart:async';
// to work with this library before we need to import it

// The code demonstrates asynchronous programming using dart:async.
void main() async {
  // Defines an async function that simulates fetching data with a delay.
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Data fetched!';
  }

  // Waits for the result before printing it.
  String data = await fetchData();
  print(data);
}
