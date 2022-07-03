import 'package:oceanview/core/error/exceptions.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_all_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_month_dto.dart';
import 'package:oceanview/core/network/response/endpoint_holiday/response_holiday_data_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';

abstract class EventRemoteDataSource {
  // TODO : Add Specific Node Api
  Future<CalendarAllWrapper> getWeekdayCalendarData();
  Future<CalendarMonthWrapper> getWeekdayCalendarDataWithMonth(
    int year,
    int month,
  );
  Future<List<HolidayData>> getHolidayCalendarData();
}

class EventRemoteDataSourceImpl extends EventRemoteDataSource {
  final RestClient restClientService;

  EventRemoteDataSourceImpl({required this.restClientService});

  @override
  Future<CalendarAllWrapper> getWeekdayCalendarData() async {
    final response = await restClientService.getWeekdayCalendarData();
    // if (response.calendar.isEmpty) {
    //   throw ServerException();
    // }

    return response;
  }

  @override
  Future<List<HolidayData>> getHolidayCalendarData() async {
    final response = await restClientService.getHolidayCalendarData();
    if (response.data?.isEmpty ?? true) {
      throw ServerException();
    }

    return response.data!;
  }

  @override
  Future<CalendarMonthWrapper> getWeekdayCalendarDataWithMonth(
    int year,
    int month,
  ) async {
    final response =
        await restClientService.getWeekdayCalendarDataWithMonth(year, month);
    // if (response.data?.isEmpty ?? true) {
    //   throw ServerException();
    // }

    return response;
  }
}
