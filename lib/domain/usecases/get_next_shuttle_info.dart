import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/shuttle_bus_repository.dart';

class GetNextShuttleInfo implements NoParamsUseCase<List<dynamic>> {
  final ShuttleBusRepository repository;

  GetNextShuttleInfo({required this.repository});

  @override
  Future<Either<Failure, List<dynamic>>> call() async {
    return await repository.getNextShuttle();
  }
}
