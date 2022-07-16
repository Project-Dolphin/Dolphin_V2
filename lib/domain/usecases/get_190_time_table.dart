import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_timetable_190/response_next_depart_190_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/city_bus_repository.dart';

class Get190TimeTable implements NoParamsUseCase<NextDepart190Wrapper> {
  final CityBusRepository repository;

  Get190TimeTable({required this.repository});

  @override
  Future<Either<Failure, NextDepart190Wrapper>> call() async {
    return await repository.getTimeTable190();
  }
}
