import 'package:flutter/material.dart';

class AppTheme {
  AppTheme({
    required this.darkColorScheme,
    required this.lightColorScheme,
  });

  final ColorScheme lightColorScheme;
  final ColorScheme darkColorScheme;

  ThemeData get light => _createThemeData(Brightness.light);
  ThemeData get dark => _createThemeData(Brightness.dark);

  ThemeData _createThemeData(Brightness brightness) {
    final colorScheme = switch (brightness) {
      Brightness.light => lightColorScheme,
      Brightness.dark => darkColorScheme,
    };

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
    );
  }
}
