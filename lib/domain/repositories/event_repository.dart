import 'package:dartz/dartz.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_all_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_month_dto.dart';
import 'package:oceanview/core/network/response/endpoint_holiday/response_holiday_data_dto.dart';

abstract class EventRepository {
  Future<Either<Failure, CalendarAllWrapper>> getWeekDayEvent();
  Future<Either<Failure, CalendarMonthWrapper>> getWeekDayEventWithMonth(
    int year,
    int month,
  );
  Future<Either<Failure, List<HolidayData>>> getHolidayEvent();
}
