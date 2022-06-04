part of 'running_bus_bloc.dart';

abstract class RunningBusPageState extends Equatable {}

class RunningBusLoading extends RunningBusPageState {
  @override
  List<Object?> get props => [];
}

class RunningBusErrored extends RunningBusPageState {
  RunningBusErrored({required this.message});
  final String message;

  @override
  List<Object?> get props => [];
}

class RunningBusLoaded extends RunningBusPageState {
  RunningBusLoaded({
    required this.busInfo,
  });
  final List<NodeInfoData> busInfo;
  @override
  List<Object?> get props => [busInfo];

  RunningBusLoaded copyWith({
    List<NodeInfoData>? busInfo,
  }) {
    return RunningBusLoaded(
      busInfo: busInfo ?? this.busInfo,
    );
  }
}
