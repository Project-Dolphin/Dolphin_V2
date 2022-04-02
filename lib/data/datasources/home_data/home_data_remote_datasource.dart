import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class HomeDataRemoteDataSource {
  Future<WeatherData> getWeatherInfo();
  Future<List<NoticeData>> getNotices();
}

class HomeDataRemoteDataSourceImpl extends HomeDataRemoteDataSource {
  final RestClient restClientService;

  HomeDataRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<WeatherData> getWeatherInfo() async {
    final response = await restClientService.getWeatherInfo();
    if (response.data == null) {
      throw ServerException();
    }

    return response.data!;
  }

  @override
  Future<List<NoticeData>> getNotices() async {
    final response = await restClientService.getNotices();
    if (response.data == null) {
      throw ServerException();
    }

    return response.data!;
  }
}
