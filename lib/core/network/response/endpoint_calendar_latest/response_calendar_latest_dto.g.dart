// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_calendar_latest_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatestWrapper _$$_LatestWrapperFromJson(Map<String, dynamic> json) =>
    _$_LatestWrapper(
      today: json['today'] as String?,
      calendar: (json['calendar'] as List<dynamic>?)
              ?.map((e) => LatestData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LatestData>[],
    );

Map<String, dynamic> _$$_LatestWrapperToJson(_$_LatestWrapper instance) =>
    <String, dynamic>{
      'today': instance.today,
      'calendar': instance.calendar,
    };
