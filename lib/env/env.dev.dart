import 'package:envied/envied.dart';

part 'env.dev.g.dart';

// ignore: avoid_classes_with_only_static_members
/// 開発環境用の機密情報や接続情報を定義
/// `.env.dev`ファイルはGit管理対象外のため、個別に設定を行う必要あり
@Envied(path: 'scripts/env/.env.dev')
abstract class DEnv {
  @EnviedField(varName: 'OPEN_WEATHER_API_KEY', obfuscate: true)
  static final String openWeatherApiKey = _DEnv.openWeatherApiKey;
  @EnviedField(varName: 'NEWS_API_KEY', obfuscate: true)
  static final String newsApiKey = _DEnv.newsApiKey;
}
