import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../model/news_headline_response.dart';

part 'news_headline_api_client.g.dart';

@RestApi(baseUrl: 'https://newsapi.org/v2/top-headlines')
abstract class NewsHeadlinesApiClient {
  factory NewsHeadlinesApiClient(Dio dio, {String baseUrl}) =
      _NewsHeadlinesApiClient;

  @GET('')
  Future<NewsHeadlineResponse> fetch({
    @Query('apiKey') required String apiKey,
    @Query('country') String? country,
    @Query('category') String? category,
    @Query('page') int? page,
    @Query('pageSize') int? pageSize,
  });
}
