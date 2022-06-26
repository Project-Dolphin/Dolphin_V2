import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_weather_now_data_dto.dart';

part 'response_weather_now_dto.freezed.dart';
part 'response_weather_now_dto.g.dart';

@freezed
class WeatherWrapper with _$WeatherWrapper {
  factory WeatherWrapper({
    WeatherData? data,
  }) = _WeatherWrapper;

  factory WeatherWrapper.fromJson(Map<String, dynamic> json) =>
      _$WeatherWrapperFromJson(json);
}
