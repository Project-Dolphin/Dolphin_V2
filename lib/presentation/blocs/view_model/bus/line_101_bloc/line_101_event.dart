part of 'line_101_bloc.dart';

abstract class Line101Event extends Equatable {}

class FetchLine101Info extends Line101Event {
  @override
  List<Object?> get props => [];
}

class Refresh101Info extends Line101Event {
  @override
  List<Object?> get props => [];
}

class Change101Node extends Line101Event {
  Change101Node(this.changedNode);

  final BUS_STOP changedNode;

  @override
  List<Object> get props => [changedNode];
}
