# GLOSARIO / KEY TERMS - Curso Flutter y Dart

Términos clave con definiciones breves.

---

## A

**Access to Native Features through Plugins**: Funcionalidad que permite acceder a características del dispositivo (como cámara, GPS o almacenamiento) mediante paquetes o plugins integrables en Flutter.

**analysis_options.yaml**: Este archivo se utiliza para configurar la herramienta de análisis estático de Dart. Puedes personalizar reglas para seguir guías específicas o ignorar ciertas reglas en todo tu proyecto.

**Anonymous functions (Dart)**: Usadas para funciones de una sola expresión; también conocidas como lambdas o closures

```dart
var list = ['apples', 'bananas', 'oranges'];

list.forEach((item) {
  print(item);
});
```

**AOT (Ahead-of-Time)**: Técnica de compilación que convierte código fuente en código máquina antes de su ejecución, mejorando el tiempo de arranque.

**AppBar (widget)**: A material design app bar that can be placed at the top of the Scaffold.

**Arrow Function (arrow syntax)**: Forma concisa de definir funciones de una sola expresión usando la sintaxis `=>` en lugar de `{}`. Usa la sintaxis de flecha para una declaración de función concisa.

```dart
void printItem(item) => print(item);
```

**Async/Await**: Palabras clave que permiten operaciones asíncronas sin bloquear el hilo principal.

---

## B

