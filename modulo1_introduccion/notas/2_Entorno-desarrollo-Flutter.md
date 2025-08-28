# 🖥️ Entorno de Desarrollo en Flutter

En estas notas vamos a aprender a:  
- Describir los **componentes principales** del entorno de desarrollo Flutter.  
- Identificar el **lenguaje de programación Dart**.  
- Reconocer el uso de **emuladores y dispositivos físicos**.  
- Explicar cómo los componentes principales trabajan en conjunto.  

---

## 🔧 ¿Qué es Flutter?

Flutter es un **kit de herramientas de desarrollo de software (SDK) de interfaz de usuario** de código abierto.  
Permite crear aplicaciones **multiplataforma** (iOS, Android y Web) escribiendo el código una sola vez, con una UI consistente y nativa.

---

## ⚙️ Componentes principales del entorno Flutter

1. **Flutter SDK**  
   - Colección de herramientas necesarias para crear apps con Flutter.  
   - Incluye el **Dart SDK** (para ejecutar y compilar aplicaciones).  
   - Proporciona librerías, compiladores a código máquina y herramientas de depuración.  
   - Su CLI (herramienta de línea de comandos) permite crear, ejecutar y desplegar proyectos.

2. **Lenguaje Dart**  
   - Lenguaje de código abierto optimizado para el desarrollo de interfaces.  
   - Sintaxis similar a **JavaScript** o **Java**.  
   - Soporta dos formas de compilación:  
     - **Ahead-of-Time (AOT):** compila antes de la ejecución → mejora el tiempo de arranque.  
     - **Just-in-Time (JIT):** compila en tiempo de ejecución → mayor flexibilidad en desarrollo.  

3. **IDEs (Entornos de Desarrollo Integrados)**  
   - Herramientas con funciones como autocompletado, depuración y emulación.  
   - Los más usados para Flutter:  
     - **Visual Studio Code** (ligero, con plugins).  
     - **IntelliJ IDEA**.  
     - **Android Studio** (integración completa con herramientas Android).  

4. **Emuladores y Dispositivos Físicos**  
   - **Emuladores:** simulan dispositivos reales, permiten probar en distintos tamaños de pantalla de forma rápida.  
   - **Dispositivos físicos:** muestran el rendimiento y la experiencia real de la app en uso.  

---

## 📝 Ejemplo: App de Lista de Tareas

1. Crear un nuevo proyecto con el **Flutter SDK**.  
2. Escribir la lógica de la app en **Dart** (gestionar tareas, añadir nuevas, marcarlas como completadas).  
3. Manejar el **estado** con widgets con estado (`StatefulWidget`) para reflejar cambios dinámicos.  
4. Probar la aplicación en emuladores y dispositivos físicos.  
5. Usar herramientas de depuración del IDE para identificar y corregir errores.  
6. Una vez probado → la app está lista para lanzamiento.  

---

## ✅ Resumen

El **entorno de desarrollo Flutter** incluye:  
- **Flutter SDK**  
- **Dart** (lenguaje principal)  
- **IDEs** (VS Code, Android Studio, IntelliJ)  
- **Emuladores y dispositivos físicos**  

👉 Juntos, estos componentes permiten desarrollar y desplegar **apps de alta calidad y multiplataforma**.
