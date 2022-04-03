part of 'diet_page_bloc.dart';

class DietPageState {
  DietPageState({required this.selectedDietTab});
  final DietTab selectedDietTab;
  @override
  List<Object?> get props => [];

  DietPageState copyWith({
    DietTab? selectedDietTab,
  }) {
    return DietPageState(
      selectedDietTab: selectedDietTab ?? this.selectedDietTab,
    );
  }
}
