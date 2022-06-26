import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_society_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class DietRemoteDataSource {
  Future getDormDiet();
  Future<DietSocietyWrapper> getCafeDiet();
}

class DietRemoteDataSourceImpl extends DietRemoteDataSource {
  final RestClient restClientService;

  DietRemoteDataSourceImpl({required this.restClientService});

  @override
  Future getDormDiet() async {
    final response = await restClientService.getDormDiet();

    // if (response.morning == null) {
    //   throw ServerException();
    // }

    return response;
  }

  @override
  Future<DietSocietyWrapper> getCafeDiet() async {
    final response = await restClientService.getCafeDiet();

    // if (response == null) {
    //   throw ServerException();
    // }

    return response;
  }
}
