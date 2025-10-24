# Funciones y Métodos en Dart ⚙️
📅 Fecha: 25 de agosto de 2025

En estas notas se presentan **funciones** y **métodos** en Dart, sus tipos de parámetros, las funciones flecha y las **closures**, manteniendo toda la explicación original pero en formato de notas claras para el repositorio.

---

## Objetivos de aprendizaje
Al terminar estas notas serás capaz de:

- Describir funciones y métodos en Dart.
- Identificar parámetros de funciones en Dart.
- Explicar cómo funcionan las closures.

---

## ¿Por qué funciones y métodos?
Las funciones y métodos en Dart son **bloques de construcción esenciales** para escribir código reutilizable y fácil de mantener. Comprender cómo **definir y usar** funciones y métodos te ayudará a crear una base para aplicaciones eficientes en Dart.

---

## ¿Qué es una función y cómo se usa?
Las **funciones** son bloques de código reutilizables que realizan una tarea específica.

En Dart, defines una función usando la palabra clave **`void`** para funciones que no retornan un valor, o especificando un **tipo de retorno** para aquellas que sí lo hacen.

Veamos cómo se pueden definir y usar funciones en Dart:

- `greet` es una función simple que imprime el mensaje `"Hello, World!"`.
- La función `add` recibe dos enteros, los suma y retorna el resultado.
- `main` es una función especial que Dart busca como **punto de entrada** para iniciar la aplicación, con `void` indicando que no retorna nada.

```dart
void greet() {
  print('Hello, World!');
}

int add(int a, int b) {
  return a + b;
}

void main() {
  greet();              // Output: Hello, World!
  int sum = add(5, 3);
  print(sum);           // Output: 8
}
```

---

## Parámetros en funciones
Dart admite **diferentes tipos de parámetros** en las funciones.

Comprendiendo y usando estos tipos de parámetros, puedes adaptar tus funciones para manejar escenarios como **proporcionar valores por defecto** o **mejorar la claridad del código** nombrando argumentos específicos.

Dart ofrece herramientas poderosas para manejar diversos escenarios en llamadas a funciones.

Los **cuatro tipos de parámetros** son:

- Requeridos
- Opcionales
- Nombrados
- Con valores por defecto

Veamos cada uno de ellos:

### Parámetros requeridos
Son aquellos que deben proporcionarse al llamar a la función.  
Los parámetros requeridos son **posicionales**.

En este código, la función `multiply` recibe dos parámetros requeridos, `a` y `b`.  
Al llamar `multiply`, deben proporcionarse **ambos argumentos**.

```dart
int multiply(int a, int b) {
  return a * b;
}

void main() {
  print(multiply(3, 4));   // Output: 12
}
```

### Parámetros opcionales
- Pueden ser **posicionales** o **nombrados**.
- Permiten **omitir** algunos argumentos al llamar a una función.

Los opcionales **posicionales** se especifican usando corchetes `[]`.

**Ejemplo**:  
La función `fullName` tiene un parámetro requerido `firstName` y dos opcionales (`middleName` y `lastName`).  
Si `middleName` y `lastName` no se pasan, su valor por defecto es **`null`**.

El operador `??` (también llamado **operador de coalescencia nula**) se usa para devolver un valor alternativo si la variable es `null`.  
En este caso, se usa para devolver una cadena vacía cuando `middleName` o `lastName` son `null`.

```dart
String fullName(String firstName, [String? middleName, String? lastName]) {
  return '$firstName ${middleName ?? ''} ${lastName ?? ''}';
}

void main() {
  print(fullName('John', 'Doe'));            
  // Output: John Doe

  print(fullName('John', 'Paul', 'Doe'));    
  // Output: John Paul Doe
}
```

### Parámetros nombrados
Se especifican usando llaves `{}`.  
Pueden ser **requeridos** o tener **valores por defecto**.  
Se pasan a la función **llamándolos por su nombre**.

**Ejemplo**:  
La función `greet` tiene un parámetro nombrado **requerido** `name`, y otro nombrado **opcional** `greeting` con un **valor por defecto**.  
La palabra clave `required` indica que `name` es **obligatorio**.  
Al llamar `greet`, se debe proporcionar un valor para `name`, mientras que `greeting` es opcional.

