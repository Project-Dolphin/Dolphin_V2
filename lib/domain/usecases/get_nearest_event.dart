import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/rest_client_service.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';

class GetNearestEvents implements NoParamsUseCase<List<Notice>> {
  final HomeDataRepository repository;

  GetNearestEvents({required this.repository});

  @override
  Future<Either<Failure, List<Notice>>> call() async {
    return await repository.getNotices();
  }
}
