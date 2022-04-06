// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_calendar_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarWrapper _$$_CalendarWrapperFromJson(Map<String, dynamic> json) =>
    _$_CalendarWrapper(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WeekdayData.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_CalendarWrapperToJson(_$_CalendarWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'path': instance.path,
    };
