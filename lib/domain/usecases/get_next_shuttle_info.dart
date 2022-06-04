import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_next_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/shuttle_bus_repository.dart';

class GetNextShuttleInfo implements NoParamsUseCase<ShuttleNextWrapper> {
  final ShuttleBusRepository repository;

  GetNextShuttleInfo({required this.repository});

  @override
  Future<Either<Failure, ShuttleNextWrapper>> call() async {
    return await repository.getShuttleInfo();
  }
}
