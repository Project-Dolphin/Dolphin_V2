import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_data_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class DietRemoteDataSource {
  Future<DormData> getDormDiet();
}

class DietRemoteDataSourceImpl extends DietRemoteDataSource {
  final RestClient restClientService;

  DietRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<DormData> getDormDiet() async {
    final response = await restClientService.getDormDiet();

    if (response.data == null) {
      throw ServerException();
    }

    return response.data!;
  }
}
