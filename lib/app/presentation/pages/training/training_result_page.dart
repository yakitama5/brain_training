import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/app/presentation/routes/src/routes/home_branch.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/training/entity/training_result.dart';
import '../../../domain/training/value_object/result_rank.dart';
import '../../theme/importer.dart';

class TrainingResultPage extends HookConsumerWidget {
  const TrainingResultPage({
    super.key,
    required this.result,
  });

  final TrainingResult result;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                ScoreCard(rank: result.rank),
                const Gap(32),
                ScoreDetail(
                  result: result,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScoreCard extends StatelessWidget {
  const ScoreCard({super.key, required this.rank});

  final ResultRank rank;

  @override
  Widget build(BuildContext context) {
    final ts = Theme.of(context).textTheme;

    return WidthFillBox(
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
            // TODO(yakitama5): 表示形式は後から切り替える
            Text(
              rank.sumo,
              style: ts.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class ScoreDetail extends StatelessWidget {
  const ScoreDetail({super.key, required this.result});

  final TrainingResult result;

  @override
  Widget build(BuildContext context) {
    final ts = Theme.of(context).textTheme;

    return Column(
      children: [
        Text(
          '${result.score}点',
          style: ts.displayMedium,
        ),
        const Gap(16),
        switch (result) {
          ColoredWordResult() =>
            ColoredWordScoreDetail(result: result as ColoredWordResult),
        },
        const Gap(32),
        WidthFillBox(
          child: FilledButton(
            onPressed: () => const HomeRouteData().go(context),
            child: const Text('終了'),
          ),
        ),
      ],
    );
  }
}

class ColoredWordScoreDetail extends StatelessWidget {
  const ColoredWordScoreDetail({super.key, required this.result});

  final ColoredWordResult result;

  @override
  Widget build(BuildContext context) {
    final ts = Theme.of(context).textTheme;
    final rate = result.correctRate * 100;

    return Column(
      children: [
        Text(
          '${result.questions}問',
          style: ts.headlineMedium,
        ),
        const Gap(16),
        GaugeChart(
          value: rate,
          radius: 64,
        ),
        const Gap(16),
        Text(
          '正答率：${rate.round()}%',
          style: ts.headlineMedium,
        ),
      ],
    );
  }
}
