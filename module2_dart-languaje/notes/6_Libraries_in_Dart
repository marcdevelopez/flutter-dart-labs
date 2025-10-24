# Las librerías en Dart 📚

Después de leer estas notas, podrás identificar y utilizar las librerías comunes de Dart para construir aplicaciones robustas. Se explicará cómo crear una librería para reutilizar y encapsular datos. También serás capaz de importar y utilizar librerías para acceder a funcionalidades personalizadas.

Muchas organizaciones reconocidas en el mundo usan Flutter, el kit de herramientas de interfaz de usuario multiplataforma, para construir productos de vanguardia. Las librerías de Dart juegan un papel crucial en este proceso, al aportar funcionalidades esenciales que simplifican la codificación y el desarrollo.

A continuación, exploraremos las librerías comunes de Dart para acceder a funcionalidades esenciales.

---

## Librería `dart:core`

Primero, exploremos la librería `dart:core`, que proporciona bloques de construcción esenciales para manejar tipos de datos básicos, colecciones y funciones utilitarias. Esta librería se importa por defecto.

Aquí hay un fragmento de código para comprender algunas funcionalidades de Dart Core:

```dart
void main() {
  String greeting = 'Hello, Dart!';
  int number = 42;
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  Map<String, int> scores = {'Alice': 90, 'Bob': 85};

  print(greeting);
  print(number);
  print(fruits);
  print(scores);
}
```

* Esta línea declara y asigna un valor a una variable de tipo cadena llamada `greeting`:

  ```dart
  String greeting = 'Hello, Dart!';
  ```
* La siguiente línea declara y asigna una variable entera.

Declara una variable entera llamada number con el valor 42:

```dart
int number = 42;
```

* Aquí, una variable llamada `fruits` declara una lista de cadenas.

  ```dart
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  ```
* Esta línea especifica un mapa llamado `scores`, con claves de tipo `String` y valores de tipo `int`.

  ```dart
  Map<String, int> scores = {'Alice': 90, 'Bob': 85};
  ```

---

## Librería `dart:math`

Ahora, entendamos el uso de funciones matemáticas para resolver cálculos simples y algoritmos complejos.

La librería `dart:math` te proporciona funcionalidades como funciones coseno y seno, las constantes `pi` y `e`, y generación de números aleatorios. También ofrece soporte para cálculos estadísticos y basados en probabilidad.

Este bloque de código te ayudará a comprender la librería `dart:math`:

```dart
import 'dart:math';

const double e = 2.718281828459045;
const double pi = 3.1415926535897932;

void main() {
  double angle = pi / 4;
  double sine = sin(angle);
  double cosine = cos(angle);
  Random random = Random();
  int randomNumber = random.nextInt(100);

  print('Sine: $sine');
  print('Cosine: $cosine');
  print('Random Number: $randomNumber');
}
```

* Primero, importa la librería:

  ```dart
  import 'dart:math';
  ```
* El código calcula y almacena el valor de un ángulo, tras lo cual se calcula el seno y coseno del ángulo:

  ```dart
  double angle = pi / 4;
  double sine = sin(angle);
  double cosine = cos(angle);
  ```
* Luego se crea un generador de números aleatorios:

  ```dart
  Random random = Random();
  ```
* Finalmente, se genera un número aleatorio entre 0 y 99.

  ```dart
  int randomNumber = random.nextInt(100);
  ```

---

## Librería `dart:async`

Otra librería importante es `dart:async`, que te ayuda a crear código asíncrono, incluyendo clases como `Stream` y `Future`.

Esta librería permite construir código que puede realizar múltiples tareas con demoras sin bloquear otras operaciones. Los `Future` son valores que estarán disponibles en el futuro; son esenciales para operaciones asíncronas como obtener datos en línea o realizar cálculos largos. La palabra clave `await` pausa la ejecución hasta que el `Future` devuelve un valor.

Los `Stream` son una serie de eventos asíncronos que gestionan flujos de datos desde usuarios o servidores. Puedes suscribirte a un `Stream` y reaccionar a eventos individuales.

Estas líneas de código te ayudarán a explorar `dart:async`:

```dart
import 'dart:async';

void main() async {
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Data fetched!';
  }

  String data = await fetchData();
  print(data);
}
```

* Primero, importa la librería:

  ```dart
  import 'dart:async';
  ```
* Esta línea define una función asíncrona que devuelve un `Future`:

  ```dart
  Future<String> fetchData() async
  ```
* Luego, la palabra clave `await` simula un retraso de dos segundos.

  ```dart
  await Future.delayed(Duration(seconds: 2));
  ```
* Aquí se llama a la función `fetchData`:

  ```dart
  return 'Data fetched!';
  ```

y se recupera el resultado después de que se complete el `Future`:

```dart
String data = await fetchData();
```

---

## Librería `dart:convert`

La siguiente es la librería `dart:convert`, que proporciona convertidores para UTF-8 y JSON.

Esta librería facilita la comunicación entre APIs al convertir objetos de Dart a formato JSON y viceversa. Dado que las APIs dependen de JSON para el intercambio de datos, la librería `dart:convert` es esencial para conectar objetos Dart con sistemas externos.

Este código te ayudará a familiarizarte con `dart:convert`:

```dart
import 'dart:convert';

String jsonString = '{"name": "Alice", "age": 30}';
Map<String, dynamic> user = jsonDecode(jsonString);

Map<String, dynamic> newUser = {'name': 'Bob', 'age': 25};
String newJsonString = jsonEncode(newUser);
```

