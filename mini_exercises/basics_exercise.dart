// ignore_for_file: unused_local_variable

import 'dart:math' as math;

/// Every Dart app starts with the main function.
void main() {
  // If I assign a value to a variable without specifying the type,
  var anyVar = 'any thing';
  // I can check its type like this:
  print(anyVar.runtimeType); // Will print "String"
  // anyVar = 1; // If we uncomment this line it will give an error since once
  // a variable's type is assigned, it cannot be changed unless you want to
  // change to a subtype with the as operator, although in this case, since it is not,
  // it will throw an exception:
  // anyVar = 1 as String;
  // It's good practice to keep variables strongly typed for safer code.

  // Unlike other languages like Java, in Dart for all numbers
  // with decimals there is only the double type:
  double longDecNum = 1.213213416234983245623789467544434554;
  double smallDecNum = 1.2;
  int integer = 1;
  bool option = false;
  String string = "word"; // With double quotes
  String otherString = 'other word'; // Or single quotes
  // Fun fact: String is capitalized, unlike int or bool, even though all of them
  // are classes in Dart. This is just a convention.
  List myListOfThings = ["mesa", "silla", 1];
  // If we don't specify the type, a List can accept multiple types.
  print('$myListOfThings');

  // Now let's simulate user input using a method from the math library.
  // We'll create a dynamic greeting for a group of names included in a list,
  // which is created dynamically using the var keyword.
  // The greet(String name) function uses string interpolation and returns
  // the String, which is then printed from main.
  // Enjoy, friends!

  // I use typed List to avoid errors
  List<String> simulatedUsers = ["Marcos", "Raquel", "Romi", "Antonia"];
  // Select one at random using Dart's math library:
  // Note: Random works with Lists, not Sets, since Sets are unordered and
  // you can't assign a specific position. Otherwise, the function would return
  // the entire Set.
  var userName = simulatedUsers[math.Random().nextInt(simulatedUsers.length)];
  // Use the function declared below main to display the original greeting:
  print(greet(userName));

  // Now let's use some functions that apply mathematical formulas
  // (see their declarations below main):
  print("Area de rectangulo (5x3): ${rectangleArea(5, 3)} m²");
  print("Hipotenusa de triangulo (3,4): ${triangleHypotenuse(3, 4)} m");

  // Finally, let's use Lists and iterate over them with different for loops,
  // and see which one executes faster. For me, the for-in loop is always the winner.
  // What about you?
  List<String> hobbies = [
    'programar',
    'nadar',
    'dormir',
    'ver Netflix',
    'trading',
  ];

  // * Classic for loop
  Stopwatch stopwatch = Stopwatch()..start();
  print('Hobbies (for clasico):');
  for (var i = 0; i < hobbies.length; i++) {
    print('$i + 1: ${hobbies[i]}');
  }
  stopwatch.stop();
  print('Tiempo for clasico: ${stopwatch.elapsedMicroseconds} microsegundos');

  // * For-in loop (the most efficient for this task)
  stopwatch.reset();
  stopwatch.start();
  print('Hobbies (for in):');
  int index = 1;
  for (String hobby in hobbies) {
    print('$index: $hobby');
    index++;
  }
  stopwatch.stop();
  print('Tiempo for in: ${stopwatch.elapsedMicroseconds} microsegundos');

  // * forEach (can be improved by removing the map, which uses more resources)
  stopwatch.reset();
  stopwatch.start();
  print('Hobbies (forEach):');
  hobbies.asMap().forEach((i, hobby) {
    print('${i + 1}: $hobby');
  });
  stopwatch.stop();
  print('Tiempo forEach: ${stopwatch.elapsedMicroseconds} microsegundos');

  // * Optimized forEach (using the index directly, though still the least performant)
  stopwatch.reset();
  stopwatch.start();
  print('Hobbies (forEach optimizado):');
  int idx = 1;
  hobbies.forEach((hobby) {
    print('$idx: $hobby');
    idx++;
  });
  stopwatch.stop();
  print(
    'Tiempo forEach optimizado: ${stopwatch.elapsedMicroseconds} microsegundos',
  );
}

/// Function to print a greeting:
String? greet(String name) {
  // Damos color verde a las letras con codigo ANSI
  const green = '\x1B[32m';
  const reset = '\x1B[0m';
  return "$green✨ Welcome aboard, $name! ✨$reset";
}

double rectangleArea(double width, double height) {
  return width * height;
}

// We could have used math.sqrt directly in triangleHypotenuse,
// but this way it's clearer and reusable elsewhere.
double triangleHypotenuse(double a, double b) {
  return (a * a + b * b).sqrt();
}

// This function uses an extension, which is a way to add new
// functionality to existing classes without modifying their original code.

extension NumX on num {
  double sqrt() => math.sqrt(this);
}
