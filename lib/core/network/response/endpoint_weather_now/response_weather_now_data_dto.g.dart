// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_weather_now_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherData _$$_WeatherDataFromJson(Map<String, dynamic> json) =>
    _$_WeatherData(
      status: json['status'] as String?,
      temparature: json['temparature'] as String?,
      windSpeed: json['windSpeed'] as String?,
      humidity: json['humidity'] as String?,
    );

Map<String, dynamic> _$$_WeatherDataToJson(_$_WeatherData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'temparature': instance.temparature,
      'windSpeed': instance.windSpeed,
      'humidity': instance.humidity,
    };
