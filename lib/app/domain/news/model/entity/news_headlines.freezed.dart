// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_headlines.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsHeadlines {
  List<News> get headlines => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsHeadlinesCopyWith<NewsHeadlines> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsHeadlinesCopyWith<$Res> {
  factory $NewsHeadlinesCopyWith(
          NewsHeadlines value, $Res Function(NewsHeadlines) then) =
      _$NewsHeadlinesCopyWithImpl<$Res, NewsHeadlines>;
  @useResult
  $Res call({List<News> headlines, int page, int? totalCount});
}

/// @nodoc
class _$NewsHeadlinesCopyWithImpl<$Res, $Val extends NewsHeadlines>
    implements $NewsHeadlinesCopyWith<$Res> {
  _$NewsHeadlinesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headlines = null,
    Object? page = null,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      headlines: null == headlines
          ? _value.headlines
          : headlines // ignore: cast_nullable_to_non_nullable
              as List<News>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsHeadlinesImplCopyWith<$Res>
    implements $NewsHeadlinesCopyWith<$Res> {
  factory _$$NewsHeadlinesImplCopyWith(
          _$NewsHeadlinesImpl value, $Res Function(_$NewsHeadlinesImpl) then) =
      __$$NewsHeadlinesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<News> headlines, int page, int? totalCount});
}

/// @nodoc
class __$$NewsHeadlinesImplCopyWithImpl<$Res>
    extends _$NewsHeadlinesCopyWithImpl<$Res, _$NewsHeadlinesImpl>
    implements _$$NewsHeadlinesImplCopyWith<$Res> {
  __$$NewsHeadlinesImplCopyWithImpl(
      _$NewsHeadlinesImpl _value, $Res Function(_$NewsHeadlinesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headlines = null,
    Object? page = null,
    Object? totalCount = freezed,
  }) {
    return _then(_$NewsHeadlinesImpl(
      headlines: null == headlines
          ? _value._headlines
          : headlines // ignore: cast_nullable_to_non_nullable
              as List<News>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NewsHeadlinesImpl extends _NewsHeadlines {
  const _$NewsHeadlinesImpl(
      {required final List<News> headlines,
      required this.page,
      this.totalCount})
      : _headlines = headlines,
        super._();

  final List<News> _headlines;
  @override
  List<News> get headlines {
    if (_headlines is EqualUnmodifiableListView) return _headlines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_headlines);
  }

  @override
  final int page;
  @override
  final int? totalCount;

  @override
  String toString() {
    return 'NewsHeadlines(headlines: $headlines, page: $page, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsHeadlinesImpl &&
            const DeepCollectionEquality()
                .equals(other._headlines, _headlines) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_headlines), page, totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsHeadlinesImplCopyWith<_$NewsHeadlinesImpl> get copyWith =>
      __$$NewsHeadlinesImplCopyWithImpl<_$NewsHeadlinesImpl>(this, _$identity);
}

abstract class _NewsHeadlines extends NewsHeadlines {
  const factory _NewsHeadlines(
      {required final List<News> headlines,
      required final int page,
      final int? totalCount}) = _$NewsHeadlinesImpl;
  const _NewsHeadlines._() : super._();

  @override
  List<News> get headlines;
  @override
  int get page;
  @override
  int? get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$NewsHeadlinesImplCopyWith<_$NewsHeadlinesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
