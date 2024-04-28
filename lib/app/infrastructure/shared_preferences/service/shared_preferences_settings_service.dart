import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/settings/interface/settings_service.dart';
import '../../../domain/training/value_object/rank_category.dart';
import '../config/shared_preference_config.dart';
import '../state/shared_preference_provider.dart';

class SharedPreferencesSettingsService implements SettingsService {
  const SharedPreferencesSettingsService(this.ref);

  final Ref ref;
  Future<SharedPreferences> get _sp =>
      ref.read(sharedPreferencesProvider.future);

  @override
  Future<RankCategory?> fetchRankCategory() async {
    final res = (await _sp).getString(sharedPreferenceConfig.rankCategoryKey);
    if (res == null) {
      return null;
    }

    return RankCategory.values.byName(res);
  }

  @override
  Future<bool> updateRankCategory({required RankCategory? rankCategory}) async {
    final sp = await _sp;
    if (rankCategory == null) {
      return sp.remove(sharedPreferenceConfig.rankCategoryKey);
    } else {
      return sp.setString(
        sharedPreferenceConfig.rankCategoryKey,
        rankCategory.name,
      );
    }
  }
}
