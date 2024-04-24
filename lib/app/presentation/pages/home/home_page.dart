import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../i18n/strings.g.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../training/components/training_card.dart';
import 'components/callender.dart';
import 'components/headline_pane.dart';

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
                HeadlinePane(
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
                HeadlinePane(
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
                HeadlinePane(
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
