import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/weather.dart';

import '../config/open_weather_config.dart';

part 'weather_factory_provider.g.dart';

@Riverpod(dependencies: [openWeatherApiKey])
WeatherFactory weatherFactory(
  WeatherFactoryRef ref,
) =>
    WeatherFactory(ref.watch(openWeatherApiKeyProvider));
