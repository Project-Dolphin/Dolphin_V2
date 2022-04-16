part of 'campus_event_bloc.dart';

abstract class CampusEventState extends Equatable {}

class CampusEventLoading extends CampusEventState {
  @override
  List<Object?> get props => [];
}

class CampusEventLoaded extends CampusEventState {
  CampusEventLoaded({
    required this.calendarData,
    DateTime? today,
    DateTime? selectedDay,
  })  : today = today ?? DateTime.now(),
        selectedDay = selectedDay ?? DateTime.now();
  final List<CalendarSumamryWrapper> calendarData;
  final DateTime selectedDay;
  final DateTime today;
  @override
  List<Object?> get props => [calendarData, selectedDay, today];

  @override
  String toString() {
    return 'calendarData : $calendarData\n selectedDay : $selectedDay\n today : $today';
  }

  CampusEventLoaded copyWith({
    List<CalendarSumamryWrapper>? calendarData,
    DateTime? today,
    DateTime? selectedDay,
  }) {
    return CampusEventLoaded(
      calendarData: calendarData ?? this.calendarData,
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
