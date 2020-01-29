import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:neu_morphic/app/shared/widgets/neu_button/neu_button_widget.dart';

main() {
  testWidgets('NeuButtonWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(NeuContainer()));
    final textFinder = find.text('NeuButton');
    expect(textFinder, findsOneWidget);
  });
}
