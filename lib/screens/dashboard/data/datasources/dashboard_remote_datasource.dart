import 'dart:convert';

import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class HomeRemoteDataSource {
  Future<bool> logoutUser(String token);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final RestClient restClientService;

  HomeRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<bool> logoutUser(String token) async {
    final response = await restClientService.getCityBusList();
    if (response.isEmpty) {
      throw ServerException();
    }
    return true;
  }
}
