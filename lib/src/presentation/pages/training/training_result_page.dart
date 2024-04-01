import 'package:brain_training/src/domain/training/value_object/training_type.dart';
import 'package:brain_training/src/presentation/components/importer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/model/training/training_result.dart';
import '../../theme/importer.dart';

class TrainingResultPage extends HookConsumerWidget {
  const TrainingResultPage({
    super.key,
    required this.trainingType,
    this.trainingResult,
  });

  final TrainingType trainingType;
  final TrainingResult? trainingResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('トレーニング結果'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                WidthFillBox(
                  child: FilledCard(
                    child: Column(
                      children: [
                        Text(
                          '評価',
                          style: ts.headlineMedium,
                        ),
                        const Gap(16),
                        const Icon(
                          CustomIcons.sumo,
                          size: 92,
                        ),
                        const Gap(8),
                        Text(
                          '横綱級',
                          style: ts.displayMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(32),
                Text(
                  '15点',
                  style: ts.displayMedium,
                ),
                const Gap(16),
                Text(
                  '20問',
                  style: ts.headlineMedium,
                ),
                const Gap(16),
                const GaugeChart(
                  value: 75,
                  radius: 64,
                ),
                const Gap(16),
                Text(
                  '正答率：75%',
                  style: ts.headlineMedium,
                ),
                const Gap(32),
                WidthFillBox(
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text('次へ'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
