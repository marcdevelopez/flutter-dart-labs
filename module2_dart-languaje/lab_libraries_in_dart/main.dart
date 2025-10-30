// ---------------------------------------------
// Main file that imports and uses custom library
// ---------------------------------------------

// In this main.dart file, import the library and use it
import 'custom.dart';

void main() {
  // those functions are defined in the custom library
  int sum = add(10, 5);
  int difference = subtract(10, 5);

  // the output should be:
  // Sum: 15
  // Difference: 5
  print('Sum: $sum');
  print('Difference: $difference');
}
