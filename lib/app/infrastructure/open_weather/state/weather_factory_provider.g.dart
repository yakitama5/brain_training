// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_factory_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherFactoryHash() => r'ff57452271fdec77902d1fcbf78c73b886eaf196';

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

/// See also [weatherFactory].
@ProviderFor(weatherFactory)
const weatherFactoryProvider = WeatherFactoryFamily();

/// See also [weatherFactory].
class WeatherFactoryFamily extends Family {
  /// See also [weatherFactory].
  const WeatherFactoryFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'weatherFactoryProvider';

  /// See also [weatherFactory].
  WeatherFactoryProvider call({
    required Language language,
  }) {
    return WeatherFactoryProvider(
      language: language,
    );
  }

  @visibleForOverriding
  @override
  WeatherFactoryProvider getProviderOverride(
    covariant WeatherFactoryProvider provider,
  ) {
    return call(
      language: provider.language,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(WeatherFactory Function(WeatherFactoryRef ref) create) {
    return _$WeatherFactoryFamilyOverride(this, create);
  }
}

class _$WeatherFactoryFamilyOverride implements FamilyOverride {
  _$WeatherFactoryFamilyOverride(this.overriddenFamily, this.create);

  final WeatherFactory Function(WeatherFactoryRef ref) create;

  @override
  final WeatherFactoryFamily overriddenFamily;

  @override
  WeatherFactoryProvider getProviderOverride(
    covariant WeatherFactoryProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [weatherFactory].
class WeatherFactoryProvider extends AutoDisposeProvider<WeatherFactory> {
  /// See also [weatherFactory].
  WeatherFactoryProvider({
    required Language language,
  }) : this._internal(
          (ref) => weatherFactory(
            ref as WeatherFactoryRef,
            language: language,
          ),
          from: weatherFactoryProvider,
          name: r'weatherFactoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherFactoryHash,
          dependencies: WeatherFactoryFamily._dependencies,
          allTransitiveDependencies:
              WeatherFactoryFamily._allTransitiveDependencies,
          language: language,
        );

  WeatherFactoryProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.language,
  }) : super.internal();

  final Language language;

  @override
  Override overrideWith(
    WeatherFactory Function(WeatherFactoryRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WeatherFactoryProvider._internal(
        (ref) => create(ref as WeatherFactoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        language: language,
      ),
    );
  }

  @override
  ({
    Language language,
  }) get argument {
    return (language: language,);
  }

  @override
  AutoDisposeProviderElement<WeatherFactory> createElement() {
    return _WeatherFactoryProviderElement(this);
  }

  WeatherFactoryProvider _copyWith(
    WeatherFactory Function(WeatherFactoryRef ref) create,
  ) {
    return WeatherFactoryProvider._internal(
      (ref) => create(ref as WeatherFactoryRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      language: language,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherFactoryProvider && other.language == language;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, language.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeatherFactoryRef on AutoDisposeProviderRef<WeatherFactory> {
  /// The parameter `language` of this provider.
  Language get language;
}

class _WeatherFactoryProviderElement
    extends AutoDisposeProviderElement<WeatherFactory> with WeatherFactoryRef {
  _WeatherFactoryProviderElement(super.provider);

  @override
  Language get language => (origin as WeatherFactoryProvider).language;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
