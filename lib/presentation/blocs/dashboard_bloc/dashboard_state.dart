part of 'dashboard_bloc.dart';

class DashBoardState extends Equatable {
  const DashBoardState({required this.state, required this.selectedTab});

  final DateState state;
  final RootTab selectedTab;
  @override
  List<Object?> get props => [selectedTab];

  DashBoardState copyWith({
    DateState? state,
    RootTab? selectedTab,
  }) {
    return DashBoardState(
      state: state ?? this.state,
      selectedTab: selectedTab ?? this.selectedTab,
    );
  }
}
