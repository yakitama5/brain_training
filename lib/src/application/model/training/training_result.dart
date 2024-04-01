import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_result.freezed.dart';

@freezed
class TrainingResult with _$TrainingResult {
  const factory TrainingResult({
    required int correct,
    required int quesLength,
  }) = _TrainingResult;
}
