import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
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
  Future<Either<Failure, List<NodeInfoData>>> getOperationBusInfo(
      int busNumber) async {
    try {
      final List<NodeInfoData> _specificNodeBusInfo =
          await remoteDataSource.getOperationBusInfo(busNumber);
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
}
