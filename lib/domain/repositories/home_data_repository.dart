import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_latest/response_calendar_latest_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';

abstract class HomeDataRepository {
  Future<Either<Failure, WeatherData>> getTodayWheater();
  Future<Either<Failure, List<NoticeData>>> getNotices();
  Future<Either<Failure, List<LatestData>>> getLatestEvents();
}
