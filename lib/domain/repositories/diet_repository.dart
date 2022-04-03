import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_data_dto.dart';

abstract class DietRepository {
  Future<Either<Failure, DormData>> getDormDiet();
}