import 'package:flutter/material.dart';

import '../../../presentation/theme/src/custom_icons_icons.dart';

enum TrainingType {
  coloredWord(
    30000,
    Icons.color_lens_rounded,
  ),
  themeShiritori(
    300000,
    CustomIcons.shiritori,
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
