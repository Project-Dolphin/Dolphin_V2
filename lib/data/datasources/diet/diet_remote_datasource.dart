import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_society_dto.dart';
import 'package:oceanview/core/network/response/endpoint_dorm/response_diet_data.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class DietRemoteDataSource {
  Future<DietDormWrapper> getDormDiet();
  Future<DietSocietyWrapper> getCafeDiet();
  Future<List<DietData>> getDietData(String dietTime, String dietType);
}

class DietRemoteDataSourceImpl extends DietRemoteDataSource {
  final RestClient restClientService;

  DietRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<DietDormWrapper> getDormDiet() async {
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

  @override
  Future<List<DietData>> getDietData(String dietTime, String dietType) async {
    final response = await restClientService.getDietData(dietTime, dietType);

    // if (response == null) {
    //   throw ServerException();
    // }

    return response;
  }
}
