part of 'line_190_bloc.dart';

abstract class Line190State extends Equatable {}

class Line190Loading extends Line190State {
  @override
  List<Object?> get props => [];
}

class Line190LoadedWithBusInfo extends Line190State {
  Line190LoadedWithBusInfo({
    required this.busInfo,
    required this.selectedBusStop,
  });

  final NodeInfoData busInfo;
  final BUS_STOP selectedBusStop;

  Line190LoadedWithBusInfo copyWith({
    BUS_STOP? selectedBusStop,
    NodeInfoData? busInfo,
  }) {
    return Line190LoadedWithBusInfo(
      selectedBusStop: selectedBusStop ?? this.selectedBusStop,
      busInfo: busInfo ?? this.busInfo,
    );
  }

  @override
  List<Object?> get props => [busInfo];
}

class Line190LoadedWithDepartInfo extends Line190State {
  Line190LoadedWithDepartInfo({
    required this.busInfo,
    required this.selectedBusStop,
  });

  final List<DepartBusInfo> busInfo;
  final BUS_STOP selectedBusStop;

  Line190LoadedWithDepartInfo copyWith({
    BUS_STOP? selectedBusStop,
    List<DepartBusInfo>? busInfo,
  }) {
    return Line190LoadedWithDepartInfo(
      selectedBusStop: selectedBusStop ?? this.selectedBusStop,
      busInfo: busInfo ?? this.busInfo,
    );
  }

  @override
  List<Object?> get props => [busInfo];
}

class Line190LoadedWithEmptyList extends Line190State {
  Line190LoadedWithEmptyList();

  @override
  List<Object?> get props => [];
}

class Line190Error extends Line190State {
  final String message;

  Line190Error(this.message);

  @override
  List<Object?> get props => [message];
}
