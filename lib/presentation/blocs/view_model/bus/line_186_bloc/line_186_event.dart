part of 'line_186_bloc.dart';

abstract class Line186Event extends Equatable {}

class FetchLine186Info extends Line186Event {
  @override
  List<Object?> get props => [];
}

class Refresh186Info extends Line186Event {
  @override
  List<Object?> get props => [];
}

class Change186Node extends Line186Event {
  Change186Node(this.changedNode);

  final BUS_STOP changedNode;

  @override
  List<Object> get props => [changedNode];
}
