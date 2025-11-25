// IMPORTANT NOTE:
// In a real Dart or Flutter project, the correct approach would be to separate each class
// into its own file inside an organized folder structure (e.g., models/, utils/, etc.).
// However, since this is an educational mini-project and we're still early in the course,
// everything is placed in a single file to make it easier to understand and practice
// the fundamental concepts of classes, objects, methods, encapsulation, inheritance, etc.

void main() {
    // Create animal instances
    Dog dog1 = Dog('Bobby', 3);
    Cat cat1 = Cat('Negrita', 7);
    Cat cat2 = Cat('Zape', 2);

    // List of all animals in the zoo
    List<Animal> zoo = [dog1, cat1, cat2];

    // The zookeeper feeds all animals
    print('\nFeeding time at the zoo:');
    ZooKeeper.feedAnimals(zoo);
    print('Feeding time is over.\n');

    // The zookeeper checks the sound of each animal
    print('Sound check:');
    ZooKeeper.soundCheck(zoo);

    // Specific interaction with subclass methods
    print('\nDog fetch demo:');
    dog1.fetch();

    print('\nCat mood before playing:');
    print('${cat1.name} mood: ${cat1.mood}');

    // Play with the cat to improve its mood
    cat1.play();

    print('${cat1.name} mood after playing: ${cat1.mood}');

    // Show years until the dog is considered old
    print('\nYears until ${dog1.name} is old: ${dog1.yearsUntilOld} years.');
    print('Now ${dog1.name} is ${dog1.age} years old.');

    // Show zoo statistics
    print('\nZoo Statistics:');
    print('Total animals: ${ZooStats.totalAnimals(zoo)}');
    print('Ages of animals: ${zoo.map((animal) => '${animal.name} (${animal.age} years)').join(', ')}');
    print('Average age: ${ZooStats.averageAge(zoo).toStringAsFixed(1)} years.\n');
}

// ------------------------- CLASSES ---------------------------

// Class for representing an animal
class Animal {
    // Common properties for all animals
    String name;
    int age;

    // Private property (only accessible inside this class)
    final String _species;

    // Constructor to initialize the properties
    Animal(this.name, this.age, this._species);

    // Method that represents a behavior common to this Animal class
    // This method can be overridden by child classes
    void makeSound() {
        print('$name makes a generic animal sound.');
    }

    // Getter to access the species (without allowing external modification)
    String get species => _species;

    // Getter that calculates years until the animal is considered old (arbitrary value of 15)
    int get yearsUntilOld => 15 - age;
}

// Class for representing a dog, inheriting from Animal
class Dog extends Animal {
    // Constructor: passes values to the parent Animal class
    Dog(String name, int age) : super(name, age, 'Dog');

    // Overridden method (requires @override annotation): makes a specific sound for dogs
    @override
    void makeSound() {
        print('$name barks: Woof! Woof!');
    }

    // Additional method unique to dogs, not found in the Animal base class
    void fetch() {
        print('$name is fetching the ball!');
    }
}

// Class for representing a cat, inheriting from Animal
class Cat extends Animal {
    // Internal private state representing the cat's mood
    double _mood = 5.0; // Value between 0 and 10

    // Constructor that initializes with 'Cat' as species
    Cat(String name, int age) : super(name, age, 'Cat');

    // Overridden method: specific sound for cats
    @override
    void makeSound() {
        print('$name meows: Miau! Miau!');
    }

    // Custom method to increase mood state
    void play() {
        _mood += 1.0;
    }

    // Getter to read the mood value
    double get mood => _mood;

    // Setter to modify mood with validation
    set mood(double value) {
        if (value >= 0 && value <= 10) {
            _mood = value;
        }
        
    }
}

// Class for representing a zookeeper
// This class doesn't need to be instantiated because it only contains utility methods (static methods)
// that operate on lists of animals - for this we will use two static methods.
class ZooKeeper {
    // Static method that simulates feeding each animal in a list
    static void feedAnimals(List<Animal> animals) {
        // forEach iterates over each element in the "animals" list
        // The anonymous function receives each animal and executes the body with it
        animals.forEach((animal) {
        // Access the public properties of each animal
        print('Feeding ${animal.name} the ${animal.species}.');
        });
     }

     // Static method that asks each animal to make its sound
     static void soundCheck(List<Animal> animals) {
        // We also use forEach with an anonymous function in a single line
        animals.forEach((animal) => animal.makeSound());
     }

}

// Class for representing zoo statistics
// Uses static methods because it doesn't need to be instantiated
class ZooStats {
  // Static method to count how many animals are in total
  static int totalAnimals(List<Animal> animals) {
    return animals.length;
  }

  // Static method to calculate the average age of the animals
  static double averageAge(List<Animal> animals) {
    // If the list is empty, we avoid division by zero
    if (animals.isEmpty) return 0.0;

    // We sum all ages using fold, with an anonymous function
    int totalAge = animals.fold(0, (sum, animal) => sum + animal.age);

    // We calculate the average by dividing by the number of animals
    return totalAge / animals.length;
  }
}
