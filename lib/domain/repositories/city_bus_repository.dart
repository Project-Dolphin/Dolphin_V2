import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo/response_businfo_data_dto.dart';

abstract class CityBusRepository {
  Future<Either<Failure, List<BusInfoData>>> getRunningBusInfo();
}
