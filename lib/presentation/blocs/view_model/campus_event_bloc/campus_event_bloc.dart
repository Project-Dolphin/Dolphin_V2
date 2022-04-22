import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/calendar_class.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_v2/response_calendar_data_v2_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_v2/response_holiday_data_v2_dto.dart';
import 'package:oceanview/domain/usecases/get_holiday_event.dart';
import 'package:oceanview/domain/usecases/get_weekday_event.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/calendar_summary.dart';

import 'calendar_wrapper.dart';

part 'campus_event_event.dart';
part 'campus_event_state.dart';

class CampusEventBloc extends Bloc<CampusEventEvent, CampusEventState> {
  final GetWeekdayEvent getWeekdayEvent;
  final GetHolidayEvent getHolidayEvent;

  final CalendarUtils calendarBase = CalendarUtils();

  CampusEventBloc({
    required this.getWeekdayEvent,
    required this.getHolidayEvent,
  }) : super(CampusEventLoading()) {
    on<CampusEventInited>(_onAppLaunched);
    on<DateChanged>(_onDateChanged);
    on<MonthChanged>(_onMonthChanged);
  }

  Future<Either<Failure, List<WeekdayData>>> async1() async {
    return await getWeekdayEvent.call();
  }

  Future<String> readCalendar() async {
    final String response =
        await rootBundle.loadString('assets/dummy_calendar.json');

    return response;
  }

  Future<String> readHoliday() async {
    final String response =
        await rootBundle.loadString('assets/dummy_holiday.json');

    return response;
  }

  Future<void> _onAppLaunched(
    CampusEventInited event,
    Emitter<CampusEventState> emit,
  ) async {
    List<WeekdayData> eventList = <WeekdayData>[];
    final String dummyCalendarResponse = await readCalendar();
    final String dummyHolidayResponse = await readHoliday();
    final calendarData = await json.decode(dummyCalendarResponse);
    final holidayData = await json.decode(dummyHolidayResponse);

    List<CalendarSumamryWrapper> weekDayEvent =
        List<CalendarSumamryWrapper>.generate(
      32,
      (index) => CalendarSumamryWrapper(index: index, data: []),
    );

    calendarData['data'].forEach(
      (e) {
        int index = int.parse(e['term'].substring(6));
        weekDayEvent[index].data.add(CalendarSumamry.fromCalendarData(
              CalendarDataV2.fromJson(e),
            ));
      },
    );

    holidayData['data'].forEach(
      (e) {
        logger.d(e);
        int index = int.parse(e['term'].substring(6));
        weekDayEvent[index].data.add(CalendarSumamry.fromHolidayData(
              HolidayDataV2.fromJson(e),
            ));
      },
    );

    await Future.wait([async1()]).then((data) {
      data.first.fold(
        (failure) async* {
          if (failure is CacheFailure) {
            emit(CampusEventError('SETTING_ERROR'));
          } else {
            emit(CampusEventError('NO_CONNECTION_ERROR'));
          }
        },
        (success) {
          eventList = success;
        },
      );
    });

    emit(CampusEventLoaded(
      eventList: eventList,
      calendarData: weekDayEvent,
    ));
  }

  Future<void> _onDateChanged(
    DateChanged event,
    Emitter<CampusEventState> emit,
  ) async {
    final state = this.state;

    logger.d(state);
    logger.d(event.day);

    if (state is CampusEventLoaded) {
      final DateTime changedDate =
          DateTime(state.selectedDay.year, state.selectedDay.month, event.day);
      logger.d(changedDate);
      emit(state.copyWith(selectedDay: changedDate));
    }
  }

  Future<void> _onMonthChanged(
    MonthChanged event,
    Emitter<CampusEventState> emit,
  ) async {
    final state = this.state;

    logger.d(event.month);

    if (state is CampusEventLoaded) {
      final DateTime changedDate = DateTime(
        state.selectedDay.year,
        state.selectedDay.month + event.month,
        1,
      );
      emit(state.copyWith(selectedDay: changedDate));
    }
  }

  int endDays(DateTime date) {
    switch (date.month) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        return 31;
      case 2:
        if (date.year % 4 == 0) {
          return 29;
        }
        return 28;
      case 4:
      case 6:
      case 9:
      case 11:
        return 30;

      default:
        return 0;
    }
  }

  // 기존 api 리스폰스
  // Future<void> _onAppLaunched(
  //   CampusEventInited event,
  //   Emitter<CampusEventState> emit,
  // ) async {
  //   List<CalendarDataV2> weekDayEvent = [];
  //   List<HolidayDataV2> holidayEvent = [];

  //   final _weekDayEventResponse = await getWeekdayEvent.call();
  //   final _holiDayEventResponse = await getHolidayEvent.call();

  //   _weekDayEventResponse.fold(
  //     (failure) async* {
  //       if (failure is CacheFailure) {
  //         emit(CampusEventError('SETTING_ERROR'));
  //       } else {
  //         emit(CampusEventError('NO_CONNECTION_ERROR'));
  //       }
  //     },
  //     (success) {
  //       weekDayEvent = success;
  //     },
  //   );

  //   _holiDayEventResponse.fold(
  //     (failure) async* {
  //       if (failure is CacheFailure) {
  //         emit(CampusEventError('SETTING_ERROR'));
  //       } else {
  //         emit(CampusEventError('NO_CONNECTION_ERROR'));
  //       }
  //     },
  //     (success) {
  //       holidayEvent = success;
  //     },
  //   );
  //   emit(CampusEventLoaded(
  //     weekDayEvent: weekDayEvent,
  //     holidayEvent: holidayEvent,
  //   ));
  // }
}
