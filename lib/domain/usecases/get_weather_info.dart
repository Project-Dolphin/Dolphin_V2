import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';

class GetWeatherInfo implements NoParamsUseCase<WeatherData> {
  final HomeDataRepository repository;

  GetWeatherInfo({required this.repository});

  @override
  Future<Either<Failure, WeatherData>> call() async {
    return await repository.getTodayWheater();
  }
}
