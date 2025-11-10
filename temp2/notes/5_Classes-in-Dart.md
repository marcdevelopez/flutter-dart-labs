# Clases en Dart 🏗️

En estas notas **vamos a aprender sobre**:

- Identificar y usar clases para crear código reutilizable y escribir aplicaciones complejas.  
- Usar setters y getters, propiedades de objetos y funciones anónimas para gestionar mejor los objetos.  
- Comprender conceptos como métodos, encapsulamiento y herencia para construir aplicaciones robustas orientadas a objetos.  

---

## Introducción

Imagina que eres el diseñador de una guitarra personalizada. Tienes un plano que define su forma, materiales y características. Ese plano es como una **clase en Dart**.  
Cualquier guitarra que construyas con base en ese plano es un **objeto**.  

Cada guitarra construida a partir del plano puede ser ligeramente diferente, pero todas comparten las características principales definidas por el plano.  
De manera similar, en Dart una **clase** define propiedades y comportamientos, mientras que los **objetos** son instancias específicas creadas a partir de esa clase, cada una con su estado único.  

La programación en Dart trabaja con entidades del mundo real, sus datos y su comportamiento. Las entidades se convierten en objetos, los atributos representan datos y los métodos implementan el comportamiento.  

---

## Definición de clases

Las **clases** son planos que definen cómo se comportará un objeto.  

Ejemplo:  
Una clase de **camioneta (pickup truck)** puede tener propiedades como capacidad de carga, tamaño de la caja, capacidad de remolque y altura del suelo.  
La clase también tendrá métodos como acelerar, arrancar y frenar. Puedes crear instancias de la clase camioneta para representar distintos vehículos y sus atributos y acciones específicas.  

---

## Propiedades públicas y privadas

Cuando creas una clase con objetos, también defines el acceso a los datos del objeto:  

- Propiedades públicas → accesibles desde fuera de la clase.  
- Propiedades privadas → accesibles solo dentro de la clase (se indican con `_`).  

Ejemplo:  

```dart
class Person {
  // Propiedades públicas
  String name;
  int age;

  // Propiedad privada
  String _ssn;

  // Constructor
  Person(this.name, this.age, this._ssn);

  // Método
  void displayInfo() {
    print('Name: $name, Age: $age, SSN: $_ssn');
  }
}
```

Aquí se define una clase `Person` con propiedades públicas (`name`, `age`) y una propiedad privada (`_ssn`).  
El constructor inicializa las propiedades y el método `displayInfo` recupera e imprime los datos de la persona.  

---

## Métodos

Los objetos creados están inertes sin métodos.  
Los métodos definen el **comportamiento y las acciones** de un objeto.  

```dart
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Método que describe a la persona
  void describe() {
    print('I am $name and I am $age years old.');
  }

  // Método que calcula años hasta la jubilación
  int yearsUntilRetirement() {
    return 65 - age;
  }
}

void main() {
  Person p = Person('Alice', 30);
  p.describe();  
  // Output: I am Alice and I am 30 years old.

  print(p.yearsUntilRetirement());  
  // Output: 35
}
```

El método `describe` imprime la descripción de la persona.  
El método `yearsUntilRetirement` calcula los años restantes hasta la jubilación.  

---

## Getters y Setters

Sirven para **controlar el acceso a las propiedades** de un objeto:  

- Los **getters** realizan cálculos o formatean datos antes de recuperarlos.  
- Los **setters** validan entradas o activan acciones al actualizar un valor.  

```dart
class Circle {
  double radius;

  Circle(this.radius);

  // Getter para calcular el área
  double get area => 3.14 * radius * radius;
}

void main() {
  Circle c = Circle(5);
  print(c.area);  // Output: 78.5
}
```

Ejemplo con `Rectangle` usando setters:  

