import 'package:brain_training/app/domain/training/interface/training_repository.dart';
import 'package:brain_training/utils/date_time_extension.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/training/value_object/result_rank.dart';
import '../../model/training/training_weekly_summary.dart';
import '../run_usecase_mixin.dart';

part 'training_usecase.g.dart';

@riverpod
TrainingUsecase trainingUsecase(TrainingUsecaseRef ref) => TrainingUsecase(ref);

class TrainingUsecase with RunUsecaseMixin {
  const TrainingUsecase(this._ref);

  final Ref _ref;

  /// 別Providerに依存するものはここに定義して利用する
  TrainingRepository get _trainingRepository =>
      _ref.read(trainingRepositoryProvider);

  Future<void> finishColoredWordTraining({
    required String userId,
    required int score,
    required ResultRank rank,
    required int correct,
    required int questions,
    required double correctRate,
    required DateTime doneAt,
  }) =>
      execute(
        _ref,
        action: () async {
          // 実施済であれば登録は行わない
          final result = await _trainingRepository
              .fetchColoredWordResultByDate(
                userId: userId,
                date: doneAt,
              )
              .first;
          if (result != null) {
            return;
          }

          return _trainingRepository.addColoredWordResult(
            userId: userId,
            score: score,
            rank: rank,
            correct: correct,
            questions: questions,
            correctRate: correctRate,
            doneAt: doneAt,
          );
        },
        disableLoading: true,
      );

  Future<TrainingWeeklySummary> fetchWeeklySummary({
    required String userId,
    required DateTime dateTime,
  }) async {
    // 一週間分のサマリを取得する
    final weekRange = dateTime.weekRange;
    final days = await _trainingRepository
        .fetchDailySummaryByDateRange(
          userId: userId,
          range: weekRange,
        )
        .first;

    // 集計して返却
    return TrainingWeeklySummary(
      doneDays: days.where((element) => element.doneCount > 0).length,
      totalDays: weekRange.duration.inDays + 1,
      days: days,
    );
  }
}
