import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/city_bus_repository.dart';

class GetOperationCityBusList implements UseCase<SpecificBusInfoWrapper, int> {
  final CityBusRepository repository;

  GetOperationCityBusList({required this.repository});

  @override
  Future<Either<Failure, SpecificBusInfoWrapper>> call(int busNumber) async {
    return await repository.getOperationBusInfo(busNumber);
  }
}
