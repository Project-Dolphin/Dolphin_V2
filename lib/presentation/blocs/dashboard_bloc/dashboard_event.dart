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

class RootTabSelectedV2 extends DashBoardEvent {
  RootTabSelectedV2({required this.index});
  final int index;
  @override
  List<Object?> get props => [];
}

class PageSlided extends DashBoardEvent {
  PageSlided(this.selectedPage);
  final int selectedPage;
  @override
  List<Object?> get props => [];
}
