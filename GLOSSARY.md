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

**BoxDecoration**: Clase que define la decoración visual de un contenedor, incluyendo color de fondo, bordes, esquinas redondeadas y sombras.

**Breakpoint**: Un punto en el programa donde la ejecución se detendrá, permitiéndote inspeccionar el estado de la aplicación. Los breakpoints son esenciales para investigar el comportamiento del código en etapas específicas o bajo ciertas condiciones.

**BottomNavigationBar (Barra de navegación inferior)**: Proporciona navegación entre las vistas de nivel superior de una aplicación a través de una serie de pestañas en la parte inferior de la pantalla.

```dart
BottomNavigationBar(
  items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
  ],
  currentIndex: 0,
  onTap: (index) {
    // Maneja el cambio de pestaña
  },
);


---

## C

**C# (C Sharp)**: Lenguaje de programación utilizado por el framework Xamarin para construir aplicaciones móviles.

**Center (widget)**: Aligns its child widget to the center of the screen.

**CHANGELOG.md**: Archivo Markdown que registra todos los cambios realizados en el proyecto a lo largo del tiempo. Suele incluir actualizaciones, correcciones y otras notas importantes para que los usuarios sepan qué ha cambiado entre versiones.
**Checkbox**: Control de selección binaria (activo/inactivo) que muestra una casilla marcada o desmarcada.

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

**Column**: Widget de diseño que organiza sus hijos en una columna vertical.

**Conditional breakpoint**: Un breakpoint que se activa solo cuando se cumple una condición específica. Esto permite a los desarrolladores centrarse en escenarios concretos y puede acelerar significativamente el proceso de depuración.

**Const (Dart)**: Constante en tiempo de compilación

```dart
const PI = 3.14;
```

**Container**: Widget versátil que puede envolver otros widgets y aplicar padding, margen, color o decoraciones.

**Cupertino**: Estándares de diseño de Apple para iOS que los widgets de Flutter también pueden seguir, permitiendo interfaces personalizadas.

**CupertinoPageRoute**: Ruta que aplica transiciones y estilo de iOS al navegar entre pantallas.

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

**Dialogs (showDialog / AlertDialog)**: Muestra diálogos de diseño Material para informar o pedir confirmación.

```dart
showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      title: const Text('Alert!'),
      content: const Text('You have been alerted.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    );
  },
);
```

**Dismissible**: Widget que permite deslizar un elemento para descartarlo o ejecutar una acción (por ejemplo, eliminar un item de una lista).

**Drawer (Navegación de cajón)**: Menú lateral deslizante usado para navegar entre secciones de la app sin ocupar espacio permanente en pantalla.

```dart
Drawer(
  child: ListView(
    children: <Widget>[
      DrawerHeader(child: Text('Header')),
      ListTile(title: Text('Item 1'), onTap: () {}),
    ],
  ),
);
```

**DropdownButton**: Permite a los usuarios seleccionar de una lista de elementos en un menú desplegable.

```dart
DropdownButton<String>(
  value: dropdownValue,
  onChanged: (String? newValue) {
    setState(() {
      dropdownValue = newValue!; // Actualiza el valor seleccionado y refresca la UI
    });
  },
  items: <String>['One', 'Two', 'Three', 'Four'] // Opciones disponibles
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value), // Texto visible en el menú
    );
  }).toList(),
);
```

**Dynamic (Dart)**: El tipo de variable puede cambiar dinámicamente

```dart
dynamic x = 42;
```

---

## E

**EdgeInsets**: Clase que define márgenes o padding con valores uniformes o simétricos alrededor de un widget.

**ElevatedButton**: Botón con elevación y estilo Material usado para acciones primarias.

```dart
ElevatedButton(
  onPressed: () {
    print('Button Pressed');
  },
  child: Text('Press Me')
);
```

**ElevatedButton.styleFrom**: Constructor auxiliar para personalizar colores, padding y tipografía de un ElevatedButton. Modifica la apariencia de los botones para alinearlos con el diseño de la aplicación.

```dart
ElevatedButton(
  style: ElevatedButton.styleFrom(primary: Colors.green),
  onPressed: () {},
  child: Text('Submit')
);
```

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

**Flexible (widget)**: Permite que los widgets hijos se ajusten dentro del espacio disponible en una fila o columna. Controla cómo un widget hijo puede expandirse para llenar el espacio disponible proporcionalmente.

```dart
Row(children: [
  Flexible(child: Container(color: Colors.red, height: 50)),
  Flexible(child: Container(color: Colors.blue, height: 50))
])
```

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

**Form (Validator)**: Asegura que la entrada cumpla con ciertos criterios.

```dart
Form(
  child: TextFormField(
    validator: (value) {
      if (value.isEmpty) return 'Cannot be empty';
    }
  )
);
```

**Form (widget)**: Contenedor que agrupa campos de entrada y valida su estado de forma unificada dentro de una pantalla.

**Function (función)**: Bloque de código reutilizable que puede recibir parámetros y devolver valores.

**Función anónima (Anonymous Function)**: Función sin nombre, utilizada para operaciones simples o como argumentos.

**Future**: Objeto que representa un valor que estará disponible en el futuro, útil para operaciones asincrónicas.

---

## G

**Garbage Collection**: Mecanismo automático de gestión de memoria que elimina objetos no utilizados.

**Generational Garbage Collection (GC)**: Técnica de recolección de basura que separa los objetos por antigüedad.
**GestureDetector**: Widget que detecta gestos (tap, doble tap, long press, swipe) y ejecuta callbacks asociados.

```dart
GestureDetector(
  onTap: () { print('Tapped!'); },
  child: Container(color: Colors.blue, width: 100, height: 100)
);
```

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

**GlobalKey<FormState>**: Clave que permite acceder y controlar el estado de un widget Form para validar o guardar campos.

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

**Icon (widget)**: Muestra un ícono desde el conjunto de Material u otras fuentes de íconos.

**IconButton**: Botón que muestra un ícono y ejecuta una acción al ser pulsado.

**IDE (Integrated Development Environment)**: Tools like Visual Studio Code, Android Studio, and IntelliJ IDEA.

**Image (widget)**: Renderiza imágenes desde activos locales, red o memoria.

**Import (Dart)**: Permite acceder a las librerías integradas de Dart

```dart
import 'dart:math';
```

**Incremental compilation**: Técnica que recompila solo el código que ha cambiado desde la última ejecución.

**Interpolación de cadenas (String interpolation)**: Técnica para insertar valores de variables dentro de un string utilizando `$variable` o `${expresión}`.

**InkWell**: Widget que detecta gestos y muestra un efecto de onda (ripple) siguiendo Material Design.

**InputDecoration**: Clase que define estilos y adornos (label, hint, iconos, bordes) para campos de texto.

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

**ListTile**: Fila de lista prediseñada que admite título, subtítulo, íconos y widgets de acción.

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

**MaterialPageRoute**: Ruta que aplica transiciones y estilo de Material Design al navegar entre pantallas.

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

**Named routes (Navigator.pushNamed, initialRoute)**: Enfoque de navegación que registra rutas con identificadores de cadena para centralizar y simplificar la navegación entre pantallas.

**Navigator.pushNamed**: Método que navega a una ruta nombrada previamente registrada en MaterialApp.

```dart
Navigator.pushNamed(context, '/details');
```

**Native development**: Creación de apps con lenguajes nativos (Swift, Kotlin, Java).

**Navigator (Navegador/Navegador de rutas)**: Un widget que gestiona una pila de objetos de ruta (routes) y proporciona métodos para navegar entre rutas/pantallas.

**Navigator (Navigation stack / Navegación en pila)**: Gestiona una pila de pantallas y permite apilar (push) y desapilar (pop) rutas al navegar.

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
```

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

