import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_latest/response_calendar_latest_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';
import 'package:oceanview/data/datasources/home_data/home_data_local_datasource.dart';
import 'package:oceanview/data/datasources/home_data/home_data_remote_datasource.dart';
import 'package:oceanview/domain/repositories/home_data_repository.dart';

class HomeDataRepositoryImpl implements HomeDataRepository {
  final HomeDataRemoteDataSource remoteDataSource;
  final HomeDataLocalDataSource localDataSource;

  HomeDataRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<NoticeData>>> getNotices() async {
    try {
      final List<NoticeData> noticeList = await remoteDataSource.getNotices();
      try {
        return Right(noticeList);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, WeatherData>> getTodayWheater() async {
    try {
      final WeatherData todayWeatherInfo =
          await remoteDataSource.getWeatherInfo();
      try {
        return Right(todayWeatherInfo);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<LatestData>>> getLatestEvents() async {
    try {
      final List<LatestData> latestEventsInfo =
          await remoteDataSource.getLatestEvents();
      try {
        return Right(latestEventsInfo);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
