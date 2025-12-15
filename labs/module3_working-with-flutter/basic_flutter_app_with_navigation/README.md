# Basic Flutter App with Navigation

Aplicación Flutter sencilla que registra datos de usuario (nombre, edad, fecha de nacimiento y género) y los muestra en una segunda pantalla.

## Funcionalidades
- Formulario con validación de campos obligatorios.
- Selector de fecha de nacimiento con formateo legible (YYYY-MM-DD).
- Validación de edad contra la fecha de nacimiento.
- Desplegable para género.
- Navegación a pantalla de información usando rutas nombradas.
- Banner de depuración desactivado.

## Qué se aprende
- Construir formularios con `Form`, controladores y validadores.
- Usar `showDatePicker` y formatear fechas para mostrarlas al usuario.
- Validar datos calculados (edad derivada de la fecha de nacimiento).
- Pasar argumentos entre pantallas con `Navigator.pushNamed` y `ModalRoute`.
- Separar pantallas en archivos independientes para mantener el código organizado.

## Requisitos
- Flutter 3.x o superior y Dart SDK.
- Un emulador o dispositivo físico configurado.

## Cómo ejecutar
1) Instala dependencias:
```bash
flutter pub get
```
2) Ejecuta la app en un emulador o dispositivo:
```bash
flutter run
```
3) (Opcional) Ejecuta los tests incluidos:
```bash
flutter test
```

## Estructura breve
- `lib/main.dart`: formulario principal, lógica de validación y navegación.
- `lib/second_screen.dart`: pantalla que recibe y muestra los datos formateados.

¡Listo! Con estos pasos puedes probar y adaptar la app a tus necesidades. Espero que te sirva para ver lo aprendido en una practica real.
