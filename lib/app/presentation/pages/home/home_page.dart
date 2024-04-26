import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../i18n/strings.g.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../news/components/news_pane.dart';
import '../training/components/training_card.dart';
import 'components/callender.dart';
import 'components/headline_pane.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _PageContentsColumn(
      children: [
        Callender(dateTime: DateTime.now()),
        const Gap(24),
        const _TrainingCardsPane(),
        const Gap(32),
        const _WeeklyTrainingPane(),
        const Gap(32),
        const NewsPane(),
        const Gap(120),
      ],
    );
  }
}

class _PageContentsColumn extends StatelessWidget {
  const _PageContentsColumn({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}

class _TrainingCardsPane extends HookConsumerWidget {
  const _TrainingCardsPane();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO(yakitama5): 本日のトレーニング実施状況を取得して、状態に応じて表示を出し分けること
    return HeadlinePane(
      label: i18n.home.todayStatus,
      child: Column(
        children: TrainingType.values
            .map(
              (e) => TrainingCard(trainingType: e),
            )
            .toList(),
      ),
    );
  }
}

class _WeeklyTrainingPane extends HookConsumerWidget {
  const _WeeklyTrainingPane();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    // TODO(yakitama5): 1週間のサマリを取得してから表示
    return HeadlinePane(
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
    );
  }
}
