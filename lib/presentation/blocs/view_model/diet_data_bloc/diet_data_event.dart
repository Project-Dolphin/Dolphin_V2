part of 'diet_data_bloc.dart';

abstract class DietDataEvent extends Equatable {}

class DormDataInited extends DietDataEvent {
  @override
  List<Object?> get props => [];
}

class RefreshDietDataEvent extends DietDataEvent {
  @override
  List<Object?> get props => [];
}
