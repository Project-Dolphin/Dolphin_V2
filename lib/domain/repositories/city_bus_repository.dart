import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class CityBusRepository {
  Future<Either<Failure, List<CityBusData>>> getCityBusList();
}
