part of 'line_8_bloc.dart';

abstract class Line8Event extends Equatable {}

class FetchLine8Info extends Line8Event {
  @override
  List<Object?> get props => [];
}

class Refresh8Info extends Line8Event {
  @override
  List<Object?> get props => [];
}

class Change8Node extends Line8Event {
  Change8Node(this.changedNode);

  final BUS_STOP changedNode;

  @override
  List<Object> get props => [changedNode];
}
