// ---------------------------------------------
// Math Library Example (dart:math)
// ---------------------------------------------
import 'dart:math';
// this library provides mathematical constants and functions,
// as well as random number generation.

void main() {
  // functions and constants from dart:math
  double angle = pi / 4;
  double sine = sin(angle);
  double cosine = cos(angle);
  Random random = Random();
  int randomNumber = random.nextInt(100);

  print('Sine: $sine');
  print('Cosine: $cosine');
  // print a random number between 0 and 99
  // because nextInt(100) from library dart:math
  // generates numbers from 0 to 99
  print('Random Number: $randomNumber');
}
