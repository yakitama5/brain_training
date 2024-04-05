// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_daily_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainingDailySummary {
  String get id => throw _privateConstructorUsedError;
  int? get coloredWordScore => throw _privateConstructorUsedError;
  int? get themeShiritoriScore => throw _privateConstructorUsedError;
  int? get addMinusScore => throw _privateConstructorUsedError;
  int get doneCount => throw _privateConstructorUsedError;
  DateTime get doneAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingDailySummaryCopyWith<TrainingDailySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingDailySummaryCopyWith<$Res> {
  factory $TrainingDailySummaryCopyWith(TrainingDailySummary value,
          $Res Function(TrainingDailySummary) then) =
      _$TrainingDailySummaryCopyWithImpl<$Res, TrainingDailySummary>;
  @useResult
  $Res call(
      {String id,
      int? coloredWordScore,
      int? themeShiritoriScore,
      int? addMinusScore,
      int doneCount,
      DateTime doneAt});
}

/// @nodoc
class _$TrainingDailySummaryCopyWithImpl<$Res,
        $Val extends TrainingDailySummary>
    implements $TrainingDailySummaryCopyWith<$Res> {
  _$TrainingDailySummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? coloredWordScore = freezed,
    Object? themeShiritoriScore = freezed,
    Object? addMinusScore = freezed,
    Object? doneCount = null,
    Object? doneAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      coloredWordScore: freezed == coloredWordScore
          ? _value.coloredWordScore
          : coloredWordScore // ignore: cast_nullable_to_non_nullable
              as int?,
      themeShiritoriScore: freezed == themeShiritoriScore
          ? _value.themeShiritoriScore
          : themeShiritoriScore // ignore: cast_nullable_to_non_nullable
              as int?,
      addMinusScore: freezed == addMinusScore
          ? _value.addMinusScore
          : addMinusScore // ignore: cast_nullable_to_non_nullable
              as int?,
      doneCount: null == doneCount
          ? _value.doneCount
          : doneCount // ignore: cast_nullable_to_non_nullable
              as int,
      doneAt: null == doneAt
          ? _value.doneAt
          : doneAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingDailySummaryImplCopyWith<$Res>
    implements $TrainingDailySummaryCopyWith<$Res> {
  factory _$$TrainingDailySummaryImplCopyWith(_$TrainingDailySummaryImpl value,
          $Res Function(_$TrainingDailySummaryImpl) then) =
      __$$TrainingDailySummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? coloredWordScore,
      int? themeShiritoriScore,
      int? addMinusScore,
      int doneCount,
      DateTime doneAt});
}

/// @nodoc
class __$$TrainingDailySummaryImplCopyWithImpl<$Res>
    extends _$TrainingDailySummaryCopyWithImpl<$Res, _$TrainingDailySummaryImpl>
    implements _$$TrainingDailySummaryImplCopyWith<$Res> {
  __$$TrainingDailySummaryImplCopyWithImpl(_$TrainingDailySummaryImpl _value,
      $Res Function(_$TrainingDailySummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? coloredWordScore = freezed,
    Object? themeShiritoriScore = freezed,
    Object? addMinusScore = freezed,
    Object? doneCount = null,
    Object? doneAt = null,
  }) {
    return _then(_$TrainingDailySummaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      coloredWordScore: freezed == coloredWordScore
          ? _value.coloredWordScore
          : coloredWordScore // ignore: cast_nullable_to_non_nullable
              as int?,
      themeShiritoriScore: freezed == themeShiritoriScore
          ? _value.themeShiritoriScore
          : themeShiritoriScore // ignore: cast_nullable_to_non_nullable
              as int?,
      addMinusScore: freezed == addMinusScore
          ? _value.addMinusScore
          : addMinusScore // ignore: cast_nullable_to_non_nullable
              as int?,
      doneCount: null == doneCount
          ? _value.doneCount
          : doneCount // ignore: cast_nullable_to_non_nullable
              as int,
      doneAt: null == doneAt
          ? _value.doneAt
          : doneAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TrainingDailySummaryImpl implements _TrainingDailySummary {
  const _$TrainingDailySummaryImpl(
      {required this.id,
      this.coloredWordScore,
      this.themeShiritoriScore,
      this.addMinusScore,
      this.doneCount = 0,
      required this.doneAt});

  @override
  final String id;
  @override
  final int? coloredWordScore;
  @override
  final int? themeShiritoriScore;
  @override
  final int? addMinusScore;
  @override
  @JsonKey()
  final int doneCount;
  @override
  final DateTime doneAt;

  @override
  String toString() {
    return 'TrainingDailySummary(id: $id, coloredWordScore: $coloredWordScore, themeShiritoriScore: $themeShiritoriScore, addMinusScore: $addMinusScore, doneCount: $doneCount, doneAt: $doneAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingDailySummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coloredWordScore, coloredWordScore) ||
                other.coloredWordScore == coloredWordScore) &&
            (identical(other.themeShiritoriScore, themeShiritoriScore) ||
                other.themeShiritoriScore == themeShiritoriScore) &&
            (identical(other.addMinusScore, addMinusScore) ||
                other.addMinusScore == addMinusScore) &&
            (identical(other.doneCount, doneCount) ||
                other.doneCount == doneCount) &&
            (identical(other.doneAt, doneAt) || other.doneAt == doneAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, coloredWordScore,
      themeShiritoriScore, addMinusScore, doneCount, doneAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingDailySummaryImplCopyWith<_$TrainingDailySummaryImpl>
      get copyWith =>
          __$$TrainingDailySummaryImplCopyWithImpl<_$TrainingDailySummaryImpl>(
              this, _$identity);
}

abstract class _TrainingDailySummary implements TrainingDailySummary {
  const factory _TrainingDailySummary(
      {required final String id,
      final int? coloredWordScore,
      final int? themeShiritoriScore,
      final int? addMinusScore,
      final int doneCount,
      required final DateTime doneAt}) = _$TrainingDailySummaryImpl;

  @override
  String get id;
  @override
  int? get coloredWordScore;
  @override
  int? get themeShiritoriScore;
  @override
  int? get addMinusScore;
  @override
  int get doneCount;
  @override
  DateTime get doneAt;
  @override
  @JsonKey(ignore: true)
  _$$TrainingDailySummaryImplCopyWith<_$TrainingDailySummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
