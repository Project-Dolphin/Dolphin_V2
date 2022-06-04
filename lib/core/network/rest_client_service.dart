import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'response/endpoint_businfo_specific/response_businfo_specific_dto.dart';
import 'response/endpoint_calendar/response_calendar_dto.dart';
import 'response/endpoint_calendar_latest/response_calendar_latest_dto.dart';
import 'response/endpoint_diet_dorm_today/response_diet_dorm_dto.dart';
import 'response/endpoint_diet_society_today/response_diet_society_dto.dart';
import 'response/endpoint_holiday/response_holiday_dto.dart';
import 'response/endpoint_notices/response_notice_dto.dart';
import 'response/endpoint_shuttle/response_shuttle_next_dto.dart';
import 'response/endpoint_timetable_190/response_next_depart_190_dto.dart';
import 'response/endpoint_weather_now/response_weather_now_dto.dart';

part 'rest_client_service.g.dart';

// TODO: 추후 Flavor 추가 시 전역 싱글톤 객체로 AppConstant 데이터 관리 할 것
@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('calendar')
  Future<CalendarWrapper> getWeekdayCalendarData();

  @GET('holiday')
  Future<HolidayWrapper> getHolidayCalendarData();

  @GET('calendar/latest')
  Future<LatestWrapper> getLatestEvents();

  @GET('notices')
  Future<NoticeWrapper> getNotices();

  @GET('bus/bustime')
  Future<SpecificBusInfoWrapper> getSpecificNodeBusInfo(
    @Query("busStopName") String busStopName,
    @Query("busNumber") int busNumber,
  );

  @GET('bus/businfo')
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
  Future<WeatherWrapper> getWeatherInfo();

  @GET('diet/v2/society/today')
  Future<DietSocietyWrapper> getCafeDiet();

  // @GET('diet/naval/today')
  // Future<List<MealData>> getNavalDiet();

  @GET('diet/dorm/today')
  Future<DietDormWrapper> getDormDiet();
}
