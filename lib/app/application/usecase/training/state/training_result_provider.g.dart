// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_result_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trainingResultHash() => r'6d1c307382e7c2d7632536171c961899b0b9bfce';

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

/// See also [trainingResult].
@ProviderFor(trainingResult)
const trainingResultProvider = TrainingResultFamily();

/// See also [trainingResult].
class TrainingResultFamily extends Family {
  /// See also [trainingResult].
  const TrainingResultFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'trainingResultProvider';

  /// See also [trainingResult].
  TrainingResultProvider call({
    required DateTime dateTime,
    required TrainingType trainingType,
  }) {
    return TrainingResultProvider(
      dateTime: dateTime,
      trainingType: trainingType,
    );
  }

  @visibleForOverriding
  @override
  TrainingResultProvider getProviderOverride(
    covariant TrainingResultProvider provider,
  ) {
    return call(
      dateTime: provider.dateTime,
      trainingType: provider.trainingType,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Stream<TrainingResult?> Function(TrainingResultRef ref) create) {
    return _$TrainingResultFamilyOverride(this, create);
  }
}

class _$TrainingResultFamilyOverride implements FamilyOverride {
  _$TrainingResultFamilyOverride(this.overriddenFamily, this.create);

  final Stream<TrainingResult?> Function(TrainingResultRef ref) create;

  @override
  final TrainingResultFamily overriddenFamily;

  @override
  TrainingResultProvider getProviderOverride(
    covariant TrainingResultProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [trainingResult].
class TrainingResultProvider
    extends AutoDisposeStreamProvider<TrainingResult?> {
  /// See also [trainingResult].
  TrainingResultProvider({
    required DateTime dateTime,
    required TrainingType trainingType,
  }) : this._internal(
          (ref) => trainingResult(
            ref as TrainingResultRef,
            dateTime: dateTime,
            trainingType: trainingType,
          ),
          from: trainingResultProvider,
          name: r'trainingResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trainingResultHash,
          dependencies: TrainingResultFamily._dependencies,
          allTransitiveDependencies:
              TrainingResultFamily._allTransitiveDependencies,
          dateTime: dateTime,
          trainingType: trainingType,
        );

  TrainingResultProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dateTime,
    required this.trainingType,
  }) : super.internal();

  final DateTime dateTime;
  final TrainingType trainingType;

  @override
  Override overrideWith(
    Stream<TrainingResult?> Function(TrainingResultRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TrainingResultProvider._internal(
        (ref) => create(ref as TrainingResultRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dateTime: dateTime,
        trainingType: trainingType,
      ),
    );
  }

  @override
  ({
    DateTime dateTime,
    TrainingType trainingType,
  }) get argument {
    return (
      dateTime: dateTime,
      trainingType: trainingType,
    );
  }

  @override
  AutoDisposeStreamProviderElement<TrainingResult?> createElement() {
    return _TrainingResultProviderElement(this);
  }

  TrainingResultProvider _copyWith(
    Stream<TrainingResult?> Function(TrainingResultRef ref) create,
  ) {
    return TrainingResultProvider._internal(
      (ref) => create(ref as TrainingResultRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      dateTime: dateTime,
      trainingType: trainingType,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TrainingResultProvider &&
        other.dateTime == dateTime &&
        other.trainingType == trainingType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dateTime.hashCode);
    hash = _SystemHash.combine(hash, trainingType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TrainingResultRef on AutoDisposeStreamProviderRef<TrainingResult?> {
  /// The parameter `dateTime` of this provider.
  DateTime get dateTime;

  /// The parameter `trainingType` of this provider.
  TrainingType get trainingType;
}

class _TrainingResultProviderElement
    extends AutoDisposeStreamProviderElement<TrainingResult?>
    with TrainingResultRef {
  _TrainingResultProviderElement(super.provider);

  @override
  DateTime get dateTime => (origin as TrainingResultProvider).dateTime;
  @override
  TrainingType get trainingType =>
      (origin as TrainingResultProvider).trainingType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
