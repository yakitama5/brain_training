// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_training_daily_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreTrainingDailySummaryModel _$FirestoreTrainingDailySummaryModelFromJson(
    Map<String, dynamic> json) {
  return _FirestoreTrainingDailySummaryModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreTrainingDailySummaryModel {
  String get id => throw _privateConstructorUsedError;
  int? get coloredWordScore => throw _privateConstructorUsedError;
  int? get themeShiritoriScore => throw _privateConstructorUsedError;
  int? get addMinusScore => throw _privateConstructorUsedError;
  int get doneCount => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get doneAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreTrainingDailySummaryModelCopyWith<
          FirestoreTrainingDailySummaryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreTrainingDailySummaryModelCopyWith<$Res> {
  factory $FirestoreTrainingDailySummaryModelCopyWith(
          FirestoreTrainingDailySummaryModel value,
          $Res Function(FirestoreTrainingDailySummaryModel) then) =
      _$FirestoreTrainingDailySummaryModelCopyWithImpl<$Res,
          FirestoreTrainingDailySummaryModel>;
  @useResult
  $Res call(
      {String id,
      int? coloredWordScore,
      int? themeShiritoriScore,
      int? addMinusScore,
      int doneCount,
      @timestampKey DateTime? doneAt,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreTrainingDailySummaryModelCopyWithImpl<$Res,
        $Val extends FirestoreTrainingDailySummaryModel>
    implements $FirestoreTrainingDailySummaryModelCopyWith<$Res> {
  _$FirestoreTrainingDailySummaryModelCopyWithImpl(this._value, this._then);

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
    Object? doneAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      doneAt: freezed == doneAt
          ? _value.doneAt
          : doneAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreTrainingDailySummaryModelImplCopyWith<$Res>
    implements $FirestoreTrainingDailySummaryModelCopyWith<$Res> {
  factory _$$FirestoreTrainingDailySummaryModelImplCopyWith(
          _$FirestoreTrainingDailySummaryModelImpl value,
          $Res Function(_$FirestoreTrainingDailySummaryModelImpl) then) =
      __$$FirestoreTrainingDailySummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? coloredWordScore,
      int? themeShiritoriScore,
      int? addMinusScore,
      int doneCount,
      @timestampKey DateTime? doneAt,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$$FirestoreTrainingDailySummaryModelImplCopyWithImpl<$Res>
    extends _$FirestoreTrainingDailySummaryModelCopyWithImpl<$Res,
        _$FirestoreTrainingDailySummaryModelImpl>
    implements _$$FirestoreTrainingDailySummaryModelImplCopyWith<$Res> {
  __$$FirestoreTrainingDailySummaryModelImplCopyWithImpl(
      _$FirestoreTrainingDailySummaryModelImpl _value,
      $Res Function(_$FirestoreTrainingDailySummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? coloredWordScore = freezed,
    Object? themeShiritoriScore = freezed,
    Object? addMinusScore = freezed,
    Object? doneCount = null,
    Object? doneAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirestoreTrainingDailySummaryModelImpl(
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
      doneAt: freezed == doneAt
          ? _value.doneAt
          : doneAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreTrainingDailySummaryModelImpl
    implements _FirestoreTrainingDailySummaryModel {
  const _$FirestoreTrainingDailySummaryModelImpl(
      {required this.id,
      this.coloredWordScore,
      this.themeShiritoriScore,
      this.addMinusScore,
      this.doneCount = 0,
      @timestampKey this.doneAt,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt});

  factory _$FirestoreTrainingDailySummaryModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreTrainingDailySummaryModelImplFromJson(json);

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
  @timestampKey
  final DateTime? doneAt;
  @override
  @timestampKey
  final DateTime? createdAt;
  @override
  @timestampKey
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FirestoreTrainingDailySummaryModel(id: $id, coloredWordScore: $coloredWordScore, themeShiritoriScore: $themeShiritoriScore, addMinusScore: $addMinusScore, doneCount: $doneCount, doneAt: $doneAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreTrainingDailySummaryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coloredWordScore, coloredWordScore) ||
                other.coloredWordScore == coloredWordScore) &&
            (identical(other.themeShiritoriScore, themeShiritoriScore) ||
                other.themeShiritoriScore == themeShiritoriScore) &&
            (identical(other.addMinusScore, addMinusScore) ||
                other.addMinusScore == addMinusScore) &&
            (identical(other.doneCount, doneCount) ||
                other.doneCount == doneCount) &&
            (identical(other.doneAt, doneAt) || other.doneAt == doneAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      coloredWordScore,
      themeShiritoriScore,
      addMinusScore,
      doneCount,
      doneAt,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreTrainingDailySummaryModelImplCopyWith<
          _$FirestoreTrainingDailySummaryModelImpl>
      get copyWith => __$$FirestoreTrainingDailySummaryModelImplCopyWithImpl<
          _$FirestoreTrainingDailySummaryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreTrainingDailySummaryModelImplToJson(
      this,
    );
  }
}

abstract class _FirestoreTrainingDailySummaryModel
    implements FirestoreTrainingDailySummaryModel {
  const factory _FirestoreTrainingDailySummaryModel(
          {required final String id,
          final int? coloredWordScore,
          final int? themeShiritoriScore,
          final int? addMinusScore,
          final int doneCount,
          @timestampKey final DateTime? doneAt,
          @timestampKey final DateTime? createdAt,
          @timestampKey final DateTime? updatedAt}) =
      _$FirestoreTrainingDailySummaryModelImpl;

  factory _FirestoreTrainingDailySummaryModel.fromJson(
          Map<String, dynamic> json) =
      _$FirestoreTrainingDailySummaryModelImpl.fromJson;

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
  @timestampKey
  DateTime? get doneAt;
  @override
  @timestampKey
  DateTime? get createdAt;
  @override
  @timestampKey
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreTrainingDailySummaryModelImplCopyWith<
          _$FirestoreTrainingDailySummaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
