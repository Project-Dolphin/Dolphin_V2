// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_calendar_month_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarMonthWrapper _$$_CalendarMonthWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_CalendarMonthWrapper(
      title: json['title'] as String?,
      calendar: (json['calendar'] as List<dynamic>?)
              ?.map((e) => WeekdayData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WeekdayData>[],
    );

Map<String, dynamic> _$$_CalendarMonthWrapperToJson(
        _$_CalendarMonthWrapper instance) =>
    <String, dynamic>{
      'title': instance.title,
      'calendar': instance.calendar,
    };
