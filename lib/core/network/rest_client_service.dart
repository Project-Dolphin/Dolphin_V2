import 'package:json_annotation/json_annotation.dart';
import 'package:oceanview/core/utils/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client_service.g.dart';

@RestApi(baseUrl: AppConstants.API_BASE_URL)
//@RestApi(baseUrl: 'pxfpulri8j.execute-api.ap-northeast-2.amazonaws.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('calendar')
  Future<List<CalendarData>> fetchWeekdayCalendarData();

  @GET('holiday')
  Future<List<HolidayData>> fetchHolidayCalendarData();

  @GET('calendar/latest')
  Future<List<CalendarHomeData>> fetchHomeCalendarData();

  @GET('notices')
  // 객체 찍어보고 다시 넣을 예정
  Future<List<Notice>> getNotices();

  @GET('businfo')
  Future<Map<String, List<CityBusData>>> getCityBusList();

  @GET('businfo/{id}')
  Future<CityBusData> getCityBusInfo(@Path() String id);

  // @GET('/shuttle/next')
  // Future<List<dynamic>> getNextShuttle();

  // @GET('/shuttle/today')
  // Future<List<dynamic>> getTodayShuttleInfo();

  // @GET('/timetable/190')
  // Future<List<dynamic>> getTimeTable190();

  @GET('weather/now')
  Future<Weather> getWeatherInfo();

  @GET('diet/v2/society/today')
  Future<List<MealData>> getTeriaDiet();

  @GET('diet/naval/today')
  Future<List<MealData>> getNavalDiet();

  @GET('diet/dorm/today')
  Future<List<MealData>> getDormDiet();
}

@JsonSerializable()
class CityBusData {
  String? carNo;
  int? nodeId;
  double? lat;
  double? lin;
  int? gpsym;
  String? bstopnm;

  CityBusData({
    this.carNo,
    this.nodeId,
    this.lat,
    this.lin,
    this.gpsym,
    this.bstopnm,
  });

  factory CityBusData.fromJson(Map<String, dynamic> json) =>
      _$CityBusDataFromJson(json);
  Map<String, dynamic> toJson() => _$CityBusDataToJson(this);
}

@JsonSerializable()
class Term {
  String? startedAt;
  String? endedAt;

  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);

  Term({this.startedAt, this.endedAt});
}

@JsonSerializable()
class CalendarData {
  Term? term;
  String? content;
  bool? mainPlan;

  CalendarData({this.term, this.content, this.mainPlan});

  factory CalendarData.fromJson(Map<String, dynamic> json) =>
      _$CalendarDataFromJson(json);
  Map<String, dynamic> toJson() => _$CalendarDataToJson(this);
}

@JsonSerializable()
class CalendarHomeData {
  Term? term;
  String? content;
  bool? mainPlan;
  int? dDay;

  CalendarHomeData({this.term, this.content, this.mainPlan, this.dDay});

  factory CalendarHomeData.fromJson(Map<String, dynamic> json) =>
      _$CalendarHomeDataFromJson(json);
  Map<String, dynamic> toJson() => _$CalendarHomeDataToJson(this);
}

@JsonSerializable()
class HolidayData {
  Term? term;
  String? content;

  HolidayData({this.term, this.content});

  factory HolidayData.fromJson(Map<String, dynamic> json) =>
      _$HolidayDataFromJson(json);

  Map<String, dynamic> toJson() => _$HolidayDataToJson(this);
}

@JsonSerializable()
class Weather {
  @JsonKey(defaultValue: '')
  String status;

  @JsonKey(defaultValue: '')
  String temparature;

  @JsonKey(defaultValue: '')
  String windSpeed;

  @JsonKey(defaultValue: '')
  String humidity;

  Weather(
      {required this.status,
      required this.temparature,
      required this.windSpeed,
      required this.humidity});

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable()
class MealData {
  // TODO: MealData 변수 타입 명시 하는게 좋을 것 같음
  // dynamic 타입, dynamic list 지향,,
  dynamic type;
  List<dynamic>? value;

  MealData({this.type = 99, this.value = const ['식단이 없어요']});

  factory MealData.fromJson(Map<String, dynamic> json) =>
      _$MealDataFromJson(json);

  Map<String, dynamic> toJson() => _$MealDataToJson(this);
}

@JsonSerializable()
class Notice {
  String? title;
  String? link;
  String? date;

  Notice({this.title, this.link, this.date});

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);

  Map<String, dynamic> toJson() => _$NoticeToJson(this);
}
