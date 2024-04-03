// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreUserModelImpl _$$FirestoreUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestoreUserModelImpl(
      id: json['id'] as String,
      createdAt: dateFromTimestampValue(json['createdAt']),
      updatedAt: dateFromTimestampValue(json['updatedAt']),
    );

Map<String, dynamic> _$$FirestoreUserModelImplToJson(
        _$FirestoreUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': timestampFromDateValue(instance.createdAt),
      'updatedAt': timestampFromDateValue(instance.updatedAt),
    };
