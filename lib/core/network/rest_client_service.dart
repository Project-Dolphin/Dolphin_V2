import 'package:oceanview/core/utils/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'response/endpoint_businfo/response_businfo_dto.dart';
import 'response/endpoint_calendar/response_calendar_dto.dart';
import 'response/endpoint_calendar_latest/response_calendar_latest_dto.dart';
import 'response/endpoint_diet_dorm_today/response_diet_dorm_dto.dart';
import 'response/endpoint_holiday/response_holiday_dto.dart';
import 'response/endpoint_timetable_190/response_timetable_190_dto.dart';
import 'response/endpoint_businfo_specific/response_businfo_specific_dto.dart';
import 'response/endpoint_notices/response_notice_dto.dart';
import 'response/endpoint_weather_now/response_weather_now_dto.dart';

part 'rest_client_service.g.dart';

@RestApi(baseUrl: AppConstants.API_BASE_URL)
//@RestApi(baseUrl: 'pxfpulri8j.execute-api.ap-northeast-2.amazonaws.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('calendar')
  Future<CalendarWrapper> fetchWeekdayCalendarData();

  @GET('holiday')
  Future<HolidayWrapper> fetchHolidayCalendarData();

  @GET('calendar/latest')
  Future<LatestWrapper> getLatestEvents();

  @GET('notices')
  // 객체 찍어보고 다시 넣을 예정
  Future<NoticeWrapper> getNotices();

  @GET('businfo')
  Future<BusInfoWrapper> getCityBusList();

  @GET('businfo/{id}')
  Future<SpecificBusInfoWrapper> getCityBusInfo(@Path() String id);

  // @GET('/shuttle/next')
  // Future<List<dynamic>> getNextShuttle();

  // @GET('/shuttle/today')
  // Future<List<dynamic>> getTodayShuttleInfo();

  @GET('/timetable/190')
  Future<TimeTable190Wrapper> getTimeTable190();

  @GET('weather/now')
  Future<WeatherWrapper> getWeatherInfo();

  // @GET('diet/v2/society/today')
  // Future<List<MealData>> getTeriaDiet();

  // @GET('diet/naval/today')
  // Future<List<MealData>> getNavalDiet();

  @GET('diet/dorm/today')
  Future<DietDormWrapper> getDormDiet();
}
