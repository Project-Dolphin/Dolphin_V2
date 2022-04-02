import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class ShuttleBusRemoteDataSource {
  //TODO : dynamic 말고 DTO를 정해야함
  Future<List<dynamic>> getTodayShuttleInfo();
  Future<List<dynamic>> getNextShuttle();
}

class ShuttleBusRemoteDataSourceImpl extends ShuttleBusRemoteDataSource {
  final RestClient restClientService;

  ShuttleBusRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<List<dynamic>> getTodayShuttleInfo() async {
    final response = []; //await restClientService.getTodayShuttleInfo();
    if (response.isEmpty) {
      throw ServerException();
    }
    return response;
  }

  @override
  Future<List<dynamic>> getNextShuttle() async {
    final response = []; //await restClientService.getNextShuttle();
    if (response.isEmpty) {
      throw ServerException();
    }
    return response;
  }
}
