// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_headlines_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsHeadlinesConfig {
  int get pageSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsHeadlinesConfigCopyWith<NewsHeadlinesConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsHeadlinesConfigCopyWith<$Res> {
  factory $NewsHeadlinesConfigCopyWith(
          NewsHeadlinesConfig value, $Res Function(NewsHeadlinesConfig) then) =
      _$NewsHeadlinesConfigCopyWithImpl<$Res, NewsHeadlinesConfig>;
  @useResult
  $Res call({int pageSize});
}

/// @nodoc
class _$NewsHeadlinesConfigCopyWithImpl<$Res, $Val extends NewsHeadlinesConfig>
    implements $NewsHeadlinesConfigCopyWith<$Res> {
  _$NewsHeadlinesConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsHeadlinesConfigImplCopyWith<$Res>
    implements $NewsHeadlinesConfigCopyWith<$Res> {
  factory _$$NewsHeadlinesConfigImplCopyWith(_$NewsHeadlinesConfigImpl value,
          $Res Function(_$NewsHeadlinesConfigImpl) then) =
      __$$NewsHeadlinesConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageSize});
}

/// @nodoc
class __$$NewsHeadlinesConfigImplCopyWithImpl<$Res>
    extends _$NewsHeadlinesConfigCopyWithImpl<$Res, _$NewsHeadlinesConfigImpl>
    implements _$$NewsHeadlinesConfigImplCopyWith<$Res> {
  __$$NewsHeadlinesConfigImplCopyWithImpl(_$NewsHeadlinesConfigImpl _value,
      $Res Function(_$NewsHeadlinesConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
  }) {
    return _then(_$NewsHeadlinesConfigImpl(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NewsHeadlinesConfigImpl implements _NewsHeadlinesConfig {
  const _$NewsHeadlinesConfigImpl({required this.pageSize});

  @override
  final int pageSize;

  @override
  String toString() {
    return 'NewsHeadlinesConfig(pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsHeadlinesConfigImpl &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsHeadlinesConfigImplCopyWith<_$NewsHeadlinesConfigImpl> get copyWith =>
      __$$NewsHeadlinesConfigImplCopyWithImpl<_$NewsHeadlinesConfigImpl>(
          this, _$identity);
}

abstract class _NewsHeadlinesConfig implements NewsHeadlinesConfig {
  const factory _NewsHeadlinesConfig({required final int pageSize}) =
      _$NewsHeadlinesConfigImpl;

  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$NewsHeadlinesConfigImplCopyWith<_$NewsHeadlinesConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