```dart
class Rectangle {
  double _width = 0;
  double _height = 0;

  // Setter para width
  void set width(double value) {
    if (value > 0) {
      _width = value;
    }
  }

  // Setter para height
  void set height(double value) {
    if (value > 0) {
      _height = value;
    }
  }

  // Getter para calcular el área
  double get area => _width * _height;
}

void main() {
  Rectangle r = Rectangle();
  r.width = 10;
  r.height = 20;
  print(r.area);  // Output: 200
}
```

---

## Métodos estáticos

Son distintos a los métodos regulares porque **no pertenecen a instancias** de objetos.  
Se usan para **funciones utilitarias** que no dependen de un objeto específico.  

```dart
class Math {
  static double pi = 3.14;

  static int square(int x) {
    return x * x;
  }
}

void main() {
  print(Math.pi);        // Output: 3.14
  print(Math.square(4)); // Output: 16
}
```

---

## Funciones anónimas

Son funciones **sin nombre** que se usan en operaciones cortas de una sola vez.  
Pueden pasarse a otras funciones o variables, lo que ayuda a escribir **código más limpio**.  

```dart
void main() {
  var list = ['apples', 'bananas', 'oranges'];

  list.forEach((item) {
    print(item);
  });

  // Output:
  // apples
  // bananas
  // oranges
}
```

Una función anónima:

- No tiene nombre.  
- Se define en el momento, como argumento para otra función.  
- Se usa cuando no tiene sentido declararla aparte.  

```dart
(item) {
  print(item);
}
```

En este ejemplo, `forEach` pasa cada elemento de la lista a la función anónima, que lo imprime en consola.  

---

## Encapsulamiento

El **encapsulamiento** protege los datos de un objeto contra accesos no autorizados.  
Se logra mediante propiedades privadas y métodos como getters y setters.  

Ejemplo:  

```dart
class BankAccount {
  String _accountNumber;
  double _balance;

  // Constructor
  BankAccount(this._accountNumber, this._balance);

  // Getter
  double get balance => _balance;

  // Setter (depósito)
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  // Método para retirar dinero
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print('Insufficient funds');
    }
  }
}

void main() {
  BankAccount account = BankAccount('123456789', 1000.0);

  print('Balance: \$${account.balance}');  
  // Output: Balance: $1000.0

  account.deposit(500);
  print('Balance: \$${account.balance}');  
  // Output: Balance: $1500.0

  account.withdraw(200);
  print('Balance: \$${account.balance}');  
  // Output: Balance: $1300.0

  account.withdraw(2000);  
  // Output: Insufficient funds
}
```

Aquí el número de cuenta y el saldo son **privados**, accesibles solo desde dentro de la clase.  
`balance` es un getter para consultar el saldo.  
`deposit` valida y permite depósitos, mientras que `withdraw` comprueba fondos antes de retirar.  

---

## Herencia

La **herencia** permite que una clase hija herede propiedades y métodos de una clase padre.  

Ejemplo:  

```dart
class Animal {
  void eat() {
    print('Animal is eating');
  }
}

class Dog extends Animal {
  void bark() {
    print('Dog is barking');
  }
}

void main() {
  Dog dog = Dog();

  dog.eat();   // Output: Animal is eating
  dog.bark();  // Output: Dog is barking
}
```

En este ejemplo:  
- `Animal` es la clase padre con el método `eat`.  
- `Dog` es la clase hija con el método `bark`.  
- `Dog` hereda el método `eat` y además define `bark`.  

---

## Resumen final

- Las clases son **planos** que definen cómo se comportará un objeto.  
- Las propiedades públicas permiten acceso desde fuera, mientras que las privadas protegen datos sensibles.  
- Los métodos definen comportamiento y acciones.  
- Los **getters** realizan cálculos o formateos, y los **setters** validan o actualizan propiedades.  
- Los **métodos estáticos** no dependen de instancias y sirven como utilidades.  
- Las **funciones anónimas** permiten operaciones cortas y se usan dentro de otras funciones.  
- El **encapsulamiento** protege datos y controla el acceso con getters y setters.  
- La **herencia** organiza el código jerárquicamente y facilita la reutilización.  