```dart
void greet({required String name, String greeting = 'Hello'}) {
  print('$greeting, $name!');
}

void main() {
  greet(name: 'Alice');                  
  // Output: Hello, Alice!

  greet(name: 'Bob', greeting: 'Hi');    
  // Output: Hi, Bob!
}
```

### Valores por defecto
Dart permite **establecer valores por defecto** para parámetros, tanto **posicionales** como **nombrados** opcionales.

**Ejemplo**:  
La función `describe` tiene dos parámetros nombrados (`age` y `city`) con valores por defecto.  
Si no se proporcionan al llamar la función, se usarán los **valores por defecto**.

```dart
String describe(String name, {int age = 30, String city = 'Unknown'}) {
  return '$name is $age years old and lives in $city.';
}

void main() {
  print(describe('Alice'));  
  // Output: Alice is 30 years old and lives in Unknown.

  print(describe('Bob', age: 25, city: 'New York'));  
  // Output: Bob is 25 years old and lives in New York.
}
```

---

## Funciones flecha (arrow functions)
Otra característica importante son las **arrow functions**.  
Dart permite **expresiones de función concisas** usando la sintaxis de flecha `=>`, lo cual es útil especialmente en funciones **cortas**.

```dart
int square(int x) => x * x;

void main() {
  print(square(4));   // Output: 16
}
```

---

## Métodos
Los **métodos** son funciones **asociadas a un objeto**.  
Se **definen dentro de una clase** y pueden operar sobre **instancias** de esa clase.

En Dart, los métodos se usan para realizar acciones sobre los **datos contenidos en los objetos**.

**Ejemplo**:  
La clase `List` en Dart ofrece varios métodos para manipular e interactuar con listas:

- `.add()` → añade un nuevo elemento al final de la lista.  
- `.remove()` → elimina la primera aparición de un elemento específico de la lista.  
- `.contains()` → verifica si la lista contiene un elemento determinado.  

```dart
void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  // Usando add para añadir un elemento
  fruits.add('Date');
  print(fruits);   
  // Output: [Apple, Banana, Cherry, Date]

  // Usando remove para eliminar un elemento
  fruits.remove('Banana');
  print(fruits);   
  // Output: [Apple, Cherry, Date]

  // Usando contains para comprobar si un elemento existe
  bool hasApple = fruits.contains('Apple');
  print(hasApple); 
  // Output: true
}
```

---

## Closures
Las **closures** son una característica poderosa en Dart que permite a las funciones **capturar y almacenar referencias** a variables de su **ámbito externo** (llamado *lexical scope*).

Incluso después de que ese ámbito haya terminado de ejecutarse, las variables siguen siendo accesibles dentro de la función.  
Un *closure* es simplemente **una función que recuerda algo** aunque ya no esté en el mismo sitio donde se creó.  
Así que un *closure* = **una función que recuerda datos del lugar donde nació**, aunque se use más tarde en otro sitio.

**Ejemplo**:

Se define una función `makeAdder` que recibe un entero `addBy` y retorna **otra función** (es decir, una *closure*).  
Esta *closure* recibe un entero `i` y retorna la suma `i + addBy`.

```dart
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  var add2 = makeAdder(2);   // crea una closure donde addBy = 2
  var add5 = makeAdder(5);   // crea otra closure donde addBy = 5

  print(add2(3));   // Output: 5
  print(add5(3));   // Output: 8
}
```

**Uso**:

- `add2(3)` → devuelve `2 + 3 = 5`  
- `add5(3)` → devuelve `5 + 3 = 8`  

En Dart, las closures recuerdan el **ámbito léxico** donde fueron creadas.  
Por eso, `add2` recuerda que `addBy = 2`, y `add5` recuerda que `addBy = 5`, aunque `addBy` se declaró **fuera** de la función retornada.

---

## Resumen final
- Las **funciones** en Dart son bloques **reutilizables** de código que realizan una tarea específica.  
- Los **parámetros requeridos** deben pasarse siempre, mientras que los **opcionales** pueden omitirse.  
- Los **parámetros nombrados** pueden ser requeridos o tener valores por defecto.  
- Dart permite **valores por defecto** en parámetros opcionales.  
- Los **métodos** son funciones asociadas a objetos, como los métodos de la clase `List`.  
- Las **closures** permiten que una función recuerde variables de su **ámbito externo**, incluso después de que dicho ámbito haya finalizado.  
