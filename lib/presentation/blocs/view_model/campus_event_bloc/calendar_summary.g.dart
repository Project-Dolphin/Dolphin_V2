// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarSumamry _$$_CalendarSumamryFromJson(Map<String, dynamic> json) =>
    _$_CalendarSumamry(
      content: json['content'] as String,
      holiday: json['holiday'] as bool? ?? false,
      mainPlan: json['mainPlan'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CalendarSumamryToJson(_$_CalendarSumamry instance) =>
    <String, dynamic>{
      'content': instance.content,
      'holiday': instance.holiday,
      'mainPlan': instance.mainPlan,
    };
