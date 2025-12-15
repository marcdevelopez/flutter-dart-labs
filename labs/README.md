# Labs del curso Flutter

Este directorio contiene los **labs oficiales del curso** que realicé, el cual dió origen a este proyecto. Son los ejercicios guiados tal como se plantean en las lecciones del curso, y los uso para practicar, documentar mi progreso y compartir resultados con otros.

## Diferencia con `mini_exercises`

- `labs/`: trabajos del curso, siguen los enunciados oficiales.
- `mini_exercises/`: ejercicios personales y experimentales para reforzar conceptos.

## Estructura

- `labs/module1_introduction/lab_hello_world_web/`
- `labs/module2_dart-language/lab_variables_functions_methods_Dart/`
- `labs/module3_working-with-flutter/lab_create_a basic_flutter_app_with_navigation/`  
...

## Cómo ejecutarlos

Desde la raíz del repo:

- Labs Flutter:
  ```bash
  cd labs/module1_introduction/lab_hello_world_web
  flutter run -d chrome
  ```
- Labs Dart:
  ```bash
  cd labs/module2_dart-language/lab_libraries_in_dart
  dart run
  ```

> Cada lab tiene su propio `pubspec.yaml`. Ábrelo como raíz en el editor para evitar problemas de dependencias (similar a los mini ejercicios).
