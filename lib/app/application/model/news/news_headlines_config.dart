import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_headlines_config.freezed.dart';

@freezed
class NewsHeadlinesConfig with _$NewsHeadlinesConfig {
  const factory NewsHeadlinesConfig({
    required int pageSize,
  }) = _NewsHeadlinesConfig;
}
