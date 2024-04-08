// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_colored_word_result_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$coloredWordResultCollectionHash() =>
    r'd5de494f2f6b4ed8b7742668f0b4f9af2932f6cd';

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

/// 色彩識別結果コレクションの参照
///
/// Copied from [coloredWordResultCollection].
@ProviderFor(coloredWordResultCollection)
const coloredWordResultCollectionProvider = ColoredWordResultCollectionFamily();

/// 色彩識別結果コレクションの参照
///
/// Copied from [coloredWordResultCollection].
class ColoredWordResultCollectionFamily extends Family {
  /// 色彩識別結果コレクションの参照
  ///
  /// Copied from [coloredWordResultCollection].
  const ColoredWordResultCollectionFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'coloredWordResultCollectionProvider';

  /// 色彩識別結果コレクションの参照
  ///
  /// Copied from [coloredWordResultCollection].
  ColoredWordResultCollectionProvider call(
    String userId,
  ) {
    return ColoredWordResultCollectionProvider(
      userId,
    );
  }

  @visibleForOverriding
  @override
  ColoredWordResultCollectionProvider getProviderOverride(
    covariant ColoredWordResultCollectionProvider provider,
  ) {
    return call(
      provider.userId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      CollectionReference<FirestoreColoredWordResultModel> Function(
              ColoredWordResultCollectionRef ref)
          create) {
    return _$ColoredWordResultCollectionFamilyOverride(this, create);
  }
}

class _$ColoredWordResultCollectionFamilyOverride implements FamilyOverride {
  _$ColoredWordResultCollectionFamilyOverride(
      this.overriddenFamily, this.create);

  final CollectionReference<FirestoreColoredWordResultModel> Function(
      ColoredWordResultCollectionRef ref) create;

  @override
  final ColoredWordResultCollectionFamily overriddenFamily;

