import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/calendar_class.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_data_dto.dart';
import 'package:oceanview/domain/usecases/get_holiday_event.dart';
import 'package:oceanview/domain/usecases/get_weekday_event_with_month.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/calendar_summary.dart';

import 'calendar_wrapper.dart';

part 'campus_event_event.dart';
part 'campus_event_state.dart';

class CampusEventBloc extends Bloc<CampusEventEvent, CampusEventState> {
  final GetWeekdayEventWithMonth getWeekdayEvent;
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
  }) : super(CampusEventLoading()) {
    on<CampusEventInited>(_onAppLaunched);
    on<DateChanged>(_onDateChanged);
    on<MonthChanged>(_onMonthChanged);
  }

  Future<Either<Failure, List<WeekdayData>>> async1() async {
    return await getWeekdayEvent.call(nodeParam);
  }

  Future<void> _onAppLaunched(
    CampusEventInited event,
    Emitter<CampusEventState> emit,
  ) async {
    List<WeekdayData> eventList = <WeekdayData>[];
    List<DateTime> limits = calendarBase.getCalendarLimit();
    firstDay = limits.first;
    lastDay = limits.last;

    List<CalendarSumamryWrapper> weekDayEvent =
        List<CalendarSumamryWrapper>.generate(
      32,
      (index) => CalendarSumamryWrapper(index: index, data: []),
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
        (success) async* {
          logger.d(success);
          eventList = success;
          for (var e in eventList) {
            final List<int> dateRange = getRange(e);

            logger.d(dateRange);

            dateRange.map(
              (index) => weekDayEvent[index].data.add(
                    CalendarSumamry.fromWeekdayData(
                      e,
                    ),
                  ),
            );
          }
        },
      );

      emit(CampusEventLoaded(
        eventList: eventList,
        calendarData: weekDayEvent,
      ));
    });
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

    logger.d(event.month);

    if (state is CampusEventLoaded) {
      final DateTime changedDate = DateTime(
        state.selectedDay.year,
        state.selectedDay.month + event.month,
        1,
      );
      logger.d(firstDay);
      logger.d(lastDay);
      logger.d(changedDate);
      if (changedDate.isAfter(firstDay) && changedDate.isBefore(lastDay)) {
        emit(state.copyWith(selectedDay: changedDate));
      }
    }
  }

  List<int> getRange(WeekdayData data) {
    int startIndex = int.parse(data.term?.startedAt.split('-').last ?? '99');
    int endIndex = int.parse(data.term?.endedAt.split('-').last ?? '99');

    if (data.term != null &&
        data.term?.startedAt.split('-')[1] !=
            data.term?.endedAt.split('-')[1]) {
      endIndex += CalendarUtils().endDays(DateTime.parse(data.term!.startedAt));
    }

    // null이면 일단 99로 처리할 것
    if (startIndex != 99 && endIndex != 99) {
      return [for (int i = startIndex; i <= endIndex; i++) i];
    } else {
      return [];
    }
  }
}
