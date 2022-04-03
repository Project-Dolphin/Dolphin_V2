import 'package:dartz/dartz.dart';

import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_data_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/diet_repository.dart';

class GetDormDiet implements NoParamsUseCase<DormData> {
  final DietRepository repository;

  GetDormDiet({required this.repository});

  @override
  Future<Either<Failure, DormData>> call() async {
    return await repository.getDormDiet();
  }
}
