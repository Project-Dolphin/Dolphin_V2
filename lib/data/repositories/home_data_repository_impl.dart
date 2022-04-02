import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/rest_client_service.dart';
import 'package:oceanview/data/datasources/home_data/home_data_local_datasource.dart';
import 'package:oceanview/data/datasources/home_data/home_data_remote_datasource.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';

class HomeDataRepositoryImpl implements HomeDataRepository {
  final HomeDataRemoteDataSource remoteDataSource;
  final HomeDataLocalDataSource localDataSource;

  HomeDataRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, List<Notice>>> getNotices() async {
    try {
      final List<Notice> _nearestEvent = await remoteDataSource.getNotices();
      try {
        return Right(_nearestEvent);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Weather>> getTodayWheater() async {
    try {
      final Weather _todayWeatherInfo = await remoteDataSource.getWeatherInfo();
      try {
        return Right(_todayWeatherInfo);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
