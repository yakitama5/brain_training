import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:nested/nested.dart';

import '../../../domain/training/value_object/training_type.dart';
import '../training/components/training_card.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;

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
                  label: '今日の状況',
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
                  label: '今週の状況',
                  child: FilledCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '毎日のトレーニング',
                          style: ts.titleMedium,
                        ),
                        const Gap(24),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
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
                                  '達成',
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
                  label: '今日のニュース',
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

    initializeDateFormatting('ja');
    final format = DateFormat('M/dd EEEE', 'ja');

    return Row(
      children: [
        Text(
          format.format(dateTime),
          style: ts.headlineMedium,
        ),
        const Gap(8),
        Icon(
          Icons.sunny,
          size: 32,
          color: cs.primary,
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
