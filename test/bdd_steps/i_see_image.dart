import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I see {'https://coffee.alexflipnote.dev/KwS5dWCe9gQ_coffee.jpg'} image
Future<void> iSeeImage(WidgetTester tester, String url) async {
  await tester.pumpAndSettle();
  expect(find.image(NetworkImage(url)), findsAtLeastNWidgets(1));
}
