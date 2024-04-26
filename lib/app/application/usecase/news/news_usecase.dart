import 'package:brain_training/app/application/usecase/run_usecase_mixin.dart';
import 'package:brain_training/app/domain/news/interface/news_repository.dart';
import 'package:brain_training/app/domain/news/model/value_object/news_category.dart';
import 'package:brain_training/app/domain/news/model/value_object/news_country.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/news/model/entity/news_headlines.dart';

part 'news_usecase.g.dart';

@riverpod
NewsUsecase newsUsecase(NewsUsecaseRef ref) => NewsUsecase(ref);

class NewsUsecase with RunUsecaseMixin {
  const NewsUsecase(this.ref);

  final Ref ref;
  NewsRepository get _repository => ref.read(newsRepositoryProvider);

  Future<NewsHeadlines> fetchHealthNews({
    required NewsCountry country,
    required int page,
  }) {
    return _repository.fetchTodayHeadlines(
      category: NewsCategory.health,
      country: country,
      page: page,
    );
  }
}
