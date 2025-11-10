# Flutter Widgets

Después de leer estas notas, podrás:

* explicar el papel de los widgets en Flutter,
* enumerar los tipos de widgets
* analizar las consideraciones para el desarrollo de widgets que influyen en el éxito de una aplicación.

Garantizar una experiencia de usuario fluida e interactiva es fundamental. Los widgets desempeñan un papel clave al mostrar los datos de manera efectiva y capturar la entrada del usuario.

---

## Concepto principal

En Flutter, todo es un widget.
Los widgets son los componentes fundamentales de la interfaz de usuario que definen su apariencia visual según su configuración y estado.
Están estructurados en una disposición jerárquica conocida como el **árbol de widgets (widget tree)**, que ayuda a Flutter a actualizar la interfaz de usuario de manera eficiente en respuesta a los cambios de estado de la aplicación.

---

## Tipos de widgets

Los widgets se clasifican en **stateless** y **stateful**.

* **Stateless widgets** (sin estado) son inmutables y no almacenan ningún estado, lo que significa que sus propiedades permanecen constantes una vez creados.
  Ejemplos: `Text`, `Icon`, `RaisedButton`.

* **Stateful widgets** (con estado) pueden mantener y gestionar un estado, lo que les permite actualizarse y cambiar con el tiempo.
  Ejemplos: `Checkbox`, `Radio`, `Slider`.

---

## Clasificación funcional de los widgets

### Widgets básicos

Estos son componentes fundamentales en cualquier aplicación Flutter, formados por elementos de uso común como texto, imágenes, íconos y botones.
Son los cimientos sobre los cuales se construye la estructura principal de tu aplicación.

**Ejemplos:**

#### Text

Muestra una cadena de texto.
Se utiliza en cualquier lugar donde necesites mostrar texto, como encabezados, etiquetas o párrafos.

```dart
Text('Hello, Flutter!')
```

#### Image

Se usa para mostrar imágenes de diversas fuentes. Se utiliza para logotipos, fotografías o cualquier contenido visual.

```dart
Image.network('https://example.com/image.png')
```

#### Icon

Se usa para mostrar íconos. Se emplea en botones, barras de navegación o listas para representar acciones o elementos visualmente.

```dart
Icon(Icons.star)
```

#### ElevatedButton

Es un botón con elevación que tiene un aspecto elevado. Se usa para acciones como enviar un formulario o navegar a otra pantalla.

```dart
ElevatedButton(
  onPressed: () {},
  child: Text('Press Me'),
)
```

---

### Widgets de diseño (Layout Widgets)

Estos ayudan a organizar otros widgets en la pantalla.
Definen la estructura y posición de los widgets:

#### Column

Organiza sus elementos de forma vertical.
Se utiliza cuando necesitas apilar widgets uno encima de otro, como en una lista de elementos o un formulario.

```dart
Column(
  children: <Widget>[
    Text('First item'),
    Text('Second item'),
  ],
)
```

#### Row

Organiza sus elementos de forma horizontal.
Se usa cuando necesitas colocar widgets uno al lado del otro, como en una barra de herramientas o una fila de botones.

```dart
Row(
  children: <Widget>[
    Text('First item'),
    Text('Second item'),
  ],
)
```

#### Container

Es un widget versátil que puede contener otros widgets y aplicar relleno (padding), márgenes, bordes y colores de fondo.

```dart
Container(
  padding: EdgeInsets.all(16.0),
  color: Colors.blue,
  child: Text('This is inside a container'),
)
```

#### Stack

Superpone sus elementos unos sobre otros.
Se utiliza cuando necesitas que los widgets se solapen, como una foto con un texto encima.

```dart
Stack(
  children: <Widget>[
    Container(color: Colors.blue, width: 100, height: 100),
    Container(color: Colors.red, width: 50, height: 50),
  ],
)
```

---

### Widgets de entrada (Input Widgets)

Estos incluyen campos de texto, casillas de verificación, botones de opción y conmutadores (switches), que reciben la entrada del usuario:

#### TextField

Permite a los usuarios ingresar texto.
Se usa en campos de entrada de texto como barras de búsqueda o formularios.

