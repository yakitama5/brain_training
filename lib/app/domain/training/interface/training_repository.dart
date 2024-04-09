import 'package:brain_training/app/domain/training/entity/training_daily_summary.dart';
import 'package:brain_training/app/domain/training/entity/training_result.dart';
import 'package:brain_training/app/domain/training/value_object/result_rank.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'training_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@riverpod
TrainingRepository trainingRepository(TrainingRepositoryRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// 脳トレ結果に関するリポジトリ
abstract class TrainingRepository {
  /// 日毎の実施状況サマリを取得する
  Stream<TrainingDailySummary?> fetchDailySummaryByDate({
    required String userId,
    required DateTime date,
  });

  /// 日毎の実施状況サマリを取得する
  Stream<ColoredWordResult?> fetchColoredWordResultByDate({
    required String userId,
    required DateTime date,
  });

  /// 色彩識別のトレーニング結果を取得する
  Future<void> addColoredWordResult({
    required String userId,
    required int score,
    required ResultRank rank,
    required int correct,
    required int questions,
    required double correctRate,
    required DateTime doneAt,
  });
}
