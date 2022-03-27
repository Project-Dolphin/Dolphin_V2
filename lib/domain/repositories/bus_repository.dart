import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';

abstract class BusRepository {
  Future<Either<Failure, bool>> getCityBusList();
}
