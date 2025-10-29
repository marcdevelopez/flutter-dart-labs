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
  print('Random Number: $randomNumber');
}
