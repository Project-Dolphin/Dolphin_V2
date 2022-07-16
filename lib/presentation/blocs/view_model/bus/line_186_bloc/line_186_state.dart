part of 'line_186_bloc.dart';

abstract class Line186State extends Equatable {}

class Line186Loading extends Line186State {
  @override
  List<Object?> get props => [];
}

class Line186LoadedWithBusInfo extends Line186State {
  Line186LoadedWithBusInfo({
    required this.busInfo,
    required this.selectedBusStop,
  });

  final NodeInfoData busInfo;
  final BUS_STOP selectedBusStop;

  Line186LoadedWithBusInfo copyWith({
    BUS_STOP? selectedBusStop,
    NodeInfoData? busInfo,
  }) {
    return Line186LoadedWithBusInfo(
      selectedBusStop: selectedBusStop ?? this.selectedBusStop,
      busInfo: busInfo ?? this.busInfo,
    );
  }

  @override
  List<Object?> get props => [busInfo];
}

class Line186LoadedWithEmptyList extends Line186State {
  Line186LoadedWithEmptyList();

  @override
  List<Object?> get props => [];
}

class Line186Error extends Line186State {
  final String message;

  Line186Error(this.message);

  @override
  List<Object?> get props => [message];
}
