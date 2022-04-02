part of 'meal_data_bloc.dart';

abstract class MealDataState extends Equatable {}

class LoadingState extends MealDataState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends MealDataState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends MealDataState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
