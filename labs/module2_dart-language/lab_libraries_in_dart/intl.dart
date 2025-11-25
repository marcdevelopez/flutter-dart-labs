// ---------------------------------------------
// Intl Package Example (package:intl/intl.dart)
// ---------------------------------------------

// The intl package is used for internationalization and localization.
import 'package:intl/intl.dart';

void main() {
  // The code demonstrates date formatting using the intl package
  var now = DateTime.now();
  var formatter = DateFormat('dd/MM/yyyy');
  String formattedDate = formatter.format(now);
  print('Formatted date: $formattedDate');
  // The output should look like this:
  // Formatted date: 30/10/2025
}
