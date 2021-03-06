import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_dto.dart';
import 'package:oceanview/core/network/response/endpoint_timetable_190/response_next_depart_190_dto.dart';
import 'package:oceanview/data/datasources/city_bus/city_bus_local_datasource.dart';
import 'package:oceanview/data/datasources/city_bus/city_bus_remote_datasource.dart';
import 'package:oceanview/domain/repositories/city_bus_repository.dart';

class CityBusRepositoryImpl implements CityBusRepository {
  final CityBusRemoteDataSource remoteDataSource;
  final CityBusLocalDataSource localDataSource;

  CityBusRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, SpecificBusInfoWrapper>> getOperationBusInfo(
    int busNumber,
  ) async {
    try {
      final SpecificBusInfoWrapper _operationBusInfo =
          await remoteDataSource.getOperationBusInfo(busNumber);
      try {
        // TODO: 로컬에서 우리가 무엇을 할 수 있을지 확인해보기
        await localDataSource.busLocalDummy();

        return Right(_operationBusInfo);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, NodeInfoData>> getSpecificNodeBusInfo(
    String busStopName,
    int busNumber,
  ) async {
    try {
      final NodeInfoData _specificNodeBusInfo =
          await remoteDataSource.getSpecificNodeBusInfo(busStopName, busNumber);
      try {
        // TODO: 로컬에서 우리가 무엇을 할 수 있을지 확인해보기
        await localDataSource.busLocalDummy();

        return Right(_specificNodeBusInfo);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, NextDepart190Wrapper>> getTimeTable190() async {
    try {
      final NextDepart190Wrapper _nextDepartInfo =
          await remoteDataSource.getTimeTable190();
      try {
        // TODO: 로컬에서 우리가 무엇을 할 수 있을지 확인해보기
        await localDataSource.busLocalDummy();

        return Right(_nextDepartInfo);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
