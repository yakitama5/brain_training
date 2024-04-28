import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/settings/interface/settings_service.dart';
import '../../../domain/settings/value_object/ui_style.dart';
import '../../../domain/training/value_object/rank_category.dart';
import '../config/shared_preference_config.dart';
import '../state/shared_preference_provider.dart';

class SharedPreferencesSettingsService implements SettingsService {
  const SharedPreferencesSettingsService(this.ref);

  final Ref ref;
  SharedPreferences get _sp => ref.read(sharedPreferencesProvider);

  @override
  RankCategory? fetchRankCategory() {
    final res = _sp.getString(sharedPreferenceConfig.rankCategoryKey);
    if (res == null) {
      return null;
    }

    return RankCategory.values.byName(res);
  }

  @override
  Future<bool> updateRankCategory({required RankCategory? rankCategory}) async {
    if (rankCategory == null) {
      return _sp.remove(sharedPreferenceConfig.rankCategoryKey);
    } else {
      return _sp.setString(
        sharedPreferenceConfig.rankCategoryKey,
        rankCategory.name,
      );
    }
  }

  @override
  UIStyle? fetchUIStyle() {
    final res = _sp.getString(sharedPreferenceConfig.uiStyleKey);
    if (res == null) {
      return null;
    }

    return UIStyle.values.byName(res);
  }

  @override
  Future<bool> updateUIStyle({required UIStyle? style}) {
    switch (style) {
      case UIStyle.android:
      case UIStyle.ios:
        return _sp.setString(
          sharedPreferenceConfig.uiStyleKey,
          style!.name,
        );
      case UIStyle.system:
      case null:
        return _sp.remove(sharedPreferenceConfig.uiStyleKey);
    }
  }

  @override
  ThemeMode? fetchThemeMode() {
    final res = _sp.getString(sharedPreferenceConfig.themeModeKey);
    if (res == null) {
      return null;
    }

    return ThemeMode.values.byName(res);
  }

  @override
  Future<bool> updateThemeMode({required ThemeMode? themeMode}) {
    switch (themeMode) {
      case ThemeMode.light:
      case ThemeMode.dark:
        return _sp.setString(
          sharedPreferenceConfig.themeModeKey,
          themeMode!.name,
        );
      case ThemeMode.system:
      case null:
        return _sp.remove(sharedPreferenceConfig.themeModeKey);
    }
  }
}
