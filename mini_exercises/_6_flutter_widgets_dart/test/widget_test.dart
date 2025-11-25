// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_widgets_dart/main.dart';

void main() {
  testWidgets('Renders widget gallery sections', (WidgetTester tester) async {
    await tester.pumpWidget(const WidgetGalleryApp());
    await tester.pumpAndSettle();

    // App bar title should be visible.
    expect(find.text('Widget Gallery'), findsOneWidget);

    final scrollable = find.byType(Scrollable).first;

    await tester.scrollUntilVisible(
      find.text('Basic Widgets'),
      200,
      scrollable: scrollable,
    );
    expect(find.text('Basic Widgets'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Layout Widgets'),
      200,
      scrollable: scrollable,
    );
    expect(find.text('Layout Widgets'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Input Widgets'),
      200,
      scrollable: scrollable,
    );
    expect(find.text('Input Widgets'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Button Widgets'),
      200,
      scrollable: scrollable,
    );
    expect(find.text('Button Widgets'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Interactive Example'),
      200,
      scrollable: scrollable,
    );
    expect(find.text('Interactive Example'), findsOneWidget);
  });
}
