# 📱 Flutter Navigation Playground

Mini-ejercicio para practicar los tres patrones básicos de navegación en Flutter: Stack, Tabs y Drawer. Incluye temas claro/oscuro, animaciones sencillas y un set inicial de tests.

---

## Qué encontrarás

- Pantalla principal con `DefaultTabController` y Drawer real.
- Demos específicas de **Stack**, **Tab** y **Drawer** navigation.
- Tema claro/oscuro gestionado desde `main.dart` y `theme/app_theme.dart`.
- Animaciones: transición personalizada con `PageRouteBuilder` y `AnimatedContainer` en las tabs.
- Reutilización de UI con el widget `InfoCard`.

---

## Estructura

```txt
lib/
 ├─ main.dart                       # Root con ThemeMode y tema dinámico
 ├─ theme/
 │   └─ app_theme.dart              # Tema claro/oscuro con ColorScheme y textTheme
 ├─ screens/
 │   ├─ navigation_home_screen.dart # Home con Tabs + Drawer
 │   ├─ stack_navigation_demo.dart  # Demo de navegación en pila + animación
 │   ├─ stack_detail_screen.dart    # Pantalla destino del Stack demo
 │   ├─ tab_navigation_demo.dart    # Demo de pestañas con contenido animado
 │   ├─ drawer_navigation_demo.dart # Explicación + accesos directos del Drawer
 │   ├─ favorites_screen.dart       # Pantallas llamadas desde el Drawer
 │   ├─ settings_screen.dart
 │   └─ about_screen.dart
 └─ widgets/
     └─ info_card.dart              # Tarjeta reutilizable de texto/contenido
```

---

## Cómo se desarrolló

1) **Base y temas**: se creó `main.dart` con un `StatefulWidget` root que alterna `ThemeMode`. Los temas claro/oscuro viven en `theme/app_theme.dart` con `ColorScheme.fromSeed`.
2) **UI reutilizable**: `InfoCard` como componente común para explicar y alojar acciones.
3) **Home de navegación**: `navigation_home_screen.dart` monta Tabs + Drawer, delega la demo de cada patrón en su propia pantalla y contiene el toggler de tema.
4) **Demos**:
   - Stack: `stack_navigation_demo.dart` navega a `stack_detail_screen.dart` con animación tipo slide.
   - Tabs: `tab_navigation_demo.dart` usa un `DefaultTabController` interno y un `AnimatedContainer` tocable en cada tab.
   - Drawer: `drawer_navigation_demo.dart` explica el patrón y lanza pantallas de ejemplo (`favorites`, `settings`, `about`).
5) **Tests**: carpetas preparadas (`test/`, `integration_test/`) para añadir casos siguiendo la guía.

---

## Ejecutar

```sh
flutter pub get
flutter run
```

---

## Notas rápidas

- El icono del AppBar alterna tema claro/oscuro.
- Las animaciones están pensadas para ser simples y didácticas (fáciles de modificar).
- El proyecto es un esqueleto: añade más rutas, refina temas o integra un router más avanzado si lo necesitas.

---

## Autor

Marcos Garcia.  
contacto: [contact@marcdevelopez.com](mailto:contact@marcdevelopez.com)

## 💌 Si este repo te ayudó...

Te invito a:

⭐ dejar una estrella  
🍴 hacer fork y adaptarlo  
🔁 compartirlo con alguien que esté aprendiendo Flutter  
🤝 proponer mejoras vía PR  

---
