import 'dart:async';

import 'package:brain_training/app/domain/training/entity/training_daily_summary.dart';
import 'package:brain_training/app/domain/training/entity/training_result.dart';
import 'package:brain_training/app/domain/training/interface/training_repository.dart';
import 'package:brain_training/app/domain/training/value_object/training_type.dart';
import 'package:brain_training/utils/date_time_extension.dart';
import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../i18n/strings.g.dart';
import '../../../domain/training/value_object/result_rank.dart';
import '../../../domain/user/entity/user.dart';
import '../../model/training/training_weekly_summary.dart';
import '../run_usecase_mixin.dart';
import '../user/state/auth_user_provider.dart';

part 'training_usecase.g.dart';

@Riverpod(keepAlive: true)
TrainingUsecase trainingUsecase(TrainingUsecaseRef ref) => TrainingUsecase(ref);

class TrainingUsecase with RunUsecaseMixin {
  const TrainingUsecase(this._ref);

  final Ref _ref;

  /// 別Providerに依存するものはここに定義して利用する
  TrainingRepository get _trainingRepository =>
      _ref.read(trainingRepositoryProvider);
  Future<User?> get _authUser => _ref.read(authUserProvider.future);
  Future<String?> get _authUserId => _authUser.then((data) => data?.id);

  Future<void> finishColoredWordTraining({
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
          final userId = (await _authUserId)!;
          final result = await _trainingRepository
              .fetchTrainingResultByDate(
                userId: userId,
                date: doneAt,
                trainingType: TrainingType.coloredWord,
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

  Stream<TrainingWeeklySummary> fetchWeeklySummary({
    required String userId,
    required DateTime dateTime,
  }) {
    // 一週間分のサマリを取得する
    final weekRange = dateTime.weekRange;
    return _trainingRepository
        .fetchDailySummaryByDateRange(
      userId: userId,
      range: weekRange,
    )
        .map((days) {
      // 日付を元に空を作成する
      final daysMap = {
        for (final day in days) day.doneAt.day: day,
      };
      final weekDays = Iterable.generate(
        weekRange.end.difference(weekRange.start).inDays + 1,
        (i) => weekRange.start.add(Duration(days: i)),
      ).map((e) {
        final day = e.day;
        if (daysMap.containsKey(day) && daysMap[day] != null) {
          return daysMap[day]!;
        }

        return TrainingDailySummary(
          id: '',
          doneAt: e.dayStart,
          createdAt: e.dayStart,
          updatedAt: e.dayStart,
        );
      }).toList();

      // 集計して返却
      return TrainingWeeklySummary(
        range: weekRange,
        doneDays: days.where((element) => element.doneCount > 0).length,
        totalDays: weekRange.duration.inDays + 1,
        days: weekDays,
      );
    });
  }

  Stream<TrainingResult?> fetchResultByDate({
    required String userId,
    required DateTime dateTime,
    required TrainingType trainingType,
  }) {
    return switch (trainingType) {
      TrainingType.coloredWord => _trainingRepository.fetchTrainingResultByDate(
          userId: userId,
          date: dateTime,
          trainingType: trainingType,
        ),
      // TODO(yakitama5): ここに追加
      TrainingType.themeShiritori => Stream.value(null),
      TrainingType.fillInTheBlankCalc => Stream.value(null),
    };
  }

  Stream<List<TrainingResult>> fetchDailyResults({
    required String userId,
    required DateTime dateTime,
  }) {
    final coloredWord = _trainingRepository
        .fetchTrainingResultByDate(
          userId: userId,
          date: dateTime,
          trainingType: TrainingType.coloredWord,
        )
        .map((event) => [event]);

    // TODO(yakitama5): ここで複数をまとめる？
    return coloredWord.map((event) => event.whereNotNull().toList());
  }

  Future<void> shareResult({
    required XFile xFile,
    required TrainingResult result,
  }) async {
    // 文言を作成
    final training =
        i18n.training.trainingType.title(context: result.trainingType);
    final body = i18n.training.result.share
        .body(training: training, points: result.score);
    final subject = i18n.training.result.share.subject(training: training);

    await Share.shareXFiles([xFile], text: body, subject: subject);
  }
}
