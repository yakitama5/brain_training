import 'package:brain_training/src/presentation/components/importer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/training/value_object/training_type.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final ts = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, top: 40),
          child: SingleChildScrollView(
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
                Text(
                  '今日の状況',
                  style: ts.titleLarge,
                ),
                const Gap(8),
                const TrainingCard(
                  trainingType: TrainingType.coloredWord,
                  done: false,
                ),
                const TrainingCard(
                  trainingType: TrainingType.themeShiritori,
                  done: false,
                ),
                const TrainingCard(
                  trainingType: TrainingType.addMinus,
                  done: true,
                ),
              ],
            ),
          ),
        ),
      ),
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
                    '今日の脳トレを始めましょう',
                    style: ts.bodyMedium,
                  ),
                ],
              ),
            ],
          ),
          const Gap(24),
          WidthFillBox(
            child: FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('測定'),
            ),
          ),
        ],
      ),
    );
  }
}
