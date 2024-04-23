import 'package:brain_training/app/domain/weather/interface/weather_service.dart';
import 'package:brain_training/app/infrastructure/open_weather/state/weather_factory_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather/weather.dart';

/// OpenWeatherを利用したサービスの実装
class OpenWeatherWeatherService implements WeatherService {
  const OpenWeatherWeatherService(this.ref);

  final Ref ref;

  @override
  Future<Weather> currentWeatherByLocation({
    required double latitude,
    required double longitude,
    required String languageCode,
  }) async {
    final language = switch (languageCode) {
      'ja' => Language.JAPANESE,
      _ => Language.ENGLISH,
    };
    final wf = ref.read(weatherFactoryProvider(language: language));
    return wf.currentWeatherByLocation(latitude, longitude);
  }

  @override
  Future<Weather> currentWeatherByCityName({
    required String cityName,
    required String languageCode,
  }) {
    final language = switch (languageCode) {
      'ja' => Language.JAPANESE,
      _ => Language.ENGLISH,
    };
    final wf = ref.read(weatherFactoryProvider(language: language));
    return wf.currentWeatherByCityName(cityName);
  }
}
