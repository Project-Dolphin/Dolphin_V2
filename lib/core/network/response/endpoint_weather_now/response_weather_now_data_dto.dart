import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_weather_now_data_dto.g.dart';
part 'response_weather_now_data_dto.freezed.dart';

@freezed
class WeatherData with _$WeatherData {
  factory WeatherData({
    @Default('') String status,
    @Default('') String temparature,
    @Default('') String windSpeed,
    @Default('') String humidity,
  }) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);
}
