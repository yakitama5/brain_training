import 'package:brain_training/app/application/usecase/training/training_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/training/entity/training_result.dart';
import '../../user/state/auth_user_provider.dart';

part 'training_daily_result_provider.g.dart';

@riverpod
Stream<List<TrainingResult>> trainingDailyResult(
  TrainingDailyResultRef ref, {
  required DateTime dateTime,
}) async* {
  final userId =
      await ref.watch(authUserProvider.selectAsync((data) => data?.id));
  if (userId == null) {
    return;
  }

  yield* ref
      .read(trainingUsecaseProvider)
      .fetchDailyResults(userId: userId, dateTime: dateTime);
}