**Pasar datos entre rutas**: Permite enviar datos entre pantallas.

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetailScreen(data: 'Data from previous screen'),
  ),
);
```

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

**Radio**: Botón de opción circular para seleccionar una sola alternativa dentro de un grupo.

**README.md**: Archivo Markdown que normalmente contiene una descripción general del proyecto, cómo configurarlo y cómo usarlo. Generalmente es el primer archivo que usuarios y colaboradores consultan al acceder a tu repositorio.

**React Native**: Framework de Facebook que permite crear apps con JavaScript y React.

**Required parameters (Dart)**: Deben proporcionarse explícitamente en la llamada a la función

```dart
int multiply(int a, int b) => a * b;
```

**Route (Ruta)**: Una abstracción que representa una pantalla o página en una app Flutter.

**Row**: Widget de diseño que organiza sus hijos en una fila horizontal.

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

**SnackBar**: Proporciona retroalimentación ligera sobre una operación mostrando un breve mensaje.

```dart
final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

ScaffoldMessenger.of(context).showSnackBar(
  snackBar, // Muestra el mensaje en la parte inferior de la pantalla
);
```

**Snippet**: fragmento de código predefinido que puedes insertar rápidamente en tu editor para ahorrar tiempo y evitar escribir estructuras repetitivas desde cero.

**SQLite**: Base de datos local para Flutter.

**Stack trace**: Un informe que proporciona la ruta de ejecución a través del programa en el punto donde ocurre una exception. Muestra la secuencia de llamadas de funciones que llevaron al error, lo cual ayuda a identificar la ubicación del problema dentro del código.

**Stack (widget)**: Widget de diseño que superpone hijos en capas, permitiendo posiciones relativas entre ellos.

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

**Switch**: Control de palanca para alternar entre estados activo/inactivo.

---

## T

**TabBar (Tab navigation / Navegación por pestañas)**: Organiza el contenido en pestañas y permite cambiar entre vistas.

```dart
TabBar(
  tabs: [
    Tab(icon: Icon(Icons.directions_car)),
    Tab(icon: Icon(Icons.directions_transit))
  ]
);
```

**TabBarView**: Contenedor que asocia contenido desplazable a cada pestaña de un TabBar.

**test/**: Contiene archivos Dart para probar la aplicación o biblioteca. Dart utiliza un paquete potente llamado test para escribir y ejecutar pruebas unitarias.

**TextButton**: Botón plano basado en texto sin elevación.

**TextEditingController**: Controlador que gestiona el texto y notifica cambios en widgets de entrada como TextField.

```dart
TextField(
  decoration: InputDecoration(hintText: 'Enter your username'),
);
```

**TextStyle**: Clase que define estilo de texto (fuente, tamaño, peso, color) aplicado a widgets de texto.

```dart
Text(
  'Hello Flutter',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue
  )
);
```

**Text (widget)**: Muestra texto en pantalla.

**TextField**: Widget de entrada de texto.

**ThemeData**: Clase que define el tema global (colores, tipografías, estilos) aplicado a una app Flutter.

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

**Widget tree**: Estructura jerárquica que organiza todos los widgets de la interfaz, permitiendo a Flutter actualizar la UI de forma eficiente.

**Widgets de Material Design y Cupertino**: Conjuntos de widgets preconstruidos que siguen guías de diseño.

**Widget Inspector**: Herramienta para inspeccionar el árbol de widgets.
**Wizard**: Herramienta dentro del IDE o programa que te guía paso a paso para configurar un proyecto nuevo, sin que tengas que hacerlo todo manualmente. Es un asistente de proyecto, el típico “Create new project”.

---

## X

**Xamarin**: Framework de Microsoft que permite construir apps móviles con C# y .NET.

**Xamarin.Forms**: Herramienta dentro de Xamarin para desarrollo de interfaces de usuario multiplataforma.
