// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_weather_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$openWeatherApiKeyHash() => r'32c7d4af55c3a7b096db7c42274863b6026308ce';

/// See also [openWeatherApiKey].
@ProviderFor(openWeatherApiKey)
final openWeatherApiKeyProvider = AutoDisposeProvider<String>.internal(
  openWeatherApiKey,
  name: r'openWeatherApiKeyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$openWeatherApiKeyHash,
  dependencies: <ProviderOrFamily>[appBuildConfigProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    appBuildConfigProvider,
    ...?appBuildConfigProvider.allTransitiveDependencies
  },
);

typedef OpenWeatherApiKeyRef = AutoDisposeProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
