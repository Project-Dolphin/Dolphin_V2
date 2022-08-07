import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_latest/response_calendar_latest_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_cafe_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';

part 'response_home_data.g.dart';
part 'response_home_data.freezed.dart';

@freezed
class HomeData with _$HomeData {
  factory HomeData({
    @Default('Home Error') String dayType,
    LatestWrapper? schedules,
    WeatherData? weather,
    @Default(<NoticeData>[]) List<NoticeData> notices,
    CafeData? diets,
  }) = _HomeData;

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
}
