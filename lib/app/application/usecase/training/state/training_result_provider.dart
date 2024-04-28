import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/training/entity/training_result.dart';
import '../../user/state/auth_user_provider.dart';
import '../training_usecase.dart';

part 'training_result_provider.g.dart';

@riverpod
Stream<TrainingResult?> trainingResult(
  TrainingResultRef ref, {
  required DateTime dateTime,
  required TrainingType trainingType,
}) async* {
  final userId =
      await ref.watch(authUserProvider.selectAsync((data) => data?.id));
  if (userId == null) {
    return;
  }

  yield* ref.read(trainingUsecaseProvider).fetchResultByDate(
        userId: userId,
        dateTime: dateTime,
        trainingType: trainingType,
      );
}
