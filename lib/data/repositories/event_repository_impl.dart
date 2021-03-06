import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_all_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_month_dto.dart';
import 'package:oceanview/core/network/response/endpoint_holiday/response_holiday_data_dto.dart';
import 'package:oceanview/data/datasources/event/event_local_datasource.dart';
import 'package:oceanview/data/datasources/event/event_remote_datasource.dart';
import 'package:oceanview/domain/repositories/event_repository.dart';

class EventRepositoryImpl implements EventRepository {
  final EventRemoteDataSource remoteDataSource;
  final EventLocalDataSource localDataSource;

  EventRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });
  @override
  Future<Either<Failure, CalendarAllWrapper>> getWeekDayEvent() async {
    try {
      final CalendarAllWrapper weekdayDataList =
          await remoteDataSource.getWeekdayCalendarData();
      try {
        await localDataSource.busLocalDummy();

        return Right(weekdayDataList);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<HolidayData>>> getHolidayEvent() async {
    try {
      final List<HolidayData> holidayDataList =
          await remoteDataSource.getHolidayCalendarData();
      try {
        await localDataSource.busLocalDummy();

        return Right(holidayDataList);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, CalendarMonthWrapper>> getWeekDayEventWithMonth(
    int year,
    int month,
  ) async {
    try {
      final CalendarMonthWrapper holidayDataList =
          await remoteDataSource.getWeekdayCalendarDataWithMonth(year, month);
      try {
        await localDataSource.busLocalDummy();

        return Right(holidayDataList);
      } on CacheException {
        return Left(CacheFailure());
      }
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
