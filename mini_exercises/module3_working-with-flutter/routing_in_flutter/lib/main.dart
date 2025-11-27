// Importa el paquete principal de Flutter con todos los widgets de Material Design
import 'package:flutter/material.dart';

// Importamos cada pantalla para poder usarlas en el mapa de rutas
import 'screens/home_screen.dart';
import 'screens/named/named_routes_demo.dart';
import 'screens/named/named_first_screen.dart';
import 'screens/named/named_second_screen.dart';
import 'screens/direct/direct_routes_demo.dart';
import 'screens/data/data_passing_demo.dart';
import 'screens/advanced/advanced_demo.dart';

void main() {
  // runApp() arranca la aplicación y coloca RoutingApp como widget raíz
  runApp(const RoutingApp());
}

// Widget principal de la aplicación. No tiene estado, por eso es StatelessWidget.
class RoutingApp extends StatelessWidget {
  // Constructor constante: permite crear instancias const de este widget
  const RoutingApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp es la raíz de una app con Material Design
    return MaterialApp(
      // Título informativo de la app (Android lo usa en el app switcher)
      title: 'Routing in Flutter',

      // Definimos el tema principal de la app
      theme: ThemeData(
        // Genera la paleta de colores automáticamente a partir del azul
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        // Activa Material Design 3
        useMaterial3: true,
      ),

      // Ruta inicial que se carga al arrancar la aplicación
      initialRoute: '/',

      // Mapa de rutas nombradas → cada clave es una ruta, cada valor una pantalla
      routes: {
        // Pantalla principal (Home Screen)
        '/': (context) => const HomeScreen(),

        // Demostración de navegación con rutas nombradas
        '/named-demo': (context) => const NamedRoutesDemo(),
        // Primera pantalla de la demo de rutas nombradas
        '/named/first': (context) => const NamedFirstScreen(),
        // Segunda pantalla de la demo de rutas nombradas
        '/named/second': (context) => const NamedSecondScreen(),

        // Demo de navegación directa usando MaterialPageRoute
        '/direct-demo': (context) => const DirectRoutesDemo(),

        // Demo de paso de datos entre pantallas
        '/data-demo': (context) => const DataPassingDemo(),

        // Demo avanzada con ejemplos más complejos de navegación
        '/advanced': (context) => const AdvancedDemo(),
      },
    );
  }
}
