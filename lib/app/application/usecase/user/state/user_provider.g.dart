// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userHash() => r'76ce02a88a3cf2545db60e0e467737ed74f941cd';

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

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [user].
@ProviderFor(user)
const userProvider = UserFamily();

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [user].
class UserFamily extends Family {
  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [user].
  const UserFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userProvider';

  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [user].
  UserProvider call({
    required String userId,
  }) {
    return UserProvider(
      userId: userId,
    );
  }

  @visibleForOverriding
  @override
  UserProvider getProviderOverride(
    covariant UserProvider provider,
  ) {
    return call(
      userId: provider.userId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(Stream<User?> Function(UserRef ref) create) {
    return _$UserFamilyOverride(this, create);
  }
}

class _$UserFamilyOverride implements FamilyOverride {
  _$UserFamilyOverride(this.overriddenFamily, this.create);

  final Stream<User?> Function(UserRef ref) create;

  @override
  final UserFamily overriddenFamily;

  @override
  UserProvider getProviderOverride(
    covariant UserProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [user].
class UserProvider extends StreamProvider<User?> {
  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [user].
  UserProvider({
    required String userId,
  }) : this._internal(
          (ref) => user(
            ref as UserRef,
            userId: userId,
          ),
          from: userProvider,
          name: r'userProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
          dependencies: UserFamily._dependencies,
          allTransitiveDependencies: UserFamily._allTransitiveDependencies,
          userId: userId,
        );

  UserProvider._internal(
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
    Stream<User?> Function(UserRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserProvider._internal(
        (ref) => create(ref as UserRef),
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
  ({
    String userId,
  }) get argument {
    return (userId: userId,);
  }

  @override
  StreamProviderElement<User?> createElement() {
    return _UserProviderElement(this);
  }

  UserProvider _copyWith(
    Stream<User?> Function(UserRef ref) create,
  ) {
    return UserProvider._internal(
      (ref) => create(ref as UserRef),
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
    return other is UserProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserRef on StreamProviderRef<User?> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UserProviderElement extends StreamProviderElement<User?> with UserRef {
  _UserProviderElement(super.provider);

  @override
  String get userId => (origin as UserProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
