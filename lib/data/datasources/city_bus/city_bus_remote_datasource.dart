import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/response/endpoint_businfo/response_businfo_data_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class CityBusRemoteDataSource {
  Future<List<BusInfoData>> getCityBusList();
}

class CityBusRemoteDataSourceImpl extends CityBusRemoteDataSource {
  final RestClient restClientService;

  CityBusRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<List<BusInfoData>> getCityBusList() async {
    final response = await restClientService.getCityBusList();
    if (response.data?.isEmpty ?? true) {
      throw ServerException();
    }
    return response.data ?? []; // ?? [];
  }
}
