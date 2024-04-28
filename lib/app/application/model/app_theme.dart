import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme({
    required ColorScheme darkColorScheme,
    required ColorScheme lightColorScheme,
    this.platform,
  })  : _darkColorScheme = darkColorScheme,
        _lightColorScheme = lightColorScheme;

  final ColorScheme _lightColorScheme;
  final ColorScheme _darkColorScheme;
  final TargetPlatform? platform;

  ThemeData get light => _createThemeData(Brightness.light);
  ThemeData get dark => _createThemeData(Brightness.dark);

  ThemeData _createThemeData(Brightness brightness) {
    final colorScheme = switch (brightness) {
      Brightness.light => _lightColorScheme,
      Brightness.dark => _darkColorScheme,
    };

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      platform: platform,
    );
  }
}
