import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

/// Tab Navigation demo using an inner DefaultTabController
/// to show how tabs work.
class TabNavigationDemo extends StatelessWidget {
  const TabNavigationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        const InfoCard(
          title: 'Tab Navigation',
          description:
              'Las pestañas permiten cambiar entre diferentes secciones sin '
              'perder el estado actual. Son muy comunes en apps de redes '
              'sociales, correo o música.',
        ),
        Card(
          child: SizedBox(
            height: 260,
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.home), text: 'Inicio'),
                      Tab(icon: Icon(Icons.search), text: 'Buscar'),
                      Tab(icon: Icon(Icons.person), text: 'Perfil'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _TabContent(
                          title: 'Feed principal',
                          icon: Icons.home,
                          color: Colors.greenAccent,
                        ),
                        _TabContent(
                          title: 'Buscador',
                          icon: Icons.search,
                          color: Colors.orangeAccent,
                        ),
                        _TabContent(
                          title: 'Perfil del usuario',
                          icon: Icons.person,
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Simple animated content for each tab.
class _TabContent extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color color;

  const _TabContent({
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  State<_TabContent> createState() => _TabContentState();
}

class _TabContentState extends State<_TabContent> {
  bool _expanded = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(16),
        width: _expanded ? 220 : 160,
        height: _expanded ? 160 : 120,
        decoration: BoxDecoration(
          color: widget.color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: widget.color, width: 2),
        ),
        child: InkWell(
          onTap: () {
            setState(() {
              _expanded = !_expanded;
            });
          },
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.icon, size: 32),
                const SizedBox(height: 8),
                Text(widget.title, textAlign: TextAlign.center),
                const SizedBox(height: 8),
                const Text(
                  'Pulsa para animar tamaño',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
