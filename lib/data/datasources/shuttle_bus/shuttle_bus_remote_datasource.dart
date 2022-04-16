import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_next_dto.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_today_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class ShuttleBusRemoteDataSource {
  //TODO : dynamic 말고 DTO를 정해야함
  Future<ShuttleTodayWrapper> getTodayShuttleInfo();
  Future<ShuttleNextWrapper> getNextShuttle();
}

class ShuttleBusRemoteDataSourceImpl extends ShuttleBusRemoteDataSource {
  final RestClient restClientService;

  ShuttleBusRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<ShuttleTodayWrapper> getTodayShuttleInfo() async {
    final response = await restClientService.getTodayShuttleInfo();
    if (response.data == null) {
      throw ServerException();
    }

    return response;
  }

  @override
  Future<ShuttleNextWrapper> getNextShuttle() async {
    final response = await restClientService.getNextShuttle();
    if (response.data == null) {
      throw ServerException();
    }

    return response;
  }
}
