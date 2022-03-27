import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/data/datasources/bus_local_datasource.dart';
import 'package:oceanview/data/datasources/bus_remote_datasource.dart';
import 'package:oceanview/domain/repositories/bus_repository.dart';

class BusRepositoryImpl implements BusRepository {
  final BusRemoteDataSource remoteDataSource;
  final BusLocalDataSource localDataSource;

  BusRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, bool>> getCityBusList() async {
    try {
      await remoteDataSource.getCityBusList();
      try {
        // TODO: 로컬에서 우리가 무엇을 할 수 있을지 확인해보기
        await localDataSource.busLocalDummy();
        return const Right(true);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
