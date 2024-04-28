import 'package:flutter/material.dart';

enum UIStyle {
  system(null, Icons.settings),
  android(TargetPlatform.android, Icons.android),
  ios(TargetPlatform.iOS, Icons.apple);

  const UIStyle(this.platform, this.iconData);

  final TargetPlatform? platform;
  final IconData iconData;
}
