import 'dart:convert';

import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class BusRemoteDataSource {
  Future<bool> getCityBusList();
}

class BusRemoteDataSourceImpl extends BusRemoteDataSource {
  final RestClient restClientService;

  BusRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<bool> getCityBusList() async {
    final response = await restClientService.getCityBusList();
    if (response.isEmpty) {
      throw ServerException();
    }
    return true;
  }
}
