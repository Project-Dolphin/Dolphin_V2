import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_society_dto.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/diet_repository.dart';

class GetCafeDiet implements NoParamsUseCase<DietSocietyWrapper> {
  final DietRepository repository;

  GetCafeDiet({required this.repository});

  @override
  Future<Either<Failure, DietSocietyWrapper>> call() async {
    return await repository.getCafeDiet();
  }
}
