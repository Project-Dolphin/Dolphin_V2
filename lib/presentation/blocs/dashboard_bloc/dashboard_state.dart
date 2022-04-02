part of 'dashboard_bloc.dart';

class DashBoardState {}

class DashBoardLoading extends DashBoardState {
  @override
  List<Object?> get props => [];
}

class DashBoardLoaded extends DashBoardState {
  DashBoardLoaded({required this.state, required this.selectedTab});
  final DateState state;
  final RootTab selectedTab;
  @override
  List<Object?> get props => [];

  DashBoardLoaded copyWith({
    DateState? state,
    RootTab? selectedTab,
  }) {
    return DashBoardLoaded(
      state: state ?? this.state,
      selectedTab: selectedTab ?? this.selectedTab,
    );
  }
}
