import 'package:brain_training/app/application/usecase/settings/settings_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/training/value_object/rank_category.dart';

part 'rank_category_provider.g.dart';

@riverpod
Future<RankCategory> rankCategory(RankCategoryRef ref) =>
    ref.read(settingsUsecaseProvider).fetchRankCategory();
