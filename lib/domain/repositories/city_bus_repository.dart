import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';

abstract class CityBusRepository {
  Future<Either<Failure, List<NodeInfoData>>> getOperationBusInfo(
      int busNumber);
}
