part of 'diet_data_bloc.dart';

abstract class DietDataState extends Equatable {}

class DietLoading extends DietDataState {
  @override
  List<Object?> get props => [];
}

class DietLoaded extends DietDataState {
  DietLoaded({required this.cafeData, required this.dormData});
  final DietSocietyWrapper cafeData;
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
