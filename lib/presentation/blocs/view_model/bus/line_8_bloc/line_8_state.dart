part of 'line_8_bloc.dart';

abstract class Line8State extends Equatable {}

class Line8Loading extends Line8State {
  @override
  List<Object?> get props => [];
}

class Line8LoadedWithBusInfo extends Line8State {
  Line8LoadedWithBusInfo({
    required this.selectedBusStop,
    required this.busInfo,
  });

  final NodeInfoData busInfo;
  final BUS_STOP selectedBusStop;

  Line8LoadedWithBusInfo copyWith({
    BUS_STOP? selectedBusStop,
    NodeInfoData? busInfo,
  }) {
    return Line8LoadedWithBusInfo(
      selectedBusStop: selectedBusStop ?? this.selectedBusStop,
      busInfo: busInfo ?? this.busInfo,
    );
  }

  @override
  List<Object?> get props => [busInfo];
}

class Line8LoadedWithEmptyList extends Line8State {
  Line8LoadedWithEmptyList();

  @override
  List<Object?> get props => [];
}

class Line8Error extends Line8State {
  final String message;

  Line8Error(this.message);

  @override
  List<Object?> get props => [message];
}
