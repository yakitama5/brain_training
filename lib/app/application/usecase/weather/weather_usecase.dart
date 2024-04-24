import 'package:brain_training/app/application/usecase/location/state/location_provider.dart';
import 'package:brain_training/app/application/usecase/run_usecase_mixin.dart';
import 'package:brain_training/app/domain/weather/interface/weather_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/weather/model/entity/weather.dart';

part 'weather_usecase.g.dart';

@riverpod
WeatherUsecase weatherUsecase(WeatherUsecaseRef ref) {
  return WeatherUsecase(ref);
}

class WeatherUsecase with RunUsecaseMixin {
  const WeatherUsecase(this.ref);

  final Ref ref;

  /// 別Providerに依存するものはここに定義して利用する
  WeatherService get _weatherService => ref.read(weatherServiceProvider);

  Future<Weather> fetchCurrentLocationNowWeather() async {
    final position = await ref.read(locationProvider.future);
    final latitude = position.latitude;
    final longitude = position.longitude;

    return _weatherService.currentWeatherByLocation(
      latitude: latitude,
      longitude: longitude,
    );
  }
}
