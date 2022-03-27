import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/bus_repository.dart';

class GetCityBusList implements NoParamsUseCase<bool> {
  final BusRepository repository;

  GetCityBusList({required this.repository});

  @override
  Future<Either<Failure, bool>> call() async {
    return await repository.getCityBusList();
  }
}
