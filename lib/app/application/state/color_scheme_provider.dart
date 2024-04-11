import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/theme/importer.dart';
import '../model/colore_schemes.dart';

part 'color_scheme_provider.g.dart';

/// DI用
@Riverpod(keepAlive: true)
ColorSchemes colorSchemes(ColorSchemesRef ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

@Riverpod(keepAlive: true)
Future<ColorSchemes> colorSchemes2(ColorSchemes2Ref ref) async {
  final corePalette = await DynamicColorPlugin.getCorePalette();

  final isDynamicColorSupported = corePalette != null;

  final lightColorScheme = isDynamicColorSupported
      ? corePalette.toColorScheme()
      : MaterialTheme.lightScheme().toColorScheme();
  final darkColorScheme = isDynamicColorSupported
      ? corePalette.toColorScheme(brightness: Brightness.dark)
      : MaterialTheme.darkScheme().toColorScheme();

  return ColorSchemes(
    lightColorScheme: lightColorScheme,
    darkColorScheme: darkColorScheme,
  );
}
