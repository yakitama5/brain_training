import 'package:brain_training/app/application/usecase/settings/state/done_first_launch_provider.dart';
import 'package:brain_training/app/application/usecase/settings/state/rank_category_provider.dart';
import 'package:brain_training/app/application/usecase/training/state/training_weekly_summary_provider.dart';
import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/utils/date_time_extension.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../../../../i18n/strings.g.dart';
import '../../../application/usecase/training/state/training_result_provider.dart';
import '../../../domain/training/entity/training_daily_summary.dart';
import '../../../domain/training/value_object/training_type.dart';
import '../error/components/error_view.dart';
import '../news/components/news_pane.dart';
import '../training/components/training_card.dart';
import '../training/training_tutorial_page.dart';
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
        _TrainingCardsPane(),
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
  _TrainingCardsPane();

  final GlobalKey _firstCardKeys = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFirstLaunch = !ref.watch(doneFirstLaunchProvider);
    final nowDate = DateTime.now().dayStart;

    ref.listen(
        trainingResultProvider(
          trainingType: TrainingType.values.first,
          dateTime: nowDate,
        ), (p, c) {
      if (isFirstLaunch && c is AsyncData) {
        _showTutorial(context, ref);
      }
    });

    return HeadlinePane(
      label: i18n.home.todayStatus,
      child: Column(
        children: TrainingType.values.mapIndexed((i, type) {
          final rankCategory = ref.watch(rankCategoryProvider);
          final result = ref.watch(
            trainingResultProvider(
              trainingType: type,
              dateTime: nowDate,
            ),
          );

          return result.when(
            data: (resultData) => OpenContainerCardWrapper(
              closedBuilder: (context, action) => TrainingCard(
                // チュートリアルのため、先頭要素だけキーを発番する
                key: i <= 0 ? _firstCardKeys : null,

                trainingType: type,
                result: resultData,
                rankCategory: rankCategory,
                onStart: action,
              ),
              openBuilder: (context, action) => TrainingTutorialPage(
                trainingType: type,
              ),
            ),
            error: ErrorView.new,
            loading: () => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ShimmerWidget.circular(
                width: double.infinity,
                height: 144,
                shapeBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Future<void> _showTutorial(BuildContext context, WidgetRef ref) async {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final tt = theme.textTheme;
    final tsOnPrimary = TextStyle(color: cs.onPrimary);

    final tutorial = TutorialCoachMark(targets: [
      TargetFocus(
        identify: 'firstTraining',
        keyTarget: _firstCardKeys,
        alignSkip: Alignment.bottomRight,
        enableOverlayTab: true,
        shape: ShapeLightFocus.RRect,
        color: cs.primary,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    i18n.home.tutorial.title,
                    style: tt.headlineMedium?.merge(tsOnPrimary),
                  ),
                  const Gap(16),
                  Text(
                    i18n.home.tutorial.body,
                    style: tsOnPrimary,
                  ),
                ],
              ),
            ),
          )
        ],
      )
    ]);

    Future.delayed(const Duration(milliseconds: 500), () {
      tutorial.show(context: context);
      ref.read(doneFirstLaunchProvider.notifier).done();
    });
  }
}

class _WeeklyTrainingPane extends HookConsumerWidget {
  const _WeeklyTrainingPane();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    final weeklySummary =
        ref.watch(trainingWeeklySummaryProvider(date: DateTime.now().dayStart));

    // TODO(yakitama5): 1週間のサマリを取得してから表示
    return HeadlinePane(
      label: i18n.home.thisWeekStatus,
      child: weeklySummary.when(
        data: (data) {
          if (data == null) {
            return const SizedBox.shrink();
          }

          return FilledCard(
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
                        Text(
                          '${data.doneDays}/${data.totalDays}',
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
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: data.days
                            .map((e) => DailySummaryGauge(summary: e))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        error: ErrorView.new,
        loading: () => ShimmerWidget.circular(
          width: double.infinity,
          height: 160,
          shapeBorder:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}

class DailySummaryGauge extends HookConsumerWidget {
  const DailySummaryGauge({super.key, required this.summary});

  final TrainingDailySummary summary;

  static const _radius = 16.0;
  static const _thickness = 6.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final total = TrainingType.values.length;
    final value = summary.doneCount / total * 100;

    final languageCode =
        LocaleSettings.currentLocale.flutterLocale.languageCode;
    initializeDateFormatting(languageCode);
    final format = DateFormat('EEE', languageCode);

    return Column(
      children: [
        Visibility(
          visible: summary.doneCount > 0,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Icon(
            Icons.check,
            size: 24,
            color: cs.secondary,
          ),
        ),
        const Gap(4),
        GaugeChart(
          value: value,
          radius: _radius,
          thickness: _thickness,
          color: cs.secondary,
        ),
        const Gap(4),
        Text(
          format.format(summary.doneAt),
          style: TextStyle(color: cs.onSurface),
        ),
      ],
    );
  }
}
