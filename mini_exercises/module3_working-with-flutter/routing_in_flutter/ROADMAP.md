# Routing in Flutter - Hoja de Ruta del Proyecto

## Resumen del Proyecto

Una demostración profesional de los conceptos de enrutamiento en Flutter, incluyendo rutas nombradas, rutas directas, paso de datos y patrones de navegación. Este proyecto muestra las mejores prácticas de navegación en aplicaciones móviles que buscan reclutadores y empresas.

## 📚 Objetivos de Aprendizaje

Basado en las notas del Módulo 3 [Enrutamiento en Flutter](../../../Module3_Working-with-Flutter/notes/6_Routing-in-Flutter.md):

- Implementar rutas nombradas para navegación centralizada
- Implementar rutas directas usando MaterialPageRoute
- Usar la clase Navigator para navegación básica (push/pop)
- Pasar datos entre pantallas
- Demostrar varios escenarios de enrutamiento

## Fases de Desarrollo

### Fase 1: Configuración del Proyecto ✅

- [x] Crear estructura del proyecto Flutter
- [x] Configurar archivos de documentación (ROADMAP.md, SPECS.md, DEV_LOG.md)
- [x] Configurar dependencias del proyecto
- [x] Configurar estructura inicial de MaterialApp

### Fase 2: Implementación de Navegación Core

- [ ] Crear pantalla principal con opciones de navegación
- [ ] Implementar estructura de rutas nombradas
- [ ] Implementar navegación con rutas directas
- [ ] Crear transiciones básicas entre pantallas

### Fase 3: Funcionalidades Avanzadas

- [ ] Implementar paso de datos entre pantallas
- [ ] Crear pantalla de formulario con recuperación de datos
- [ ] Implementar ejemplo de reemplazo de pantalla (pushReplacement)
- [ ] Añadir ejemplo simple de navegación condicional basada en estado local

### Fase 4: Pulido y Documentación

- [ ] Añadir comentarios y documentación apropiada
- [ ] Asegurar cumplimiento con Material Design
- [ ] Probar todos los flujos de navegación
- [ ] Actualizar DEV_LOG con notas finales

## 🎨 Estructura de la Aplicación

```
Pantalla Principal (/)
├── Demo de Rutas Nombradas (/named-demo)
│ ├── Primera Pantalla (/named/first)
│ └── Segunda Pantalla (/named/second)
├── Demo de Rutas Directas (/direct-demo)
│ ├── Pantalla de Perfil
│ └── Pantalla de Configuración
├── Demo de Paso de Datos (/data-demo)
│ ├── Pantalla de Formulario
│ └── Pantalla de Resultado
└── Navegación Avanzada (/advanced)
├── Simulación de Deep Link (navegación a pantalla específica)
├── Ejemplo de Reemplazo (Login → Home sin volver atrás)
└── Ejemplo de Navegación Condicional (basada en estado booleano local)
```

## 📋 Notas Importantes

### Limitaciones Conocidas

- **Deep Linking**: Se implementará como simulación mediante estructura de rutas, no deep linking real a nivel de sistema operativo
- **Navegación Condicional**: Ejemplo simple basado en estado booleano local (sin Firebase ni autenticación real)
- **Navegación Anidada**: Solo conceptual, no se implementarán tabs con navegación independiente

### Alcance del Proyecto

Este proyecto cubre **únicamente** los conceptos explicados en las notas de [Routing in Flutter](../../../Module3_Working-with-Flutter/notes/6_Routing-in-Flutter.md)

- Named routes
- Direct routes (MaterialPageRoute)
- Navigator.push / Navigator.pop
- Navigator.pushNamed
- Navigator.pushReplacement
- Paso de datos entre pantallas

## Criterios de Éxito

- ✅ Todos los conceptos de enrutamiento de las notas están implementados
- ✅ El código es limpio, bien documentado y sigue las mejores prácticas de Flutter
- ✅ La aplicación es completamente funcional sin crashes
- ✅ La UI es profesional y sigue Material Design
- ✅ El código demuestra comprensión adecuada para revisión profesional

## 📅 Cronograma

- **Día 1**: Implementación Core (Fase 1 y 2)
- **Día 2**: Escenarios Mejorados (Fase 3)
- **Día 3**: Pulido + Revisión (Fase 4)

## 🔗 Referencias

- Módulo 3, notas [Enrutamiento en Flutter](../../../Module3_Working-with-Flutter/notes/6_Routing-in-Flutter.md):
- Documentación Oficial de Flutter: [Navigation & Routing](https://docs.flutter.dev/ui/navigation)
- Guías de Material Design: [Material Desing 3](https://m3.material.io/develop/flutter)
