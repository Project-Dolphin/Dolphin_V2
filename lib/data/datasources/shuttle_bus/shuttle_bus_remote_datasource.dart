import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_next_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class ShuttleBusRemoteDataSource {
  //TODO : dynamic 말고 DTO를 정해야함
  // Future<ShuttleTodayWrapper> getTodayShuttleInfo();
  Future<ShuttleNextWrapper> getShuttleInfo();
}

class ShuttleBusRemoteDataSourceImpl extends ShuttleBusRemoteDataSource {
  final RestClient restClientService;

  ShuttleBusRemoteDataSourceImpl({required this.restClientService});

  // @override
  // Future<ShuttleTodayWrapper> getTodayShuttleInfo() async {
  //   try {
  //     final response = await restClientService.getTodayShuttleInfo();
  //     return response;
  //   } on DioError {
  //     throw ServerException;
  //   }
  // }

  @override
  Future<ShuttleNextWrapper> getShuttleInfo() async {
    final response = await restClientService.getShuttleInfo();

    if (response.nextShuttle.isEmpty) {
      throw ServerException();
    }

    return response;
  }
}
