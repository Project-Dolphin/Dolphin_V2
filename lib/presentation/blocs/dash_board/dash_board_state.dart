part of 'dash_board_bloc.dart';

abstract class DashBoardState extends Equatable {}

class LoadingState extends DashBoardState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends DashBoardState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends DashBoardState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
