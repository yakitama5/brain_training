// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_training_daily_summary_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trainingDailySummaryCollectionHash() =>
    r'8fae1eb24b394d438d1d591b310fe0c49b8093e9';

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

/// 日別サマリーコレクションの参照
///
/// Copied from [trainingDailySummaryCollection].
@ProviderFor(trainingDailySummaryCollection)
const trainingDailySummaryCollectionProvider =
    TrainingDailySummaryCollectionFamily();

/// 日別サマリーコレクションの参照
///
/// Copied from [trainingDailySummaryCollection].
class TrainingDailySummaryCollectionFamily extends Family {
  /// 日別サマリーコレクションの参照
  ///
  /// Copied from [trainingDailySummaryCollection].
  const TrainingDailySummaryCollectionFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'trainingDailySummaryCollectionProvider';

  /// 日別サマリーコレクションの参照
  ///
  /// Copied from [trainingDailySummaryCollection].
  TrainingDailySummaryCollectionProvider call(
    String userId,
  ) {
    return TrainingDailySummaryCollectionProvider(
      userId,
    );
  }

  @visibleForOverriding
  @override
  TrainingDailySummaryCollectionProvider getProviderOverride(
    covariant TrainingDailySummaryCollectionProvider provider,
  ) {
    return call(
      provider.userId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      CollectionReference<FirestoreTrainingDailySummaryModel> Function(
              TrainingDailySummaryCollectionRef ref)
          create) {
    return _$TrainingDailySummaryCollectionFamilyOverride(this, create);
  }
}

class _$TrainingDailySummaryCollectionFamilyOverride implements FamilyOverride {
  _$TrainingDailySummaryCollectionFamilyOverride(
      this.overriddenFamily, this.create);

  final CollectionReference<FirestoreTrainingDailySummaryModel> Function(
      TrainingDailySummaryCollectionRef ref) create;

  @override
  final TrainingDailySummaryCollectionFamily overriddenFamily;

