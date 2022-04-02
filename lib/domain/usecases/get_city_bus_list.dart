import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo/response_businfo_data_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/city_bus_repository.dart';

class GetCityBusList implements NoParamsUseCase<List<BusInfoData>> {
  final CityBusRepository repository;

  GetCityBusList({required this.repository});

  @override
  Future<Either<Failure, List<BusInfoData>>> call() async {
    return await repository.getCityBusList();
  }
}
