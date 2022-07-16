part of 'line_88_bloc.dart';

abstract class Line88State extends Equatable {}

class Line88Loading extends Line88State {
  @override
  List<Object?> get props => [];
}

class Line88LoadedWithBusInfo extends Line88State {
  Line88LoadedWithBusInfo({
    required this.busInfo,
    required this.selectedBusStop,
  });

  final NodeInfoData busInfo;
  final BUS_STOP selectedBusStop;

  Line88LoadedWithBusInfo copyWith({
    BUS_STOP? selectedBusStop,
    NodeInfoData? busInfo,
  }) {
    return Line88LoadedWithBusInfo(
      selectedBusStop: selectedBusStop ?? this.selectedBusStop,
      busInfo: busInfo ?? this.busInfo,
    );
  }

  @override
  List<Object?> get props => [busInfo];
}

class Line88LoadedWithEmptyList extends Line88State {
  Line88LoadedWithEmptyList();

  @override
  List<Object?> get props => [];
}

class Line88Error extends Line88State {
  final String message;

  Line88Error(this.message);

  @override
  List<Object?> get props => [message];
}
