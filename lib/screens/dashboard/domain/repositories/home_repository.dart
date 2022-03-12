import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';

abstract class HomeRepository {
  Future<Either<Failure, bool>> logoutUser(String token);
}
