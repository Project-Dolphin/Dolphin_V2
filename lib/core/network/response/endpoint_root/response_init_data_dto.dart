import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_latest/response_calendar_latest_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_cafe_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';

part 'response_init_data_dto.freezed.dart';
part 'response_init_data_dto.g.dart';

@freezed
class InitData with _$InitData {
  factory InitData({
    @Default('평일') String dayType,
    LatestWrapper? schedules,
    WeatherData? weather,
    @Default(<NoticeData>[]) List<NoticeData> notices,
    CafeData? diets,
  }) = _InitData;

  factory InitData.fromJson(Map<String, dynamic> json) =>
      _$InitDataFromJson(json);
}
