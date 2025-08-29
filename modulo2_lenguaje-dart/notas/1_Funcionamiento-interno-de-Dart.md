# Funcionamiento interno de Dart 🧩

En estas notas **vamos a aprender sobre**:

- Los fundamentos de Dart.
- Las bibliotecas principales de Dart.
- El funcionamiento de la Dart Virtual Machine (VM).
- Las fases de compilación y ejecución.
- Los modos de compilación JIT y AOT.
- La recolección de basura y la gestión de memoria.
- La concurrencia en Dart (Isolates y async/await).

---

## ¿Qué es Dart?

Dart es un lenguaje de programación diseñado para crear aplicaciones móviles, de escritorio, de servidor y web.  
Se usa principalmente junto con el framework Flutter para desarrollar aplicaciones.  
Vamos a examinar los fundamentos de Dart y por qué estas características lo convierten en una herramienta poderosa para desarrollar aplicaciones multiplataforma de alta calidad.

---

## Dart VM (Máquina Virtual)

Una de las características principales es la **Dart Virtual Machine (VM)**, que actúa como el motor que ejecuta el código Dart.  
Proporciona un entorno donde se ejecuta el código y se encarga de tareas como la gestión de memoria y la ejecución del código.  
Está diseñada para ejecutar código Dart de forma rápida y eficiente, y funciona bien tanto para crear como para usar apps.

---

## Fases de ejecución: compilación y ejecución

Los programas Dart tienen dos fases importantes:

- **Compile-time (tiempo de compilación):**  
  El código se verifica y optimiza, permitiendo detectar errores temprano y mejorando el rendimiento.

- **Run-time (tiempo de ejecución):**  
  La Dart VM ejecuta el código ya compilado y gestiona operaciones dinámicas como la asignación de memoria o las interacciones del usuario.

Esta dualidad permite un desarrollo eficiente y una ejecución de alto rendimiento.

---

## Modos de compilación: JIT y AOT

Dart convierte el código a lenguaje máquina mediante dos técnicas:

- **JIT (Just-in-Time):**  
  Ocurre mientras el programa se está ejecutando. Convierte el código Dart justo antes de que se necesite.  
  Ideal para el desarrollo, ya que permite ver los cambios al instante sin reiniciar la app (_hot reload_).

- **AOT (Ahead-of-Time):**  
  Compila todo el código Dart antes de que se ejecute la app.  
  Esto permite un arranque más rápido y un rendimiento más fluido.

---

## Recolección de basura (Garbage Collection)

Dart gestiona la memoria automáticamente mediante un sistema de recolección de basura con estrategia generacional.  
Divide los objetos según su "edad":

- **Generación joven:** objetos temporales que se eliminan con frecuencia.
- **Generación vieja:** objetos usados con frecuencia que se mantienen más tiempo en memoria.

Ejemplo:

- En una app de chat, los **mensajes leídos** se consideran de generación joven y pueden eliminarse.
- Los **contactos del usuario** son de generación vieja y permanecen en memoria por más tiempo.

---

## Concurrencia en Dart

Dart permite ejecutar múltiples tareas al mismo tiempo usando:

- **Isolates:**  
  Son “trabajadores” independientes que no comparten memoria. Se comunican entre ellos mediante mensajes, evitando conflictos.

- **Programación asíncrona (async/await):**  
  Permite que el código continúe ejecutándose mientras espera otras tareas (por ejemplo, cargar datos de internet).

Esto permite una experiencia fluida y responsiva para el usuario, incluso mientras la app realiza operaciones como cargar un archivo o datos remotos.

### Notas propias:

- Usa **async/await** (Futures, Streams) 👉 cuando la tarea es esperar algo externo (I/O).  
  Ejemplo: esperar una petición HTTP, leer del disco, consultar Firebase.

- Usa **Isolates** 👉 cuando la tarea es muy intensiva en CPU.  
  Ejemplo: procesar una foto, comprimir un archivo, cifrar datos, cálculos matemáticos pesados.

⚡ **Regla rápida para acordarte**:

- Si la tarea es **esperar** → async/await.
- Si la tarea es **pensar (cálculo pesado)** → isolate.

---

## Bibliotecas principales de Dart

Dart incluye un conjunto robusto de bibliotecas para facilitar el desarrollo:

- **dart:core** → Se incluye automáticamente. Contiene funciones y clases básicas como números, cadenas (strings), listas, etc.
- **dart:async** → Para programación asíncrona. Incluye clases como Future y Stream.
- **dart:io** → Para operaciones de entrada/salida como leer o escribir archivos, o conectar a internet.
- **dart:convert** → Para conversión de datos (por ejemplo, JSON ↔ objetos Dart).
- **dart:math** → Proporciona funciones matemáticas y constantes para cálculos complejos.

---

## Resumen final

- La Dart VM ejecuta código eficientemente en dos fases: compilación y ejecución.
- Dart usa compilación JIT (en tiempo de ejecución) y AOT (antes de ejecutar).
- La recolección de basura gestiona la memoria limpiando objetos temporales y antiguos automáticamente.
- Dart permite concurrencia mediante Isolates y programación async/await.
- Incluye bibliotecas clave como `dart:core`, `dart:async`, `dart:io`, `dart:convert` y `dart:math`.