* Primero, se debe importar la librería:

  ```dart
  import 'dart:convert';
  ```
* Luego, se define una cadena JSON con dos propiedades: `name` y `age`.

  ```dart
  String jsonString = '{"name": "Alice", "age": 30}';
  ```
* A continuación, se decodifica la cadena JSON en un mapa:

  ```dart
  Map<String, dynamic> user = jsonDecode(jsonString);
  ```
* Finalmente, se crea un nuevo mapa:

  ```dart
  Map<String, dynamic> newUser = {'name': 'Bob', 'age': 25};
  ```

y se codifica en una cadena JSON:

```dart
String newJsonString = jsonEncode(newUser);
```

---

## Paquete `http`

Veamos ahora el paquete `http`, que contiene clases y funciones de alto nivel para simplificar las conexiones HTTP.

Se usa para descargar o transferir datos e interactuar con APIs REST. Estas líneas de código te ayudarán a comprender este paquete:

```dart
import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    print('Response data: ${response.body}');
  } else {
    print('Request failed with status: ${response.statusCode}');
  }
}
```

* Primero, importa el paquete:

  ```dart
  import 'package:http/http.dart' as http;
  ```
* Luego, analiza (parse) la URL desde una cadena:

  ```dart
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  ```
* Se envía una solicitud GET a la URL especificada:

  ```dart
  var response = await http.get(url);
  ```
* Se imprime la respuesta HTTP si el código de respuesta es 200.

  ```dart
  if (response.statusCode == 200) {
    print('Response data: ${response.body}');
  }
  ```

---

## Paquete `intl`

El siguiente es el paquete `intl`, que puede resolver un problema común y generalizado. Muchas apps tienen dificultades para expandir su alcance geográfico o mejorar la experiencia del usuario en diferentes mercados globales.

El paquete `intl` proporciona soporte de localización e internacionalización para apps que deben adaptarse a distintas regiones e idiomas:

```dart
import 'package:intl/intl.dart';

void main() {
  var now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String formattedDate = formatter.format(now);
  print('Formatted date: $formattedDate');
}
```

Importa este paquete para usarlo en tu código:

```dart
import 'package:intl/intl.dart';
```

* Esta línea crea un objeto con la fecha y hora actuales:

  ```dart
  var now = DateTime.now();
  ```
* Luego, se crea un objeto para dar formato a la fecha en un formato específico:

  ```dart
  var formatter = DateFormat('yyyy-MM-dd');
  ```
* Finalmente, se coloca la fecha y hora formateadas en una cadena.

  ```dart
  String formattedDate = formatter.format(now);
  ```

---

## Paquete `path`

El último paquete es `path`, que es crítico para la manipulación de rutas de archivos y directorios.

Ayuda a organizar y gestionar eficientemente estos elementos. El paquete `path` ofrece operaciones como dividir, unir y normalizar rutas:

```dart
import 'package:path/path.dart' as p;

void main() {
  var fullPath = p.join('directory', 'file.txt');
  print('Full path: $fullPath');
}
```

Primero, importa este paquete:

```dart
import 'package:path/path.dart' as p;
```

* Esta línea de código combina el nombre del directorio y el nombre del archivo para crear una ruta de archivo completa:

  ```dart
  var fullPath = p.join('directory', 'file.txt');
  ```

---

## Crear tu propia librería

Ahora, crea tu propia librería para encapsular código reutilizable.

Esto aumentará la mantenibilidad y modularidad en tus proyectos, organizando funcionalidades similares. También te permitirá compartir tu código con otros miembros de tu organización.

El primer paso es crear un nuevo archivo Dart y definir tu librería usando la palabra clave `library`:

```dart
// math_utils.dart
library math_utils;
```

Luego, define las funciones, clases y variables que quieres incluir en tu librería:

```dart
int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  if (b == 0) {
    throw ArgumentError('Cannot divide by zero');
  }
  return a / b;
}
```

Tu siguiente paso después de crear la librería será usarla en otro archivo. Aquí te explicamos cómo hacerlo:

* Primero, importa la librería `math_utils`:

  ```dart
  import 'math_utils.dart';
  ```

La palabra clave `import` te ayudará a acceder a las clases, funciones y variables de tu librería sin duplicar código.

* Luego, la función `main` accederá y utilizará las funciones definidas en tu librería:

```dart
void main() {
  int sum = add(10, 5);
  int difference = subtract(10, 5);
  double product = multiply(10, 5);
  double quotient = divide(10, 5);

  print('Sum: $sum');
  print('Difference: $difference');
  print('Product: $product');
  print('Quotient: $quotient');
}
```

---

## **Resumen**

* `dart:core`: proporciona bloques fundamentales para manejar tipos de datos básicos, colecciones y funciones utilitarias.
* `dart:async`: útil para manejar tareas con demoras como solicitudes de red o I/O.
* `dart:convert`: permite el manejo de JSON para comunicar apps con APIs u otras apps.
* Paquete `http`: contiene funciones para trabajar con datos y APIs REST.
* Paquete `intl`: proporciona soporte para localización e internacionalización.
* Paquete `path`: permite dividir, unir y normalizar rutas de archivos y directorios.
* Crear tu propia librería mejora la modularidad y permite compartir código.
* Usa la palabra clave `import` para reutilizar librerías sin duplicar código.
