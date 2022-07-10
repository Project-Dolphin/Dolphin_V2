part of 'campus_event_bloc.dart';

abstract class CampusEventState extends Equatable {}

class CampusEventLoading extends CampusEventState {
  @override
  List<Object?> get props => [];
}

class CampusEventLoaded extends CampusEventState {
  CampusEventLoaded({
    required this.calendarData,
    required this.eventList,
    DateTime? today,
    DateTime? selectedDay,
  })  : today = today ?? DateTime.now(),
        selectedDay = selectedDay ?? DateTime.now();
  final List<CalendarSumamryWrapper> calendarData;
  final List<WeekdayData> eventList;
  final DateTime selectedDay;
  final DateTime? today;
  @override
  List<Object?> get props => [calendarData, eventList, selectedDay, today];

  @override
  String toString() {
    return 'calendarData : $calendarData\n selectedDay : $selectedDay\n today : $today';
  }

  CampusEventLoaded copyWith({
    List<CalendarSumamryWrapper>? calendarData,
    List<WeekdayData>? eventList,
    DateTime? today,
    DateTime? selectedDay,
  }) {
    return CampusEventLoaded(
      calendarData: calendarData ?? this.calendarData,
      eventList: eventList ?? this.eventList,
      selectedDay: selectedDay ?? this.selectedDay,
      today: today ?? this.today,
    );
  }
}

class CampusEventError extends CampusEventState {
  final String message;

  CampusEventError(this.message);

  @override
  List<Object?> get props => [message];
}
