import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/app/presentation/routes/src/routes/home_branch.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/i18n/strings.g.dart';
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
              i18n.training.result.scoreCard.title,
              style: ts.headlineMedium,
            ),
            const Gap(16),
            const Icon(
              // TODO(yakitama5): 表示形式は後から切り替える
              CustomIcons.sumo,
              size: 92,
            ),
            const Gap(8),
            // TODO(yakitama5): 表示形式は後から切り替える
            Text(
              i18n.training.result.rank.sumo(context: rank),
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
          i18n.training.result.score(points: result.score),
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
            child: Text(i18n.common.end),
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
          i18n.training.result.questions(qeustions: result.questions),
          style: ts.headlineMedium,
        ),
        const Gap(16),
        GaugeChart(
          value: rate,
          radius: 64,
        ),
        const Gap(16),
        Text(
          i18n.training.result.correctRate(rate: rate.round()),
          style: ts.headlineMedium,
        ),
      ],
    );
  }
}
