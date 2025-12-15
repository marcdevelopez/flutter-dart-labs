// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

//import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:basic_flutter_app_with_navigation/main.dart';

void main() {
  testWidgets('registration form shows validation errors', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('User Registration'), findsOneWidget);
    expect(find.text('Name'), findsOneWidget);
    expect(find.text('Age'), findsOneWidget);

    await tester.tap(find.text('Register'));
    await tester.pump();

    expect(find.text('Please enter your name'), findsOneWidget);
    expect(find.text('Please enter your age'), findsOneWidget);
  });
}
