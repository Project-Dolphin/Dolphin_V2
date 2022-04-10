// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_calendar_data_v2_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarDataV2 _$$_CalendarDataV2FromJson(Map<String, dynamic> json) =>
    _$_CalendarDataV2(
      term: json['term'] as String?,
      mainPlan: json['mainPlan'] as bool?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_CalendarDataV2ToJson(_$_CalendarDataV2 instance) =>
    <String, dynamic>{
      'term': instance.term,
      'mainPlan': instance.mainPlan,
      'content': instance.content,
    };
