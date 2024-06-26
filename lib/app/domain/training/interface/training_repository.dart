import 'package:brain_training/app/domain/training/entity/training_daily_summary.dart';
import 'package:brain_training/app/domain/training/entity/training_result.dart';
import 'package:brain_training/app/domain/training/value_object/result_rank.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../value_object/training_type.dart';

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

  /// 指定した日付範囲の実施状況サマリを取得する
  Stream<List<TrainingDailySummary>> fetchDailySummaryByDateRange({
    required String userId,
    required DateTimeRange range,
  });

  /// 脳トレの結果を日付を指定して取得する
  Stream<ColoredWordResult?> fetchTrainingResultByDate({
    required String userId,
    required DateTime date,
    required TrainingType trainingType,
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
