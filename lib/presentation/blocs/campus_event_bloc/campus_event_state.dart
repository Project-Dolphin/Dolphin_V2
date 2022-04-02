part of 'campus_event_bloc.dart';

abstract class CampusEventState extends Equatable {}

class LoadingState extends CampusEventState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends CampusEventState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends CampusEventState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
