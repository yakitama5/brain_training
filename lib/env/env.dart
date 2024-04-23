import 'package:envied/envied.dart';

part 'env.g.dart';

// ignore: avoid_classes_with_only_static_members
/// 本番環境用の機密情報や接続情報を定義
/// `.env`ファイルはGit管理対象外のため、個別に設定を行う必要あり
@Envied(path: 'scripts/env/.env')
abstract class Env {
  @EnviedField(varName: 'OPEN_WEATHER_API_KEY', obfuscate: true)
  static final String openWeatherApiKey = _Env.openWeatherApiKey;
}
