import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/calendar_class.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_all_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_month_dto.dart';
import 'package:oceanview/domain/usecases/get_holiday_event.dart';
import 'package:oceanview/domain/usecases/get_weekday_event.dart';
import 'package:oceanview/domain/usecases/get_weekday_event_with_month.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/calendar_summary.dart';

import 'calendar_wrapper.dart';

part 'campus_event_event.dart';
part 'campus_event_state.dart';

class CampusEventBloc extends Bloc<CampusEventEvent, CampusEventState> {
  final GetWeekdayEventWithMonth getWeekdayEvent;
  final GetWeekdayEvent getAllEvent;

  final GetHolidayEvent getHolidayEvent;
  late final DateTime firstDay;
  late final DateTime lastDay;

  final CalendarUtils calendarBase = CalendarUtils();

  SpecificCalendarParam nodeParam = SpecificCalendarParam(
    year: DateTime.now().year,
    month: DateTime.now().month,
  );

  CampusEventBloc({
    required this.getWeekdayEvent,
    required this.getHolidayEvent,
    required this.getAllEvent,
  }) : super(CampusEventLoading()) {
    on<CampusEventInited>(_onAppLaunched);
    on<DateChanged>(_onDateChanged);
    on<MonthChanged>(_onMonthChanged);
  }

  Future<Either<Failure, CalendarMonthWrapper>>
      fetchSpecificMonthEvent() async {
    return await getWeekdayEvent.call(nodeParam);
  }

  Future<Either<Failure, CalendarAllWrapper>> fetchAllEvent() async {
    return await getAllEvent.call();
  }

  Future<void> _onAppLaunched(
    CampusEventInited event,
    Emitter<CampusEventState> emit,
  ) async {
    // eventList
    // 학교 연 행사 전부 다 모아놓은 list임

    List<DateTime> limits = calendarBase.getCalendarLimit();
    firstDay = limits.first;
    lastDay = limits.last;

    final apiResult = await requestServerData();

    emit(CampusEventLoaded(
      eventList: apiResult.eventList,
      calendarData: apiResult.calendarData,
    ));
  }

  Future<void> _onDateChanged(
    DateChanged event,
    Emitter<CampusEventState> emit,
  ) async {
    final state = this.state;

    if (state is CampusEventLoaded) {
      final DateTime changedDate =
          DateTime(state.selectedDay.year, state.selectedDay.month, event.day);
      emit(state.copyWith(selectedDay: changedDate));
    }
  }

  Future<void> _onMonthChanged(
    MonthChanged event,
    Emitter<CampusEventState> emit,
  ) async {
    final state = this.state;

    if (state is CampusEventLoaded) {
      final DateTime changedDate = DateTime(
        state.selectedDay.year,
        state.selectedDay.month + event.month,
        1,
      );

      nodeParam =
          nodeParam.copyWith(year: changedDate.year, month: changedDate.month);

      final apiResult = await requestServerData();

      emit(state.copyWith(
        calendarData: apiResult.calendarData,
        selectedDay: changedDate,
      ));

      // if (changedDate.isAfter(firstDay) && changedDate.isBefore(lastDay)) {
      //   emit(state.copyWith());
      // }
    }
  }

  List<int> getRange(WeekdayData data) {
    int startIndex = int.parse(data.term?.startedAt.split('-').last ?? '99');
    int endIndex = int.parse(data.term?.endedAt.split('-').last ?? '99');
    List<int> dateInfoList =
        data.term!.startedAt.split('-').map((e) => int.parse(e)).toList();
    int lastDay =
        CalendarUtils().endDays(DateTime(dateInfoList[0], dateInfoList[1]));

    if (int.parse(data.term!.startedAt.split('-')[1]) != nodeParam.month) {
      return [];
    }

    if (data.term != null &&
        data.term?.startedAt.split('-')[1] !=
            data.term?.endedAt.split('-')[1]) {
      endIndex += lastDay;
    }

    // null이면 일단 99로 처리할 것
    if (startIndex != 99 && endIndex != 99) {
      return [for (int i = startIndex; i <= min(lastDay, endIndex); i++) i];
    } else {
      return [];
    }
  }

  Future<ServerData> requestServerData() async {
    List<WeekdayData> eventList = <WeekdayData>[];
    List<CalendarSumamryWrapper> calendarData =
        List<CalendarSumamryWrapper>.generate(
      32,
      (index) => CalendarSumamryWrapper(index: index, data: []),
    );

    await Future.wait([fetchSpecificMonthEvent(), fetchAllEvent()])
        .then((data) async {
      data[0].fold(
        (failure) {
          logger.d(failure);
        },
        (success) {
          for (WeekdayData e in (success as CalendarMonthWrapper).calendar) {
            final List<int> dateRange = getRange(e);

            // TODO : 이거 진짜 꼭 지울거임,, 너무 보기 싫음
            for (int index in dateRange) {
              calendarData[index] = calendarData[index].copyWith(data: [
                ...calendarData[index].data,
                CalendarSumamry.fromWeekdayData(
                  e,
                ),
              ]);
            }
          }
        },
      );

      data[1].fold(
        (failure) {
          logger.d(failure);
        },
        (success) {
          eventList = (success as CalendarAllWrapper).calendar;
        },
      );
    });

    return ServerData(eventList, calendarData);
  }
}

class ServerData {
  ServerData(this.eventList, this.calendarData);

  final List<WeekdayData> eventList;
  final List<CalendarSumamryWrapper> calendarData;
}
