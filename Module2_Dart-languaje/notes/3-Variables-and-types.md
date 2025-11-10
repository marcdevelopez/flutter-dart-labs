# Variables y Tipos 🔤

En estas notas **vamos a aprender sobre**:

- La importancia de usar variables y tipos de datos en Dart.
- Cómo declarar variables con `var`, `const` y `final`.
- Los diferentes tipos de datos en Dart: números, cadenas, booleanos, listas y mapas.
- La importancia de `null` en Dart.
- La inferencia de tipos y las anotaciones.

---

## Introducción

En programación, las **variables** y los **tipos de datos** son conceptos fundamentales que forman la base de cualquier código.  
Las variables actúan como **marcadores de posición** para almacenar datos, mientras que los tipos de datos especifican qué tipo de información puede contener una variable, como números o texto.  

Comprender estos conceptos básicos es esencial para escribir código en Dart eficiente y efectivo, lo que ayuda a los desarrolladores a construir aplicaciones sólidas y funcionales.

---

## Uso de variables

Las variables actúan como contenedores para guardar datos que pueden cambiar con el tiempo.  
Para usar una variable hay dos pasos principales:

1. Declarar la variable con un nombre:
   ```dart
   var greeting;
   ```

2. Asignarle un valor:
   ```dart
   greeting = 'hello!';
   ```

---

## Palabras clave: `var`, `const`, `final`

En Dart puedes declarar variables usando **`var`**, **`const`** o **`final`**. Cada palabra clave tiene un propósito:

- **`var`** → Declara una variable sin especificar explícitamente su tipo. El tipo se infiere según el valor asignado.  
  Se puede reasignar la variable con otro valor del mismo tipo.

- **`const`** → Declara **constantes de tiempo de compilación**.  
  El valor de una constante se determina al compilar y no se puede cambiar en tiempo de ejecución.

- **`final`** → Declara una variable que **solo se puede establecer una vez**.  
  Una vez asignada, no se puede cambiar su valor.  
  A diferencia de `const`, los valores `final` pueden asignarse en tiempo de ejecución.

Ejemplo de uso:

```dart
var name = 'Alice';
final age = 30;
const pi = 3.14;
```

Código en Dart con explicación:

```dart
void main() {
  var name = "Alice";
  final age; // no asignada en tiempo de compilación
  const pi = 3.14;

  name = "Bob";   // válido porque es var
  age = 20;       // válido porque es final (se asigna en tiempo de ejecución)
  pi = 3.142;     // error: const no se puede modificar
}
```

Error mostrado en VS Code IDE:

```
Constant variables can't be assigned a value.
(dart: assignment_to_const)
Try removing the assignment, or remove the modifier 'const' from the variable.
```

---

## Tipos de datos en Dart

Dart es un lenguaje **tipado estáticamente**, lo que significa que cada variable debe tener un tipo de dato.  
Los tipos más comunes son:

- **Números**
- **Cadenas (strings)**
- **Booleanos**
- **Listas**
- **Mapas**

### Números

Dart distingue entre dos tipos de números:

- **`int`** → enteros.  
- **`double`** → números de punto flotante.

Ejemplo:

```dart
int age = 30;
double height = 5.9;
```

### Cadenas (Strings)

Representan una secuencia de caracteres.  
Se pueden usar comillas simples o dobles.

```dart
String greeting = 'Hello, World!';
```

#### Interpolación de cadenas

Dart permite incluir variables y expresiones dentro de una cadena de forma sencilla, usando `$`:

```dart
String name = 'Alice';
String message = 'Hello, $name!';
print(message);   // Output: Hello, Alice!
```

Esto es más legible que concatenar con el operador `+`.

### Booleanos

Los valores booleanos pueden ser **true** o **false**, y se usan en estructuras de control como `if` o `while`.

Ejemplo:

```dart
bool isVisible = true;
bool isActive = false;
```

### Listas

Son colecciones ordenadas de elementos.  
En Dart, los índices empiezan en **0**.

```dart
List<String> fruits = ['Apple', 'Banana', 'Cherry'];
print(fruits[0]);   // Output: Apple
```

- `Apple` → índice 0  
- `Banana` → índice 1  
- `Cherry` → índice 2  

También se puede acceder por índice y mostrar en consola:  

```dart
print(fruits[0]); // Apple
```

Se pueden añadir elementos con `.add()`:

```dart
fruits.add('Orange');
```

### Mapas

Un **mapa** es una colección de pares **clave–valor**.  
Cada clave es única y está asociada a un valor.  
Son útiles para buscar datos asociados a claves únicas.

Ejemplo:

```dart
Map<String, int> scores = {
  'Alice': 90,
  'Bob': 85,
  'Charlie': 95,
};
print(scores['Alice']);   // Output: 90

scores['Dave'] = 88;      // añadir nuevo par
```

Esto permite gestionar colecciones de datos relacionados de forma eficiente.

---

## Uso de `null`

En Dart, **`null` representa la ausencia de un valor**.  
Las variables pueden declararse como anulables si se usa `?` después del tipo.

Ejemplo:

```dart
String? nullableString = null;
int? nullableInt = null;
```

Esto indica que esas variables pueden contener un valor o bien `null`.

---

## Inferencia de tipos y anotaciones

Dart puede **inferir el tipo automáticamente**:

```dart
var city = "New York"; // inferido como String
```

También puedes declarar explícitamente el tipo:

```dart
String city = "New York";
```

---

## Resumen final

- Las variables son contenedores de datos que pueden cambiar con el tiempo.  
- Se pueden declarar con `var`, `final` o `const`.  
- Dart es un lenguaje tipado estáticamente, con tipos comunes como:  
  **números, cadenas, booleanos, listas y mapas**.  
- Los números pueden ser `int` (enteros) o `double` (punto flotante).  
- Las cadenas permiten interpolación con `$`.  
- Los booleanos representan `true` o `false`.  
- Las listas son colecciones ordenadas de elementos, con índice basado en cero.  
- Los mapas son colecciones de pares clave–valor.  
- `null` representa la ausencia de valor y se maneja con tipos anulables (`?`).  
- Dart permite tanto inferencia de tipos como anotación explícita.  
