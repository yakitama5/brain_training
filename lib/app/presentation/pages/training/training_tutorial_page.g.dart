// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_tutorial_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$videoPlayerHash() => r'2055747e2f89b711333384bc766d1dcbc7187ae1';

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

/// dispose管理を容易にするため、当画面内専用のStateとして定義
///
/// Copied from [_videoPlayer].
@ProviderFor(_videoPlayer)
const _videoPlayerProvider = _VideoPlayerFamily();

/// dispose管理を容易にするため、当画面内専用のStateとして定義
///
/// Copied from [_videoPlayer].
class _VideoPlayerFamily extends Family {
  /// dispose管理を容易にするため、当画面内専用のStateとして定義
  ///
  /// Copied from [_videoPlayer].
  const _VideoPlayerFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_videoPlayerProvider';

  /// dispose管理を容易にするため、当画面内専用のStateとして定義
  ///
  /// Copied from [_videoPlayer].
  _VideoPlayerProvider call({
    required TrainingType trainingType,
  }) {
    return _VideoPlayerProvider(
      trainingType: trainingType,
    );
  }

  @visibleForOverriding
  @override
  _VideoPlayerProvider getProviderOverride(
    covariant _VideoPlayerProvider provider,
  ) {
    return call(
      trainingType: provider.trainingType,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<VideoPlayerController> Function(_VideoPlayerRef ref) create) {
    return _$VideoPlayerFamilyOverride(this, create);
  }
}

class _$VideoPlayerFamilyOverride implements FamilyOverride {
  _$VideoPlayerFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<VideoPlayerController> Function(_VideoPlayerRef ref) create;

  @override
  final _VideoPlayerFamily overriddenFamily;

  @override
  _VideoPlayerProvider getProviderOverride(
    covariant _VideoPlayerProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// dispose管理を容易にするため、当画面内専用のStateとして定義
///
/// Copied from [_videoPlayer].
class _VideoPlayerProvider
    extends AutoDisposeFutureProvider<VideoPlayerController> {
  /// dispose管理を容易にするため、当画面内専用のStateとして定義
  ///
  /// Copied from [_videoPlayer].
  _VideoPlayerProvider({
    required TrainingType trainingType,
  }) : this._internal(
          (ref) => _videoPlayer(
            ref as _VideoPlayerRef,
            trainingType: trainingType,
          ),
          from: _videoPlayerProvider,
          name: r'_videoPlayerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$videoPlayerHash,
          dependencies: _VideoPlayerFamily._dependencies,
          allTransitiveDependencies:
              _VideoPlayerFamily._allTransitiveDependencies,
          trainingType: trainingType,
        );

  _VideoPlayerProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.trainingType,
  }) : super.internal();

  final TrainingType trainingType;

  @override
  Override overrideWith(
    FutureOr<VideoPlayerController> Function(_VideoPlayerRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _VideoPlayerProvider._internal(
        (ref) => create(ref as _VideoPlayerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        trainingType: trainingType,
      ),
    );
  }

  @override
  ({
    TrainingType trainingType,
  }) get argument {
    return (trainingType: trainingType,);
  }

  @override
  AutoDisposeFutureProviderElement<VideoPlayerController> createElement() {
    return _VideoPlayerProviderElement(this);
  }

  _VideoPlayerProvider _copyWith(
    FutureOr<VideoPlayerController> Function(_VideoPlayerRef ref) create,
  ) {
    return _VideoPlayerProvider._internal(
      (ref) => create(ref as _VideoPlayerRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      trainingType: trainingType,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _VideoPlayerProvider && other.trainingType == trainingType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, trainingType.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin _VideoPlayerRef on AutoDisposeFutureProviderRef<VideoPlayerController> {
  /// The parameter `trainingType` of this provider.
  TrainingType get trainingType;
}

class _VideoPlayerProviderElement
    extends AutoDisposeFutureProviderElement<VideoPlayerController>
    with _VideoPlayerRef {
  _VideoPlayerProviderElement(super.provider);

  @override
  TrainingType get trainingType =>
      (origin as _VideoPlayerProvider).trainingType;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
