import 'package:flutter/material.dart';
import 'package:very_good_coffee/utils/show_alert_dialog.dart';

Future<void> showExceptionAlertDialog({
  required BuildContext context,
  required String title,
  required dynamic exception,
}) =>
    showAlertDialog(
      context: context,
      title: title,
      content: exception.toString(),
      defaultActionText: 'OK',
    );
// TODO(neiljaywarner): custom error text/classes
