// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_headline_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsHeadlineResponse _$NewsHeadlineResponseFromJson(Map<String, dynamic> json) {
  return _NewsHeadlineResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsHeadlineResponse {
  String? get status => throw _privateConstructorUsedError;
  int? get totalResults => throw _privateConstructorUsedError;
  List<NewsArticle>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsHeadlineResponseCopyWith<NewsHeadlineResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsHeadlineResponseCopyWith<$Res> {
  factory $NewsHeadlineResponseCopyWith(NewsHeadlineResponse value,
          $Res Function(NewsHeadlineResponse) then) =
      _$NewsHeadlineResponseCopyWithImpl<$Res, NewsHeadlineResponse>;
  @useResult
  $Res call({String? status, int? totalResults, List<NewsArticle>? articles});
}

/// @nodoc
class _$NewsHeadlineResponseCopyWithImpl<$Res,
        $Val extends NewsHeadlineResponse>
    implements $NewsHeadlineResponseCopyWith<$Res> {
  _$NewsHeadlineResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsHeadlineResponseImplCopyWith<$Res>
    implements $NewsHeadlineResponseCopyWith<$Res> {
  factory _$$NewsHeadlineResponseImplCopyWith(_$NewsHeadlineResponseImpl value,
          $Res Function(_$NewsHeadlineResponseImpl) then) =
      __$$NewsHeadlineResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, int? totalResults, List<NewsArticle>? articles});
}

/// @nodoc
class __$$NewsHeadlineResponseImplCopyWithImpl<$Res>
    extends _$NewsHeadlineResponseCopyWithImpl<$Res, _$NewsHeadlineResponseImpl>
    implements _$$NewsHeadlineResponseImplCopyWith<$Res> {
  __$$NewsHeadlineResponseImplCopyWithImpl(_$NewsHeadlineResponseImpl _value,
      $Res Function(_$NewsHeadlineResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$NewsHeadlineResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsHeadlineResponseImpl extends _NewsHeadlineResponse
    with DiagnosticableTreeMixin {
  _$NewsHeadlineResponseImpl(
      {this.status, this.totalResults, final List<NewsArticle>? articles})
      : _articles = articles,
        super._();

  factory _$NewsHeadlineResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsHeadlineResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final int? totalResults;
  final List<NewsArticle>? _articles;
  @override
  List<NewsArticle>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsHeadlineResponse(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsHeadlineResponse'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('totalResults', totalResults))
      ..add(DiagnosticsProperty('articles', articles));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsHeadlineResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsHeadlineResponseImplCopyWith<_$NewsHeadlineResponseImpl>
      get copyWith =>
          __$$NewsHeadlineResponseImplCopyWithImpl<_$NewsHeadlineResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsHeadlineResponseImplToJson(
      this,
    );
  }
}

abstract class _NewsHeadlineResponse extends NewsHeadlineResponse {
  factory _NewsHeadlineResponse(
      {final String? status,
      final int? totalResults,
      final List<NewsArticle>? articles}) = _$NewsHeadlineResponseImpl;
  _NewsHeadlineResponse._() : super._();

  factory _NewsHeadlineResponse.fromJson(Map<String, dynamic> json) =
      _$NewsHeadlineResponseImpl.fromJson;

  @override
  String? get status;
  @override
  int? get totalResults;
  @override
  List<NewsArticle>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$NewsHeadlineResponseImplCopyWith<_$NewsHeadlineResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
