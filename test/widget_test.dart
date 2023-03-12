import 'package:listview_tester/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shouldFindAllListViewItems', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());

    final listView = find.byKey(listOfPeople);
    expect(listView, findsOneWidget);

    final items = find.descendant(of: listView, matching: find.byType(Text));

    // finally, counting the iyems this way also only recognises 6 items ?!!
    expect(items, findsNWidgets(10));
  });
}

