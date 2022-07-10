import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class CityBusRemoteDataSource {
  // TODO : Add Specific Node Api
  Future<SpecificBusInfoWrapper> getOperationBusInfo(int busNumber);
  Future<NodeInfoData> getSpecificNodeBusInfo(
    String busStopName,
    int busNumber,
  );
}

class CityBusRemoteDataSourceImpl extends CityBusRemoteDataSource {
  final RestClient restClientService;

  CityBusRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<SpecificBusInfoWrapper> getOperationBusInfo(int busNumber) async {
    final response = await restClientService.getOperationBusInfo(busNumber);
    if (response.busNumber == null) {
      throw ServerException();
    }

    return response; // ?? [];
  }

  @override
  Future<NodeInfoData> getSpecificNodeBusInfo(
    String busStopName,
    int busNumber,
  ) async {
    final response =
        await restClientService.getSpecificNodeBusInfo(busStopName, busNumber);
    // if (response.data.isEmpty) {
    //   throw ServerException();
    // }

    return response; // ?? [];
  }
}
