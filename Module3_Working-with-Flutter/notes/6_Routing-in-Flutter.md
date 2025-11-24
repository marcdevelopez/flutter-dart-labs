# Enrutamiento en Flutter.

Después de leer estan notas, podrás usar el enrutamiento para navegar entre diferentes pantallas en aplicaciones móviles.
Aprenderás dos métodos para configurar rutas y usar la clase _Navigator_ para realizar navegación básica.
Finalmente, aprenderás cómo pasar datos entre pantallas para interacciones en tiempo real en tu app.

Imagina embarcarte en un viaje épico de la costa este a la costa oeste.
Tu salvavidas es un mapa confiable que te ayudará a elegir rutas con muchas paradas de descanso y miradores escénicos.
El enrutamiento en Flutter es similar, pero a una escala mucho más pequeña.
Define la mejor manera de navegar entre pantallas en tu app.
La clave para implementar el enrutamiento es elegir rutas que guíen intuitiva y lógicamente a los usuarios a través de las funciones de la aplicación.

Primero, considera cada pantalla de tu app como una parada de ruta para crear un marco práctico que permita una navegación fluida.
En Flutter, las rutas suelen ser instancias de las clases _CupertinoPageRoute_ o _MaterialPageRoute_.
_CupertinoPageRoute_ ofrece experiencias similares a iOS, mientras que _MaterialPageRoute_ le da a tu app una apariencia que resuena con los usuarios de Android.
Estas clases predefinidas te ayudarán a implementar transiciones específicas de plataforma para cumplir con requisitos de personalización.

A continuación, veremos cómo la clase _Navigator_ gestiona las rutas y las transiciones de pantalla.
Esta clase sigue principios de pila, similares a añadir un libro encima de un montón de libros.
Necesitarás “empujar” (push) una nueva ruta a la pila para ir a una nueva pantalla.
Eliminar una ruta de la pila te llevará a la pantalla anterior, igual que sacar un libro de la pila.

## **`Hay dos métodos para definir rutas.`**

### **`Names routes`**

- Provide a centralized and structured navigation approach
- Serve as unique identifiers
- Offer better code readability and simplified navigation
- Use strings to define routes
  El primer método es _named route_ (ruta nombrada), que proporciona un enfoque de navegación centralizado y estructurado al nombrar cada ruta.
  Estos nombres sirven como identificadores únicos para mejorar la legibilidad del código y simplificar la navegación.
  Las rutas nombradas suelen usar cadenas para definir rutas, lo cual es útil en aplicaciones grandes con múltiples pantallas.

Veamos algo de código para entender mejor las rutas nombradas.
Esta línea inicializa el widget _MaterialApp_ para crear una UI basada en los estándares de _Material Design_.
_initialRoute_ muestra la pantalla inicial de la app al arrancar.
_context_ se refiere a la ubicación de la pantalla actual.

```dart
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/second': (context) => SecondScreen(),
    },
  ));
}
```

Finalmente, este método empuja una nueva ruta a la pila.

```dart
Navigator.pushNamed(context, '/second');
```

Aquí hay otro fragmento de código con rutas nombradas.
Aquí, las rutas nombradas se definen en la propiedad _routes_ del widget _MaterialApp_.
_initialRoute_ especifica la pantalla inicial que se mostrará.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}
```

Finalmente, este método ayuda a la pantalla a navegar hacia la ruta especificada.

```dart
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back to First Screen'),
        ),
      ),
    );
  }
}
```

### **`Direct route`**

El segundo método es la _direct route_ (ruta directa), que pasa _MaterialPageRoute_ o _CupertinoPageRoute_ directamente al _Navigator_.
Veamos este código para entender mejor las rutas directas.

```dart
// Navigate to the second screen
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
```

Este método empuja una nueva ruta a la pila, con _context_ refiriéndose a la ubicación de la pantalla actual.
_MaterialPageRoute_ crea una nueva ruta que navega hacia la segunda pantalla.

### **`Basic navigation`**

Veamos un ejemplo simple de código para entender cómo la clase _Navigator_ puede usarse para navegación básica adelante y atrás entre pantallas.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}
```

