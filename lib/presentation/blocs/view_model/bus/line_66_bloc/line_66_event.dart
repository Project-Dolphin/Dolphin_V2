part of 'line_66_bloc.dart';

abstract class Line66Event extends Equatable {}

class FetchLine66Info extends Line66Event {
  @override
  List<Object?> get props => [];
}

class Refresh66Info extends Line66Event {
  @override
  List<Object?> get props => [];
}

class Change66Node extends Line66Event {
  Change66Node(this.changedNode);

  final BUS_STOP changedNode;

  @override
  List<Object> get props => [changedNode];
}
