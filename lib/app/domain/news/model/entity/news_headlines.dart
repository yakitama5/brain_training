import 'package:freezed_annotation/freezed_annotation.dart';

import 'news.dart';

part 'news_headlines.freezed.dart';

@freezed
class NewsHeadlines with _$NewsHeadlines {
  const factory NewsHeadlines({
    required List<News> headlines,
    required int page,
    int? totalCount,
  }) = _NewsHeadlines;

  const NewsHeadlines._();

  NewsHeadlines addNews({required News news}) {
    return copyWith(
      headlines: headlines..add(news),
      page: page,
      totalCount: totalCount,
    );
  }
}
