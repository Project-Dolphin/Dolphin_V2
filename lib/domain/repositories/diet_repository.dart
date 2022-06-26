import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_society_dto.dart';

abstract class DietRepository {
  Future<Either<Failure, dynamic>> getDormDiet();
  Future<Either<Failure, DietSocietyWrapper>> getCafeDiet();
}
