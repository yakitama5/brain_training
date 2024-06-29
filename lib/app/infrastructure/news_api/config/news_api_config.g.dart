// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_api_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsApiKeyHash() => r'80a1a87597e46ad7d13f945367b4ccff9cd77881';

/// See also [newsApiKey].
@ProviderFor(newsApiKey)
final newsApiKeyProvider = AutoDisposeProvider<String>.internal(
  newsApiKey,
  name: r'newsApiKeyProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newsApiKeyHash,
  dependencies: <ProviderOrFamily>[appBuildConfigProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    appBuildConfigProvider,
    ...?appBuildConfigProvider.allTransitiveDependencies
  },
);

typedef NewsApiKeyRef = AutoDisposeProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
