import 'package:brain_training/app/application/usecase/news/news_usecase.dart';
import 'package:brain_training/app/domain/news/model/value_object/news_country.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/news/model/entity/news_headlines.dart';

part 'news_haedlines_provider.g.dart';

@riverpod
Future<NewsHeadlines> newsHeadlines(
  NewsHeadlinesRef ref, {
  required NewsCountry country,
  required DateTime dateTime,
  required int page,
}) {
  return ref
      .watch(newsUsecaseProvider)
      .fetchHealthNews(country: country, page: page, dateTime: dateTime);
}
