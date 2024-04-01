// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrainingResult {
  int get correct => throw _privateConstructorUsedError;
  int get quesLength => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrainingResultCopyWith<TrainingResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingResultCopyWith<$Res> {
  factory $TrainingResultCopyWith(
          TrainingResult value, $Res Function(TrainingResult) then) =
      _$TrainingResultCopyWithImpl<$Res, TrainingResult>;
  @useResult
  $Res call({int correct, int quesLength});
}

/// @nodoc
class _$TrainingResultCopyWithImpl<$Res, $Val extends TrainingResult>
    implements $TrainingResultCopyWith<$Res> {
  _$TrainingResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct = null,
    Object? quesLength = null,
  }) {
    return _then(_value.copyWith(
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int,
      quesLength: null == quesLength
          ? _value.quesLength
          : quesLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingResultImplCopyWith<$Res>
    implements $TrainingResultCopyWith<$Res> {
  factory _$$TrainingResultImplCopyWith(_$TrainingResultImpl value,
          $Res Function(_$TrainingResultImpl) then) =
      __$$TrainingResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int correct, int quesLength});
}

/// @nodoc
class __$$TrainingResultImplCopyWithImpl<$Res>
    extends _$TrainingResultCopyWithImpl<$Res, _$TrainingResultImpl>
    implements _$$TrainingResultImplCopyWith<$Res> {
  __$$TrainingResultImplCopyWithImpl(
      _$TrainingResultImpl _value, $Res Function(_$TrainingResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correct = null,
    Object? quesLength = null,
  }) {
    return _then(_$TrainingResultImpl(
      correct: null == correct
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as int,
      quesLength: null == quesLength
          ? _value.quesLength
          : quesLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TrainingResultImpl implements _TrainingResult {
  const _$TrainingResultImpl({required this.correct, required this.quesLength});

  @override
  final int correct;
  @override
  final int quesLength;

  @override
  String toString() {
    return 'TrainingResult(correct: $correct, quesLength: $quesLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingResultImpl &&
            (identical(other.correct, correct) || other.correct == correct) &&
            (identical(other.quesLength, quesLength) ||
                other.quesLength == quesLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, correct, quesLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingResultImplCopyWith<_$TrainingResultImpl> get copyWith =>
      __$$TrainingResultImplCopyWithImpl<_$TrainingResultImpl>(
          this, _$identity);
}

abstract class _TrainingResult implements TrainingResult {
  const factory _TrainingResult(
      {required final int correct,
      required final int quesLength}) = _$TrainingResultImpl;

  @override
  int get correct;
  @override
  int get quesLength;
  @override
  @JsonKey(ignore: true)
  _$$TrainingResultImplCopyWith<_$TrainingResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
