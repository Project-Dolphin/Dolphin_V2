part of 'running_bus_bloc.dart';

abstract class RunningBusPageEvent extends Equatable {}

class RunningBusPageInited extends RunningBusPageEvent {
  final int busNumber;

  RunningBusPageInited({int? initBusNumber}) : busNumber = initBusNumber ?? 190;
  @override
  List<Object?> get props => [];
}
