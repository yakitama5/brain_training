import 'package:brain_training/app/application/usecase/settings/settings_usecase.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_provider.g.dart';

@Riverpod(keepAlive: true)
ThemeMode themeMode(ThemeModeRef ref) =>
    ref.watch(settingsUsecaseProvider).fetchThemeMode();
