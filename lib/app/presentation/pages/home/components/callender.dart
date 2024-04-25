import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../gen/strings.g.dart';
import '../../../../application/usecase/weather/state/weather_provider.dart';
import '../../../../domain/weather/model/value_object/weather_type.dart';

class Callender extends StatelessWidget {
  const Callender({super.key, required this.dateTime});

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;
    final languageCode =
        LocaleSettings.currentLocale.flutterLocale.languageCode;

    initializeDateFormatting(languageCode);
    final format = DateFormat('M/d EEEE', languageCode);

    return Row(
      children: [
        Text(
          format.format(dateTime),
          style: ts.headlineMedium,
        ),
        const Gap(8),
        Consumer(
          builder: (context, ref, child) {
            final weather = ref.watch(weatherProvider).valueOrNull;
            final iconData = switch (weather?.weatherType) {
              WeatherType.sunny => MdiIcons.weatherSunny,
              WeatherType.partCloud => MdiIcons.weatherPartlyCloudy,
              WeatherType.cloud => MdiIcons.weatherCloudy,
              WeatherType.rainy => MdiIcons.weatherRainy,
              WeatherType.heavyRainy => MdiIcons.weatherPouring,
              WeatherType.lightning => MdiIcons.weatherLightning,
              WeatherType.snow => MdiIcons.weatherSnowy,
              WeatherType.mist => MdiIcons.weatherFog,
              _ => null,
            };

            return Icon(
              iconData,
              size: 32,
              color: cs.primary,
            );
          },
        ),
      ],
    );
  }
}
