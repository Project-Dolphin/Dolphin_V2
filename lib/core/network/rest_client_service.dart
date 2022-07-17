import 'package:dio/dio.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_month_dto.dart';
import 'package:oceanview/core/network/response/endpoint_dorm/response_diet_data.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';
import 'package:retrofit/retrofit.dart';

import 'response/endpoint_businfo_specific/response_businfo_specific_dto.dart';
import 'response/endpoint_calendar/response_calendar_all_dto.dart';
import 'response/endpoint_calendar_latest/response_calendar_latest_dto.dart';
import 'response/endpoint_diet_dorm_today/response_diet_dorm_dto.dart';
import 'response/endpoint_diet_society_today/response_diet_society_dto.dart';
import 'response/endpoint_holiday/response_holiday_dto.dart';
import 'response/endpoint_shuttle/response_shuttle_next_dto.dart';
import 'response/endpoint_timetable_190/response_next_depart_190_dto.dart';

part 'rest_client_service.g.dart';

// TODO: 추후 Flavor 추가 시 전역 싱글톤 객체로 AppConstant 데이터 관리 할 것
@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('')
  Future<CalendarAllWrapper> getMainData();

  @GET('calendar')
  Future<CalendarAllWrapper> getWeekdayCalendarData();

  @GET('calendar')
  Future<CalendarMonthWrapper> getWeekdayCalendarDataWithMonth(
    @Query("year") int year,
    @Query("month") int month,
  );

  @GET('holiday')
  Future<HolidayWrapper> getHolidayCalendarData();

  @GET('calendar/latest')
  Future<LatestWrapper> getLatestEvents();

  @GET('notices')
  Future<List<NoticeData>> getNotices();

  @GET('diet')
  Future<List<DietData>> getDietData(
    @Query("at") String dietTime,
    @Query("where") String dietType,
  );

  @GET('bus/time')
  Future<NodeInfoData> getSpecificNodeBusInfo(
    @Query("busStopName") String busStopName,
    @Query("busNumber") int busNumber,
  );

  @GET('bus/info')
  Future<SpecificBusInfoWrapper> getOperationBusInfo(
    @Query("busNumber") int busNumber,
  );

  @GET('bus/departbus')
  Future<NextDepart190Wrapper> getTimeTable190();

  @GET('bus/nextshuttle')
  Future<ShuttleNextWrapper> getShuttleInfo();

  // @Deprecated("통합되서 안쓸것 같음")
  // @GET('shuttle/today')
  // Future<ShuttleTodayWrapper> getTodayShuttleInfo();

  @GET('weather/now')
  Future<WeatherData> getWeatherInfo();

  @GET('diet/v2/society/today')
  Future<DietSocietyWrapper> getCafeDiet();

  // @GET('diet/naval/today')
  // Future<List<MealData>> getNavalDiet();

  @GET('diet/dorm/today')
  Future<DietDormWrapper> getDormDiet();
}
