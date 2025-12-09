# implementing_styles_in_flutter

## Fuente usada y por qué
- Familia: Inter en formato variable (wght + italic) desde Google Fonts: https://fonts.google.com/specimen/Inter
- Razón: con dos archivos cubrimos múltiples pesos y la variante italic, evitamos elegir variantes ópticas (18/24/28) y no dependemos de fuentes del sistema.

## Cómo obtenerla
1) Pulsa **Download family** y descomprime el ZIP.
2) Copia en `assets/fonts/`:
   - `Inter-VariableFont_opsz,wght.ttf`
   - `Inter-Italic-VariableFont_opsz,wght.ttf`

## Declaración en `pubspec.yaml`
Coloca este bloque en la sección `flutter:`:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/fonts/
  fonts:
    - family: InterCustom
      fonts:
        - asset: assets/fonts/Inter-VariableFont_opsz,wght.ttf
        - asset: assets/fonts/Inter-Italic-VariableFont_opsz,wght.ttf
          style: italic
```

## Uso en código
```dart
const TextStyle(
  fontFamily: 'InterCustom',
  fontWeight: FontWeight.w700, // usa la variable con peso 700
);

const TextStyle(
  fontFamily: 'InterCustom',
  fontStyle: FontStyle.italic, // usa el archivo italic variable
);
```
