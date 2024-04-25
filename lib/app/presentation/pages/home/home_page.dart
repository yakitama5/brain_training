import 'package:brain_training/app/application/usecase/news/state/news_provider.dart';
import 'package:brain_training/app/domain/news/model/value_object/news_country.dart';
import 'package:brain_training/app/presentation/components/importer.dart';
import 'package:brain_training/app/presentation/pages/error/components/error_view.dart';
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
    return _PageContentsColumn(
      children: [
        Callender(dateTime: DateTime.now()),
        const Gap(24),
        const _TrainingCardsPane(),
        const Gap(32),
        const _WeeklyTrainingPane(),
        const Gap(32),
        const _NewsPane(),
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

class _NewsPane extends HookConsumerWidget {
  const _NewsPane();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO(yakitama5): ページングを行えるようにNotifierを利用すること
    final news = ref.watch(newsProvider(country: NewsCountry.jp, page: 1));

    // TODO(yakitama5): 読み込み中はスケルトン表示とすること
    return news.when(
      error: ErrorView.new,
      loading: CircularProgressIndicator.adaptive,
      data: (newsList) {
        final cs = Theme.of(context).colorScheme;

        return HeadlinePane(
          label: i18n.home.todayNews,
          child: CarouselSlider(
            items: List.generate(
              newsList.length,
              (index) {
                final newsData = newsList[index];
                final decoration = newsData.urlToImage == null
                    ? BoxDecoration(
                        color: cs.secondary,
                        borderRadius: BorderRadius.circular(12),
                      )
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(newsData.urlToImage!),
                          fit: BoxFit.fitHeight,
                          colorFilter: ColorFilter.mode(
                            cs.onBackground.withOpacity(0.7),
                            BlendMode.srcATop,
                          ),
                        ),
                      );

                return WidthFillBox(
                  child: DecoratedBox(
                    decoration: decoration,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        '${newsData.title}',
                        maxLines: 5,
                        style: TextStyle(
                          color: cs.onSecondary,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            options: CarouselOptions(
              viewportFraction: 0.5,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
            ),
          ),
        );
      },
    );
  }
}