_MyApp_ es un widget que contiene el widget _MaterialApp_.
La app tiene dos pantallas: _FirstScreen_ y _SecondScreen_:

_FirstScreen_ contiene un botón que navega a _SecondScreen_ cuando se pulsa, añadiendo la pantalla a la pila de navegación.

```dart
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}
```

El método _pop_ navega hacia atrás eliminando la pantalla que acaba de añadirse, en este caso _SecondScreen_.

```dart
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back to First Screen'),
        ),
      ),
    );
  }
}
```

### **`Pasando datos entre pantallas`**

A menudo necesitarás transferir datos entre pantallas.
_Navigator.push_ y _Navigator.pushNamed_ permiten pasar información a la pantalla elegida, habilitando interacciones dinámicas y en tiempo real dentro de tu app.
Este código te guía a través de la transferencia de datos usando _Navigator.push_.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}
```

Aquí, la clase _FirstScreen_ pasa una cadena llamada “hello from first screen” a _SecondScreen_.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    SecondScreen(data: 'Hello from First Screen'),
              ),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}
```

La clase _SecondScreen_ tiene un constructor que acepta la cadena desde la primera pantalla y la muestra.

```dart
class SecondScreen extends StatelessWidget {
  final String data;

  SecondScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text(data),
      ),
    );
  }
}
```

## **`Ejemplos de routing`**

Veamos algunos ejemplos de enrutamiento en Flutter.

### **`Screen navigation`**

El primero es navegar a una nueva pantalla con un clic de botón.
Este método añade una nueva ruta o pantalla a la pila:

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewScreen()),
);
```

### **`Data retrieval`**

El segundo ejemplo devuelve datos a una pantalla anterior.
Si estás recuperando datos recién introducidos en un formulario, este método muestra el contenido recuperado en la función _builder_ de la nueva pantalla:

```dart
final result = await Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => FormScreen()),
);
```

### **`Rutas nombradas`**

Aquí, un método se usa para transicionar a una segunda ruta.

```dart
Navigator.pushNamed(
  context,
  '/second',
);
```

### **`Deep linking`**

El enrutamiento facilita el _deep linking_, dirigiendo a los usuarios a pantallas específicas dentro de tu app.

### **`Eliminación de pantallas`**

También puedes usar el enrutamiento para eliminar la pantalla actual y navegar de vuelta a una anterior.

Este método elimina una ruta y referencia el contexto para acceder a la pila de navegación.

```dart
Navigator.pop(context);
```

### **`Reemplazo de pantalla`**

Otro escenario surge cuando necesitas reemplazar una pantalla con otra nueva.
Este método elimina una ruta y la reemplaza con una nueva pantalla:

```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => NewScreen()),
);
```

### **`Nested navigation`**

A continuación, verás cómo la navegación anidada facilita la navegación independiente para diferentes secciones de una app.
Por ejemplo, tu app puede tener pilas separadas para pestañas como _home_, _services_ o _profiles_.
El contenedor de barra de navegación inferior permite a los usuarios navegar a pestañas específicas sin afectar la navegación general.

### **`Conditional navegation`**

El último ejemplo es la navegación condicional, que cambia rutas en función de condiciones como estado de autenticación del usuario, estado de la app o preferencias del usuario.

## **`En estas notas has aprendido a:`**

- realizar enrutamiento entre pantallas usando diferentes clases y métodos,
- crear rutas nombradas para un enfoque centralizado y estructurado,
- crear rutas directas pasando _MaterialPageRoute_ o _CupertinoPageRoute_,
- realizar navegación básica usando la clase _Navigator_,
- transferir datos entre pantallas para permitir interacciones en tiempo real,
- diferenciar entre distintos casos de uso de enrutamiento en Flutter para implementar el código de forma eficiente.
