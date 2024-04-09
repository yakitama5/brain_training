import 'package:flutter/material.dart';

enum ColoredWord {
  black(Colors.black),
  red(Colors.red),
  blue(Colors.blue),
  green(Colors.green);

  const ColoredWord(
    this.color,
  );

  final Color color;
}