**bin/**: Este directorio contiene archivos ejecutables de Dart. Estos archivos son puntos de entrada para aplicaciones de línea de comandos o de servidor, a diferencia de lib/, que está destinado al código de biblioteca.

**Breakpoint**: Un punto en el programa donde la ejecución se detendrá, permitiéndote inspeccionar el estado de la aplicación. Los breakpoints son esenciales para investigar el comportamiento del código en etapas específicas o bajo ciertas condiciones.

---

## C

**C# (C Sharp)**: Lenguaje de programación utilizado por el framework Xamarin para construir aplicaciones móviles.

**Center (widget)**: Aligns its child widget to the center of the screen.

**CHANGELOG.md**: Archivo Markdown que registra todos los cambios realizados en el proyecto a lo largo del tiempo. Suele incluir actualizaciones, correcciones y otras notas importantes para que los usuarios sepan qué ha cambiado entre versiones.

**Class (Dart)**: Define una clase simple con propiedades. Plano que define propiedades y métodos comunes para crear objetos.

```dart
class Person {
  String name;
  int age;
}
```

**CLI commands (Dart)**: Compila código Dart a un ejecutable nativo

```bash
dart compile exe test.dart
```

**Closures (Dart)**: Funciones anónimas que pueden capturar variables de su contexto. Las retiene incluso cuando dicho entorno ha terminado su ejecución.

```dart
List<int> numbers = [1, 2, 3];
numbers.forEach((number) => print(number * 2));
```

**Code reusability**: Capacidad de Flutter para usar una sola base de código para crear apps en iOS, Android, web y escritorio.

**Collections**: Estructuras que agrupan elementos, como listas (`List`), mapas (`Map`) o conjuntos (`Set`).

**Conditional breakpoint**: Un breakpoint que se activa solo cuando se cumple una condición específica. Esto permite a los desarrolladores centrarse en escenarios concretos y puede acelerar significativamente el proceso de depuración.

**Const (Dart)**: Constante en tiempo de compilación

```dart
const PI = 3.14;
```

**Cupertino**: Estándares de diseño de Apple para iOS que los widgets de Flutter también pueden seguir, permitiendo interfaces personalizadas.

**Customization Options**: Posibilidades que ofrece Flutter para personalizar completamente la interfaz de usuario mediante sus widgets y estilos propios.

**Custom libraries (Dart)**: Creación y uso de tu propia librería.

```dart
library my_utils;

int add(int a, int b) => a + b;
```

---

## D

**Debugger**: Una herramienta utilizada para probar y depurar programas, permitiendo al desarrollador avanzar paso a paso por el código, inspeccionar variables y controlar el flujo de ejecución. Los debuggers son fundamentales para diagnosticar y corregir problemas en el código.

**Dart**: Lenguaje de programación desarrollado por Google, optimizado para UI. Soporta compilación AOT y JIT.

**dart:async**: Biblioteca para programación asíncrona, con clases como `Future`, `Stream`.

**dart:convert**: Biblioteca para codificación/decodificación de datos (por ejemplo, JSON).

**dart:core**: Biblioteca estándar que ofrece clases básicas como `int`, `String`, `List`.

**dart:io**: Biblioteca para operaciones de entrada/salida como lectura de archivos y red.

**dart:math**: Biblioteca con funciones y constantes matemáticas.

**Dart Analyzer**: Herramienta de análisis estático que detecta errores y problemas en el código Dart, ofreciendo feedback en tiempo real en IDEs como VS Code.

**Dart SDK**: Conjunto de herramientas que incluye el compilador, las bibliotecas estándar, y herramientas para análisis de código Dart. Es parte del Flutter SDK y esencial para ejecutar y compilar apps Flutter.

**Dart VM**: Máquina virtual que ejecuta código Dart, gestiona memoria y permite una ejecución eficiente.

**Data types (tipos de datos)**: Dart soporta tipos como `int`, `double`, `String`, `bool` y `List`, que definen el tipo de dato que puede almacenar una variable.

**Default parameters (Dart)**: Permiten valores predeterminados si no se proporcionan en la llamada a la función

```dart
String describe(String name, {int age = 30, String city = 'Unknown'})
```

**DevTools (Dart)**: Suite para depuración y análisis de rendimiento.

```text
Performance profiling, memory analysis, and widget inspection
```

**Dynamic (Dart)**: El tipo de variable puede cambiar dinámicamente

```dart
dynamic x = 42;
```

---

## E

**Emulador**: Simula un dispositivo real en la computadora para probar apps en diferentes resoluciones y sistemas.

**Encapsulation (Dart)**: Usa métodos de clase y niveles de visibilidad para aplicar encapsulación. Principio que restringe el acceso directo a ciertos componentes del objeto para proteger datos.

```dart
class Person {
  String name; // Propiedad pública
  int _age;    // Propiedad privada, prefijo guion bajo en Dart
}
```


**Exception**: Un error que ocurre durante la ejecución de un programa, interrumpiendo el flujo normal de instrucciones. Las exceptions pueden capturarse y manejarse para evitar que provoquen que el programa termine inesperadamente.

---

## F

**Final (Dart)**: Constante en tiempo de ejecución

```dart
final cityName = 'New York';
```

**Firebase**: Plataforma de Google para desarrollo móvil que provee autenticación, base de datos en tiempo real, y funciones en la nube.

**Flutter**: Toolkit de desarrollo de UI multiplataforma creado por Google.

**Flutter Doctor**: Herramienta de línea de comandos que revisa el entorno de desarrollo Flutter y ayuda a detectar problemas con dependencias o configuraciones.

**Flutter CLI**: Herramienta de línea de comandos que permite crear, ejecutar y administrar proyectos Flutter.

**Flutter Codelabs**: Guías prácticas interactivas creadas por Google para aprender Flutter paso a paso mediante ejemplos funcionales.

**Flutter Debugging Tools**: Herramientas disponibles en IDEs y DevTools para localizar y corregir errores durante el desarrollo de la app.

**Flutter DevTools**: A suite of Flutter-specific debugging and performance tools, featuring a widget inspector, timeline view, memory profiler, and performance view.

**Flutter Engine**: Motor de renderizado en C++ responsable de mostrar la UI, manejar gráficos, entrada del usuario, accesibilidad y más.

**Flutter Framework**: Conjunto de widgets, herramientas, librerías y APIs para construir interfaces en Flutter.

**Flutter plugin**: Paquete que proporciona acceso a funcionalidades nativas de iOS y Android desde el código Dart. Facilita el uso de APIs nativas mediante una interfaz unificada.

**Flutter SDK**: Conjunto de herramientas que permite desarrollar, compilar, depurar y desplegar apps Flutter. Incluye el Dart SDK.

**Flutter Toolchain**: Conjunto de herramientas y bibliotecas que permiten el desarrollo, prueba y despliegue de apps Flutter. Incluye Dart SDK, Flutter framework, Flutter engine y herramientas de desarrollo.

**Form (Formulario)**: Un grupo de campos de entrada con lógica de validación.

**Function (función)**: Bloque de código reutilizable que puede recibir parámetros y devolver valores.

**Función anónima (Anonymous Function)**: Función sin nombre, utilizada para operaciones simples o como argumentos.

**Future**: Objeto que representa un valor que estará disponible en el futuro, útil para operaciones asincrónicas.

---

## G

**Garbage Collection**: Mecanismo automático de gestión de memoria que elimina objetos no utilizados.

**Generational Garbage Collection (GC)**: Técnica de recolección de basura que separa los objetos por antigüedad.

**Getter**: Función que se usa para obtener el valor de una propiedad, a menudo realizando algún cálculo.

**Getters and Setters (Dart)**: Controlan el acceso a las propiedades de la clase

```dart
class Person {
  int _age;

  int get age => _age; // Getter
  set age(int value) {  // Setter
    _age = value;
  }
}
```

---

## H

**Herencia (Inheritance, Dart)**: Mecanismo que permite que una clase derive de otra, reutilizando su funcionalidad.

```dart
class Employee extends Person {
  int salary;
}
```


**Hot reload**: A feature that enables instant viewing of code changes without restarting the app, preserving its current state.

**Hot restart**: Reinicia completamente una aplicación Flutter desde cero, perdiendo su estado actual.

---

## I

**IDE (Integrated Development Environment)**: Tools like Visual Studio Code, Android Studio, and IntelliJ IDEA.

**Import (Dart)**: Permite acceder a las librerías integradas de Dart

```dart
import 'dart:math';
```

**Incremental compilation**: Técnica que recompila solo el código que ha cambiado desde la última ejecución.

**Interpolación de cadenas (String interpolation)**: Técnica para insertar valores de variables dentro de un string utilizando `$variable` o `${expresión}`.

**Isolates**: Entidades independientes que permiten concurrencia sin compartir memoria.

**Iterable**: Colección cuyos elementos se pueden recorrer uno a uno.

**Iterator**: Interfaz que permite acceder a cada elemento de un iterable.

---

## J

**JIT (Just-in-Time)**: Técnica de compilación que traduce código en tiempo de ejecución.

---

## L

**Layout (Diseño)**: Cómo se organizan los elementos visuales dentro de una app.

**lib/**: Este directorio contiene el código público en Dart del proyecto. En una aplicación o paquete típico, la mayoría de los archivos Dart, incluido el punto de entrada (normalmente un archivo como main.dart), se colocan aquí.

**LinkedLists (Dart)**: Estructura enlazada donde cada nodo contiene un valor y una referencia al siguiente. Requiere que los elementos extiendan LinkedListEntry<T>.

```dart
import 'dart:collection';

class Node extends LinkedListEntry<Node> {
  int value;
  Node(this.value);
}

final linkedList = LinkedList<Node>()..add(Node(1));
```

**List (Dart)**: Tipo de dato que representa una colección ordenada de elementos.

```dart
List<int> numbers = [1, 2, 3];
```


**ListView**: Widget que permite mostrar listas desplazables.

---

## M

**main (función)**: Punto de entrada obligatorio en toda aplicación Dart.

**Map (Dart)**: Colección de pares clave-valor

```dart
Map<String, int> ages = {'Alice': 18, 'Bob': 20};
```

**MaterialApp (widget)**: A convenience widget that wraps several widgets commonly required for Material Design applications.

**Material Design**: Guías de diseño de Google a las que los widgets personalizables de Flutter se adhieren.

**Memory Profiler**: Herramienta para analizar el uso de memoria.

**Método estático (Static Method)**: Método que pertenece a la clase, no a una instancia específica.

**Multiplatform development**: Desarrollo de apps para múltiples plataformas con una sola base de código.

---

## N

**Named parameters (Dart)**: Especificados por nombre; pueden ser obligatorios u opcionales con valores predeterminados, y se encierran entre llaves

```dart
void greet({required String name, String greeting = 'Hello'}) =>
    print('$greeting, $name!');
```

**Native development**: Creación de apps con lenguajes nativos (Swift, Kotlin, Java).

**Navigator (Navegador/Navegador de rutas)**: Un widget que gestiona una pila de objetos de ruta (routes) y proporciona métodos para navegar entre rutas/pantallas.

**Nullable (anulable)**: Variable que puede tener un valor nulo.

**Null-Coalescing Operator (??)**: Retorna el valor a su izquierda si no es null.

**Null Safety**: Mecanismo que declara si una variable puede contener null, aumentando la seguridad.

---

## O

**Objeto (Object)**: Instancia de una clase.

**Optional positional parameters (Dart)**: Pueden omitirse; se encierran entre corchetes

```dart
String fullName(String firstName, [String middleName, String lastName])
```


---

## P

**Packages**: Bibliotecas disponibles en pub.dev.

**Performance comparison**: Flutter se compila directamente a código ARM (rendimiento casi nativo).

**Performance View**: Muestra métricas de rendimiento.

**print (función)**: Función nativa de Dart usada para imprimir texto en consola.

**Private properties (Dart)**: Se prefijan con un guion bajo y solo pueden accederse dentro de la clase

```dart
class Person {
  int _age; // Propiedad privada
}
```

**Provider**: Biblioteca para gestión de estado.

**Pub tool (Dart)**: Gestor de paquetes para manejar dependencias

```bash
dart pub get, dart pub add http
```

**Public properties (Dart)**: Pueden accederse desde cualquier ubicación donde el objeto sea visible

```dart
class Person {
  String name; // Propiedad pública
}
```

**pubspec.lock**: Archivo generado automáticamente por el gestor de paquetes de Dart que incluye una lista de todos los paquetes de los que depende tu aplicación, junto con las versiones específicas instaladas. Esto garantiza entornos consistentes y control de versiones para todas las dependencias del proyecto.

**pubspec.yaml**: Este archivo sirve como el manifiesto del proyecto. Incluye metadatos sobre el proyecto, como nombre, versión y dependencias. Es utilizado por el gestor de paquetes de Dart para administrar los paquetes de Dart de los que depende tu proyecto.

---

## Q

**Queues (Dart)**: Colección FIFO (primero en entrar, primero en salir) para elementos

```dart
Queue<int> queue = Queue();
queue.addAll([1, 2, 3]);
```

---

## R

**README.md**: Archivo Markdown que normalmente contiene una descripción general del proyecto, cómo configurarlo y cómo usarlo. Generalmente es el primer archivo que usuarios y colaboradores consultan al acceder a tu repositorio.

**React Native**: Framework de Facebook que permite crear apps con JavaScript y React.

**Required parameters (Dart)**: Deben proporcionarse explícitamente en la llamada a la función

```dart
int multiply(int a, int b) => a * b;
```

**Route (Ruta)**: Una abstracción que representa una pantalla o página en una app Flutter.

---

## S

**Scaffold**: A top-level container in Flutter that provides an app structure.

**Scaffold (widget)**: Proporciona estructura para la UI, incluyendo AppBar, Body, etc.

**SDK (Dart)**: Herramienta esencial para ejecutar y administrar aplicaciones Dart

```bash
dart run, dart create
```

**Set (Dart)**: Colección no ordenada de elementos únicos

```dart
Set<String> names = {'Alice', 'Bob'};
```

**Setter**: Función que se usa para establecer el valor de una propiedad.

**Single Code Base**: Una sola base de código para múltiples plataformas.

**Snippet**: fragmento de código predefinido que puedes insertar rápidamente en tu editor para ahorrar tiempo y evitar escribir estructuras repetitivas desde cero.

**SQLite**: Base de datos local para Flutter.

**Stack trace**: Un informe que proporciona la ruta de ejecución a través del programa en el punto donde ocurre una exception. Muestra la secuencia de llamadas de funciones que llevaron al error, lo cual ayuda a identificar la ubicación del problema dentro del código.

**State**: Información que puede cambiar durante la vida de una app.

**State Management**: Manejo de los cambios de estado.

**Stateful Widget**: Widget con estado interno.

**Stateless Widget**: Widget sin estado.

**Static methods (Dart)**: Pertenecen a la clase en lugar de a una instancia y pueden llamarse sin crear un objeto

```dart
class Utility {
  static int add(int a, int b) {
    return a + b;
  }
}
```

**Step over/into/out**: Comandos de depuración que controlan la ejecución del programa:

**Step into**: Ejecuta la siguiente línea de código y, si es una llamada a una función, el debugger entra en la función llamada, permitiéndote depurar su código.

**Step over**: Ejecuta la siguiente línea de código, pero no entra en ninguna función que sea llamada por esa línea, simplemente se ejecuta y pasas a la siguiente línea.

**Step out**: Continúa ejecutando las líneas restantes de la función actual (siempre se ejecuta mientras se esté dentro de una función) y regresa a la función que la llamó, de modo que ejecuta el resto de la función sin detenerse más dentro y vuelve a la función que la llamó.

**Stream**: Flujo de múltiples eventos asincrónicos.

**String interpolation**: Insertar variables dentro de una cadena de texto.

---

## T

**test/**: Contiene archivos Dart para probar la aplicación o biblioteca. Dart utiliza un paquete potente llamado test para escribir y ejecutar pruebas unitarias.

**Text (widget)**: Muestra texto en pantalla.

**TextField**: Widget de entrada de texto.

**Timeline View**: Visualización del rendimiento en el tiempo.

**Tipo inferido (Type inference)**: Capacidad del compilador para deducir el tipo de una variable automáticamente.

---

## V

**Var (Dart)**: Variable de tipo inferido
```dart
var name = 'Dart';
```

**Variable inspection**: El proceso de revisar los valores de las variables en ciertos puntos del programa durante la depuración. Esto es crucial para comprender el estado de la aplicación y determinar la causa de los problemas.

---

## W

**Watch expression**: Una función disponible en muchos debuggers que permite especificar expresiones basadas en variables del código, las cuales el debugger evaluará y mostrará durante la ejecución del programa. Esto ayuda a monitorear cambios en los datos a lo largo de la ejecución.

**Widget**: Elemento visual reutilizable de la UI en Flutter. El bloque básico de construcción de la interfaz de usuario en una app Flutter. Todo en Flutter es un widget.

**Widgets de Material Design y Cupertino**: Conjuntos de widgets preconstruidos que siguen guías de diseño.

**Widget Inspector**: Herramienta para inspeccionar el árbol de widgets.
**Wizard**: Herramienta dentro del IDE o programa que te guía paso a paso para configurar un proyecto nuevo, sin que tengas que hacerlo todo manualmente. Es un asistente de proyecto, el típico “Create new project”.

---

## X

**Xamarin**: Framework de Microsoft que permite construir apps móviles con C# y .NET.

**Xamarin.Forms**: Herramienta dentro de Xamarin para desarrollo de interfaces de usuario multiplataforma.
