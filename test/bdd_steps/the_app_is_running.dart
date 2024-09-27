import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:very_good_coffee/app/view/app.dart';
import 'package:very_good_coffee/home/network/photos_repository.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await mockNetworkImages(
    () async => await tester.pumpWidget(
      ProviderScope(
        overrides: [photosRepositoryProvider.overrideWithValue(FakePhotosRepository())],
        child: App(),
      ),
    ),
  );
}
