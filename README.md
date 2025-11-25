# Flutter & Dart Labs 🚀

Este repositorio es mi espacio personal de aprendizaje en **Dart y Flutter**.  
La intención es ir subiendo, poco a poco, **todo lo que voy practicando y aprendiendo** para mi propio seguimiento y también como recurso abierto para otros que quieran consultarlo o acompañar el progreso.

---

## 📚 Objetivo del repositorio

- Documentar mi avance en el estudio de Flutter y Dart.
- Subir **labs, ejemplos y proyectos** organizados por módulos.
- Crear una **guía práctica** de referencia para otros estudiantes/desarrolladores que quieran aprender siguiendo el mismo recorrido.
- Mantener un historial claro con commits descriptivos y trabajar en ramas por módulo (se crean y eliminan a medida que se completan, manteniendo `main` limpio y actualizado).

---

## 📂 Estructura prevista

```
modulo1_introduccion/      → Notas iniciales + primer lab (Hello World Web)
modulo2_dart_language/     → Variables, funciones, debugging...
modulo3_flutter_basics/    → Layouts, navegación, estilos...
modulo4_flutter_advanced/  → APIs, plugins, almacenamiento local...
modulo5_final_project/     → Proyecto final de publicación
```

---

## ✅ Progreso actual

- [x] **Módulo 1 – Introducción a Flutter y Dart**

  - [x] [Introducción a Flutter](module1_introduction/notes/1_Introduction-to-Flutter.md)
  - [x] [Entorno de desarrllo en Flutter](module1_introduction/notes/2_Flutter-Development-Environment.md)
  - [x] [Comparación de Flutter con otros frameworks](module1_introduction/notes/3_Comparison-Flutter-vs-Other-Frameworks.md)
  - [x] [Flutter Toolchain, SDK, & Tools](module1_introduction/notes/4_Flutter-Toolchain-SDK-Tools.md)
  - [x] [Introducción a utilidades de Flutter](module1_introduction/notes/5_Introduction-to-Flutter-Utilities.md)
  - [x] [Opiniones de expertos: primeros pasos en Flutter](module1_introduction/notes/6_Expert-Viewpoints-Getting-Started-Flutter.md)
  - [x] [Basicos Dart](module1_introduction/notes/7_Basics-of-Dart.md)
  - [x] [Mini-Ejercicio: Básicos Dart](mini_exercises/basics_exercise.dart)
  - [x] [Lab: Creando una Aplicación Web Flutter Hello World](labs/module1_introduction/lab_hello_world_web/lib/main.dart)

- [ ] **Módulo 2 – Exploring Dart Language**

  - [x] [Funcionamiento interno de Dart](Module2_Dart-languaje/notes/1_Internals-of-Dart.md)
  - [x] [Mini-Ejercicio: Funcionamiento interno de Dart](mini_exercises/internals_exercise.dart)
  - [x] [Fundamentos de Dart — Puntos de Vista de Expertos](Module2_Dart-languaje/notes/2_Expert-Viewpoints-Fundamentals-of-Dart.md)
  - [x] [Variables y Tipos](Module2_Dart-languaje/notes/3-Variables-and-types.md)
  - [x] [Mini-Ejercicio: Variables y Tipos en Dart](mini_exercises/variables_and_types.dart)
  - [x] [Funciones y Métodos en Dart](Module2_Dart-languaje/notes/4_Functions-methods-in-Dart.md)
  - [x] [Mini-Ejercicio: Funciones y métodos en Dart](mini_exercises/functions_methods_in_dart.dart)
  - [x] [Clases en Dart](Module2_Dart-languaje/notes/5_Classes-in-Dart.md)
  - [x] [Mini-Ejercicio: Clases en Dart](mini_exercises/classes_in_dart.dart)
  - [x] [Lab: Usar variables, funciones y métodos en Dart](labs/module2_dart-languaje/lab_variables_functions_methods_Dart/lib/main.dart)
  - [x] [Librerías en Dart](Module2_Dart-languaje/notes/6_Libraries-in-Dart.md)
  - [x] [Lab: Librerías en Dart](labs/module2_dart-languaje/lab_libraries_in_dart)
  - [x] [Línea de comandos y utilidades](module2_dart-languaje/notes/7_Command-Line-and-Utilities.md)
  - [x] [Editores y depuradores para Dart](module2_dart-languaje/notes/8_Editors-and-debuggers-for-Dart.md)
  - [x] [Lab: Depuración de aplicaciones Dart](labs/module2_dart-languaje/lab_debugging_dart_app/dart_debug)

