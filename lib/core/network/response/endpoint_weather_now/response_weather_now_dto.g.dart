// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_weather_now_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherWrapper _$$_WeatherWrapperFromJson(Map<String, dynamic> json) =>
    _$_WeatherWrapper(
      data: json['data'] == null
          ? null
          : WeatherData.fromJson(json['data'] as Map<String, dynamic>),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_WeatherWrapperToJson(_$_WeatherWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'path': instance.path,
    };
