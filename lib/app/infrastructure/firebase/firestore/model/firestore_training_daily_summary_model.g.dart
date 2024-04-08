// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_training_daily_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreTrainingDailySummaryModelImpl
    _$$FirestoreTrainingDailySummaryModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FirestoreTrainingDailySummaryModelImpl(
          id: json['id'] as String,
          coloredWordScore: json['coloredWordScore'] as int?,
          themeShiritoriScore: json['themeShiritoriScore'] as int?,
          addMinusScore: json['addMinusScore'] as int?,
          doneCount: json['doneCount'] as int? ?? 0,
          doneAt: dateFromTimestampValue(json['doneAt']),
          createdAt: dateFromTimestampValue(json['createdAt']),
          updatedAt: dateFromTimestampValue(json['updatedAt']),
        );

Map<String, dynamic> _$$FirestoreTrainingDailySummaryModelImplToJson(
        _$FirestoreTrainingDailySummaryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coloredWordScore': instance.coloredWordScore,
      'themeShiritoriScore': instance.themeShiritoriScore,
      'addMinusScore': instance.addMinusScore,
      'doneCount': instance.doneCount,
      'doneAt': timestampFromDateValue(instance.doneAt),
      'createdAt': timestampFromDateValue(instance.createdAt),
      'updatedAt': timestampFromDateValue(instance.updatedAt),
    };
