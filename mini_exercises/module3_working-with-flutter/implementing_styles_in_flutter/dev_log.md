# Dev Log

- Aqui llevare un registro al detalle de los puntos importantes a recordar y tener en cuenta durante el desarrolo de este proyecto. Podria tener este aspecto, se ira modificando en cuanto comience el proyecto:
  - Día 1 (2025-12-09): Definido alcance y tema visual (paleta verde/ámbar, fuente CustomFont). Esqueleto de app creado. Añadido `ThemeData` con `TextTheme` y `ElevatedButtonTheme` y tarjetas básicas mock. Ajustados estilos locales (título hero, badges), sombras y radio de borde en `Container`. Prueba manual en emulador: OK.
  - Día 2 (2025-12-10): Paso 4 completado: `ListView` con header y 3 tarjetas placeholders listas para estilizar; `widget_test.dart` actualizado para reflejar el nuevo layout y evitar fallos en CI.  
    Aprendizaje: al cambiar copy/estructura, actualizar tests y correr `flutter test` + `flutter analyze` antes de abrir PR; mejor usar keys o selectores estables para que el texto no rompa aserciones.
  - Día 3 (2025-12-11): Ajustado overlay de `ElevatedButton` usando alpha en el tema global para evitar deprecaciones y alinear con CI; tarjetas decoradas con fondo blanco, esquinas redondeadas y sombra suave para contrastar sobre el surface.
    Aprendizaje: al probar en desktop/web, usar overlays claros para que hover/pressed se perciban; correr `flutter run` para validar contraste de tarjetas.
