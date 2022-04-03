part of 'diet_data_bloc.dart';

abstract class DietDataState extends Equatable {}

class DietLoading extends DietDataState {
  @override
  List<Object?> get props => [];
}

class DietLoaded extends DietDataState {
  DietLoaded({required this.dormData});
  final DormData dormData;
  @override
  List<Object?> get props => [];
}

class DietError extends DietDataState {
  final String message;

  DietError(this.message);

  @override
  List<Object?> get props => [message];
}