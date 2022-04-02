part of 'city_bus_bloc.dart';

abstract class CityBusState extends Equatable {}

class LoadingState extends CityBusState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends CityBusState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends CityBusState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
