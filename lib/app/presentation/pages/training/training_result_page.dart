import 'package:brain_training/app/application/usecase/settings/state/rank_category_provider.dart';
import 'package:brain_training/app/application/usecase/training/state/first_result_provider.dart';
import 'package:brain_training/app/application/usecase/training/training_usecase.dart';
import 'package:brain_training/app/domain/training/value_object/rank_category.dart';
import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/app/presentation/pages/presentation_mixin.dart';
import 'package:brain_training/app/presentation/routes/src/routes/routes.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/training/entity/training_result.dart';
import '../../../domain/training/value_object/result_rank.dart';
import '../../routes/src/routes/home_branch.dart';

class TrainingResultPage extends HookConsumerWidget with PresentationMixin {
  TrainingResultPage({
    super.key,
    required this.result,
  });

  final TrainingResult result;
  final GlobalKey _imageKey = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;

    // チュートリアル表示を判定
    final showTutorial = !ref.watch(trainingFirstDoneProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.training.result.title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: i18n.training.result.share.buttonCaption,
            onPressed: () => execute(context, action: () async {
              final xFile = await captureToXFile(_imageKey);
              if (xFile == null) {
                throw Exception([
                  i18n.error.failedMessage(
                      action: i18n.training.result.share.buttonCaption)
                ]);
              }

              return ref
                  .read(trainingUsecaseProvider)
                  .shareResult(xFile: xFile, result: result);
            }),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                RepaintBoundary(
                  key: _imageKey,
                  // 背景色が透明化されるため、再描画範囲に色を設定する
                  child: ColoredBox(
                    color: cs.surface,
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
                const Gap(32),
                WidthFillBox(
                  child: FilledButton(
                    onPressed: () => const HomeRouteData().go(context),
                    child: Text(i18n.common.end),
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

class ScoreCard extends HookConsumerWidget {
  const ScoreCard({super.key, required this.rank});

  final ResultRank rank;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = Theme.of(context).textTheme;
    final rankCategory = ref.watch(rankCategoryProvider);

    return WidthFillBox(
      child: FilledCard(
        child: Column(
          children: [
            Text(
              i18n.training.result.scoreCard.title,
              style: ts.headlineMedium,
            ),
            const Gap(16),
            Icon(
              rankCategory.iconData,
              size: 92,
            ),
            const Gap(8),
            Text(
              // ignore: avoid_dynamic_calls
              i18n.training.result.rank[rankCategory.name](context: rank),
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
          // TODO(yakitama5): 未着手
          FillInTheBlankCalcResult() => const SizedBox.shrink(),
        },
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
