import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/data/datasources/shuttle_bus/shuttle_bus_local_datasource.dart';
import 'package:oceanview/data/datasources/shuttle_bus/shuttle_bus_remote_datasource.dart';
import 'package:oceanview/domain/repositories/shuttle_bus_repository.dart';

class ShuttleBusRepositoryImpl implements ShuttleBusRepository {
  final ShuttleBusRemoteDataSource remoteDataSource;
  final ShuttleBusLocalDataSource localDataSource;

  ShuttleBusRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, List>> getNextShuttle() async {
    try {
      final List<dynamic> _nextShuttleBusInfo =
          await remoteDataSource.getNextShuttle();
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

  @override
  Future<Either<Failure, List>> getTodayShuttleInfo() async {
    try {
      final List<dynamic> _todayAllShuttleBusInfo =
          await remoteDataSource.getTodayShuttleInfo();
      try {
        await localDataSource.busLocalDummy();
        return Right(_todayAllShuttleBusInfo);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
