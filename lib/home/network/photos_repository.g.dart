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
String _$saveCoffeePictureUrlHash() =>
    r'3e67accf6fe336cebe6a6b130b0e111dd5fdc642';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [saveCoffeePictureUrl].
@ProviderFor(saveCoffeePictureUrl)
const saveCoffeePictureUrlProvider = SaveCoffeePictureUrlFamily();

/// See also [saveCoffeePictureUrl].
class SaveCoffeePictureUrlFamily extends Family<AsyncValue<String>> {
  /// See also [saveCoffeePictureUrl].
  const SaveCoffeePictureUrlFamily();

  /// See also [saveCoffeePictureUrl].
  SaveCoffeePictureUrlProvider call(
    String url,
  ) {
    return SaveCoffeePictureUrlProvider(
      url,
    );
  }

  @override
  SaveCoffeePictureUrlProvider getProviderOverride(
    covariant SaveCoffeePictureUrlProvider provider,
  ) {
    return call(
      provider.url,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'saveCoffeePictureUrlProvider';
}

/// See also [saveCoffeePictureUrl].
class SaveCoffeePictureUrlProvider extends AutoDisposeFutureProvider<String> {
  /// See also [saveCoffeePictureUrl].
  SaveCoffeePictureUrlProvider(
    String url,
  ) : this._internal(
          (ref) => saveCoffeePictureUrl(
            ref as SaveCoffeePictureUrlRef,
            url,
          ),
          from: saveCoffeePictureUrlProvider,
          name: r'saveCoffeePictureUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveCoffeePictureUrlHash,
          dependencies: SaveCoffeePictureUrlFamily._dependencies,
          allTransitiveDependencies:
              SaveCoffeePictureUrlFamily._allTransitiveDependencies,
          url: url,
        );

  SaveCoffeePictureUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  Override overrideWith(
    FutureOr<String> Function(SaveCoffeePictureUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveCoffeePictureUrlProvider._internal(
        (ref) => create(ref as SaveCoffeePictureUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _SaveCoffeePictureUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveCoffeePictureUrlProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveCoffeePictureUrlRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `url` of this provider.
  String get url;
}

class _SaveCoffeePictureUrlProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with SaveCoffeePictureUrlRef {
  _SaveCoffeePictureUrlProviderElement(super.provider);

  @override
  String get url => (origin as SaveCoffeePictureUrlProvider).url;
}

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
