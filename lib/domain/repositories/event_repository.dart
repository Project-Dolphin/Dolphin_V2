import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_holiday/response_holiday_data_dto.dart';

abstract class EventRepository {
  Future<Either<Failure, List<WeekdayData>>> getWeekDayEvent();
  Future<Either<Failure, List<HolidayData>>> getHolidayEvent();
}
