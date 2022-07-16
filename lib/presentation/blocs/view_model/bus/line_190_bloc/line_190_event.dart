part of 'line_190_bloc.dart';

abstract class Line190Event extends Equatable {}

class FetchLine190Info extends Line190Event {
  @override
  List<Object?> get props => [];
}

class Refresh190Info extends Line190Event {
  @override
  List<Object?> get props => [];
}

class Change190Node extends Line190Event {
  Change190Node(this.changedNode);

  final BUS_STOP changedNode;

  @override
  List<Object> get props => [changedNode];
}
