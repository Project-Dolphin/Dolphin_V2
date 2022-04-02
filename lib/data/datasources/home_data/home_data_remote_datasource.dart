import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class HomeDataRemoteDataSource {
  Future<Weather> getWeatherInfo();
  Future<List<Notice>> getNotices();
}

class HomeDataRemoteDataSourceImpl extends HomeDataRemoteDataSource {
  final RestClient restClientService;

  HomeDataRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<Weather> getWeatherInfo() async {
    final Weather response = await restClientService.getWeatherInfo();
    if (response == null) {
      throw ServerException();
    }
    return response;
  }

  @override
  Future<List<Notice>> getNotices() async {
    final List<Notice> response = await restClientService.getNotices();
    if (response == null) {
      throw ServerException();
    }
    return response;
  }
}
