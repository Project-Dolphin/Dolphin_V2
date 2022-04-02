import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class CityBusRemoteDataSource {
  Future<List<CityBusData>> getCityBusList();
}

class CityBusRemoteDataSourceImpl extends CityBusRemoteDataSource {
  final RestClient restClientService;

  CityBusRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<List<CityBusData>> getCityBusList() async {
    final response = await restClientService.getCityBusList();
    if (response.isEmpty) {
      throw ServerException();
    }
    return response['data'] ?? [];
  }
}
