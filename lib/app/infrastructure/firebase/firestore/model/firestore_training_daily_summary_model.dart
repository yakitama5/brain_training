import 'package:brain_training/app/domain/training/entity/training_daily_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/json_key.dart';

part 'firestore_training_daily_summary_model.freezed.dart';
part 'firestore_training_daily_summary_model.g.dart';

@freezed
class FirestoreTrainingDailySummaryModel
    with _$FirestoreTrainingDailySummaryModel {
  const factory FirestoreTrainingDailySummaryModel({
    required String id,
    int? coloredWordScore,
    int? themeShiritoriScore,
    int? fillInTheBlankCalcScore,
    @Default(0) int doneCount,
    @timestampKey DateTime? doneAt,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreTrainingDailySummaryModel;

  factory FirestoreTrainingDailySummaryModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FirestoreTrainingDailySummaryModelFromJson(json);
}

extension FirestoreTrainingDailySummaryModelX
    on FirestoreTrainingDailySummaryModel {
  /// ドメイン層への変換
  TrainingDailySummary toDomainModel() => TrainingDailySummary(
        id: id,
        coloredWordScore: coloredWordScore,
        themeShiritoriScore: themeShiritoriScore,
        fillInTheBlankCalcScore: fillInTheBlankCalcScore,
        doneCount: doneCount,
        doneAt: doneAt!,
        createdAt: createdAt!,
        updatedAt: updatedAt!,
      );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending =>
      doneAt == null || createdAt == null || updatedAt == null;
}
