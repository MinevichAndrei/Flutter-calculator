import 'package:calculator/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: SimpleCalculator(),
    ),
  );
  testWidgets('Calculator widgets test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    await tester.tap(find.widgetWithText(ElevatedButton, "1"));
    await tester.pump();
    expect(find.widgetWithText(Container, "1"), findsNWidgets(3));

    await tester.tap(find.widgetWithText(ElevatedButton, "2"));
    await tester.pump();
    expect(find.widgetWithText(Container, "12"), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "3"));
    await tester.pump();
    expect(find.text('123'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "4"));
    await tester.pump();
    expect(find.text('1234'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "5"));
    await tester.pump();
    expect(find.text('12345'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "6"));
    await tester.pump();
    expect(find.text('123456'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "7"));
    await tester.pump();
    expect(find.text('1234567'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "8"));
    await tester.pump();
    expect(find.text('12345678'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "9"));
    await tester.pump();
    expect(find.text('123456789'), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "."));
    await tester.tap(find.widgetWithText(ElevatedButton, "9"));
    await tester.pump();
    expect(find.widgetWithText(Container, "123456789.9"), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "⌦"));
    await tester.pump();
    expect(find.widgetWithText(Container, "123456789."), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "C"));
    await tester.pump();
    expect(find.widgetWithText(Container, "0"), findsWidgets);

    await tester.tap(find.widgetWithText(ElevatedButton, "00"));
    await tester.pump();
    expect(find.widgetWithText(Container, "00"), findsWidgets);

    await tester.tap(find.widgetWithText(ElevatedButton, "C"));
    await tester.tap(find.widgetWithText(ElevatedButton, "1"));
    await tester.tap(find.widgetWithText(ElevatedButton, "0"));
    await tester.pump();
    expect(find.widgetWithText(Container, "10"), findsOneWidget);

    // Plus
    await tester.tap(find.widgetWithText(ElevatedButton, "C"));
    await tester.tap(find.widgetWithText(ElevatedButton, "2"));
    await tester.tap(find.widgetWithText(ElevatedButton, "+"));
    await tester.tap(find.widgetWithText(ElevatedButton, "2"));
    await tester.pump();
    expect(find.widgetWithText(Container, "2+2"), findsOneWidget);
    await tester.tap(find.widgetWithText(ElevatedButton, "="));
    await tester.pump();
    expect(find.widgetWithText(Container, "4.0"), findsOneWidget);

    // Minus
    await tester.tap(find.widgetWithText(ElevatedButton, "C"));
    await tester.tap(find.widgetWithText(ElevatedButton, "9"));
    await tester.tap(find.widgetWithText(ElevatedButton, "-"));
    await tester.tap(find.widgetWithText(ElevatedButton, "6"));
    await tester.pump();
    expect(find.widgetWithText(Container, "9-6"), findsOneWidget);
    await tester.tap(find.widgetWithText(ElevatedButton, "="));
    await tester.pump();
    expect(find.widgetWithText(Container, "3.0"), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "C"));
    await tester.tap(find.widgetWithText(ElevatedButton, "3"));
    await tester.tap(find.widgetWithText(ElevatedButton, "×"));
    await tester.tap(find.widgetWithText(ElevatedButton, "2"));
    await tester.pump();
    expect(find.widgetWithText(Container, "3×2"), findsOneWidget);
    await tester.tap(find.widgetWithText(ElevatedButton, "="));
    await tester.pump();
    expect(find.widgetWithText(Container, "6.0"), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "C"));
    await tester.tap(find.widgetWithText(ElevatedButton, "8"));
    await tester.tap(find.widgetWithText(ElevatedButton, "÷"));
    await tester.tap(find.widgetWithText(ElevatedButton, "2"));
    await tester.pump();
    expect(find.widgetWithText(Container, "8÷2"), findsOneWidget);
    await tester.tap(find.widgetWithText(ElevatedButton, "="));
    await tester.pump();
    expect(find.widgetWithText(Container, "4.0"), findsOneWidget);
  });
}
