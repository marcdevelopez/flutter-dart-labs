# Lab – Hello World Web 🌐

🎯 Objetivo: Crear una aplicación Flutter Web que muestre “Hello World”.

---

## Pasos principales

### 1. Activar soporte web en Flutter

Antes de crear el proyecto asegúrate de tener habilitado el soporte web:

```bash
flutter config --enable-web
flutter devices
flutter doctor
```

- `flutter config --enable-web`: habilita el soporte para proyectos web.
- `flutter devices`: lista dispositivos disponibles (debería aparecer Chrome).
- `flutter doctor`: confirma que tu entorno Flutter está listo.

---

### 2. Crear el proyecto

```bash
flutter create hello_world_web
cd hello_world_web
flutter pub get
```

---

### 3. Modificar `lib/main.dart`

Reemplazar el contenido generado por defecto con:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Web',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World Web App'),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
```

### ⚠ Importante antes de ejecutar

Para evitar el error:

```

Target of URI doesn't exist: 'package:flutter/material.dart'

```

debes abrir esta carpeta como **proyecto raíz** en VS Code, ya que este lab contiene su propio `pubspec.yaml`.

Ejemplo:

```bash
cd labs/module1_introduction/lab_hello_world_web
code .
```

Luego ejecutar:

```bash
flutter clean
flutter pub get
```

---

### 4. Ejecutar la app en navegador

```bash
flutter run -d chrome
```

---

## Resultado esperado

- App con AppBar que dice **Hello World Web App**.
- Texto centrado en pantalla: **Hello World**.

---

## Variaciones probadas

- Cambiar el texto a `"Welcome to Flutter Web!"` y verificar el hot reload.
- Probar distintos estilos de texto (`TextStyle`).

---

✅ Primer lab completado con Flutter Web.
