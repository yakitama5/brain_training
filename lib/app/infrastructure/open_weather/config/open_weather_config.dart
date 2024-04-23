import '../../../../env/env.dart';
import '../../../../env/env.dev.dart';
import '../../../application/config/app_config.dart';
import '../../../application/model/flavor.dart';

final openWeatherApiKey = switch (appConfig.flavor) {
  Flavor.prod => Env.openWeatherApiKey,
  Flavor.dev => DEnv.openWeatherApiKey,
};
