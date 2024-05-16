import 'package:brain_training/app/application/usecase/weather/weather_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/weather/model/entity/weather.dart';

part 'weather_provider.g.dart';

@riverpod
Future<Weather> weather(WeatherRef ref) {
  return ref.watch(weatherUsecaseProvider).fetchCurrentLocationNowWeather();
}
