part of 'meal_data_bloc.dart';

abstract class MealDataEvent extends Equatable {}

class ShuttleBusInited extends MealDataEvent {
  @override
  List<Object?> get props => [];
}

class RefreshMealDataEvent extends MealDataEvent {
  @override
  List<Object?> get props => [];
}
