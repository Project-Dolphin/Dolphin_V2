import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/response/endpoint_businfo/response_businfo_data_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class CityBusRemoteDataSource {
  // TODO : Add Specific Node Api
  Future<List<BusInfoData>> getOperationBusInfo();
}

class CityBusRemoteDataSourceImpl extends CityBusRemoteDataSource {
  final RestClient restClientService;

  CityBusRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<List<BusInfoData>> getOperationBusInfo() async {
    final response = await restClientService.getOperationBusInfo();
    if (response.data?.isEmpty ?? true) {
      throw ServerException();
    }

    return response.data ?? []; // ?? [];
  }
}
