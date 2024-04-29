import 'package:brain_training/app/domain/training/value_object/training_type.dart';

import '../value_object/result_rank.dart';

sealed class TrainingResult {
  const TrainingResult({
    required this.rank,
    required this.score,
    required this.doneAt,
  });
  final ResultRank rank;
  final int score;
  final DateTime doneAt;
  TrainingType get trainingType => switch (this) {
        ColoredWordResult() => TrainingType.coloredWord,
        FillInTheBlankCalcResult() => TrainingType.fillInTheBlankCalc,
      };
}

/// 色当てクイズ
class ColoredWordResult extends TrainingResult {
  ColoredWordResult({
    required super.rank,
    required super.score,
    required super.doneAt,
    required this.correct,
    required this.questions,
    required this.correctRate,
  });

  factory ColoredWordResult.initialize({
    required int correct,
    required int questions,
    required DateTime doneAt,
  }) {
    final correctRate = calcCorrectRate(questions, correct);
    final score = calcScore(correct, correctRate);
    return ColoredWordResult(
      rank: calcRank(score),
      score: score,
      doneAt: doneAt,
      correct: correct,
      questions: questions,
      correctRate: correctRate,
    );
  }

  final int correct;
  final int questions;
  final double correctRate;

  static ResultRank calcRank(int score) {
    return switch (score) {
      >= 30 => ResultRank.excellent,
      >= 25 => ResultRank.great,
      >= 20 => ResultRank.good,
      >= 15 => ResultRank.average,
      _ => ResultRank.poor,
    };
  }

  static double calcCorrectRate(int questions, int correct) {
    if (questions <= 0 || correct <= 0) {
      return 0;
    }

    return correct / questions;
  }

  static int calcScore(int correct, double correctRate) =>
      (correct * correctRate).round();
}

/// 穴埋め計算
class FillInTheBlankCalcResult extends TrainingResult {
  FillInTheBlankCalcResult({
    required super.rank,
    required super.score,
    required super.doneAt,
    required this.correct,
    required this.questions,
    required this.correctRate,
  });

  factory FillInTheBlankCalcResult.initialize({
    required int correct,
    required int questions,
    required DateTime doneAt,
  }) {
    final correctRate = calcCorrectRate(questions, correct);
    final score = calcScore(correct, correctRate);
    return FillInTheBlankCalcResult(
      rank: calcRank(score),
      score: score,
      doneAt: doneAt,
      correct: correct,
      questions: questions,
      correctRate: correctRate,
    );
  }

  final int correct;
  final int questions;
  final double correctRate;

  static ResultRank calcRank(int score) {
    return switch (score) {
      >= 30 => ResultRank.excellent,
      >= 25 => ResultRank.great,
      >= 20 => ResultRank.good,
      >= 15 => ResultRank.average,
      _ => ResultRank.poor,
    };
  }

  static double calcCorrectRate(int questions, int correct) {
    if (questions <= 0 || correct <= 0) {
      return 0;
    }

    return correct / questions;
  }

  static int calcScore(int correct, double correctRate) =>
      (correct * correctRate).round();
}
