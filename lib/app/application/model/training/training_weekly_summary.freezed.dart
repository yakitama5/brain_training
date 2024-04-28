// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_weekly_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainingWeeklySummary {
  DateTimeRange get range => throw _privateConstructorUsedError;
  int get doneDays => throw _privateConstructorUsedError;
  int get totalDays => throw _privateConstructorUsedError;
  List<TrainingDailySummary> get days => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingWeeklySummaryCopyWith<TrainingWeeklySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingWeeklySummaryCopyWith<$Res> {
  factory $TrainingWeeklySummaryCopyWith(TrainingWeeklySummary value,
          $Res Function(TrainingWeeklySummary) then) =
      _$TrainingWeeklySummaryCopyWithImpl<$Res, TrainingWeeklySummary>;
  @useResult
  $Res call(
      {DateTimeRange range,
      int doneDays,
      int totalDays,
      List<TrainingDailySummary> days});
}

/// @nodoc
class _$TrainingWeeklySummaryCopyWithImpl<$Res,
        $Val extends TrainingWeeklySummary>
    implements $TrainingWeeklySummaryCopyWith<$Res> {
  _$TrainingWeeklySummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? doneDays = null,
    Object? totalDays = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      doneDays: null == doneDays
          ? _value.doneDays
          : doneDays // ignore: cast_nullable_to_non_nullable
              as int,
      totalDays: null == totalDays
          ? _value.totalDays
          : totalDays // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<TrainingDailySummary>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingWeeklySummaryImplCopyWith<$Res>
    implements $TrainingWeeklySummaryCopyWith<$Res> {
  factory _$$TrainingWeeklySummaryImplCopyWith(
          _$TrainingWeeklySummaryImpl value,
          $Res Function(_$TrainingWeeklySummaryImpl) then) =
      __$$TrainingWeeklySummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTimeRange range,
      int doneDays,
      int totalDays,
      List<TrainingDailySummary> days});
}

/// @nodoc
class __$$TrainingWeeklySummaryImplCopyWithImpl<$Res>
    extends _$TrainingWeeklySummaryCopyWithImpl<$Res,
        _$TrainingWeeklySummaryImpl>
    implements _$$TrainingWeeklySummaryImplCopyWith<$Res> {
  __$$TrainingWeeklySummaryImplCopyWithImpl(_$TrainingWeeklySummaryImpl _value,
      $Res Function(_$TrainingWeeklySummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? doneDays = null,
    Object? totalDays = null,
    Object? days = null,
  }) {
    return _then(_$TrainingWeeklySummaryImpl(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      doneDays: null == doneDays
          ? _value.doneDays
          : doneDays // ignore: cast_nullable_to_non_nullable
              as int,
      totalDays: null == totalDays
          ? _value.totalDays
          : totalDays // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<TrainingDailySummary>,
    ));
  }
}

/// @nodoc

class _$TrainingWeeklySummaryImpl implements _TrainingWeeklySummary {
  const _$TrainingWeeklySummaryImpl(
      {required this.range,
      required this.doneDays,
      required this.totalDays,
      required final List<TrainingDailySummary> days})
      : _days = days;

  @override
  final DateTimeRange range;
  @override
  final int doneDays;
  @override
  final int totalDays;
  final List<TrainingDailySummary> _days;
  @override
  List<TrainingDailySummary> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  String toString() {
    return 'TrainingWeeklySummary(range: $range, doneDays: $doneDays, totalDays: $totalDays, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingWeeklySummaryImpl &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.doneDays, doneDays) ||
                other.doneDays == doneDays) &&
            (identical(other.totalDays, totalDays) ||
                other.totalDays == totalDays) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, doneDays, totalDays,
      const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingWeeklySummaryImplCopyWith<_$TrainingWeeklySummaryImpl>
      get copyWith => __$$TrainingWeeklySummaryImplCopyWithImpl<
          _$TrainingWeeklySummaryImpl>(this, _$identity);
}

abstract class _TrainingWeeklySummary implements TrainingWeeklySummary {
  const factory _TrainingWeeklySummary(
          {required final DateTimeRange range,
          required final int doneDays,
          required final int totalDays,
          required final List<TrainingDailySummary> days}) =
      _$TrainingWeeklySummaryImpl;

  @override
  DateTimeRange get range;
  @override
  int get doneDays;
  @override
  int get totalDays;
  @override
  List<TrainingDailySummary> get days;
  @override
  @JsonKey(ignore: true)
  _$$TrainingWeeklySummaryImplCopyWith<_$TrainingWeeklySummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
