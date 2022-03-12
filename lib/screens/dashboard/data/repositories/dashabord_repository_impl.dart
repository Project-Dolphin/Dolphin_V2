import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/screens/dashboard/domain/repositories/home_repository.dart';
import 'package:oceanview/screens/dashboard/data/datasources/dashboard_local_datasource.dart';
import 'package:oceanview/screens/dashboard/data/datasources/dashboard_remote_datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, bool>> logoutUser(String token) async {
    try {
      await remoteDataSource.logoutUser(token);
      try {
        await localDataSource.clearToken();
        return const Right(true);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
