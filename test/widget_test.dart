import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/slide_to_act.dart';

void main() {
  testWidgets('defaults', (tester) async {
    await tester.pumpWidget(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SlideAction(),
      ),
    ));

    await tester.pumpAndSettle();

    expect(find.text('Slide to act'), findsOneWidget);

    expect(
      find.byType(MaterialApp),
      matchesGoldenFile('goldens/defaults.png'),
    );
  });

  testWidgets('custom text', (tester) async {
    await tester.pumpWidget(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SlideAction(
          text: 'Show more',
        ),
      ),
    ));

    await tester.pumpAndSettle();

    expect(find.text('Show more'), findsOneWidget);
  });

  testWidgets('custom text style', (tester) async {
    await tester.pumpWidget(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(builder: (context) {
          return SlideAction(
            textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.red,
                ),
          );
        }),
      ),
    ));

    await tester.pumpAndSettle();

    expect(
      find.byType(MaterialApp),
      matchesGoldenFile('goldens/text-style.png'),
    );
  });
}
