// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_weekly_summary_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trainingWeeklySummaryHash() =>
    r'aebfc8fc274f29c220575b190ae0a740127fc33f';

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

/// See also [trainingWeeklySummary].
@ProviderFor(trainingWeeklySummary)
const trainingWeeklySummaryProvider = TrainingWeeklySummaryFamily();

/// See also [trainingWeeklySummary].
class TrainingWeeklySummaryFamily extends Family {
  /// See also [trainingWeeklySummary].
  const TrainingWeeklySummaryFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'trainingWeeklySummaryProvider';

  /// See also [trainingWeeklySummary].
  TrainingWeeklySummaryProvider call({
    required DateTime date,
  }) {
    return TrainingWeeklySummaryProvider(
      date: date,
    );
  }

  @visibleForOverriding
  @override
  TrainingWeeklySummaryProvider getProviderOverride(
    covariant TrainingWeeklySummaryProvider provider,
  ) {
    return call(
      date: provider.date,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      Stream<TrainingWeeklySummary?> Function(TrainingWeeklySummaryRef ref)
          create) {
    return _$TrainingWeeklySummaryFamilyOverride(this, create);
  }
}

class _$TrainingWeeklySummaryFamilyOverride implements FamilyOverride {
  _$TrainingWeeklySummaryFamilyOverride(this.overriddenFamily, this.create);

  final Stream<TrainingWeeklySummary?> Function(TrainingWeeklySummaryRef ref)
      create;

  @override
  final TrainingWeeklySummaryFamily overriddenFamily;

  @override
  TrainingWeeklySummaryProvider getProviderOverride(
    covariant TrainingWeeklySummaryProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [trainingWeeklySummary].
class TrainingWeeklySummaryProvider
    extends AutoDisposeStreamProvider<TrainingWeeklySummary?> {
  /// See also [trainingWeeklySummary].
  TrainingWeeklySummaryProvider({
    required DateTime date,
  }) : this._internal(
          (ref) => trainingWeeklySummary(
            ref as TrainingWeeklySummaryRef,
            date: date,
          ),
          from: trainingWeeklySummaryProvider,
          name: r'trainingWeeklySummaryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trainingWeeklySummaryHash,
          dependencies: TrainingWeeklySummaryFamily._dependencies,
          allTransitiveDependencies:
              TrainingWeeklySummaryFamily._allTransitiveDependencies,
          date: date,
        );

  TrainingWeeklySummaryProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.date,
  }) : super.internal();

  final DateTime date;

  @override
  Override overrideWith(
    Stream<TrainingWeeklySummary?> Function(TrainingWeeklySummaryRef ref)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TrainingWeeklySummaryProvider._internal(
        (ref) => create(ref as TrainingWeeklySummaryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        date: date,
      ),
    );
  }

  @override
  ({
    DateTime date,
  }) get argument {
    return (date: date,);
  }

  @override
  AutoDisposeStreamProviderElement<TrainingWeeklySummary?> createElement() {
    return _TrainingWeeklySummaryProviderElement(this);
  }

  TrainingWeeklySummaryProvider _copyWith(
    Stream<TrainingWeeklySummary?> Function(TrainingWeeklySummaryRef ref)
        create,
  ) {
    return TrainingWeeklySummaryProvider._internal(
      (ref) => create(ref as TrainingWeeklySummaryRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      date: date,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TrainingWeeklySummaryProvider && other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TrainingWeeklySummaryRef
    on AutoDisposeStreamProviderRef<TrainingWeeklySummary?> {
  /// The parameter `date` of this provider.
  DateTime get date;
}

class _TrainingWeeklySummaryProviderElement
    extends AutoDisposeStreamProviderElement<TrainingWeeklySummary?>
    with TrainingWeeklySummaryRef {
  _TrainingWeeklySummaryProviderElement(super.provider);

  @override
  DateTime get date => (origin as TrainingWeeklySummaryProvider).date;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
