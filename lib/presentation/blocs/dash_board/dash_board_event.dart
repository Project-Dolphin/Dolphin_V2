part of 'dash_board_bloc.dart';

abstract class DashBoardEvent extends Equatable {}

class PageInited extends DashBoardEvent {
  @override
  List<Object?> get props => [];
}

class RefreshBusEvent extends DashBoardEvent {
  @override
  List<Object?> get props => [];
}
