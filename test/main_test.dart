import 'package:calculator/calculator_screen.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:calculator/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Calculator());
    expect(find.byType(SimpleCalculator), findsOneWidget);
  });
}
