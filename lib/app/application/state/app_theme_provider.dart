import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/app_theme.dart';

part 'app_theme_provider.g.dart';

/// DI用
@riverpod
AppTheme appTheme(AppThemeRef ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();
