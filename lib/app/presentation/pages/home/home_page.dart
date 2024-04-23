import 'package:brain_training/app/application/usecase/weather/state/weather_provider.dart';
import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nested/nested.dart';

import '../../../../i18n/strings.g.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../training/components/training_card.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Callender(dateTime: DateTime.now()),
                const Gap(24),
                HomePane(
                  label: i18n.home.todayStatus,
                  child: Column(
                    children: TrainingType.values
                        .map(
                          (e) => TrainingCard(trainingType: e),
                        )
                        .toList(),
                  ),
                ),
                const Gap(32),
                HomePane(
                  label: i18n.home.thisWeekStatus,
                  child: FilledCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          i18n.home.dailyTraining,
                          style: ts.titleMedium,
                        ),
                        const Gap(24),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // TODO(yakitama5): テスト値の設定
                                Text(
                                  '6/7',
                                  style: ts.bodyLarge?.merge(
                                    TextStyle(
                                      color: cs.surfaceTint,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  i18n.home.completed,
                                  style: ts.labelSmall?.merge(
                                    TextStyle(color: cs.surfaceTint),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(32),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(32),
                HomePane(
                  label: i18n.home.todayNews,
                  child: CarouselSlider(
                    items: List.generate(
                      5,
                      (index) => WidthFillBox(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: cs.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              // TODO(yakitama5): テスト値の設定
                              'label$index',
                              style: TextStyle(color: cs.onPrimary),
                            ),
                          ),
                        ),
                      ),
                    ),
                    options: CarouselOptions(
                      viewportFraction: 0.4,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      enableInfiniteScroll: false,
                    ),
                  ),
                ),
                const Gap(120),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
            final weather = ref.watch(weatherProvider).value;
            final iconData = switch (weather?.weatherIcon) {
              '01d' || '01n' => MdiIcons.weatherSunny,
              '02d' || '02n' => MdiIcons.weatherPartlyCloudy,
              '03d' || '03n' => MdiIcons.weatherCloudy,
              '04d' || '04n' => MdiIcons.weatherCloudy,
              '09d' || '09n' => MdiIcons.weatherRainy,
              '10d' || '10n' => MdiIcons.weatherPouring,
              '11d' || '11n' => MdiIcons.weatherLightning,
              '13d' || '13n' => MdiIcons.weatherSnowy,
              '50d' || '50n' => MdiIcons.weatherFog,
              _ => Icons.question_mark,
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

class HomePane extends SingleChildStatelessWidget {
  const HomePane({super.key, super.child, required this.label});

  final String label;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    final ts = Theme.of(context).textTheme;

    if (child == null) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: ts.titleLarge,
        ),
        const Gap(8),
        child,
      ],
    );
  }
}
