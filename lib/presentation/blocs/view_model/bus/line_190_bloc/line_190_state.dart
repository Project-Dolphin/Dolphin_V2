part of 'line_190_bloc.dart';

abstract class Line190State extends Equatable {}

class Line190Loading extends Line190State {
  @override
  List<Object?> get props => [];
}

class Line190LoadedWithBusInfo extends Line190State {
  Line190LoadedWithBusInfo({required this.busInfo});

  final NodeInfoData busInfo;

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