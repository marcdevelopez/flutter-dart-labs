# Dev Log
- Aqui llevare un registro al detalle de los puntos importantes a recordar y tener en cuenta durante el desarrolo de este proyecto. Podria tener este aspecto, se ira modificando en cuanto comience el proyecto:  
  - Día 1: Definido alcance y tema visual (paleta verde/ámbar, fuente CustomFont). Esqueleto de app creado.
  - Día 2: Añadido `ThemeData` con `TextTheme` y `ElevatedButtonTheme`. Tarjetas básicas renderizando datos mock.
  - Día 3: Ajustados estilos locales (título hero, badges), sombras y radio de borde en `Container`. Prueba manual en emulador: OK.
  - Día 4: Paso 4 completado: `ListView` con header y 3 tarjetas placeholders listas para estilizar; `widget_test.dart` actualizado para reflejar el nuevo layout y evitar fallos en CI.  
  Aprendizaje: al cambiar copy/estructura, actualizar tests y correr `flutter test` + `flutter analyze` antes de abrir PR; mejor usar keys o selectores estables para que el texto no rompa aserciones.
  - Día 5 (2025-12-11): Ajustado overlay de `ElevatedButton` usando alpha en el tema global para evitar deprecaciones y alinear con CI; correr `flutter analyze` con la versión fijada de Flutter para validar.
  
