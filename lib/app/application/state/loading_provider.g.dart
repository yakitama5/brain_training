// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loadingNotifierHash() => r'af1996d9ac77e923458cbf2039e2302f793c28b6';

/// アプリ全体で共通するローディング表示を管理
///
/// Copied from [LoadingNotifier].
@ProviderFor(LoadingNotifier)
final loadingNotifierProvider =
    AutoDisposeNotifierProvider<LoadingNotifier, bool>.internal(
  LoadingNotifier.new,
  name: r'loadingNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loadingNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LoadingNotifier = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
