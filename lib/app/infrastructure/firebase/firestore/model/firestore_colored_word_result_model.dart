import 'package:brain_training/app/domain/training/value_object/result_rank.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/training/entity/training_result.dart';
import '../converter/json_key.dart';

part 'firestore_colored_word_result_model.freezed.dart';
part 'firestore_colored_word_result_model.g.dart';

@freezed
class FirestoreColoredWordResultModel with _$FirestoreColoredWordResultModel {
  const factory FirestoreColoredWordResultModel({
    required String id,
    required int score,
    required ResultRank rank,
    required int correct,
    required int questions,
    required double correctRate,
    @timestampKey DateTime? doneAt,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreColoredWordResultModel;

  factory FirestoreColoredWordResultModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreColoredWordResultModelFromJson(json);
}

extension FirestoreColoredWordResultModelX on FirestoreColoredWordResultModel {
  /// ドメイン層への変換
  ColoredWordResult toDomainModel() => ColoredWordResult(
        correct: correct,
        questions: questions,
        rank: rank,
        score: score,
        correctRate: correctRate,
        doneAt: doneAt!,
      );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending =>
      doneAt == null || createdAt == null || updatedAt == null;
}
