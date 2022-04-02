// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_calendar_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarData _$$_CalendarDataFromJson(Map<String, dynamic> json) =>
    _$_CalendarData(
      term: json['term'] == null
          ? null
          : CalendarTerm.fromJson(json['term'] as Map<String, dynamic>),
      mainPlan: json['mainPlan'] as bool?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_CalendarDataToJson(_$_CalendarData instance) =>
    <String, dynamic>{
      'term': instance.term,
      'mainPlan': instance.mainPlan,
      'content': instance.content,
    };
