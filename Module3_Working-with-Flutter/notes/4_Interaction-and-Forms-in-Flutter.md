# Interacción y Formularios en Flutter

Después de leer estas notas, podrás identificar las formas en que Flutter permite las interacciones, explicar los widgets de detección de gestos y describir cómo crear un formulario interactivo.

En Flutter, la interacción y la gestión de formularios son aspectos fundamentales que permiten a los desarrolladores crear aplicaciones dinámicas y receptivas. La interacción en Flutter se gestiona a través de widgets, que son los componentes básicos de una app Flutter. Estos widgets administran todo, desde el diseño y el estilo hasta la entrada del usuario y el reconocimiento de gestos.

Comencemos explorando cómo gestionar las interacciones del usuario con botones en Flutter.

## `Flutter button presses`

Los botones son la forma más básica en la que los usuarios interactúan con una aplicación.
En Flutter, puedes crear varios tipos de botones, como:

- `TextButton`
- `ElevatedButton`
- `OutlinedButton`

El aspecto más importante de un botón es cómo responde a los toques del usuario.
Cuando se pulsa un botón, se activa un evento onPressed. Aquí defines lo que debe ocurrir cuando el usuario interactúa con el botón. Por ejemplo, podrías:

- `Navegar a una nueva pantalla`,
- `Mostrar un mensaje`,
- `Actualizar algunos datos`.

Manejar este evento es sencillo:

- `Defines el botón` seleccionando el tipo que necesitas según el diseño y la funcionalidad.
- Luego `configuras la propiedad` **`onPressed`** para proporcionar la función que se ejecutará cuando el botón se pulse.

Este mecanismo simple permite definir respuestas claras y concisas ante las interacciones del usuario.

## `Handling text input`

**`TextField`**

La entrada de texto es otra forma común de interacción del usuario. En Flutter, esto se controla utilizando el widget TextField:

```
Un TextField permite que los usuarios ingresen texto, que puede usarse en formularios, funciones de búsqueda u otras características que requieran datos de tipo texto.
```

Veamos un ejemplo de cómo trabajar con entrada de texto:

1. Primero, crea un **TextField**, que es el widget básico para entrada de texto.
2. Segundo, usa un **`TextEditingController`** para gestionar y obtener el texto del campo. Es importante notar que el controlador proporciona métodos para, mediante programación:
   - **limpiar** el campo,
   - **obtener** su valor actual
   - o **modificar** el texto.
3. Tercero, usa la propiedad **`InputDecoration`** para personalizar la apariencia del TextField.

## `Form validation`

Los formularios son otra herramienta esencial para recopilar información de los usuarios. En Flutter, los formularios están compuestos por varios widgets TextField combinados dentro de un widget Form.

### Handling form validation

La validación de formularios garantiza que los datos ingresados por los usuarios cumplan ciertos criterios antes de ser procesados.
Puedes gestionar la validación de un formulario siguiendo estos pasos:

1. Primero, coloca los TextField dentro de un `widget Form`. Usa el widget Form para agrupar varios campos de entrada.
2. Luego, utiliza `validadores`. Cada TextField puede tener una función validadora que compruebe la validez de los datos ingresados. Los validadores son funciones que devuelven un mensaje de error si la entrada no es válida, o null si es válida.
3. Después, usa una `GlobalKey<FormState>` para gestionar el estado del formulario. El estado del formulario puede ser accedido y manipulado utilizando la GlobalKey, lo que te permite **comprobar si todos los campos** son válidos antes de continuar.

## `Gesture detectors`

También puedes gestionar interacciones y formularios mediante gestos. Los gestos son la forma en que los usuarios interactúan con una aplicación más allá de simples toques en botones o entrada de texto. Flutter proporciona una variedad de detectores de gestos para manejar interacciones complejas como deslizamientos, toques cortos, toques prolongados y más.
Algunos detectores comunes son:

- `GestureDetector`,
- `InkWell`
- y `Dismissible`.
  Estos detectores proporcionan callbacks para distintos tipos de gestos. Por ejemplo:

1. Puedes gestionar un toque colocando el widget dentro de un GestureDetector.
2. Luego defines la `función callback` proporcionando funciones para los gestos que deseas controlar, como:
   - `onTap`
   - o `onDoubleTap`.

## `Creating an interactive form`

Exploremos ahora un ejemplo de creación de un formulario de **inicio de sesión** interactivo en Flutter:

1. Primero, diseñarás el `layout`. Para ello, puedes usar widgets como Column, Row o Container para organizar los elementos del formulario. Por ejemplo, para crear un formulario de inicio de sesión, puedes usar Column para apilar los widgets verticalmente.
2. Segundo, integras los `botones con las acciones` apropiadas. Para el formulario de inicio de sesión, añades dos TextField con controladores.
3. Tercero, usas los TextField con `controladores para manejar la entrada` de texto. Para el botón de inicio de sesión, agregas un onPressed que valide el formulario.
4. El cuarto paso consiste en la validación de los datos implementando `validadores` dentro de un Form, asegurando que los usuarios no dejen campos vacíos.
5. Finalmente, mejoras la interacción agregando detectores de `gestos` donde sea necesario, como un gesto prolongado para mostrar una pista de contraseña.

Al comprender y usar estos conceptos, puedes crear aplicaciones dinámicas y receptivas en Flutter que ofrezcan una experiencia fluida al usuario.

---

### En estas notas hemos aprendido:

- Que los desarrolladores gestionan la **_interacción_** del usuario creando botones en Flutter, como TextButton, ElevatedButton y OutlinedButton.
- Una interacción común del usuario se habilita mediante el widget **_TextField_**, que es el widget básico para entrada de texto.
- En Flutter, los formularios se componen de varios TextField combinados dentro de un **_widget Form_**.
- Los widgets **_GestureDetector_** gestionan interacciones complejas como deslizamientos, toques y toques prolongados.
