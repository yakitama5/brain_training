import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';

@freezed
class News with _$News {
  const factory News({
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    DateTime? publishedAt,
    String? content,
  }) = _News;
}
