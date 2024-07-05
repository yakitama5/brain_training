import 'package:brain_training/app/domain/settings/value_object/ui_style.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';

import '../../domain/settings/value_object/color_style.dart';
import '../../presentation/theme/importer.dart';

class AppTheme {
  const AppTheme({
    required ColorScheme darkColorScheme,
    required ColorScheme lightColorScheme,
    this.platform,
    required this.isDynamicColorSupported,
  })  : _darkColorScheme = darkColorScheme,
        _lightColorScheme = lightColorScheme;

  factory AppTheme.createAppTheme({
    required bool isDynamicColorSupported,
    required CorePalette? corePalette,
    required UIStyle uiStyle,
    required ColorStyle colorStyle,
  }) {
    // カラーテーマを設定する
    late final ColorScheme lightColorScheme;
    late final ColorScheme darkColorScheme;
    switch (colorStyle) {
      case ColorStyle.systemColor:
        lightColorScheme = MaterialTheme.lightScheme().toColorScheme();
        darkColorScheme = MaterialTheme.darkScheme().toColorScheme();
      case ColorStyle.dynamicColor:
        if (isDynamicColorSupported) {
          lightColorScheme = corePalette!.toColorScheme();
          darkColorScheme =
              corePalette.toColorScheme(brightness: Brightness.dark);
        } else {
          lightColorScheme = MaterialTheme.lightScheme().toColorScheme();
          darkColorScheme = MaterialTheme.darkScheme().toColorScheme();
        }
      case ColorStyle.blue:
      case ColorStyle.purple:
      case ColorStyle.green:
      case ColorStyle.red:
      case ColorStyle.pink:
      case ColorStyle.yellow:
      case ColorStyle.orange:
        lightColorScheme =
            ColorScheme.fromSeed(seedColor: colorStyle.seedColor!);
        darkColorScheme = ColorScheme.fromSeed(
          seedColor: colorStyle.seedColor!,
          brightness: Brightness.dark,
        );
    }

    return AppTheme(
      isDynamicColorSupported: isDynamicColorSupported,
      lightColorScheme: lightColorScheme,
      darkColorScheme: darkColorScheme,
      platform: uiStyle.platform,
    );
  }

  final ColorScheme _lightColorScheme;
  final ColorScheme _darkColorScheme;
  final TargetPlatform? platform;
  final bool isDynamicColorSupported;

  ThemeData get light => _createThemeData(Brightness.light);
  ThemeData get dark => _createThemeData(Brightness.dark);

  ThemeData _createThemeData(Brightness brightness) {
    final colorScheme = switch (brightness) {
      Brightness.light => _lightColorScheme,
      Brightness.dark => _darkColorScheme,
    };

    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Murecho',
      brightness: brightness,
      colorScheme: colorScheme,
      platform: platform,
    );
  }
}
