import 'package:brain_training/app/domain/read_color/entity/mixed_colored_word.dart';
import 'package:brain_training/app/domain/read_color/value_object/character_notation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 色付き文字の表示用Widget
class MixedColoredWordText extends HookWidget {
  const MixedColoredWordText({
    super.key,
    required this.coloredWord,
    this.notation = CharacterNotation.hiragana,
  });

  final MixedColoredWord coloredWord;
  final CharacterNotation notation;

  @override
  Widget build(BuildContext context) {
    final word = switch (notation) {
      CharacterNotation.hiragana => coloredWord.word.hiragana,
      CharacterNotation.kanji => coloredWord.word.kanji,
      CharacterNotation.kana => coloredWord.word.kana,
    };

    final textTheme = Theme.of(context).textTheme;
    final style = textTheme.displayLarge?.merge(
      TextStyle(
        color: coloredWord.color.color,
        fontSize: 120,
        fontWeight: FontWeight.bold,
      ),
    );

    return Text(
      word,
      style: style,
    );
  }
}
