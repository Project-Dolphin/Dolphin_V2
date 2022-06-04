import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_next_dto.dart';
import 'package:oceanview/data/datasources/shuttle_bus/shuttle_bus_local_datasource.dart';
import 'package:oceanview/data/datasources/shuttle_bus/shuttle_bus_remote_datasource.dart';
import 'package:oceanview/domain/repositories/shuttle_bus_repository.dart';

class ShuttleBusRepositoryImpl implements ShuttleBusRepository {
  final ShuttleBusRemoteDataSource remoteDataSource;
  final ShuttleBusLocalDataSource localDataSource;

  ShuttleBusRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, ShuttleNextWrapper>> getShuttleInfo() async {
    try {
      final ShuttleNextWrapper _nextShuttleBusInfo =
          await remoteDataSource.getShuttleInfo();
      try {
        await localDataSource.busLocalDummy();

        return Right(_nextShuttleBusInfo);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  // @override
  // Future<Either<Failure, ShuttleTodayWrapper>> getTodayShuttleInfo() async {
  //   try {
  //     final ShuttleTodayWrapper _todayAllShuttleBusInfo =
  //         await remoteDataSource.getTodayShuttleInfo();
  //     try {
  //       await localDataSource.busLocalDummy();

  //       return Right(_todayAllShuttleBusInfo);
  //     } on CacheException {
  //       return Left(CacheFailure());
  //     }
  //   } on ServerException {
  //     return Left(ServerFailure());
  //   }
  // }
}
