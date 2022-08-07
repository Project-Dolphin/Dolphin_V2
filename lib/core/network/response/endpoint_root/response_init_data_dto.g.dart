// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_init_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitData _$$_InitDataFromJson(Map<String, dynamic> json) => _$_InitData(
      dayType: json['dayType'] as String? ?? '평일',
      schedules: json['schedules'] == null
          ? null
          : LatestWrapper.fromJson(json['schedules'] as Map<String, dynamic>),
      weather: json['weather'] == null
          ? null
          : WeatherData.fromJson(json['weather'] as Map<String, dynamic>),
      notices: (json['notices'] as List<dynamic>?)
              ?.map((e) => NoticeData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <NoticeData>[],
      diets: json['diets'] == null
          ? null
          : CafeData.fromJson(json['diets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InitDataToJson(_$_InitData instance) =>
    <String, dynamic>{
      'dayType': instance.dayType,
      'schedules': instance.schedules,
      'weather': instance.weather,
      'notices': instance.notices,
      'diets': instance.diets,
    };
