# Style Cards — Specs
## Objetivo
Construir una pantalla única que demuestre estilos en Flutter:
- Tipografía global con `ThemeData` y fuente custom.
- Estilos específicos para `Text` y botones.
- Uso de `Container` con `padding`, `margin`, `BoxDecoration` (color, borde redondeado, sombra).
- Consistencia de colores y jerarquía visual.
- Las tarjetas deben ser visibles sobre el fondo: superficie con color contrastante, borde redondeado y sombra ligera.

## Alcance
- App de una sola pantalla, sin navegación.
- Lista corta (3 ítems) de tarjetas temáticas.
- Sin lógica de backend ni estados complejos; solo datos mock.

## Reglas
- Usar `ThemeData` para colores, `TextTheme` y `ElevatedButtonTheme`.
- Al menos un `Text` con `TextStyle` local sobrescribiendo el tema.
- Un `ElevatedButton` con `styleFrom` o `ButtonStyle`.
- `Container` con `margin`, `padding`, `decoration`, `boxShadow`.
- Fuente custom definida en `pubspec.yaml` y aplicada en `ThemeData`.
