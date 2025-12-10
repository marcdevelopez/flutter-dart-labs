import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:implementing_styles_in_flutter/main.dart';

void main() {
  testWidgets('renders style lab home', (tester) async {
    await tester.pumpWidget(const StyleLabApp());
    expect(find.text('Implementing styles in Flutter'), findsOneWidget);
    expect(find.text('Style playground'), findsOneWidget);
    expect(find.text('Typography kit'), findsOneWidget);
    expect(find.text('Buttons & actions'), findsOneWidget);
    expect(find.text('Containers & surfaces'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsNWidgets(3));
  });
}
