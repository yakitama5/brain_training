// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_preference_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SharedPreferenceConfig {
  String get rankCategoryKey => throw _privateConstructorUsedError;
  String get uiStyleKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SharedPreferenceConfigCopyWith<SharedPreferenceConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPreferenceConfigCopyWith<$Res> {
  factory $SharedPreferenceConfigCopyWith(SharedPreferenceConfig value,
          $Res Function(SharedPreferenceConfig) then) =
      _$SharedPreferenceConfigCopyWithImpl<$Res, SharedPreferenceConfig>;
  @useResult
  $Res call({String rankCategoryKey, String uiStyleKey});
}

/// @nodoc
class _$SharedPreferenceConfigCopyWithImpl<$Res,
        $Val extends SharedPreferenceConfig>
    implements $SharedPreferenceConfigCopyWith<$Res> {
  _$SharedPreferenceConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rankCategoryKey = null,
    Object? uiStyleKey = null,
  }) {
    return _then(_value.copyWith(
      rankCategoryKey: null == rankCategoryKey
          ? _value.rankCategoryKey
          : rankCategoryKey // ignore: cast_nullable_to_non_nullable
              as String,
      uiStyleKey: null == uiStyleKey
          ? _value.uiStyleKey
          : uiStyleKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SharedPreferenceConfigImplCopyWith<$Res>
    implements $SharedPreferenceConfigCopyWith<$Res> {
  factory _$$SharedPreferenceConfigImplCopyWith(
          _$SharedPreferenceConfigImpl value,
          $Res Function(_$SharedPreferenceConfigImpl) then) =
      __$$SharedPreferenceConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rankCategoryKey, String uiStyleKey});
}

/// @nodoc
class __$$SharedPreferenceConfigImplCopyWithImpl<$Res>
    extends _$SharedPreferenceConfigCopyWithImpl<$Res,
        _$SharedPreferenceConfigImpl>
    implements _$$SharedPreferenceConfigImplCopyWith<$Res> {
  __$$SharedPreferenceConfigImplCopyWithImpl(
      _$SharedPreferenceConfigImpl _value,
      $Res Function(_$SharedPreferenceConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rankCategoryKey = null,
    Object? uiStyleKey = null,
  }) {
    return _then(_$SharedPreferenceConfigImpl(
      rankCategoryKey: null == rankCategoryKey
          ? _value.rankCategoryKey
          : rankCategoryKey // ignore: cast_nullable_to_non_nullable
              as String,
      uiStyleKey: null == uiStyleKey
          ? _value.uiStyleKey
          : uiStyleKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SharedPreferenceConfigImpl implements _SharedPreferenceConfig {
  const _$SharedPreferenceConfigImpl(
      {required this.rankCategoryKey, required this.uiStyleKey});

  @override
  final String rankCategoryKey;
  @override
  final String uiStyleKey;

  @override
  String toString() {
    return 'SharedPreferenceConfig(rankCategoryKey: $rankCategoryKey, uiStyleKey: $uiStyleKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedPreferenceConfigImpl &&
            (identical(other.rankCategoryKey, rankCategoryKey) ||
                other.rankCategoryKey == rankCategoryKey) &&
            (identical(other.uiStyleKey, uiStyleKey) ||
                other.uiStyleKey == uiStyleKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rankCategoryKey, uiStyleKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedPreferenceConfigImplCopyWith<_$SharedPreferenceConfigImpl>
      get copyWith => __$$SharedPreferenceConfigImplCopyWithImpl<
          _$SharedPreferenceConfigImpl>(this, _$identity);
}

abstract class _SharedPreferenceConfig implements SharedPreferenceConfig {
  const factory _SharedPreferenceConfig(
      {required final String rankCategoryKey,
      required final String uiStyleKey}) = _$SharedPreferenceConfigImpl;

  @override
  String get rankCategoryKey;
  @override
  String get uiStyleKey;
  @override
  @JsonKey(ignore: true)
  _$$SharedPreferenceConfigImplCopyWith<_$SharedPreferenceConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}
