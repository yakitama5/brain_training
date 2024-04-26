import 'package:brain_training/utils/logger.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../application/config/news_headlines_config.dart';
import '../../../../application/usecase/news/state/news_haedlines_provider.dart';
import '../../../../domain/news/model/value_object/news_country.dart';
import '../../../components/importer.dart';
import '../../error/components/error_view.dart';
import '../../home/components/headline_pane.dart';
import 'news_card.dart';

class NewsPane extends HookConsumerWidget {
  const NewsPane({
    super.key,
    this.radius = 12,
  });

  final double radius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 言語設定に応じてニュースを取得する
    final country = switch (i18n.$meta.locale) {
      AppLocale.en => NewsCountry.us,
      AppLocale.ja => NewsCountry.jp,
    };
    // あらかじめ先頭ページを取得し、総数を判定しておく
    final headlinesCount = ref.watch(
      newsHeadlinesProvider(country: country, page: 1)
          .select((value) => value.valueOrNull?.totalCount),
    );

    return HeadlinePane(
      label: i18n.home.todayNews,
      child: CarouselSlider.builder(
        itemCount: headlinesCount,
        itemBuilder: (context, index, realIndex) {
          final page = index ~/ newsHeadlinesConfig.pageSize + 1;
          final headlines =
              ref.watch(newsHeadlinesProvider(country: country, page: page));

          return headlines.when(
            data: (data) {
              final news = data.headlines[index % newsHeadlinesConfig.pageSize];
              return NewsCard(
                news: news,
                radius: radius,
                onTap: news.url == null
                    ? null
                    : () {
                        logger.d('Send to :${news.url}');
                        launchUrlString(news.url ?? '');
                      },
              );
            },
            error: ErrorView.new,
            loading: () => _Shimmer(radius: radius),
          );
        },
        options: CarouselOptions(
          viewportFraction: 0.5,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
        ),
      ),
    );
  }
}

class _Shimmer extends StatelessWidget {
  const _Shimmer({required this.radius});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget.circular(
      height: double.infinity,
      width: double.infinity,
      shapeBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
