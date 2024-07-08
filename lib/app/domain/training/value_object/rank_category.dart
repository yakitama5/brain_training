import 'package:brain_training/app/presentation/theme/importer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum RankCategory {
  normal,
  sumo,
  planet,
  police,
  human,
  beetle,
  stagBeetle,
  royal;
}

extension RankCategoryX on RankCategory {
  /// アイコンデータ (`MdiIcons`利用のため、Extensionで定義)
  IconData get iconData => switch (this) {
        RankCategory.normal => MdiIcons.trophy,
        RankCategory.beetle => CustomIcons.beetle,
        RankCategory.sumo => CustomIcons.sumo,
        RankCategory.royal => CustomIcons.royal,
        RankCategory.planet => CustomIcons.planet,
        RankCategory.police => CustomIcons.police,
        RankCategory.stagBeetle => CustomIcons.stag_beetle,
        RankCategory.human => MdiIcons.human,
      };
}
