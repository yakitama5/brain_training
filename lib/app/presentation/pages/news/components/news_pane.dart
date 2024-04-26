import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../application/usecase/news/state/news_provider.dart';
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
    const pageSize = 10;
    final maxPage = useState(1);
    final itemCount = maxPage.value * pageSize + 1;

    return HeadlinePane(
      label: i18n.home.todayNews,
      child: CarouselSlider.builder(
        itemCount: itemCount,
        itemBuilder: (context, index, realIndex) {
          final endItemIndex = itemCount - 1;
          if (index >= endItemIndex) {
            // TODO(yakitama5): 最後のページ判定を行う必要がある
            return _Shimmer(radius: radius);
          }

          final page = index ~/ pageSize + 1;
          final news = ref.watch(newsProvider(country: country, page: page));

          return news.when(
            data: (newsList) {
              return NewsCard(
                news: newsList[index],
                radius: radius,
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
