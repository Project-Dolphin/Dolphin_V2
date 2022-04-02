import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/shuttle_bus_repository.dart';

class GetTodayShuttleInfo implements NoParamsUseCase<List<dynamic>> {
  final ShuttleBusRepository repository;

  GetTodayShuttleInfo({required this.repository});

  @override
  Future<Either<Failure, List<dynamic>>> call() async {
    return await repository.getTodayShuttleInfo();
  }
}
