# Implementación de estilos en Flutter

Después de leer estas notas podrás:
- describir _`widgets`_,
- analizar la importancia de aplicar estilos en los _`widgets`_,
- enumerar las diferentes opciones de estilo.

Hoy en día, todo el mundo usa aplicaciones en todas partes. Estilizar una aplicación correctamente es crucial.
La app debe tener un diseño visualmente atractivo y asegurar una navegación fácil.

La aplicación cuidadosa de estilos ayuda a los usuarios a navegar fácilmente por la app, haciendo que su experiencia de compra sea más agradable y eficiente.
Puedes lograr esto usando una característica clave de _`Flutter`_ que ayuda con el estilo de los _`widgets`_.

En _`Flutter`_, cada componente es un _`widget`_, formando los elementos fundamentales de una app. _`Flutter`_ ofrece múltiples opciones de estilo, como temas integrados y personalizados, además de estilo directo para _`widgets`_ individuales.

---

## `Text widget styling`

Para comprender cómo funciona el estilo en _`Flutter`_, exploremos primero cómo estilizar el _`widget`_ básico de texto. Los _`widgets`_ de _`Flutter`_ incluyen diversas propiedades integradas que puedes usar para aplicar estilos.

Comencemos con un ejemplo de un _`widget`_ _`Text`_ y un _`Container`_:

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Styling Example'),
        ),
        body: Center(
          child: Text(
            'Hello, Flutter!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
```

El _`widget`_ _`Text`_ muestra una cadena de texto con un estilo único.
En este ejemplo, la clase _`TextStyle`_ aplica estilos de tamaño de fuente, peso y color al _`widget`_ _`Text`_.

---

## `Using themes for consistent styling`

Veamos ahora cómo usar temas (_`themes`_) para mantener un estilo consistente en diferentes _`widgets`_.
La capacidad de _`theming`_ de _`Flutter`_ para aplicaciones grandes ayuda a aplicar un estilo consistente en múltiples _`widgets`_. Puedes definir temas globales que se apliquen a todos los _`widgets`_ en tu app.

Para definir un tema global, puedes usar la clase _`ThemeData`_.
Aquí tienes un ejemplo:

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Theming Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello, World!'),
              RaisedButton(
                onPressed: () {},
                child: Text('Press Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

Este ejemplo define el tema global usando _`ThemeData`_, que establece el color primario y los estilos de texto.
Todos los _`widgets`_ _`Text`_ y _`RaisedButton`_ heredarán estos estilos a menos que se sobrescriban de forma local.

---

## `Styling buttons`

A continuación, exploremos cómo estilizar específicamente botones, los cuales son fundamentales para la interacción del usuario.
_`Flutter`_ proporciona varios _`widgets`_ de botón como _`ElevatedButton`_, _`TextButton`_ y _`OutlinedButton`_.
Aquí tienes un ejemplo de cómo estilizar un _`ElevatedButton`_.

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Button Styling'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.green,        // Background color
              onPrimary: Colors.white,      // Text color
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: Text('Press Me'),
          ),
        ),
      ),
    );
  }
}
```

En este ejemplo, puedes usar el método _`styleFrom`_ para personalizar la apariencia del botón.
La propiedad _`primary`_ establece el color de fondo, _`onPrimary`_ establece el color del texto y _`padding`_ ajusta el relleno del botón.
La propiedad _`textStyle`_ se usa para estilizar el texto dentro del botón.

---

## `Using custom fonts`

Pasando más allá de los _`widgets`_ individuales, exploremos cómo incorporar fuentes personalizadas en tu app.
Las fuentes personalizadas pueden agregar un toque único a tu aplicación.
Para usar una fuente personalizada, añádela al proyecto y actualiza el archivo _`pubspec.yaml`_.
Luego, agrega el archivo de fuente al directorio _`assets/fonts`_.

En este ejemplo, se añade una fuente personalizada al proyecto y se usa en el tema de la app:

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'CustomFont',
            fontSize: 18,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Fonts in Flutter'),
      ),
      body: Center(
        child: Text(
          'Hello with Custom Font',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
```

Ahora aplica la fuente personalizada en tu app.

---

## `Customizing container widget`

Finalmente, veamos cómo puedes personalizar _`widgets`_ _`Container`_ para mejorar el diseño visual y de _`layout`_.
Los _`Containers`_ son _`widgets`_ versátiles usados para contener otros _`widgets`_.
Puedes personalizar _`Containers`_ usando propiedades como _`padding`_, _`margin`_, _`decoration`_ y más.

Aquí tienes un ejemplo:

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Container Styling'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Text('Styled Container'),
          ),
        ),
      ),
    );
  }
}
```

En este ejemplo, el _`widget`_ _`Container`_ se usa y personaliza con _`padding`_, _`margin`_ y _`BoxDecoration`_.
La clase _`BoxDecoration`_ puede establecer el color de fondo, el borde redondeado y la sombra (_`boxShadow`_).

---

## En estas notas hemos aprendido:

- En estas notas, aprendiste que en _`Flutter`_, todos los componentes son _`widgets`_, formando el núcleo de la app.
- Aplicar estilos correctamente es esencial para crear interfaces de usuario visualmente atractivas y consistentes.
- _`Flutter`_ ofrece estilo mediante temas integrados y personalizados, además de personalización directa de _`widgets`_.
