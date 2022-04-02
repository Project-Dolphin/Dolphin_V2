part of 'shuttle_bus_bloc.dart';

abstract class ShuttleBusState extends Equatable {}

class LoadingState extends ShuttleBusState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends ShuttleBusState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends ShuttleBusState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
