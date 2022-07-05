part of 'line_30_bloc.dart';

abstract class Line30State extends Equatable {}

class Line30Loading extends Line30State {
  @override
  List<Object?> get props => [];
}

class Line30LoadedWithBusInfo extends Line30State {
  Line30LoadedWithBusInfo({
    required this.selectedBusStop,
    required this.busInfo,
  });

  final NodeInfoData busInfo;
  final BUS_STOP selectedBusStop;

  Line30LoadedWithBusInfo copyWith({
    BUS_STOP? selectedBusStop,
    NodeInfoData? busInfo,
  }) {
    return Line30LoadedWithBusInfo(
      selectedBusStop: selectedBusStop ?? this.selectedBusStop,
      busInfo: busInfo ?? this.busInfo,
    );
  }

  @override
  List<Object?> get props => [busInfo, selectedBusStop];
}

class Line30LoadedWithEmptyList extends Line30State {
  Line30LoadedWithEmptyList();

  @override
  List<Object?> get props => [];
}

class Line30Error extends Line30State {
  final String message;

  Line30Error(this.message);

  @override
  List<Object?> get props => [message];
}
