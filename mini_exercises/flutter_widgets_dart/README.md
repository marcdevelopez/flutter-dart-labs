## 📘 README – Proyecto `flutter_widgets_dart`

### 🧱 Descripción general

Este proyecto forma parte del repositorio **`FLUTTER-DART-LABS`**, una colección de ejercicios prácticos y mini-proyectos desarrollados en Flutter y Dart.

`flutter_widgets_dart` es una **mini-app de galería interactiva** que demuestra el uso de distintos tipos de widgets básicos, de diseño e interactivos en Flutter.
Está pensada para aprender y mostrar conceptos esenciales como:

* Widgets con y sin estado (Stateless / Stateful)
* Jerarquía del árbol de widgets
* Widgets básicos: `Text`, `Image`, `Icon`, `Button`
* Widgets de diseño: `Row`, `Column`, `Container`, `Stack`
* Widgets de entrada e interacción (`TextField`, `Switch`, `Checkbox`, `Radio`)
* Principios de Material Design

---

### ⚠️ Importante: cómo abrir correctamente el proyecto

Este módulo se encuentra dentro de la ruta:

```
FLUTTER-DART-LABS/mini_exercises/flutter_widgets_dart
```

Si abres **todo el repositorio principal (`FLUTTER-DART-LABS`)** desde VS Code, el analizador de Dart puede mostrar errores falsos como:

* `Duplicate root element android`
* `A project with the name android already exists`
* Problemas con el import de `package:flutter/material.dart`

Esto ocurre porque hay **múltiples proyectos Flutter dentro del mismo repositorio** y el analizador no puede procesarlos simultáneamente.

#### ✅ Solución

Para evitar estos errores, **abre únicamente la carpeta del módulo**:

1. En Visual Studio Code, selecciona
   **Archivo → Abrir carpeta...**
2. Navega hasta
   `mini_exercises/flutter_widgets_dart`
3. Espera a que se cargue el entorno de Flutter.
   Verás que los errores desaparecen y los imports se reconocen correctamente.

---

### ▶️ Ejecución del proyecto

1. Abre una terminal en la raíz del módulo:

   ```bash
   cd mini_exercises/flutter_widgets_dart
   ```
2. Instala las dependencias:

   ```bash
   flutter pub get
   ```
3. Ejecuta la app en un dispositivo o emulador:

   ```bash
   flutter run
   ```

---

### 🧩 Estructura básica

```
flutter_widgets_dart/
 ┣ android/
 ┣ ios/
 ┣ lib/
 ┃ ┗ main.dart
 ┣ test/
 ┣ pubspec.yaml
 ┣ analysis_options.yaml
 ┣ README.md
 ┗ ...
```

---

### 👨‍💻 Autor

Proyecto creado por **Marcos García (@marcdevelopez)**
Parte de la colección **Flutter-Dart Labs**.
Más proyectos en: [github.com/marcdevelopez](https://github.com/marcdevelopez)  
Contacto: [contact@marcdevelopez.com](mailto:contact@marcdevelopez.com)

---
