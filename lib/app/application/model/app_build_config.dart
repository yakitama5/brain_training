import 'package:freezed_annotation/freezed_annotation.dart';

import 'flavor.dart';

part 'app_build_config.freezed.dart';

/// アプリ共通の設定
@freezed
class AppBuildConfig with _$AppBuildConfig {
  const factory AppBuildConfig({
    required Flavor flavor,
    required String appName,
    required String packageName,
    required String bundleId,
  }) = _AppBuildConfig;
}
