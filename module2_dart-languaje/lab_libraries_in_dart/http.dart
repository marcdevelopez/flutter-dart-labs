// ---------------------------------------------
// HTTP Package Example (package:http/http.dart)
// ---------------------------------------------

import 'package:http/http.dart' as http;

void main() async {
  // The code performs a GET request to a placeholder API using the http package.
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    print('Response data: ${response.body}');
  } else {
    print('Request failed with status: ${response.statusCode}');
  }
}
