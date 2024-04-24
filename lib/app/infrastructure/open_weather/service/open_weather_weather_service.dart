import 'package:brain_training/app/domain/weather/interface/weather_service.dart';
import 'package:brain_training/app/infrastructure/open_weather/extension/open_weather_extension.dart';
import 'package:brain_training/app/infrastructure/open_weather/state/weather_factory_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather/weather.dart';

import '../../../domain/weather/model/entity/weather.dart' as dm;

/// OpenWeatherを利用したサービスの実装
class OpenWeatherWeatherService implements WeatherService {
  const OpenWeatherWeatherService(this.ref);

  final Ref ref;

  WeatherFactory get weatherFactory => ref.read(weatherFactoryProvider);

  @override
  Future<dm.Weather> currentWeatherByLocation({
    required double latitude,
    required double longitude,
  }) =>
      weatherFactory
          .currentWeatherByLocation(latitude, longitude)
          .then((value) => value.domainModel);

  @override
  Future<dm.Weather> currentWeatherByCityName({
    required String cityName,
  }) =>
      weatherFactory
          .currentWeatherByCityName(cityName)
          .then((value) => value.domainModel);
}
