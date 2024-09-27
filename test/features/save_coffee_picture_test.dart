// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './../bdd_steps/the_app_is_running.dart';
import 'package:bdd_widget_test/step/i_tap_text.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';
import './../bdd_steps/i_see_image.dart';

void main() {
  group('''Show favorites''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
    }

    testWidgets('''Initial load''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'Favorites');
      await iSeeText(tester, 'No pictures saved yet.');
    });
    testWidgets('''Save Picture''', (tester) async {
      await bddSetUp(tester);
      await iTapText(tester, 'Save Current');
      await iTapText(tester, 'Favorites');
      await iSeeImage(
          tester, 'https://coffee.alexflipnote.dev/KwS5dWCe9gQ_coffee.jpg');
    });
  });
}
