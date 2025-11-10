// ---------------------------------------------
// Convert Library Example (dart:convert)
// ---------------------------------------------

import 'dart:convert';
// to work with this library before we need to import it, always

// The code demonstrates JSON encoding and decoding using dart:convert.

void main() {
  // We can decode a JSON string into a Dart object
  String jsonString = '{"name": "Alice", "age": 30}';
  Map<String, dynamic> user = jsonDecode(jsonString);

  print('Name: ${user['name']}');
  print('Age: ${user['age']}');

  // here we encode a Dart object into a JSON string
  Map<String, dynamic> newUser = {'name': 'Bob', 'age': 25};
  String newJsonString = jsonEncode(newUser);
  print(newJsonString);
}
