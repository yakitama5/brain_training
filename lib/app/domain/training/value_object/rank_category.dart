import 'package:brain_training/app/presentation/theme/importer.dart';
import 'package:flutter/material.dart';

enum RankCategory {
  normal(Icons.abc),
  sumo(CustomIcons.sumo),
  // TODO(yakitama5): アイコンを作成すること
  royal(Icons.ac_unit);

  const RankCategory(this.iconData);

  final IconData iconData;
}
