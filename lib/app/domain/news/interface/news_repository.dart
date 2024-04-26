import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/entity/news_headlines.dart';
import '../model/value_object/news_category.dart';
import '../model/value_object/news_country.dart';

part 'news_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@riverpod
NewsRepository newsRepository(NewsRepositoryRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

// ignore: one_member_abstracts
abstract class NewsRepository {
  Future<NewsHeadlines> fetchTodayHeadlines({
    required NewsCategory category,
    int page = 1,
    required NewsCountry country,
  });
}
