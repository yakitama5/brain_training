// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherServiceHash() => r'206b8bebf8064e776c79bc6d7eb4390d34f97e16';

/// DI用 (依存性逆転のためドメイン層に定義)
///
/// Copied from [weatherService].
@ProviderFor(weatherService)
final weatherServiceProvider = AutoDisposeProvider<WeatherService>.internal(
  weatherService,
  name: r'weatherServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeatherServiceRef = AutoDisposeProviderRef<WeatherService>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
