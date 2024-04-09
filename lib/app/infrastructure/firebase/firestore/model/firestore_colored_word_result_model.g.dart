// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_colored_word_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreColoredWordResultModelImpl
    _$$FirestoreColoredWordResultModelImplFromJson(Map<String, dynamic> json) =>
        _$FirestoreColoredWordResultModelImpl(
          id: json['id'] as String,
          score: json['score'] as int,
          rank: $enumDecode(_$ResultRankEnumMap, json['rank']),
          correct: json['correct'] as int,
          questions: json['questions'] as int,
          correctRate: (json['correctRate'] as num).toDouble(),
          doneAt: dateFromTimestampValue(json['doneAt']),
          createdAt: dateFromTimestampValue(json['createdAt']),
          updatedAt: dateFromTimestampValue(json['updatedAt']),
        );

Map<String, dynamic> _$$FirestoreColoredWordResultModelImplToJson(
        _$FirestoreColoredWordResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'rank': _$ResultRankEnumMap[instance.rank]!,
      'correct': instance.correct,
      'questions': instance.questions,
      'correctRate': instance.correctRate,
      'doneAt': timestampFromDateValue(instance.doneAt),
      'createdAt': timestampFromDateValue(instance.createdAt),
      'updatedAt': timestampFromDateValue(instance.updatedAt),
    };

const _$ResultRankEnumMap = {
  ResultRank.excellent: 'excellent',
  ResultRank.great: 'great',
  ResultRank.good: 'good',
  ResultRank.average: 'average',
  ResultRank.poor: 'poor',
};
