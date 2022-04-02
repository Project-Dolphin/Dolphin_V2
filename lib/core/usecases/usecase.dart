import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

// 우리는 파라미터 쓸만한 건수가 거의 없어서 NoParams이 메인이 될 듯 함
abstract class NoParamsUseCase<Type> {
  Future<Either<Failure, Type>> call();
}
