import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/rest_client_service.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/city_bus_repository.dart';

class GetCityBusList implements NoParamsUseCase<List<CityBusData>> {
  final CityBusRepository repository;

  GetCityBusList({required this.repository});

  @override
  Future<Either<Failure, List<CityBusData>>> call() async {
    return await repository.getCityBusList();
  }
}
