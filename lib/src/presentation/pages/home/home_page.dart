import 'package:brain_training/src/presentation/components/importer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

import '../../../domain/training/value_object/training_type.dart';

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
                Row(
                  children: [
                    Text(
                      '3/25 土曜日',
                      style: ts.headlineMedium,
                    ),
                    const Gap(8),
                    Icon(
                      Icons.sunny,
                      size: 32,
                      color: cs.primary,
                    ),
                  ],
                ),
                const Gap(24),
                const HomePane(
                  label: '今日の状況',
                  child: Column(
                    children: [
                      TrainingCard(
                        trainingType: TrainingType.coloredWord,
                        done: false,
                      ),
                      TrainingCard(
                        trainingType: TrainingType.themeShiritori,
                        done: false,
                      ),
                      TrainingCard(
                        trainingType: TrainingType.addMinus,
                        done: true,
                      ),
                    ],
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

class TrainingCard extends StatelessWidget {
  const TrainingCard({
    super.key,
    required this.trainingType,
    required this.done,
  });

  final TrainingType trainingType;
  final bool done;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;

    final subhead = done ? '今日のスコア' : '今日の脳トレを始めましょう';

    return FilledCard(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: cs.primary,
              ),
              const Gap(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trainingType.title,
                    style: ts.titleMedium,
                  ),
                  Text(
                    subhead,
                    style: ts.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
          const Gap(24),
          if (!done)
            WidthFillBox(
              child: FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('測定'),
              ),
            ),
          if (done)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LabelIcon(iconData: Icons.score, label: '横綱級'),
                LabelIcon(iconData: Icons.sports_score, label: '15点'),
              ],
            ),
        ],
      ),
    );
  }
}

class LabelIcon extends StatelessWidget {
  const LabelIcon({super.key, required this.iconData, required this.label});

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;

    return Column(
      children: [
        Icon(
          iconData,
          color: cs.primary,
          size: 32,
        ),
        const Gap(16),
        Text(
          label,
          style: ts.titleLarge,
        ),
      ],
    );
  }
}
