import '../../../../env/env.dart';
import '../../../../env/env.dev.dart';
import '../../../application/config/app_config.dart';
import '../../../application/model/flavor.dart';

final newsApiKey = switch (appConfig.flavor) {
  Flavor.prod => Env.newsApiKey,
  Flavor.dev => DEnv.newsApiKey,
};
