// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_factory_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherFactoryHash() => r'6c71e74c3c25afa1f3549304b8d88c82dd57b797';

/// See also [weatherFactory].
@ProviderFor(weatherFactory)
final weatherFactoryProvider = AutoDisposeProvider<WeatherFactory>.internal(
  weatherFactory,
  name: r'weatherFactoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherFactoryHash,
  dependencies: <ProviderOrFamily>[openWeatherApiKeyProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    openWeatherApiKeyProvider,
    ...?openWeatherApiKeyProvider.allTransitiveDependencies
  },
);

typedef WeatherFactoryRef = AutoDisposeProviderRef<WeatherFactory>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
