import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../env/env.dart';
import '../../../../env/env.dev.dart';
import '../../../application/config/app_build_config_provider.dart';
import '../../../application/model/flavor.dart';

part 'news_api_config.g.dart';

@riverpod
String newsApiKey(NewsApiKeyRef ref) {
  final flavor = ref.watch(appBuildConfigProvider.select((e) => e.flavor));
  return switch (flavor) {
    Flavor.prod => Env.newsApiKey,
    Flavor.dev => DEnv.newsApiKey,
  };
}
