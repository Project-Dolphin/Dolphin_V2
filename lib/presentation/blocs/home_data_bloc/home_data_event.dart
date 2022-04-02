part of 'home_data_bloc.dart';

abstract class HomeDataEvent extends Equatable {}

class HomeDataInited extends HomeDataEvent {
  @override
  List<Object?> get props => [];
}

class RefreshBusEvent extends HomeDataEvent {
  @override
  List<Object?> get props => [];
}
