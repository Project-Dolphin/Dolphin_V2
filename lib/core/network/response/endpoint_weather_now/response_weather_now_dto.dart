import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_weather_now_data_dto.dart';

part 'response_weather_now_dto.g.dart';
part 'response_weather_now_dto.freezed.dart';

@freezed
class WeatherWrapper with _$WeatherWrapper {
  factory WeatherWrapper({
    WeatherData? data,
    String? path,
  }) = _WeatherWrapper;

  factory WeatherWrapper.fromJson(Map<String, dynamic> json) =>
      _$WeatherWrapperFromJson(json);
}
