part of 'line_30_bloc.dart';

abstract class Line30Event extends Equatable {}

class FetchLine30Info extends Line30Event {
  @override
  List<Object?> get props => [];
}

class Refresh30Info extends Line30Event {
  @override
  List<Object?> get props => [];
}

class Change30Node extends Line30Event {
  Change30Node(this.changedNode);

  final BUS_STOP changedNode;

  @override
  List<Object> get props => [changedNode];
}
