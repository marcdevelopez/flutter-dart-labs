// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:routing_in_flutter/main.dart';

void main() {
  testWidgets('shows home menu options', (WidgetTester tester) async {
    await tester.pumpWidget(const RoutingApp());

    expect(find.text('Routing in Flutter'), findsOneWidget);
    expect(find.text('Named Routes'), findsOneWidget);
    expect(find.text('Direct Routes'), findsOneWidget);
    expect(find.text('Data Passing'), findsOneWidget);
    expect(find.text('Advanced'), findsOneWidget);
  });
}
