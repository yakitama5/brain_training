import 'package:brain_training/app/application/state/color_style_provider.dart';
import 'package:brain_training/app/application/state/dynamic_color_supported_provider.dart';
import 'package:brain_training/app/application/usecase/run_usecase_mixin.dart';
import 'package:brain_training/app/application/usecase/settings/state/rank_category_provider.dart';
import 'package:brain_training/app/application/usecase/settings/state/theme_mode_provider.dart';
import 'package:brain_training/app/application/usecase/settings/state/ui_style_provider.dart';
import 'package:brain_training/app/domain/settings/interface/settings_service.dart';
import 'package:brain_training/app/domain/settings/value_object/color_style.dart';
import 'package:brain_training/app/domain/training/value_object/rank_category.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/settings/value_object/ui_style.dart';

part 'settings_usecase.g.dart';

@riverpod
SettingsUsecase settingsUsecase(SettingsUsecaseRef ref) => SettingsUsecase(ref);

class SettingsUsecase with RunUsecaseMixin {
  const SettingsUsecase(this.ref);

  final Ref ref;

  SettingsService get _service => ref.read(settingsServiceProvider);

  RankCategory fetchRankCategory() =>
      _service.fetchRankCategory() ?? RankCategory.normal;

  Future<void> updateRankCategory({required RankCategory? rankCategory}) async {
    await _service.updateRankCategory(rankCategory: rankCategory);
    return ref.invalidate(rankCategoryProvider);
  }

  UIStyle fetchUIStyle() => _service.fetchUIStyle() ?? UIStyle.system;

  Future<void> updateUIStyle({required UIStyle? style}) async {
    await _service.updateUIStyle(style: style);
    return ref.invalidate(uiStyleProvider);
  }

  ThemeMode fetchThemeMode() => _service.fetchThemeMode() ?? ThemeMode.system;
  Future<void> updateThemeMode({required ThemeMode? themeMode}) async {
    await _service.updateThemeMode(themeMode: themeMode);
    return ref.invalidate(themeModeProvider);
  }

  ColorStyle fetchColorStyle() {
    // プラットフォームに応じて設定する
    final isDynamicColorSupported = ref.read(dynamicColorSupportedProvider);
    final defaultColorStyle = isDynamicColorSupported
        ? ColorStyle.dynamicColor
        : ColorStyle.systemColor;

    return _service.fetchColorStyle() ?? defaultColorStyle;
  }

  Future<void> updateColorStyle({required ColorStyle? colorStyle}) async {
    await _service.updateColorStyle(colorStyle: colorStyle);
    return ref.invalidate(colorStyleProvider);
  }
}
