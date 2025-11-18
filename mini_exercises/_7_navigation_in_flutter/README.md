# 📱 Flutter Navigation Playground

### Aprendiendo navegación en Flutter (Stack, Tabs, Drawer) + Temas, Animaciones y Tests

Bienvenido/a a **Flutter Navigation Playground**, un mini-proyecto educativo diseñado para ayudarte a **entender, recordar y enseñar** los tres tipos principales de navegación en Flutter:

| Tipo de navegación    | Descripción                                                                 |
| --------------------- | --------------------------------------------------------------------------- |
| **Stack Navigation**  | Navegar entre pantallas apiladas con `Navigator.push()` y `Navigator.pop()` |
| **Tab Navigation**    | Navegación por pestañas usando `TabBar` y `TabBarView`                      |
| **Drawer Navigation** | Menú lateral para navegar entre secciones con `Drawer`                      |

Además, incorpora mejoras recomendadas para desarrollo profesional:

✨ Tema claro / oscuro con `ThemeData`  
🎞️ Animación de transición entre pantallas  
🧪 Tests unitarios, de widgets e integración  
📦 Código limpio, organizado por carpetas  

Este repositorio sirve como **guía de estudio**, demo para tu portfolio e incluso como apoyo para otros estudiantes de Flutter.

---

## 🌟 Objetivos del proyecto

Este proyecto te permitirá:

✔ Comprender y practicar los patrones esenciales de navegación en Flutter  
✔ Aprender a estructurar un proyecto real y escalable  
✔ Personalizar la apariencia visual utilizando **ThemeData**  
✔ Aplicar conceptos básicos de **animaciones**  
✔ Realizar las primeras pruebas de un proyecto con el framework de testing de Flutter  
✔ Tener una referencia rápida siempre disponible en tu GitHub  

---

## 🧩 Estructura del proyecto

```txt
lib/
 ├─ main.dart                     # Punto de entrada. Controla tema claro/oscuro
 ├─ theme/
 │   └─ app_theme.dart            # Definición de temas e intercambio de modo
 ├─ screens/
 │   ├─ navigation_home_screen.dart   # Pantalla principal con Tabs + Drawer
 │   ├─ stack_navigation_demo.dart    # Demo navegación por pila
 │   ├─ stack_detail_screen.dart      # Pantalla destino de Stack Navigation
 │   ├─ tab_navigation_demo.dart      # Demo de navegación por pestañas
 │   ├─ drawer_navigation_demo.dart   # Explicación de Drawer Navigation
 │   ├─ favorites_screen.dart         # Pantallas accesibles desde Drawer
 │   ├─ settings_screen.dart
 │   └─ about_screen.dart
 └─ widgets/
     └─ info_card.dart            # Card reutilizable para mostrar contenido

test/
 ├─ unit_theme_toggle_test.dart       # Test unitario de cambio de tema
 └─ widget_stack_navigation_test.dart # Test de navegación por pila

integration_test/
 └─ app_test.dart                     # Test básico de integración
```

---

## 🚀 ¿Qué puedes hacer con este Playground?

| Pantalla / Funcionalidad | Qué demuestra                                           |
| ------------------------ | ------------------------------------------------------- |
| 📚 Home con Tabs         | Contenedor principal, navegación entre secciones        |
| ⬆️ Stack Navigation      | `Navigator.push()` con animación personalizada          |
| 🗂️ Tab Navigation       | `TabBar` y `TabBarView` con animación en contenido      |
| 📂 Drawer Navigation     | Menú lateral con rutas a Favoritos, Ajustes y Acerca de |
| 🌓 Theme Switch          | Alternancia entre tema claro/oscuro                     |
| 🎞️ Animaciones          | `PageRouteBuilder` + `AnimatedContainer`                |
| 🧪 Testing               | Unit, widget e integración                              |

---

## 🔧 Requisitos

* Flutter 3.0 o superior
* Dart 2.17 o superior
* Editor recomendado: VS Code o Android Studio

Comprobar instalación:

