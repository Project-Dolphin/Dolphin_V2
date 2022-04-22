part of 'diet_page_bloc.dart';

class DietPageState extends Equatable {
  const DietPageState({required this.selectedDietTab});
  final DietTab selectedDietTab;
  @override
  List<Object?> get props => [selectedDietTab];

  DietPageState copyWith({
    DietTab? selectedDietTab,
  }) {
    return DietPageState(
      selectedDietTab: selectedDietTab ?? this.selectedDietTab,
    );
  }
}
