// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengeImpl _$$ChallengeImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      startDt: json['startDt'] == null
          ? null
          : DateTime.parse(json['startDt'] as String),
      endDt: json['endDt'] == null
          ? null
          : DateTime.parse(json['endDt'] as String),
    );

Map<String, dynamic> _$$ChallengeImplToJson(_$ChallengeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDt': instance.startDt?.toIso8601String(),
      'endDt': instance.endDt?.toIso8601String(),
    };

_$DbChallengeImpl _$$DbChallengeImplFromJson(Map<String, dynamic> json) =>
    _$DbChallengeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      startDt: json['startDt'] as String?,
      endDt: json['endDt'] as String?,
    );

Map<String, dynamic> _$$DbChallengeImplToJson(_$DbChallengeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'startDt': instance.startDt,
      'endDt': instance.endDt,
    };
