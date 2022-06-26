import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/usecases/usecase.dart';
import 'package:oceanview/domain/repositories/diet_repository.dart';

class GetDormDiet implements NoParamsUseCase<dynamic> {
  final DietRepository repository;

  GetDormDiet({required this.repository});

  @override
  Future<Either<Failure, dynamic>> call() async {
    return await repository.getDormDiet();
  }
}
