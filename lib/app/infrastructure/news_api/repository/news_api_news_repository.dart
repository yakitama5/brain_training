import 'package:brain_training/app/domain/news/interface/news_repository.dart';
import 'package:brain_training/app/infrastructure/news_api/client/news_headline_api_client.dart';
import 'package:brain_training/app/infrastructure/news_api/config/news_api_config.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/config/news_headlines_config.dart';
import '../../../domain/news/model/entity/news.dart';
import '../../../domain/news/model/entity/news_headlines.dart';
import '../../../domain/news/model/value_object/news_category.dart';
import '../../../domain/news/model/value_object/news_country.dart';

/// NewsAPIを利用した実装
class NewsApiNewsRepository implements NewsRepository {
  NewsApiNewsRepository(this.ref);

  final Ref ref;
  final _apiClient = NewsHeadlinesApiClient(Dio());
  String get _newsApiKey => ref.read(newsApiKeyProvider);

  @override
  Future<NewsHeadlines> fetchHeadlinesByDate({
    required NewsCategory category,
    int page = 1,
    required DateTime dateTime,
    required NewsCountry country,
  }) async {
    final res = await _apiClient.fetch(
      apiKey: _newsApiKey,
      category: category.name,
      country: country.name,
      page: page,
      pageSize: newsHeadlinesConfig.pageSize,
    );

    final headlines = res.articles
        ?.map(
          (e) => News(
            author: e.author,
            content: e.author,
            description: e.description,
            publishedAt: e.publishedAt,
            title: e.title,
            url: e.url,
            urlToImage: e.urlToImage,
          ),
        )
        .toList();

    return NewsHeadlines(
      headlines: headlines ?? [],
      page: page,
      totalCount: res.totalResults,
    );
  }
}
