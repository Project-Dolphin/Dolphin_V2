import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class NoParamsUseCase<Type> {
  Future<Either<Failure, Type>> call();
}
