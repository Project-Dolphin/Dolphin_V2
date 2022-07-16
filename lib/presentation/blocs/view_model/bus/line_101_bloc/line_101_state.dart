part of 'line_101_bloc.dart';

abstract class Line101State extends Equatable {}

class Line101Loading extends Line101State {
  @override
  List<Object?> get props => [];
}

class Line101LoadedWithBusInfo extends Line101State {
  Line101LoadedWithBusInfo({
    required this.busInfo,
    required this.selectedBusStop,
  });

  final NodeInfoData busInfo;
  final BUS_STOP selectedBusStop;

  Line101LoadedWithBusInfo copyWith({
    BUS_STOP? selectedBusStop,
    NodeInfoData? busInfo,
  }) {
    return Line101LoadedWithBusInfo(
      selectedBusStop: selectedBusStop ?? this.selectedBusStop,
      busInfo: busInfo ?? this.busInfo,
    );
  }

  @override
  List<Object?> get props => [busInfo];
}

class Line101LoadedWithEmptyList extends Line101State {
  Line101LoadedWithEmptyList();

  @override
  List<Object?> get props => [];
}

class Line101Error extends Line101State {
  final String message;

  Line101Error(this.message);

  @override
  List<Object?> get props => [message];
}
