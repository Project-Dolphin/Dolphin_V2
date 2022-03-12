import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client_service.g.dart';

@RestApi(baseUrl: 'x4hvqlt6g5.execute-api.ap-northeast-2.amazonaws.com')
//@RestApi(baseUrl: 'pxfpulri8j.execute-api.ap-northeast-2.amazonaws.com')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //@GET('/calendar')
  //Future<List<T>> getTs();

  //@GET('/calendar/latest')
  //Future<List<T>> getTs();

  //@GET('/notices')
  //Future<List<T>> getTs();

  //@GET('/holiday')
  //Future<List<T>> getTs();

  @GET('/businfo')
  Future<List<CityBusData>> getCityBusList();

  @GET('/businfo/{id}')
  Future<CityBusData> getCityBusInfo(@Path() String id);

  //@GET('/shuttle/next')
  //Future<List<T>> getTs();

  //@GET('/shuttle/today')
  //Future<List<T>> getTs();

  //@GET('/shuttle/shuttle')
  //Future<List<T>> getTs();

  // @GET('/timetable/190')
  // Future<List<T>> getTs();

  //@GET('/weather/now')
  //Future<List<T>> getTs();

  //@GET('/diet/v2/society/today')
  //Future<List<T>> getTs();

  //@GET('/diet/naval/today')
  //Future<List<T>> getTs();

  //@GET('/diet/dorm/today')
  //Future<List<T>> getTs();
}

@JsonSerializable()
class CityBusData {
  int? carNo1;
  int? carNo2;
  int? min1;
  int? min2;
  int? station1;
  int? station2;
  bool? lowplate1; // bool to int 에러 발생으로 타입 bool 로 변경
  bool? lowplate2;

  CityBusData(
      {this.carNo1,
      this.carNo2,
      this.min1,
      this.min2,
      this.station1,
      this.station2,
      this.lowplate1,
      this.lowplate2});

  factory CityBusData.fromJson(Map<String, dynamic> json) =>
      _$CityBusDataFromJson(json);
  Map<String, dynamic> toJson() => _$CityBusDataToJson(this);
}
