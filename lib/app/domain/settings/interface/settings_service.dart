import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../training/value_object/rank_category.dart';
import '../value_object/ui_style.dart';

part 'settings_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@riverpod
SettingsService settingsService(SettingsServiceRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// 設定に関するリポジトリ
abstract class SettingsService {
  RankCategory? fetchRankCategory();
  Future<bool> updateRankCategory({required RankCategory? rankCategory});

  UIStyle? fetchUIStyle();
  Future<bool> updateUIStyle({required UIStyle? style});
}
