import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_next_dto.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_today_dto.dart';

abstract class ShuttleBusRepository {
  Future<Either<Failure, ShuttleTodayWrapper>> getTodayShuttleInfo();
  Future<Either<Failure, ShuttleNextWrapper>> getNextShuttle();
}
