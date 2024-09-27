// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCoffeePictureUrlHash() =>
    r'30cf44a33e0e9bcd59acc5cc3d92fe8e38324b15';

/// See also [getCoffeePictureUrl].
@ProviderFor(getCoffeePictureUrl)
final getCoffeePictureUrlProvider = AutoDisposeFutureProvider<String>.internal(
  getCoffeePictureUrl,
  name: r'getCoffeePictureUrlProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCoffeePictureUrlHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCoffeePictureUrlRef = AutoDisposeFutureProviderRef<String>;
String _$photosRepositoryHash() => r'99beb201a09a8cfc28ceec5cb3587a15f86391bd';

/// See also [photosRepository].
@ProviderFor(photosRepository)
final photosRepositoryProvider = Provider<IPhotosRepository>.internal(
  photosRepository,
  name: r'photosRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$photosRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PhotosRepositoryRef = ProviderRef<IPhotosRepository>;
String _$dioHash() => r'f22643f81afb8133425a37501109c4f46135d273';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = Provider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = ProviderRef<Dio>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
