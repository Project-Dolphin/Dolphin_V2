import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';

abstract class ShuttleBusRepository {
  Future<Either<Failure, List<dynamic>>> getTodayShuttleInfo();
  Future<Either<Failure, List<dynamic>>> getNextShuttle();
}
