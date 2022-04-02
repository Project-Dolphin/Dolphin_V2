part of 'dashboard_bloc.dart';

abstract class DashBoardEvent extends Equatable {}

class DashBoardInited extends DashBoardEvent {
  @override
  List<Object?> get props => [];
}

class RootTabSelected extends DashBoardEvent {
  RootTabSelected({required this.selectedTab});
  final RootTab selectedTab;
  @override
  List<Object?> get props => [];
}
