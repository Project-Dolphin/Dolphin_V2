import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_society_dto.dart';
import 'package:oceanview/core/network/response/endpoint_dorm/response_diet_data.dart';

abstract class DietRepository {
  Future<Either<Failure, DietDormWrapper>> getDormDiet();
  Future<Either<Failure, DietSocietyWrapper>> getCafeDiet();
  Future<Either<Failure, List<DietData>>> getDietData(
    String dietTime,
    String dietType,
  );
}
