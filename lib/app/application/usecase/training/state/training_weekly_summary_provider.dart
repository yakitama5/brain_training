import 'package:brain_training/app/application/usecase/training/training_usecase.dart';
import 'package:brain_training/app/application/usecase/user/state/auth_user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../model/training/training_weekly_summary.dart';

part 'training_weekly_summary_provider.g.dart';

@riverpod
Stream<TrainingWeeklySummary?> trainingWeeklySummary(
  TrainingWeeklySummaryRef ref, {
  required DateTime date,
}) async* {
  final userId =
      await ref.watch(authUserProvider.selectAsync((data) => data?.id));
  if (userId == null) {
    return;
  }
  yield* ref
      .read(trainingUsecaseProvider)
      .fetchWeeklySummary(userId: userId, dateTime: date);
}
