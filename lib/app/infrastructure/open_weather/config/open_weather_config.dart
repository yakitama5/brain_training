import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../env/env.dart';
import '../../../../env/env.dev.dart';
import '../../../application/config/app_build_config_provider.dart';
import '../../../application/model/flavor.dart';

part 'open_weather_config.g.dart';

@riverpod
String openWeatherApiKey(OpenWeatherApiKeyRef ref) {
  final flavor = ref.watch(appBuildConfigProvider.select((e) => e.flavor));
  return switch (flavor) {
    Flavor.prod => Env.openWeatherApiKey,
    Flavor.dev => DEnv.openWeatherApiKey,
  };
}
