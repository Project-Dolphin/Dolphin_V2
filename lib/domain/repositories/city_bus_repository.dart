import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_dto.dart';
import 'package:oceanview/core/network/response/endpoint_timetable_190/response_next_depart_190_dto.dart';

abstract class CityBusRepository {
  Future<Either<Failure, SpecificBusInfoWrapper>> getOperationBusInfo(
    int busNumber,
  );

  Future<Either<Failure, NodeInfoData>> getSpecificNodeBusInfo(
    String busStopName,
    int busNumber,
  );

  Future<Either<Failure, NextDepart190Wrapper>> getTimeTable190();
}
