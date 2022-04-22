part of 'campus_event_bloc.dart';

abstract class CampusEventEvent extends Equatable {}

class CampusEventInited extends CampusEventEvent {
  @override
  List<Object?> get props => [];
}

class DateChanged extends CampusEventEvent {
  DateChanged({required this.day});
  final int day;
  @override
  List<Object?> get props => [];
}

class MonthChanged extends CampusEventEvent {
  MonthChanged({required this.month});
  final int month;
  @override
  List<Object?> get props => [];
}
