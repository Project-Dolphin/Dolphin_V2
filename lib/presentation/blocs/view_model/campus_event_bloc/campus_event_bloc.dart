import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_holiday/response_holiday_data_dto.dart';
import 'package:oceanview/domain/usecases/get_holiday_event.dart';
import 'package:oceanview/domain/usecases/get_weekday_event.dart';

part 'campus_event_event.dart';
part 'campus_event_state.dart';

class CampusEventBloc extends Bloc<CampusEventEvent, CampusEventState> {
  final GetWeekdayEvent getWeekdayEvent;
  final GetHolidayEvent getHolidayEvent;

  CampusEventBloc({
    required this.getWeekdayEvent,
    required this.getHolidayEvent,
  }) : super(CampusEventLoading()) {
    on<CampusEventInited>(_onAppLaunched);
  }

  Future<void> _onAppLaunched(
    CampusEventInited event,
    Emitter<CampusEventState> emit,
  ) async {
    List<WeekdayData> weekDayEvent = [];
    List<HolidayData> holidayEvent = [];

    final _weekDayEventResponse = await getWeekdayEvent.call();
    final _holiDayEventResponse = await getHolidayEvent.call();

    _weekDayEventResponse.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(CampusEventError('SETTING_ERROR'));
        } else {
          emit(CampusEventError('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        weekDayEvent = success;
      },
    );

    _holiDayEventResponse.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(CampusEventError('SETTING_ERROR'));
        } else {
          emit(CampusEventError('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        holidayEvent = success;
      },
    );
    emit(CampusEventLoaded(
      weekDayEvent: weekDayEvent,
      holidayEvent: holidayEvent,
    ));
  }
}
