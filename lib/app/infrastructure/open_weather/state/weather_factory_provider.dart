import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/weather.dart';

import '../config/open_weather_config.dart';

part 'weather_factory_provider.g.dart';

@riverpod
WeatherFactory weatherFactory(
  WeatherFactoryRef ref, {
  required Language language,
}) {
  return WeatherFactory(openWeatherApiKey, language: language);
}
