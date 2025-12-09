import 'package:flutter_test/flutter_test.dart';
import 'package:implementing_styles_in_flutter/main.dart';

void main() {
  testWidgets('renders style lab home', (tester) async {
    await tester.pumpWidget(const StyleLabApp());
    expect(find.text('Implementing styles in Flutter'), findsOneWidget);
    expect(find.text('Pantalla base lista para aplicar estilos.'), findsOneWidget);
  });
}

