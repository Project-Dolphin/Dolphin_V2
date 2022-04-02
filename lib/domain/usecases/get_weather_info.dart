import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/rest_client_service.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';

class GetWeatherInfo implements NoParamsUseCase<Weather> {
  final HomeDataRepository repository;

  GetWeatherInfo({required this.repository});

  @override
  Future<Either<Failure, Weather>> call() async {
    return await repository.getTodayWheater();
  }
}
