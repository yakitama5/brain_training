import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/colored_word.dart';

part 'mixed_colored_word.freezed.dart';

@freezed
class MixedColoredWord with _$MixedColoredWord {
  const factory MixedColoredWord({
    required ColoredWord color,
    required ColoredWord word,
  }) = _MixedColoredWord;
}