```dart
TextField(
  decoration: InputDecoration(labelText: 'Enter your name'),
)
```

#### Checkbox

Permite a los usuarios seleccionar múltiples opciones de un conjunto.
Se utiliza en configuraciones o formularios donde se permiten varias selecciones.

```dart
Checkbox(
  value: true,
  onChanged: (bool? value) {},
)
```

#### Radio

Permite seleccionar una sola opción de un conjunto.
Se usa cuando solo se puede elegir una alternativa.

```dart
Radio(
  value: 1,
  groupValue: selectedValue,
  onChanged: (int? value) {},
)
```

#### Switch

Permite alternar entre los estados encendido y apagado.
Se usa, por ejemplo, para activar o desactivar una función.

```dart
Switch(
  value: true,
  onChanged: (bool value) {},
)
```

---

### Widgets de botones

Los botones son elementos interactivos que los usuarios pueden tocar para ejecutar acciones.

**Incluyen:**

#### ElevatedButton

Botón con elevación y apariencia elevada, usado para acciones principales como enviar formularios.

```dart
ElevatedButton(
  onPressed: () {},
  child: Text('Elevated Button'),
)
```

#### TextButton

Botón plano sin elevación, usado para acciones secundarias como enlaces de navegación.

```dart
TextButton(
  onPressed: () {},
  child: Text('Text Button'),
)
```

#### IconButton

Botón con un ícono en lugar de texto, usado para acciones representadas por íconos como “me gusta” o “compartir”.

```dart
IconButton(
  icon: Icon(Icons.thumb_up),
  onPressed: () {},
)
```

---

### Widgets de lista (List Widgets)

Se utilizan para mostrar listas desplazables de elementos:

#### ListView

Muestra una lista desplazable de widgets.
Se usa cuando necesitas mostrar listas de elementos que el usuario puede recorrer, como contactos o mensajes.

```dart
ListView(
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.map),
      title: Text('Map'),
    ),
    ListTile(
      leading: Icon(Icons.photo_album),
      title: Text('Album'),
    ),
    ListTile(
      leading: Icon(Icons.phone),
      title: Text('Phone'),
    ),
  ],
)
```

---

## Consideraciones para el desarrollo de widgets

Ahora analicemos los aspectos clave del desarrollo de widgets para crear aplicaciones de alta calidad y capacidad de respuesta.
Flutter ofrece una amplia variedad de widgets para construir interfaces atractivas, pero comprender los fundamentos es esencial.

En Flutter, todo es un widget.
Cada elemento en la pantalla es un widget dispuesto en una estructura jerárquica.
Debes saber cómo organizar los widgets eficazmente dentro de esta jerarquía y familiarizarte con los widgets stateful y stateless para gestionar su estado.

Del mismo modo, para dominar los widgets principales, explora `Text`, `Image`, `Button`, `Icon` y `Container` para construir los componentes fundamentales de la interfaz.
Comprende cómo usar diseños flexibles, aprende los widgets de formulario para la entrada del usuario y explora las listas y cuadrículas para mostrar datos de forma eficiente.

Para lograr los mejores diseños de interfaz, sigue las pautas de **Material Design** para obtener una apariencia y sensación coherentes, y asegúrate de que los diseños se adapten a diferentes tamaños de pantalla.
Además, para evitar errores comunes, divide los widgets grandes en widgets más pequeños y reutilizables, y sigue las guías de diseño para lograr un aspecto pulido.

---

## Resumen

En estas notas aprendiste que todo en Flutter es un widget organizado en una estructura jerárquica llamada árbol de widgets, que actualiza la interfaz de manera eficiente según los cambios de estado.
Los **stateless widgets** son inmutables y constantes, mientras que los **stateful widgets** pueden gestionar y actualizar su estado con el tiempo.
Flutter ofrece una gran variedad de widgets, incluyendo **básicos**, **de diseño**, **de entrada**, **de botón** y **de lista**, cada uno con funciones específicas para construir una interfaz de usuario receptiva.

Concéntrate en comprender el árbol de widgets, dominar los widgets principales, gestionar el estado, seguir las buenas prácticas de diseño y evitar errores comunes para un desarrollo de aplicaciones efectivo.

---