```sh
flutter --version
```

---

## ▶️ Ejecución del proyecto

```sh
flutter pub get
flutter run
```

---

## 📝 Paso a paso sugerido para aprender

Se recomienda seguir este orden de implementación (ideal para ramas Git y PRs):

| Etapa | Funcionalidad                       | Contenidos claves                    |
| ----- | ----------------------------------- | ------------------------------------ |
| 1️⃣   | Crear proyecto + estructura base    | main.dart, carpetas lib/screens      |
| 2️⃣   | Implementar **Stack Navigation**    | Navigator.push/pop, animación básica |
| 3️⃣   | Implementar **Tab Navigation**      | TabBar + TabBarView                  |
| 4️⃣   | Implementar **Drawer Navigation**   | Drawer + ListTile + Navigator.push   |
| 5️⃣   | Añadir **ThemeData** (claro/oscuro) | ThemeMode, toggleThemeMode()         |
| 6️⃣   | Añadir **Animaciones**              | PageRouteBuilder, AnimatedContainer  |
| 7️⃣   | Añadir **Tests**                    | Unit, widget, integración            |
| 8️⃣   | Documentación y mejoras visuales    | README, capturas, limpieza           |

---

## 🎨 Tema claro / oscuro

Este proyecto implementa un selector de tema usando:

📁 `theme/app_theme.dart`
💡 `ThemeMode` en `main.dart`

Cambia entre modos pulsando el icono ☀️🌙 en el AppBar.

---

## 🎞️ Animación en navegación

Stack Navigation utiliza una transición tipo slide:

```dart
PageRouteBuilder(
  pageBuilder: (_, __, ___) => const StackDetailScreen(),
  transitionsBuilder: (_, animation, __, child) {
    return SlideTransition(
      position: animation.drive(
        Tween(begin: const Offset(1, 0), end: Offset.zero)
            .chain(CurveTween(curve: Curves.easeInOut)),
      ),
      child: child,
    );
  },
);
```

---

## 🧪 Testing incluido

| Test                    | Archivo                             |
| ----------------------- | ----------------------------------- |
| Unit test tema          | `unit_theme_toggle_test.dart`       |
| Widget test navegación  | `widget_stack_navigation_test.dart` |
| Integration test básico | `integration_test/app_test.dart`    |

Ejecutar tests:

```sh
flutter test
```

---

## 👨‍💻 Buenas prácticas utilizadas

✔ Organización modular del código  
✔ Comentarios explicativos en archivos clave   
✔ Separación widgets/pantallas/temas  
✔ Reutilización con `InfoCard`  
✔ Nombres claros y consistentes  
✔ Animaciones simples pero útiles para UI/UX  
✔ Estructura escalable para futuras rutas (GoRouter, Riverpod, etc.)  

---

## 📚 Recursos recomendados

| Recurso                                  | Enlace                                                                           |
| ---------------------------------------- | -------------------------------------------------------------------------------- |
| Documentación oficial Flutter Navigation | [https://docs.flutter.dev/ui/navigation](https://docs.flutter.dev/ui/navigation) |
| Material Design Flutter components       | [https://m3.material.io/](https://m3.material.io/)                               |
| Curso que motivó este proyecto           | IBM Mobile App Developer (Coursera)                                              |

---

## 📄 Licencia

MIT — siéntete libre de usar este repo para aprender, crear tus propias demos o compartir con otros estudiantes. ⭐

---

## 🙌 Créditos / Autor

Proyecto diseñado por **Marc García (marcdevelopez)**  
Flutter & Cross-Platform Developer  
GitHub: [https://github.com/marcdevelopez](https://github.com/marcdevelopez)  
Portfolio: [marcdevelopez.com](https://marcdevelopez.com)  

---

## 💌 Si este repo te ayudó...

Te invito a:

⭐ dejar una estrella  
🍴 hacer fork y adaptarlo  
🔁 compartirlo con alguien que esté aprendiendo Flutter  
🤝 proponer mejoras vía PR  

---
