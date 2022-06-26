part of 'line_8_bloc.dart';

abstract class Line8State extends Equatable {}

class Line8Loading extends Line8State {
  @override
  List<Object?> get props => [];
}

class Line8Loaded extends Line8State {
  @override
  List<Object?> get props => [];
}

class Line8Error extends Line8State {
  final String message;

  Line8Error(this.message);

  @override
  List<Object?> get props => [message];
}