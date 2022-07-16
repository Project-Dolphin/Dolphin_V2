part of 'line_66_bloc.dart';

abstract class Line66State extends Equatable {}

class Line66Loading extends Line66State {
  @override
  List<Object?> get props => [];
}

class Line66LoadedWithBusInfo extends Line66State {
  Line66LoadedWithBusInfo({
    required this.busInfo,
    required this.selectedBusStop,
  });

  final NodeInfoData busInfo;
  final BUS_STOP selectedBusStop;

  Line66LoadedWithBusInfo copyWith({
    BUS_STOP? selectedBusStop,
    NodeInfoData? busInfo,
  }) {
    return Line66LoadedWithBusInfo(
      selectedBusStop: selectedBusStop ?? this.selectedBusStop,
      busInfo: busInfo ?? this.busInfo,
    );
  }

  @override
  List<Object?> get props => [busInfo];
}

class Line66LoadedWithEmptyList extends Line66State {
  Line66LoadedWithEmptyList();

  @override
  List<Object?> get props => [];
}

class Line66Error extends Line66State {
  final String message;

  Line66Error(this.message);

  @override
  List<Object?> get props => [message];
}
