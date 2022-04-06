part of 'campus_event_bloc.dart';

abstract class CampusEventState extends Equatable {}

class CampusEventLoading extends CampusEventState {
  @override
  List<Object?> get props => [];
}

class CampusEventLoaded extends CampusEventState {
  CampusEventLoaded({required this.weekDayEvent, required this.holidayEvent});
  final List<WeekdayData> weekDayEvent;
  final List<HolidayData> holidayEvent;
  @override
  List<Object?> get props => [];
}

class CampusEventError extends CampusEventState {
  final String message;

  CampusEventError(this.message);

  @override
  List<Object?> get props => [message];
}
