import 'package:brain_training/app/application/usecase/run_usecase_mixin.dart';
import 'package:brain_training/app/application/usecase/settings/state/rank_category_provider.dart';
import 'package:brain_training/app/domain/settings/interface/settings_service.dart';
import 'package:brain_training/app/domain/training/value_object/rank_category.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_usecase.g.dart';

@riverpod
SettingsUsecase settingsUsecase(SettingsUsecaseRef ref) => SettingsUsecase(ref);

class SettingsUsecase with RunUsecaseMixin {
  const SettingsUsecase(this.ref);

  final Ref ref;

  SettingsService get _service => ref.read(settingsServiceProvider);

  RankCategory fetchRankCategory() {
    final rank = _service.fetchRankCategory();
    return rank ?? RankCategory.normal;
  }

  void updateRankCategory({required RankCategory? rankCategory}) {
    _service.updateRankCategory(rankCategory: rankCategory);
    return ref.invalidate(rankCategoryProvider);
  }
}
