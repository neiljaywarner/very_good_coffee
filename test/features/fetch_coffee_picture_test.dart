// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../bdd_steps/the_app_is_running.dart';
import './../bdd_steps/i_see_image.dart';
import 'package:bdd_widget_test/step/i_tap_text.dart';

void main() {
  group('''Show coffee pictures''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
    }

    testWidgets('''Initial load''', (tester) async {
      await bddSetUp(tester);
      await iSeeImage(
          tester, 'https://coffee.alexflipnote.dev/n2umtTs_y80_coffee.jpg');
    });
    testWidgets('''Get New Picture''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'Load New');
      await iSeeImage(
          tester, 'https://coffee.alexflipnote.dev/KwS5dWCe9gQ_coffee.jpg');
    });
  });
}
