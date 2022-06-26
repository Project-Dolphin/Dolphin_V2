part of 'line_30_bloc.dart';

abstract class Line30State extends Equatable {}

class Line30Loading extends Line30State {
  @override
  List<Object?> get props => [];
}

class Line30LoadedWithBusInfo extends Line30State {
  Line30LoadedWithBusInfo({required this.busInfo});

  final NodeInfoData busInfo;

  @override
  List<Object?> get props => [busInfo];
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
