# Navegación en Flutter

Después de leer estas notas podrás:

- Identificar los componentes de la navegación en Flutter
- Describir los tres tipos de navegación utilizados en aplicaciones.

La navegación en aplicaciones móviles se refiere al proceso de moverse entre diferentes pantallas o páginas. Flutter facilita la creación de elementos de navegación mediante diferentes métodos, incluidos:

- **navigator**, que es un widget que administra una pila de páginas,
- **drawer**, que es un menú deslizante para navegación.

Los tres tipos de navegación que podrías usar en tu aplicación son:

1. navegación por pila (_`stack navigation`_),
2. navegación por pestañas (_`tab navigation`_),
3. navegación con menú lateral (_`drawer navigation`_).

Exploremos cada uno de estos tres tipos de navegación.

---

## `Stack Navigation`

Imagina una pila de cartas donde puedes agregar o quitar cartas de la parte superior. Stack navigation en Flutter funciona de forma similar. Permite hacer la transición entre páginas o pantallas **_apilando nuevas pantallas_** sobre las existentes.

Cuando navegas a una nueva pantalla, la pantalla actual se empuja hacia la pila de navegación. Cuando retrocedes, la pantalla superior se elimina de la pila. Esta forma de navegación se usa normalmente para **_flujos jerárquicos o lineales_** dentro de una aplicación.

Stack navigation se utiliza típicamente para navegar entre diferentes **_pantallas en un flujo lineal_**. Por ejemplo:

- una app de comercio electrónico podría tener una pantalla que muestre una lista de productos. Cuando un usuario toca un producto, navega a la pantalla de detalles del producto. Después de agregar artículos al carrito, el usuario puede navegar a la pantalla de pago.

Ahora, veamos cómo podría aparecer el código. Este código en Dart le indica a una app Flutter que navegue a una nueva pantalla:

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => ProductDetailScreen(product: product)),
);
```

- El código usa `navigator.push` para agregar una ruta a la pila de navegación y mostrar la pantalla de detalles del producto.
- La ruta `MaterialPageRoute` se crea con una función `builder` que construye el widget de la pantalla de detalles del producto, pasándole un objeto `product` desde el contexto actual.

---

## `Tab Navigation`

Otro tipo de navegación en Flutter es la navegación por pestañas. Las pestañas son un elemento esencial de navegación en apps móviles, ya que permiten a los usuarios cambiar entre diferentes secciones o vistas rápidamente sin perder su contenido actual.

Flutter simplifica la implementación de navegación por pestañas con sus widgets integrados, como

- **TabBar**
- **TabBarView**

Mediante estos widgets, puedes crear una experiencia de navegación con pestañas atractiva y funcional, ideal para organizar contenido en segmentos coherentes.  
También tienes la flexibilidad de personalizar la apariencia de las pestañas, lo que facilita crear un diseño distintivo para tu app.

Por ejemplo, puedes usar navegación por pestañas en apps que necesiten mostrar diferentes secciones o categorías entre las que los usuarios puedan cambiar rápidamente.  
Una app de redes sociales podría tener:

- una pestaña de inicio para mostrar el feed del usuario,
- una pestaña de búsqueda para buscar contenido,
- una pestaña de notificaciones para mostrar alertas,
- y una pestaña de perfil para mostrar la información del usuario.

Estas pestañas son partes esenciales de la experiencia de usuario.

---

## `Drawer Navigation`

La navegación con **`menú lateral`** es un estilo muy usado en aplicaciones móviles.  
Presenta un panel oculto que se desliza desde un lado de la pantalla, mostrando un menú con varias opciones de navegación.  
Este método ahorra espacio en pantalla, manteniendo visible el contenido principal de la app mientras ofrece acceso a funciones o secciones adicionales.  
La navegación con menú lateral es ideal para apps que tienen **muchas secciones** u opciones que no encajan de forma cómoda en una barra de pestañas. Por ejemplo, una app de noticias podría tener titulares principales y categorías como deportes, tecnología y entretenimiento.  
También podría tener **marcadores** para artículos guardados.  
Los usuarios también pueden acceder desde el menú lateral a **ajustes y preferencias** de la aplicación.

---

### En estas notas hemos aprendido:

- Que la navegación en Flutter facilita la construcción de elementos con:

  - **navigator**, un widget que administra una pila de páginas,
  - **drawer**, un menú deslizante.

- Stack navigation permite transiciones entre pantallas apilando nuevas pantallas sobre las existentes.
- Tab navigation permite a los usuarios cambiar entre diferentes secciones o vistas rápidamente sin perder su contenido actual.
- Drawer navigation tiene un panel oculto que se desliza desde un lado de la pantalla mostrando opciones de navegación.