- [ ] **Módulo 3 – Trabajo con Flutter**

  - [x] [Proceso de desarrollo de apps Flutter](Module3_Working-with-Flutter/notes/1_Development-Process-of-Flutter-Apps.md)
  - [x] [Widgets de Flutter](Module3_Working-with-Flutter/notes/2_Flutter-Widgets.md)
  - [x] [Mini-Ejercicio: Widgets de Flutter](mini_exercises/flutter_widgets_dart)
  - [x] [Puntos de vista expertos: Widgets de Flutter y catálogo de widgets](Module3_Working-with-Flutter/notes/3_Flutter-Widgets-Catalog.md)
  - [x] [Interacción y formularios en Flutter](Module3_Working-with-Flutter/notes/4_Interaction-and-Forms-in-Flutter.md)
  - [x] [Navegación en Flutter](Module3_Working-with-Flutter/notes/5_Navigation-in-Flutter.md)
  - [x] [Mini-Ejercicio: Navegación en Flutter](mini_exercises/navigation_in_flutter)
  - [ ] Enrutamiento en Flutter
  - [ ] Implementar estilos en Flutter
  - [ ] Puntos de vista expertos: Aspectos clave del diseño de interfaces con Flutter
  - [ ] Lab: Crear una app Flutter básica con navegación

- [ ] **Módulo 4 – Flutter avanzado**

  - [ ] Uso de plugins en Flutter
  - [ ] Lab: Llamar a una API Back-End en Flutter
  - [ ] Introducción a funcionalidades nativas móviles
  - [ ] Gestión del estado en Flutter
  - [ ] Puntos de vista expertos: Widgets Stateless vs Stateful en Flutter
  - [ ] Llamar APIs con Flutter
  - [ ] Usar Flutter con Firebase
  - [ ] Lab: Explorar plugins en Flutter
  - [ ] Persistencia con Flutter
  - [ ] Lab: Explorando almacenamiento local
  - [ ] Usar almacenamiento local con Flutter
  - [ ] Lab: Usar almacenamiento local con Flutter

- [ ] **Módulo 5 – Proyecto final**
  - [ ] Preparar una app Flutter para publicación
  - [ ] Lab: Preparar una app Flutter para publicación
  - [ ] Fundamentos de App Store y Play Store
  - [ ] Publicación de una app en iOS
  - [ ] Publicación de una app en Android
  - [ ] Lab: Borrador de envío de app para App Store y Play Store
  - [ ] Aprovechar Google Analytics
  - [ ] Lab: Usar Google Analytics
  - [ ] Proyecto práctico: Crear una app de seguimiento de gastos
  - [ ] Proyecto final: Crear una app de seguimiento de tiempo


---

## 🚀 Cómo ejecutar los labs

1. Habilitar soporte web en Flutter:
   ```bash
   flutter config --enable-web
   flutter devices
   flutter doctor
   ```
2. Entrar en la carpeta del lab y ejecutar:
   ```bash
   flutter run -d chrome
   ```

---

### ⚠ Importante: abrir correctamente cada lab Flutter en VS Code

Para evitar el error común:

```

Target of URI doesn't exist: 'package:flutter/material.dart'

````

es necesario abrir **cada proyecto Flutter como raíz del workspace** en VS Code.  
Esto significa que NO debes abrir la carpeta completa del repositorio `flutter-dart-labs/`, sino entrar al lab correspondiente, por ejemplo:

```bash
cd labs/module1_introduction/lab_hello_world_web
code .
````

Cada lab contiene su propio `pubspec.yaml`, por lo que Flutter solo funcionará correctamente si ese archivo está en la raíz del proyecto abierto.

Después de abrirlo, ejecutar:

```bash
flutter clean
flutter pub get
flutter run -d chrome
```

---

## 🔖 Notas finales

Este README irá evolucionando a medida que avance en el curso y en mis proyectos.  
La idea es que al final se convierta en una **guía completa y ordenada** que muestre tanto mi progreso como un camino útil para otros desarrolladores.

---
