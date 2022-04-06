part of 'city_bus_bloc.dart';

abstract class CityBusState extends Equatable {}

class CityBusLoading extends CityBusState {
  @override
  List<Object?> get props => [];
}

class CityBusLoaded extends CityBusState {
  @override
  List<Object?> get props => [];
}

class CityBusError extends CityBusState {
  final String message;

  CityBusError(this.message);

  @override
  List<Object?> get props => [message];
}
