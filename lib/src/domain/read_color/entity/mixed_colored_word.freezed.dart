// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mixed_colored_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MixedColoredWord {
  ColoredWord get color => throw _privateConstructorUsedError;
  ColoredWord get word => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MixedColoredWordCopyWith<MixedColoredWord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MixedColoredWordCopyWith<$Res> {
  factory $MixedColoredWordCopyWith(
          MixedColoredWord value, $Res Function(MixedColoredWord) then) =
      _$MixedColoredWordCopyWithImpl<$Res, MixedColoredWord>;
  @useResult
  $Res call({ColoredWord color, ColoredWord word});
}

/// @nodoc
class _$MixedColoredWordCopyWithImpl<$Res, $Val extends MixedColoredWord>
    implements $MixedColoredWordCopyWith<$Res> {
  _$MixedColoredWordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? word = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColoredWord,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as ColoredWord,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MixedColoredWordImplCopyWith<$Res>
    implements $MixedColoredWordCopyWith<$Res> {
  factory _$$MixedColoredWordImplCopyWith(_$MixedColoredWordImpl value,
          $Res Function(_$MixedColoredWordImpl) then) =
      __$$MixedColoredWordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColoredWord color, ColoredWord word});
}

/// @nodoc
class __$$MixedColoredWordImplCopyWithImpl<$Res>
    extends _$MixedColoredWordCopyWithImpl<$Res, _$MixedColoredWordImpl>
    implements _$$MixedColoredWordImplCopyWith<$Res> {
  __$$MixedColoredWordImplCopyWithImpl(_$MixedColoredWordImpl _value,
      $Res Function(_$MixedColoredWordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? word = null,
  }) {
    return _then(_$MixedColoredWordImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColoredWord,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as ColoredWord,
    ));
  }
}

/// @nodoc

class _$MixedColoredWordImpl implements _MixedColoredWord {
  const _$MixedColoredWordImpl({required this.color, required this.word});

  @override
  final ColoredWord color;
  @override
  final ColoredWord word;

  @override
  String toString() {
    return 'MixedColoredWord(color: $color, word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MixedColoredWordImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, word);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MixedColoredWordImplCopyWith<_$MixedColoredWordImpl> get copyWith =>
      __$$MixedColoredWordImplCopyWithImpl<_$MixedColoredWordImpl>(
          this, _$identity);
}

abstract class _MixedColoredWord implements MixedColoredWord {
  const factory _MixedColoredWord(
      {required final ColoredWord color,
      required final ColoredWord word}) = _$MixedColoredWordImpl;

  @override
  ColoredWord get color;
  @override
  ColoredWord get word;
  @override
  @JsonKey(ignore: true)
  _$$MixedColoredWordImplCopyWith<_$MixedColoredWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