  @override
  ColoredWordResultCollectionProvider getProviderOverride(
    covariant ColoredWordResultCollectionProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// 色彩識別結果コレクションの参照
///
/// Copied from [coloredWordResultCollection].
class ColoredWordResultCollectionProvider extends AutoDisposeProvider<
    CollectionReference<FirestoreColoredWordResultModel>> {
  /// 色彩識別結果コレクションの参照
  ///
  /// Copied from [coloredWordResultCollection].
  ColoredWordResultCollectionProvider(
    String userId,
  ) : this._internal(
          (ref) => coloredWordResultCollection(
            ref as ColoredWordResultCollectionRef,
            userId,
          ),
          from: coloredWordResultCollectionProvider,
          name: r'coloredWordResultCollectionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$coloredWordResultCollectionHash,
          dependencies: ColoredWordResultCollectionFamily._dependencies,
          allTransitiveDependencies:
              ColoredWordResultCollectionFamily._allTransitiveDependencies,
          userId: userId,
        );

  ColoredWordResultCollectionProvider._internal(
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
    CollectionReference<FirestoreColoredWordResultModel> Function(
            ColoredWordResultCollectionRef ref)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ColoredWordResultCollectionProvider._internal(
        (ref) => create(ref as ColoredWordResultCollectionRef),
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
      CollectionReference<FirestoreColoredWordResultModel>> createElement() {
    return _ColoredWordResultCollectionProviderElement(this);
  }

  ColoredWordResultCollectionProvider _copyWith(
    CollectionReference<FirestoreColoredWordResultModel> Function(
            ColoredWordResultCollectionRef ref)
        create,
  ) {
    return ColoredWordResultCollectionProvider._internal(
      (ref) => create(ref as ColoredWordResultCollectionRef),
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
    return other is ColoredWordResultCollectionProvider &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ColoredWordResultCollectionRef on AutoDisposeProviderRef<
    CollectionReference<FirestoreColoredWordResultModel>> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _ColoredWordResultCollectionProviderElement
    extends AutoDisposeProviderElement<
        CollectionReference<FirestoreColoredWordResultModel>>
    with ColoredWordResultCollectionRef {
  _ColoredWordResultCollectionProviderElement(super.provider);

  @override
  String get userId => (origin as ColoredWordResultCollectionProvider).userId;
}

String _$coloredWordResultDocumentRefHash() =>
    r'd2fabe71fa1621aab6811aab747cd9b46a1998fc';

/// 色彩識別結果ドキュメントの参照
///
/// Copied from [coloredWordResultDocumentRef].
@ProviderFor(coloredWordResultDocumentRef)
const coloredWordResultDocumentRefProvider =
    ColoredWordResultDocumentRefFamily();

/// 色彩識別結果ドキュメントの参照
///
/// Copied from [coloredWordResultDocumentRef].
class ColoredWordResultDocumentRefFamily extends Family {
  /// 色彩識別結果ドキュメントの参照
  ///
  /// Copied from [coloredWordResultDocumentRef].
  const ColoredWordResultDocumentRefFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'coloredWordResultDocumentRefProvider';

  /// 色彩識別結果ドキュメントの参照
  ///
  /// Copied from [coloredWordResultDocumentRef].
  ColoredWordResultDocumentRefProvider call({
    required String userId,
    required String docId,
  }) {
    return ColoredWordResultDocumentRefProvider(
      userId: userId,
      docId: docId,
    );
  }

  @visibleForOverriding
  @override
  ColoredWordResultDocumentRefProvider getProviderOverride(
    covariant ColoredWordResultDocumentRefProvider provider,
  ) {
    return call(
      userId: provider.userId,
      docId: provider.docId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      DocumentReference<FirestoreColoredWordResultModel> Function(
              ColoredWordResultDocumentRefRef ref)
          create) {
    return _$ColoredWordResultDocumentRefFamilyOverride(this, create);
  }
}

class _$ColoredWordResultDocumentRefFamilyOverride implements FamilyOverride {
  _$ColoredWordResultDocumentRefFamilyOverride(
      this.overriddenFamily, this.create);

  final DocumentReference<FirestoreColoredWordResultModel> Function(
      ColoredWordResultDocumentRefRef ref) create;

  @override
  final ColoredWordResultDocumentRefFamily overriddenFamily;

  @override
  ColoredWordResultDocumentRefProvider getProviderOverride(
    covariant ColoredWordResultDocumentRefProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// 色彩識別結果ドキュメントの参照
///
/// Copied from [coloredWordResultDocumentRef].
class ColoredWordResultDocumentRefProvider extends AutoDisposeProvider<
    DocumentReference<FirestoreColoredWordResultModel>> {
  /// 色彩識別結果ドキュメントの参照
  ///
  /// Copied from [coloredWordResultDocumentRef].
  ColoredWordResultDocumentRefProvider({
    required String userId,
    required String docId,
  }) : this._internal(
          (ref) => coloredWordResultDocumentRef(
            ref as ColoredWordResultDocumentRefRef,
            userId: userId,
            docId: docId,
          ),
          from: coloredWordResultDocumentRefProvider,
          name: r'coloredWordResultDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$coloredWordResultDocumentRefHash,
          dependencies: ColoredWordResultDocumentRefFamily._dependencies,
          allTransitiveDependencies:
              ColoredWordResultDocumentRefFamily._allTransitiveDependencies,
          userId: userId,
          docId: docId,
        );

  ColoredWordResultDocumentRefProvider._internal(
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
    DocumentReference<FirestoreColoredWordResultModel> Function(
            ColoredWordResultDocumentRefRef ref)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ColoredWordResultDocumentRefProvider._internal(
        (ref) => create(ref as ColoredWordResultDocumentRefRef),
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
  AutoDisposeProviderElement<DocumentReference<FirestoreColoredWordResultModel>>
      createElement() {
    return _ColoredWordResultDocumentRefProviderElement(this);
  }

  ColoredWordResultDocumentRefProvider _copyWith(
    DocumentReference<FirestoreColoredWordResultModel> Function(
            ColoredWordResultDocumentRefRef ref)
        create,
  ) {
    return ColoredWordResultDocumentRefProvider._internal(
      (ref) => create(ref as ColoredWordResultDocumentRefRef),
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
    return other is ColoredWordResultDocumentRefProvider &&
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

mixin ColoredWordResultDocumentRefRef on AutoDisposeProviderRef<
    DocumentReference<FirestoreColoredWordResultModel>> {
  /// The parameter `userId` of this provider.
  String get userId;

  /// The parameter `docId` of this provider.
  String get docId;
}

class _ColoredWordResultDocumentRefProviderElement
    extends AutoDisposeProviderElement<
        DocumentReference<FirestoreColoredWordResultModel>>
    with ColoredWordResultDocumentRefRef {
  _ColoredWordResultDocumentRefProviderElement(super.provider);

  @override
  String get userId => (origin as ColoredWordResultDocumentRefProvider).userId;
  @override
  String get docId => (origin as ColoredWordResultDocumentRefProvider).docId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
