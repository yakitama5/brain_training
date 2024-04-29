import 'package:flutter/material.dart';

enum TrainingType {
  coloredWord(
    30000,
    Icons.color_lens_rounded,
  ),
  themeShiritori(
    300000,
    Icons.chat,
  ),
  fillInTheBlankCalc(
    60000,
    Icons.calculate,
  ),
  ;

  const TrainingType(
    this.limitMillSecond,
    this.iconData,
  );

  final int limitMillSecond;
  final IconData iconData;
}
