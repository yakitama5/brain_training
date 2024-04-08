// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_colored_word_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreColoredWordResultModel _$FirestoreColoredWordResultModelFromJson(
    Map<String, dynamic> json) {
  return _FirestoreColoredWordResultModel.fromJson(json);
}

/// @nodoc
mixin _$FirestoreColoredWordResultModel {
  String get id => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  ResultRank get rank => throw _privateConstructorUsedError;
  int get correct => throw _privateConstructorUsedError;
  int get questions => throw _privateConstructorUsedError;
  int get correctRate => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get doneAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @timestampKey
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreColoredWordResultModelCopyWith<FirestoreColoredWordResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreColoredWordResultModelCopyWith<$Res> {
  factory $FirestoreColoredWordResultModelCopyWith(
          FirestoreColoredWordResultModel value,
          $Res Function(FirestoreColoredWordResultModel) then) =
      _$FirestoreColoredWordResultModelCopyWithImpl<$Res,
          FirestoreColoredWordResultModel>;
  @useResult
  $Res call(
      {String id,
      int score,
      ResultRank rank,
      int correct,
      int questions,
      int correctRate,
      @timestampKey DateTime? doneAt,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class _$FirestoreColoredWordResultModelCopyWithImpl<$Res,
        $Val extends FirestoreColoredWordResultModel>
    implements $FirestoreColoredWordResultModelCopyWith<$Res> {
  _$FirestoreColoredWordResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? score = null,
    Object? rank = null,
    Object? correct = null,
    Object? questions = null,
    Object? correctRate = null,
    Object? doneAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as ResultRank,
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as int,
      correctRate: null == correctRate
          ? _value.correctRate
          : correctRate // ignore: cast_nullable_to_non_nullable
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
abstract class _$$FirestoreColoredWordResultModelImplCopyWith<$Res>
    implements $FirestoreColoredWordResultModelCopyWith<$Res> {
  factory _$$FirestoreColoredWordResultModelImplCopyWith(
          _$FirestoreColoredWordResultModelImpl value,
          $Res Function(_$FirestoreColoredWordResultModelImpl) then) =
      __$$FirestoreColoredWordResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int score,
      ResultRank rank,
      int correct,
      int questions,
      int correctRate,
      @timestampKey DateTime? doneAt,
      @timestampKey DateTime? createdAt,
      @timestampKey DateTime? updatedAt});
}

/// @nodoc
class __$$FirestoreColoredWordResultModelImplCopyWithImpl<$Res>
    extends _$FirestoreColoredWordResultModelCopyWithImpl<$Res,
        _$FirestoreColoredWordResultModelImpl>
    implements _$$FirestoreColoredWordResultModelImplCopyWith<$Res> {
  __$$FirestoreColoredWordResultModelImplCopyWithImpl(
      _$FirestoreColoredWordResultModelImpl _value,
      $Res Function(_$FirestoreColoredWordResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? score = null,
    Object? rank = null,
    Object? correct = null,
    Object? questions = null,
    Object? correctRate = null,
    Object? doneAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FirestoreColoredWordResultModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as ResultRank,
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as int,
      correctRate: null == correctRate
          ? _value.correctRate
          : correctRate // ignore: cast_nullable_to_non_nullable
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
class _$FirestoreColoredWordResultModelImpl
    implements _FirestoreColoredWordResultModel {
  const _$FirestoreColoredWordResultModelImpl(
      {required this.id,
      required this.score,
      required this.rank,
      required this.correct,
      required this.questions,
      required this.correctRate,
      @timestampKey this.doneAt,
      @timestampKey this.createdAt,
      @timestampKey this.updatedAt});

  factory _$FirestoreColoredWordResultModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreColoredWordResultModelImplFromJson(json);

  @override
  final String id;
  @override
  final int score;
  @override
  final ResultRank rank;
  @override
  final int correct;
  @override
  final int questions;
  @override
  final int correctRate;
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
    return 'FirestoreColoredWordResultModel(id: $id, score: $score, rank: $rank, correct: $correct, questions: $questions, correctRate: $correctRate, doneAt: $doneAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreColoredWordResultModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.correct, correct) || other.correct == correct) &&
            (identical(other.questions, questions) ||
                other.questions == questions) &&
            (identical(other.correctRate, correctRate) ||
                other.correctRate == correctRate) &&
            (identical(other.doneAt, doneAt) || other.doneAt == doneAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, score, rank, correct,
      questions, correctRate, doneAt, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreColoredWordResultModelImplCopyWith<
          _$FirestoreColoredWordResultModelImpl>
      get copyWith => __$$FirestoreColoredWordResultModelImplCopyWithImpl<
          _$FirestoreColoredWordResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreColoredWordResultModelImplToJson(
      this,
    );
  }
}

abstract class _FirestoreColoredWordResultModel
    implements FirestoreColoredWordResultModel {
  const factory _FirestoreColoredWordResultModel(
          {required final String id,
          required final int score,
          required final ResultRank rank,
          required final int correct,
          required final int questions,
          required final int correctRate,
          @timestampKey final DateTime? doneAt,
          @timestampKey final DateTime? createdAt,
          @timestampKey final DateTime? updatedAt}) =
      _$FirestoreColoredWordResultModelImpl;

  factory _FirestoreColoredWordResultModel.fromJson(Map<String, dynamic> json) =
      _$FirestoreColoredWordResultModelImpl.fromJson;

  @override
  String get id;
  @override
  int get score;
  @override
  ResultRank get rank;
  @override
  int get correct;
  @override
  int get questions;
  @override
  int get correctRate;
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
  _$$FirestoreColoredWordResultModelImplCopyWith<
          _$FirestoreColoredWordResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
