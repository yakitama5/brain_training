import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_daily_summary.freezed.dart';

@freezed
class TrainingDailySummary with _$TrainingDailySummary {
  const factory TrainingDailySummary({
    required String id,
    int? coloredWordScore,
    int? themeShiritoriScore,
    int? fillInTheBlankCalcScore,
    @Default(0) int doneCount,
    required DateTime doneAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TrainingDailySummary;
}
