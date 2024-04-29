import 'package:brain_training/app/presentation/theme/importer.dart';
import 'package:flutter/material.dart';

enum RankCategory {
  normal(Icons.abc),
  sumo(CustomIcons.sumo),
  royal(CustomIcons.royal);

  const RankCategory(this.iconData);

  final IconData iconData;
}
