import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../run_usecase_mixin.dart';

part 'training_usecase.g.dart';

@riverpod
TrainingUsecase trainingUsecase(TrainingUsecaseRef ref) => trainingUsecase(ref);

class TrainingUsecase with RunUsecaseMixin {
  const TrainingUsecase(this.ref);

  final Ref ref;
}
