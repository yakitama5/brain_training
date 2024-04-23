import 'package:brain_training/app/application/usecase/run_usecase_mixin.dart';
import 'package:brain_training/app/domain/weather/interface/weather_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/weather.dart';

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
    // TODO(yakitama5): テスト用
    const latitude = 31.0;
    const longitude = 31.0;
    const languageCode = 'ja';

    return _weatherService.currentWeatherByLocation(
      latitude: latitude,
      longitude: longitude,
      languageCode: languageCode,
    );
  }
}
