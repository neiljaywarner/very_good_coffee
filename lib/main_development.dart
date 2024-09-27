import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:very_good_coffee/bootstrap.dart';

String path = '';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  path = (await getApplicationDocumentsDirectory()).path + 'qzXZnSk_9oU_coffee.jpg';
  var response = await Dio().download(
    'https://coffee.alexflipnote.dev/qzXZnSk_9oU_coffee.jpg',
    path,
  );
  debugPrint(response.statusMessage);
  debugPrint(path);
  await bootstrap(() => const TestPictureApp());
  //bootstrap(() => const App());
}

class TestPictureApp extends StatelessWidget {
  const TestPictureApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Center(
            child: Image.file(File(path)),
          ),
        ),
      );
}
