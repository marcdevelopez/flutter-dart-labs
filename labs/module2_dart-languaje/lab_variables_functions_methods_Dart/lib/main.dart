// -------------------------------------------------
// Utilize variables, functions, and methods in Dart
// -------------------------------------------------

void main() {
  // -------------------------------------------------
  // Step 2: Declare and initialize variables
  // -------------------------------------------------
  // Declares an integer variable 'age' and initializes it with 25.
  int age = 25;

  // Declares a double variable 'height' for decimal numbers.
  double height = 5.9;

  // Declares a string variable 'name' and initializes it with "John Doe".
  String name = "John Doe";

  // Declares a boolean variable 'isStudent' and initializes it with true.
  bool isStudent = true;

  // Prints all variable values to the console.
  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('Is a Student: $isStudent');

  // -------------------------------------------------
  // Step 3: Explore different data types
  // -------------------------------------------------
  // Declares a list of strings named 'fruits' that stores multiple string values.
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  // Declares a map named 'scores' that associates String keys with int values.
  Map<String, int> scores = {'Alice': 90, 'Bob': 85, 'Charlie': 95};

  // Declares a nullable string (String?) that can hold a value or null.
  String? nullableString = null;

  // Prints the content of the list, map, and nullable string.
  print('Fruits: $fruits');
  print('Score of Alice: ${scores['Alice']}');
  print('Nullable String: $nullableString');

  // -------------------------------------------------
  // Step 4: Understand type inference and annotations
  // -------------------------------------------------
  // Declares a variable 'city' whose type is inferred automatically as String.
  var city = 'New York'; // Type inferred as String

  // Declares a variable 'country' explicitly annotated as String.
  String country = 'USA'; // Type annotation

  // Prints both inferred and explicitly typed variables.
  print('City: $city');
  print('Country: $country');

  // -------------------------------------------------
  // Step 5: Use constants and final variables
  // -------------------------------------------------
  // Declares a constant 'pi' with value 3.14.
  // 'const' means its value is determined and fixed at compile-time.
  const double pi = 3.14;

  // Declares a final variable 'currentTime' that is assigned at runtime.
  // 'final' means the value can only be set once, but it’s determined when the program runs.
  final DateTime currentTime = DateTime.now();

  // Prints both constant and final values.
  print('Pi: $pi');
  print('Current Time: $currentTime');

  // -------------------------------------------------
  // Step 6: Define and call functions
  // -------------------------------------------------
  // Calls the function 'greet' with the argument 'Alice'.
  // This function prints a personalized greeting message.
  greet('Alice');

  // -------------------------------------------------
  // Step 7: Work with methods in classes
  // -------------------------------------------------
  // Creates a new 'Person' object using the constructor with name and age.
  Person person = Person('Bob', 30);

  // Calls the 'displayInfo' method to print the person's data.
  person.displayInfo();
}

// ------------------------------
// Function definition
// ------------------------------
// Defines a function named 'greet' that takes one parameter of type String (name)
// and prints a personalized greeting to the console.
// The function has a void return type, meaning it does not return any value.
void greet(String name) {
  print('Hello, $name!');
}

// -------------------------------------------------
// Class definition
// -------------------------------------------------
// Defines a class named 'Person' that models a person with attributes 'name' and 'age'.
// Classes in Dart are blueprints for creating objects.
class Person {
  // Instance variables: each object will have its own name and age.
  String name;
  int age;

  // Constructor that initializes the 'name' and 'age' attributes using positional parameters.
  Person(this.name, this.age);

  // Defines a method 'displayInfo' that prints the person's name and age.
  // Methods are functions defined inside a class and can access its attributes.
  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}
