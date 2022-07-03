// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_calendar_all_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarAllWrapper _$$_CalendarAllWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_CalendarAllWrapper(
      title: json['title'] as String?,
      calendar: (json['calendar'] as List<dynamic>?)
              ?.map((e) => WeekdayData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WeekdayData>[],
    );

Map<String, dynamic> _$$_CalendarAllWrapperToJson(
        _$_CalendarAllWrapper instance) =>
    <String, dynamic>{
      'title': instance.title,
      'calendar': instance.calendar,
    };
