# Routing in Flutter - Especificaciones Técnicas

## Especificaciones de la Aplicación

### Información de la App

- **Nombre**: Routing in Flutter
- **SDK Version**: Flutter >=3.22.0 <4.0.0
- **Plataformas Objetivo**: iOS, Android, Web (la compatibilidad Web puede variar en ejemplos avanzados)

### Dependencias

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## Arquitectura

### Jerarquía de Pantallas

#### 1. Pantalla Principal (`/`)

**Propósito**: Hub de navegación principal
**Características**:

- Menú de navegación basado en Cards
- AppBar con Material Design
- Secciones descriptivas para cada tipo de enrutamiento

**Widgets Usados**:

- Scaffold
- AppBar
- ListView
- Card
- ListTile
- Icon

#### 2. Sección de Rutas Nombradas (`/named-demo`)

**Propósito**: Demostrar navegación con rutas nombradas
**Características**:

- Navegación entre FirstScreen y SecondScreen
- Uso de `Navigator.pushNamed()`
- Navegación hacia atrás con `Navigator.pop()`

**Rutas**:

```dart
'/named-demo': (context) => NamedRoutesDemo(),
'/named/first': (context) => NamedFirstScreen(),
'/named/second': (context) => NamedSecondScreen(),
```

#### 3. Sección de Rutas Directas (`/direct-demo`)

**Propósito**: Demostrar navegación con rutas directas usando MaterialPageRoute
**Características**:

- Navegación usando `Navigator.push()` con MaterialPageRoute
- Pantallas de Perfil y Configuración
- Creación inmediata de rutas sin pre-registro

**Pantallas**:

- DirectRoutesDemo (hub)
- ProfileScreen
- SettingsScreen

#### 4. Sección de Paso de Datos (`/data-demo`)

**Propósito**: Demostrar paso y recuperación de datos entre pantallas
**Características**:

- Formulario con entrada de TextField
- Paso de datos a pantalla de resultado
- Recuperación de datos al volver atrás

**Pantallas**:

- DataPassingDemo (hub)
- FormScreen (acepta entrada del usuario)
- ResultScreen (muestra datos pasados)

**Estructura de Datos**:

```dart
// Ejemplo simple basado en las notas del módulo
class MessageData {
  final String message;

  MessageData({required this.message});
}
```

#### 5. Sección de Navegación Avanzada (`/advanced`)

**Propósito**: Mostrar escenarios avanzados de enrutamiento
**Características**:

- Simulación de deep linking (no deep linking real a nivel de SO)
- Reemplazo de pantalla con `pushReplacement()`
- Navegación condicional basada en estado local (booleano simple)

**Escenarios**:

- **Simulación de Deep Link**: Navegación directa a pantalla anidada específica mediante estructura de rutas
- **Reemplazo**: Login → Home (sin posibilidad de volver a login)
- **Condicional**: Navegar basándose en estado de autenticación simulado (booleano local, no Firebase)

**Nota Importante**: El deep linking implementado es una simulación educativa a través de la estructura de rutas, **no es deep linking real a nivel de sistema operativo**.

## Especificaciones UI/UX

### Sistema de Diseño

**Paleta de Colores**:

- Primario: Azul (Material Design por defecto)
- Acento: Ámbar
- Fondo: Blanco
- Superficie: Grey[100]

**Tipografía**:

- Encabezados: 24px, negrita
- Subencabezados: 18px, medium
- Cuerpo: 16px, regular
- Textos auxiliares: 14px, regular

**Espaciado**:

- Padding de secciones: 16px
- Margen de Cards: 8px
- Padding de botones: 12px horizontal, 8px vertical

### Patrones de Navegación

**Navegación hacia adelante**:

```dart
Navigator.push(context, MaterialPageRoute(builder: (context) => Screen()));
// o
Navigator.pushNamed(context, '/route');
```

**Navegación hacia atrás**:

```dart
Navigator.pop(context);
// o
Navigator.pop(context, data); // con datos de retorno
```

**Navegación con Reemplazo**:

```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => Screen()),
);
```

## 🧪 Escenarios de Prueba

### Checklist de Pruebas Manuales

- [ ] Todas las rutas nombradas navegan correctamente
- [ ] Todas las rutas directas navegan correctamente
- [ ] Los datos se pasan y muestran correctamente
- [ ] El botón de retroceso vuelve a la pantalla anterior
- [ ] Los datos del formulario se recuperan al volver
- [ ] El reemplazo de pantalla funciona sin navegación hacia atrás
- [ ] La navegación condicional responde a cambios de estado
- [ ] No hay fugas de memoria ni problemas con la pila de navegación
- [ ] `pop` retorna los datos correctos
- [ ] `pushReplacement` elimina la ruta anterior correctamente

## 📊 Objetivos de Rendimiento

- Tiempo de carga inicial: < 2 segundos
- Tiempo de transición entre pantallas: < 300ms
- Sin caída de frames durante navegación
- Uso de memoria: < 100MB

## 🔐 Estándares de Calidad del Código

- Todos los métodos públicos documentados con comentarios dartdoc
- Sin warnings ni errores del linter
- Convenciones de nombres consistentes (lowerCamelCase)
- Manejo apropiado de errores en todas las llamadas de navegación
- Uso de constructores const donde sea aplicable

## 📝 Requisitos de Documentación

- README.md con resumen de la app e instrucciones de configuración
- Comentarios inline para lógica compleja
- ROADMAP.md rastreando progreso
- DEV_LOG.md con notas de desarrollo
- SPECS.md (este archivo) con detalles técnicos

## 🚩 Limitaciones Conocidas

- Deep linking es simulado mediante estructura de rutas
- Navegación anidada con tabs solo es conceptual
- Navegación condicional usa estado local simple (no auth real)
- Compatibilidad Web puede variar para ejemplos avanzados de routing

## 🚀 Notas de Despliegue

- No requiere APIs externas
- No necesita base de datos
- Funciona completamente offline
- Compatible con Flutter Web, iOS y Android (con variaciones menores)

 <br>
 
 ---
