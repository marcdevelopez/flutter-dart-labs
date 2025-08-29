# 📘 Conceptos Básicos de Dart

En estas notas **vamos a aprender sobre**:  
- La importancia de usar **Dart** en el desarrollo con Flutter.  
- El papel de la función `main`.  
- Conceptos fundamentales: **variables, tipos de datos y funciones**.  

---

## 🚀 ¿Por qué Dart?

- Lenguaje de Google, optimizado para aplicaciones rápidas en múltiples plataformas.  
- Diseñado para construir interfaces de usuario reactivas y fluidas.  
- Sintaxis simple y fácil de aprender → ideal para principiantes y expertos.  
- Base del desarrollo de **Flutter** y su rica UI interactiva.  

---

## 🔑 La función `main`

Toda aplicación Dart comienza con la función `main`, que es el **punto de entrada** del código.  

Ejemplo:

```dart
void main() {
  print('Hello World!');
}
```

- `void` indica que la función no devuelve nada.  
- No recibe parámetros en este caso.  
- `print` envía texto a la consola.  

---

## 🖨️ Función `print` y Variables

La función `print` se usa para mostrar texto o valores en consola, útil para depuración.  

Ejemplo:

```dart
void main() {
  var name = 'Flutter';
  print(name);
}
```

Aquí se declara una variable `name` con el valor `'Flutter'` y luego se imprime su contenido.  

---

## 📦 Variables en Dart

- Se usan para almacenar datos.  
- Dart es un lenguaje de **tipado estático**, pero también puede inferir el tipo de dato a partir del valor asignado.  

Ejemplo:

```dart
void main() {
  var name = 'Flutter';
  print('Hello $name!');
}
```

---

## 🔠 Tipos de Datos

Dart soporta varios tipos de datos básicos:  
- `int` → números enteros  
- `double` → números decimales  
- `String` → cadenas de texto  
- `bool` → booleanos (true/false)  
- `List` → listas (arreglos)  

Ejemplo:

```dart
void main() {
  int age = 30;
  double height = 5.9;
  String name = 'Flutter';
  bool isFlutterAwesome = true;
  List<String> languages = ['Dart', 'Python', 'JavaScript'];

  print('Name: $name Age: $age Height: $height Languages: $languages');
}
```

---

## 🛠️ Funciones

Las funciones encapsulan código reutilizable y pueden recibir parámetros y devolver valores.  

Ejemplo:

```dart
void greet(String name) {
  print('Hello $name!');
}

void main() {
  greet('Flutter');
}
```

- `greet` recibe un parámetro `name`.  
- Imprime un saludo con el valor de ese parámetro.  
- `main` llama a `greet('Flutter')` → imprime *Hello Flutter*.  

---

## ✅ Resumen Final

Los fundamentos de Dart que todo desarrollador debe conocer son:  
- **`main`** → punto de entrada de toda app.  
- **`print`** → salida de texto en consola.  
- **Variables** → almacenamiento de datos.  
- **Tipos de datos** → `int`, `double`, `String`, `bool`, `List`.  
- **Funciones** → código reutilizable con parámetros y retornos.  

👉 Con esta base ya puedes comenzar a crear aplicaciones en Flutter y explorar conceptos más avanzados de Dart.  
