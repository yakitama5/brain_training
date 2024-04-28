// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_daily_result_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trainingDailyResultHash() =>
    r'1ccc574139eea612b1cbfd5ecc35e4a479a66ded';

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

/// See also [trainingDailyResult].
@ProviderFor(trainingDailyResult)
const trainingDailyResultProvider = TrainingDailyResultFamily();

/// See also [trainingDailyResult].
class TrainingDailyResultFamily extends Family {
  /// See also [trainingDailyResult].
  const TrainingDailyResultFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'trainingDailyResultProvider';

  /// See also [trainingDailyResult].
  TrainingDailyResultProvider call({
    required DateTime dateTime,
  }) {
    return TrainingDailyResultProvider(
      dateTime: dateTime,
    );
  }

  @visibleForOverriding
  @override
  TrainingDailyResultProvider getProviderOverride(
    covariant TrainingDailyResultProvider provider,
  ) {
    return call(
      dateTime: provider.dateTime,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Stream<List<TrainingResult>> Function(TrainingDailyResultRef ref)
          create) {
    return _$TrainingDailyResultFamilyOverride(this, create);
  }
}

class _$TrainingDailyResultFamilyOverride implements FamilyOverride {
  _$TrainingDailyResultFamilyOverride(this.overriddenFamily, this.create);

  final Stream<List<TrainingResult>> Function(TrainingDailyResultRef ref)
      create;

  @override
  final TrainingDailyResultFamily overriddenFamily;

  @override
  TrainingDailyResultProvider getProviderOverride(
    covariant TrainingDailyResultProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [trainingDailyResult].
class TrainingDailyResultProvider
    extends AutoDisposeStreamProvider<List<TrainingResult>> {
  /// See also [trainingDailyResult].
  TrainingDailyResultProvider({
    required DateTime dateTime,
  }) : this._internal(
          (ref) => trainingDailyResult(
            ref as TrainingDailyResultRef,
            dateTime: dateTime,
          ),
          from: trainingDailyResultProvider,
          name: r'trainingDailyResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trainingDailyResultHash,
          dependencies: TrainingDailyResultFamily._dependencies,
          allTransitiveDependencies:
              TrainingDailyResultFamily._allTransitiveDependencies,
          dateTime: dateTime,
        );

  TrainingDailyResultProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dateTime,
  }) : super.internal();

  final DateTime dateTime;

  @override
  Override overrideWith(
    Stream<List<TrainingResult>> Function(TrainingDailyResultRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TrainingDailyResultProvider._internal(
        (ref) => create(ref as TrainingDailyResultRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dateTime: dateTime,
      ),
    );
  }

  @override
  ({
    DateTime dateTime,
  }) get argument {
    return (dateTime: dateTime,);
  }

  @override
  AutoDisposeStreamProviderElement<List<TrainingResult>> createElement() {
    return _TrainingDailyResultProviderElement(this);
  }

  TrainingDailyResultProvider _copyWith(
    Stream<List<TrainingResult>> Function(TrainingDailyResultRef ref) create,
  ) {
    return TrainingDailyResultProvider._internal(
      (ref) => create(ref as TrainingDailyResultRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      dateTime: dateTime,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TrainingDailyResultProvider && other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dateTime.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TrainingDailyResultRef
    on AutoDisposeStreamProviderRef<List<TrainingResult>> {
  /// The parameter `dateTime` of this provider.
  DateTime get dateTime;
}

class _TrainingDailyResultProviderElement
    extends AutoDisposeStreamProviderElement<List<TrainingResult>>
    with TrainingDailyResultRef {
  _TrainingDailyResultProviderElement(super.provider);

  @override
  DateTime get dateTime => (origin as TrainingDailyResultProvider).dateTime;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
