// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_calendar_latest_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatestData _$$_LatestDataFromJson(Map<String, dynamic> json) =>
    _$_LatestData(
      term: json['term'] == null
          ? null
          : LatestTerm.fromJson(json['term'] as Map<String, dynamic>),
      mainPlan: json['mainPlan'] as bool?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_LatestDataToJson(_$_LatestData instance) =>
    <String, dynamic>{
      'term': instance.term,
      'mainPlan': instance.mainPlan,
      'content': instance.content,
    };
