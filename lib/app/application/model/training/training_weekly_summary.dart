import 'package:brain_training/app/domain/training/entity/training_daily_summary.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training_weekly_summary.freezed.dart';

@freezed
class TrainingWeeklySummary with _$TrainingWeeklySummary {
  const factory TrainingWeeklySummary({
    required DateTimeRange range,
    required int doneDays,
    required int totalDays,
    required List<TrainingDailySummary> days,
  }) = _TrainingWeeklySummary;
}
