# **Perspectivas de Expertos**

# `Aspectos Clave del Diseño de Interfaces de Usuario con Flutter`

En estas notas, expertos en la materia compartirán sus conocimientos sobre el diseño de interfaces de usuario con Flutter. También hablarán de algunos ejemplos prácticos para crear aplicaciones Flutter responsivas y visualmente atractivas.

> "Voy a profundizar en algunos conceptos de UI con Flutter y en los aspectos clave que hay que tener en cuenta al diseñar interfaces de usuario con Flutter. En primer lugar, debes saber que **todo es un widget**, y los widgets son la jerarquía de clases en Flutter que describe la estructura y el diseño de la interfaz de usuario. Se gestionan en forma de árbol, e incluso elementos pequeños como texto, botones e imágenes son widgets.
>
> Otra cosa importante es conocer las **guías oficiales de diseño**, que en Android corresponden a **Material Design**, y que puedes encontrar fácilmente en Internet con una simple búsqueda en Google."
>
> _Halle Vogelpohl_, Mobile App Developer

> "Diseñar interfaces de usuario con Flutter ha sido una parte emocionante de mi trayectoria como desarrollador. Un aspecto clave a considerar es el **tema general y la identidad visual de la aplicación**, lo que incluye colores, tipografías y estilos de widgets. El sistema de temas de Flutter te permite definir **estilos globales** que se pueden aplicar en toda la aplicación.
>
> Otro aspecto importante es la **estructura de diseño y navegación** de la app. Usando widgets de layout de Flutter como `Row`, `Column` y `Stack`, puedes crear estructuras de interfaz complejas. Además, entender cómo gestionar la **navegación y las rutas** en Flutter es fundamental para ofrecer una experiencia de usuario fluida entre las diferentes pantallas de la aplicación".
>
> _Zain Ul Abidin_, Mobile App Developer

## Cómo trabajar con **orientación, diseño, widgets y restricciones** para crear aplicaciones Flutter responsivas y visualmente atractivas?

> "En primer lugar, está el widget `OrientationBuilder`, que sirve para cambiar el diseño de una aplicación en función de si está en modo horizontal o vertical.  
> Un ejemplo sería si tienes una cuadrícula de fotos y el teléfono está en orientación horizontal: en ese caso podrías mostrar cuatro o cinco fotos por fila, frente al modo vertical, donde quizá solo se muestren dos o tres.  
> Otro aspecto son los widgets de layout como `Row`, `Column`, `Grid`, etc., que permiten organizar los elementos fácilmente en esos formatos."
>
> > `Orientation builder` widget:  
> > To change the layout of an app
> >
> > - `Photo grid`:
> >   - In `landscape` mode: Show four or
> >     five photos in each row of the grid
> >   - In `portrait` mode: Show two or three photos in each row of the grid
> > - `Layout widgets`: To arrange elements
> >   in rows, columns, grids, and so on.
>
> "Siguiendo el ejemplo anterior de la cuadrícula de fotos, podrías usar el widget `Grid` para ello; o si tienes una lista de tareas, podrías usar el widget `Column`.
>
> Por último, están las \*\*restricciones. Estas incluyen widgets como `SizedBox`, `Container` y `Expanded`, que se aplican a los elementos hijos de esos widgets. `SizedBox` tiene un tamaño fijo, mientras que `Expanded` y `Container` son dinámicos y pueden adaptarse al tamaño de la pantalla. Es importante conocer la diferencia entre ellos según quieras que los elementos se estiren y escalen en función del tamaño de la pantalla."
>
> > - `Grid` widget for photo grid
> > - `Column` widget for task list
> > - **`Constraints`**: Sized box, container,
> >   and expanded widgets applied to
> >   the child elements
> > - `Sized box` is _fixed_
> > - `Expanded` and `containers` are _dynamic_
>
> _Halle Vogelpohl_, Mobile App Developer

> "Trabajar con orientación, diseño, widgets y restricciones es fundamental para crear aplicaciones Flutter responsivas que se vean bien en cualquier dispositivo.
>
> En cuanto a la orientación, siempre me aseguro de que mis aplicaciones puedan adaptarse tanto al modo vertical como al horizontal utilizando **MediaQuery** para detectar la orientación y ajustar el diseño en consecuencia.
>
> Para los widgets de layout, suelo usar widgets flexibles como `Row` y `Column` para crear diseños adaptativos que puedan redimensionarse y recolocarse según el tamaño de la pantalla."
>
> > - _`Orientation`_:
> >   - Apps should adapt to both portrait
> >     and landscape mode
> >   - Use _media query_ to detect orientation
> >     and adjust the layout accordingly
> > - _`Layout widgets`_: Use _flex widgets_ like
> >   `rows` and `columns` to create adaptive layouts
>
> "Las restricciones son muy importantes porque determinan el tamaño y la posición de los widgets.  
> Por ejemplo, usar widgets `Expanded` y `Flexible` dentro de un layout flexible permite que los widgets ocupen de forma flexible el espacio disponible, creando un diseño responsivo.  
> Un ejemplo práctico sería una aplicación de tipo **dashboard**, donde el diseño cambia dinámicamente según la orientación del dispositivo y el tamaño de la pantalla, asegurando que el contenido sea siempre accesible y visualmente atractivo."
>
> > - `Constraints`: Decide the size and place of the widgets
> > - `Expanded` and `flexible` widgets allow widgets to flexibly occupy the available space
> > - In dashboard app layout `changes dynamically` based on the device orientation and screen size
>
> _Zain Ul Abidin_, Mobile App Developer
