part of 'diet_data_bloc.dart';

abstract class DietDataEvent extends Equatable {}

class DormDataInited extends DietDataEvent {
  @override
  List<Object?> get props => [];
}

class DormTabChanged extends DietDataEvent {
  DormTabChanged(this.selectedDietTab);

  final DietTab selectedDietTab;

  @override
  List<Object?> get props => [selectedDietTab];
}

class RefreshDietDataEvent extends DietDataEvent {
  @override
  List<Object?> get props => [];
}
