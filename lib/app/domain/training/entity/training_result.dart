import '../value_object/result_rank.dart';

sealed class TrainingResult {
  ResultRank get rank;
  int get score;
}

/// 色当てクイズ
class ColoredWordResult extends TrainingResult {
  ColoredWordResult({
    required this.correct,
    required this.questions,
  });

  final int correct;
  final int questions;

  // TODO(yakitama5): Firestoreのモデル変換などをうまいことやる...

  @override
  ResultRank get rank {
    // HACK(yakitama5): ここでしかでないしマジックナンバーで良い気がする
    return switch (score) {
      >= 30 => ResultRank.excellent,
      >= 25 => ResultRank.great,
      >= 20 => ResultRank.good,
      >= 15 => ResultRank.average,
      _ => ResultRank.poor,
    };
  }

  @override
  int get score => (correct * correctRate).round();

  double get correctRate {
    if (questions <= 0 || correct <= 0) {
      return 0;
    }

    return correct / questions;
  }
}
