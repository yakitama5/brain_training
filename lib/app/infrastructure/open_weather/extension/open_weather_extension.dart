import 'package:brain_training/app/domain/weather/model/value_object/weather_type.dart';
import 'package:weather/weather.dart';

import '../../../domain/weather/model/entity/weather.dart' as dm;

extension WeatherX on Weather {
  dm.Weather get domainModel {
    final weatherType = switch (weatherIcon) {
      '01d' || '01n' => WeatherType.sunny,
      '02d' || '02n' => WeatherType.partCloud,
      '03d' || '03n' => WeatherType.cloud,
      '04d' || '04n' => WeatherType.cloud,
      '09d' || '09n' => WeatherType.rainy,
      '10d' || '10n' => WeatherType.heavyRainy,
      '11d' || '11n' => WeatherType.lightning,
      '13d' || '13n' => WeatherType.snow,
      '50d' || '50n' => WeatherType.mist,
      _ => WeatherType.sunny,
    };

    return dm.Weather(weatherType: weatherType);
  }
}
