part of 'campus_event_bloc.dart';

abstract class CampusEventEvent extends Equatable {}

class PageInited extends CampusEventEvent {
  @override
  List<Object?> get props => [];
}

class RefreshBusEvent extends CampusEventEvent {
  @override
  List<Object?> get props => [];
}
