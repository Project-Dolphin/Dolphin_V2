part of 'city_bus_bloc.dart';

abstract class CityBusEvent extends Equatable {}

class CityBusInited extends CityBusEvent {
  @override
  List<Object?> get props => [];
}

class RefreshCityBusEvent extends CityBusEvent {
  @override
  List<Object?> get props => [];
}
