import 'package:flutter/material.dart';

enum ColoredWord {
  black(Colors.black, 'くろ', 'くろ', 'クロ', '黒'),
  red(Colors.red, 'あか', 'あか', 'アカ', '赤'),
  blue(Colors.blue, 'あお', 'あお', 'アオ', '青'),
  green(Colors.green, 'みどり', 'みどり', 'ミドリ', '緑');
  // yellow(Colors.yellow, 'きいろ', 'きいろ', 'キイロ', '黄色');

  const ColoredWord(
    this.color,
    this.read,
    this.hiragana,
    this.kana,
    this.kanji,
  );

  final Color color;
  final String read;
  final String hiragana;
  final String kana;
  final String kanji;
}
