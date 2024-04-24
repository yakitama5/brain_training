import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/entity/weather.dart';

part 'weather_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@riverpod
WeatherService weatherService(WeatherServiceRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

abstract class WeatherService {
  Future<Weather> currentWeatherByLocation({
    required double latitude,
    required double longitude,
  });

  Future<Weather> currentWeatherByCityName({
    required String cityName,
  });
}
