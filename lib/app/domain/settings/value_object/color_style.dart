import 'package:flutter/material.dart';

enum ColorStyle {
  dynamicColor(null),
  systemColor(null),
  blue(Colors.blue),
  purple(Colors.purple),
  green(Colors.green),
  red(Colors.red),
  pink(Colors.pink),
  yellow(Colors.yellow),
  orange(Colors.orange),
  ;

  const ColorStyle(this.seedColor);

  final Color? seedColor;
}
