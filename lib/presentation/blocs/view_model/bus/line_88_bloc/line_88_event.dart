part of 'line_88_bloc.dart';

abstract class Line88Event extends Equatable {}

class FetchLine88Info extends Line88Event {
  @override
  List<Object?> get props => [];
}

class Refresh88Info extends Line88Event {
  @override
  List<Object?> get props => [];
}

class Change88Node extends Line88Event {
  Change88Node(this.changedNode);

  final BUS_STOP changedNode;

  @override
  List<Object> get props => [changedNode];
}
