import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_latest/response_calendar_latest_data_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';

class GetLatestEvent implements NoParamsUseCase<List<LatestData>> {
  final HomeDataRepository repository;

  GetLatestEvent({required this.repository});

  @override
  Future<Either<Failure, List<LatestData>>> call() async {
    return await repository.getLatestEvents();
  }
}