  @override
  TrainingDailySummaryCollectionProvider getProviderOverride(
    covariant TrainingDailySummaryCollectionProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// 日別サマリーコレクションの参照
///
/// Copied from [trainingDailySummaryCollection].
class TrainingDailySummaryCollectionProvider extends AutoDisposeProvider<
    CollectionReference<FirestoreTrainingDailySummaryModel>> {
  /// 日別サマリーコレクションの参照
  ///
  /// Copied from [trainingDailySummaryCollection].
  TrainingDailySummaryCollectionProvider(
    String userId,
  ) : this._internal(
          (ref) => trainingDailySummaryCollection(
            ref as TrainingDailySummaryCollectionRef,
            userId,
          ),
          from: trainingDailySummaryCollectionProvider,
          name: r'trainingDailySummaryCollectionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trainingDailySummaryCollectionHash,
          dependencies: TrainingDailySummaryCollectionFamily._dependencies,
          allTransitiveDependencies:
              TrainingDailySummaryCollectionFamily._allTransitiveDependencies,
          userId: userId,
        );

  TrainingDailySummaryCollectionProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    CollectionReference<FirestoreTrainingDailySummaryModel> Function(
            TrainingDailySummaryCollectionRef ref)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TrainingDailySummaryCollectionProvider._internal(
        (ref) => create(ref as TrainingDailySummaryCollectionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  (String,) get argument {
    return (userId,);
  }

  @override
  AutoDisposeProviderElement<
      CollectionReference<FirestoreTrainingDailySummaryModel>> createElement() {
    return _TrainingDailySummaryCollectionProviderElement(this);
  }

  TrainingDailySummaryCollectionProvider _copyWith(
    CollectionReference<FirestoreTrainingDailySummaryModel> Function(
            TrainingDailySummaryCollectionRef ref)
        create,
  ) {
    return TrainingDailySummaryCollectionProvider._internal(
      (ref) => create(ref as TrainingDailySummaryCollectionRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      userId: userId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TrainingDailySummaryCollectionProvider &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TrainingDailySummaryCollectionRef on AutoDisposeProviderRef<
    CollectionReference<FirestoreTrainingDailySummaryModel>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _TrainingDailySummaryCollectionProviderElement
    extends AutoDisposeProviderElement<
        CollectionReference<FirestoreTrainingDailySummaryModel>>
    with TrainingDailySummaryCollectionRef {
  _TrainingDailySummaryCollectionProviderElement(super.provider);

  @override
  String get userId =>
      (origin as TrainingDailySummaryCollectionProvider).userId;
}

String _$trainingDailySummaryDocumentRefHash() =>
    r'9505a76b1295a849a96b65da58f0dc73917c0659';

/// 日別サマリードキュメントの参照
///
/// Copied from [trainingDailySummaryDocumentRef].
@ProviderFor(trainingDailySummaryDocumentRef)
const trainingDailySummaryDocumentRefProvider =
    TrainingDailySummaryDocumentRefFamily();

/// 日別サマリードキュメントの参照
///
/// Copied from [trainingDailySummaryDocumentRef].
class TrainingDailySummaryDocumentRefFamily extends Family {
  /// 日別サマリードキュメントの参照
  ///
  /// Copied from [trainingDailySummaryDocumentRef].
  const TrainingDailySummaryDocumentRefFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'trainingDailySummaryDocumentRefProvider';

  /// 日別サマリードキュメントの参照
  ///
  /// Copied from [trainingDailySummaryDocumentRef].
  TrainingDailySummaryDocumentRefProvider call({
    required String userId,
    required String docId,
  }) {
    return TrainingDailySummaryDocumentRefProvider(
      userId: userId,
      docId: docId,
    );
  }

  @visibleForOverriding
  @override
  TrainingDailySummaryDocumentRefProvider getProviderOverride(
    covariant TrainingDailySummaryDocumentRefProvider provider,
  ) {
    return call(
      userId: provider.userId,
      docId: provider.docId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      DocumentReference<FirestoreTrainingDailySummaryModel> Function(
              TrainingDailySummaryDocumentRefRef ref)
          create) {
    return _$TrainingDailySummaryDocumentRefFamilyOverride(this, create);
  }
}

class _$TrainingDailySummaryDocumentRefFamilyOverride
    implements FamilyOverride {
  _$TrainingDailySummaryDocumentRefFamilyOverride(
      this.overriddenFamily, this.create);

  final DocumentReference<FirestoreTrainingDailySummaryModel> Function(
      TrainingDailySummaryDocumentRefRef ref) create;

  @override
  final TrainingDailySummaryDocumentRefFamily overriddenFamily;

  @override
  TrainingDailySummaryDocumentRefProvider getProviderOverride(
    covariant TrainingDailySummaryDocumentRefProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// 日別サマリードキュメントの参照
///
/// Copied from [trainingDailySummaryDocumentRef].
class TrainingDailySummaryDocumentRefProvider extends AutoDisposeProvider<
    DocumentReference<FirestoreTrainingDailySummaryModel>> {
  /// 日別サマリードキュメントの参照
  ///
  /// Copied from [trainingDailySummaryDocumentRef].
  TrainingDailySummaryDocumentRefProvider({
    required String userId,
    required String docId,
  }) : this._internal(
          (ref) => trainingDailySummaryDocumentRef(
            ref as TrainingDailySummaryDocumentRefRef,
            userId: userId,
            docId: docId,
          ),
          from: trainingDailySummaryDocumentRefProvider,
          name: r'trainingDailySummaryDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$trainingDailySummaryDocumentRefHash,
          dependencies: TrainingDailySummaryDocumentRefFamily._dependencies,
          allTransitiveDependencies:
              TrainingDailySummaryDocumentRefFamily._allTransitiveDependencies,
          userId: userId,
          docId: docId,
        );

  TrainingDailySummaryDocumentRefProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
    required this.docId,
  }) : super.internal();

  final String userId;
  final String docId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreTrainingDailySummaryModel> Function(
            TrainingDailySummaryDocumentRefRef ref)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TrainingDailySummaryDocumentRefProvider._internal(
        (ref) => create(ref as TrainingDailySummaryDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
        docId: docId,
      ),
    );
  }

  @override
  ({
    String userId,
    String docId,
  }) get argument {
    return (
      userId: userId,
      docId: docId,
    );
  }

  @override
  AutoDisposeProviderElement<
      DocumentReference<FirestoreTrainingDailySummaryModel>> createElement() {
    return _TrainingDailySummaryDocumentRefProviderElement(this);
  }

  TrainingDailySummaryDocumentRefProvider _copyWith(
    DocumentReference<FirestoreTrainingDailySummaryModel> Function(
            TrainingDailySummaryDocumentRefRef ref)
        create,
  ) {
    return TrainingDailySummaryDocumentRefProvider._internal(
      (ref) => create(ref as TrainingDailySummaryDocumentRefRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      userId: userId,
      docId: docId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TrainingDailySummaryDocumentRefProvider &&
        other.userId == userId &&
        other.docId == docId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);
    hash = _SystemHash.combine(hash, docId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TrainingDailySummaryDocumentRefRef on AutoDisposeProviderRef<
    DocumentReference<FirestoreTrainingDailySummaryModel>> {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `docId` of this provider.
  String get docId;
}

class _TrainingDailySummaryDocumentRefProviderElement
    extends AutoDisposeProviderElement<
        DocumentReference<FirestoreTrainingDailySummaryModel>>
    with TrainingDailySummaryDocumentRefRef {
  _TrainingDailySummaryDocumentRefProviderElement(super.provider);

  @override
  String get userId =>
      (origin as TrainingDailySummaryDocumentRefProvider).userId;
  @override
  String get docId => (origin as TrainingDailySummaryDocumentRefProvider).docId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
