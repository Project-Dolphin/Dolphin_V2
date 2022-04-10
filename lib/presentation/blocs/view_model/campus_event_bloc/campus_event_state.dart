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
  List<Object?> get props => [];
}

class CampusEventError extends CampusEventState {
  final String message;

  CampusEventError(this.message);

  @override
  List<Object?> get props => [message];
}
