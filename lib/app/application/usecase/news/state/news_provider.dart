import 'package:brain_training/app/application/usecase/news/news_usecase.dart';
import 'package:brain_training/app/domain/news/model/value_object/news_country.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/news/model/entity/news.dart';

part 'news_provider.g.dart';

@riverpod
Future<List<News>> news(
  NewsRef ref, {
  required NewsCountry country,
  required int page,
}) {
  return ref
      .read(newsUsecaseProvider)
      .fetchHealthNews(country: country, page: page);
}
