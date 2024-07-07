// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stt_recognized_text_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sttRecognizedTextHash() => r'b46bfa75d75840f420dbcbc8805813bca6c0dafa';

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

/// See also [sttRecognizedText].
@ProviderFor(sttRecognizedText)
const sttRecognizedTextProvider = SttRecognizedTextFamily();

/// See also [sttRecognizedText].
class SttRecognizedTextFamily extends Family {
  /// See also [sttRecognizedText].
  const SttRecognizedTextFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sttRecognizedTextProvider';

  /// See also [sttRecognizedText].
  SttRecognizedTextProvider call({
    required AppLocale locale,
  }) {
    return SttRecognizedTextProvider(
      locale: locale,
    );
  }

  @visibleForOverriding
  @override
  SttRecognizedTextProvider getProviderOverride(
    covariant SttRecognizedTextProvider provider,
  ) {
    return call(
      locale: provider.locale,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Stream<String> Function(SttRecognizedTextRef ref) create) {
    return _$SttRecognizedTextFamilyOverride(this, create);
  }
}

class _$SttRecognizedTextFamilyOverride implements FamilyOverride {
  _$SttRecognizedTextFamilyOverride(this.overriddenFamily, this.create);

  final Stream<String> Function(SttRecognizedTextRef ref) create;

  @override
  final SttRecognizedTextFamily overriddenFamily;

  @override
  SttRecognizedTextProvider getProviderOverride(
    covariant SttRecognizedTextProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [sttRecognizedText].
class SttRecognizedTextProvider extends AutoDisposeStreamProvider<String> {
  /// See also [sttRecognizedText].
  SttRecognizedTextProvider({
    required AppLocale locale,
  }) : this._internal(
          (ref) => sttRecognizedText(
            ref as SttRecognizedTextRef,
            locale: locale,
          ),
          from: sttRecognizedTextProvider,
          name: r'sttRecognizedTextProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sttRecognizedTextHash,
          dependencies: SttRecognizedTextFamily._dependencies,
          allTransitiveDependencies:
              SttRecognizedTextFamily._allTransitiveDependencies,
          locale: locale,
        );

  SttRecognizedTextProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.locale,
  }) : super.internal();

  final AppLocale locale;

  @override
  Override overrideWith(
    Stream<String> Function(SttRecognizedTextRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SttRecognizedTextProvider._internal(
        (ref) => create(ref as SttRecognizedTextRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        locale: locale,
      ),
    );
  }

  @override
  ({
    AppLocale locale,
  }) get argument {
    return (locale: locale,);
  }

  @override
  AutoDisposeStreamProviderElement<String> createElement() {
    return _SttRecognizedTextProviderElement(this);
  }

  SttRecognizedTextProvider _copyWith(
    Stream<String> Function(SttRecognizedTextRef ref) create,
  ) {
    return SttRecognizedTextProvider._internal(
      (ref) => create(ref as SttRecognizedTextRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      locale: locale,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SttRecognizedTextProvider && other.locale == locale;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, locale.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SttRecognizedTextRef on AutoDisposeStreamProviderRef<String> {
  /// The parameter `locale` of this provider.
  AppLocale get locale;
}

class _SttRecognizedTextProviderElement
    extends AutoDisposeStreamProviderElement<String> with SttRecognizedTextRef {
  _SttRecognizedTextProviderElement(super.provider);

  @override
  AppLocale get locale => (origin as SttRecognizedTextProvider).locale;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
