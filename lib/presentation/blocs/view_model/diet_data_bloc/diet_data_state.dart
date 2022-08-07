part of 'diet_data_bloc.dart';

abstract class DietDataState extends Equatable {}

class DietLoading extends DietDataState {
  @override
  List<Object?> get props => [];
}

class DietLoaded extends DietDataState {
  DietLoaded({
    this.morning = const <DietData>[],
    this.lunch = const <DietData>[],
    this.dinner = const <DietData>[],
    this.dorm,
  });
  final List<DietData> morning;
  final List<DietData> lunch;
  final List<DietData> dinner;
  final DietDormWrapper? dorm;

  DietLoaded copyWith({
    List<DietData>? morning,
    List<DietData>? lunch,
    List<DietData>? dinner,
    DietDormWrapper? dorm,
  }) {
    return DietLoaded(
      morning: morning ?? this.morning,
      lunch: lunch ?? this.lunch,
      dinner: dinner ?? this.dinner,
      dorm: dorm ?? this.dorm,
    );
  }

  @override
  List<Object?> get props => [morning, lunch, dinner, dorm];
}

class DietError extends DietDataState {
  final String message;

  DietError(this.message);

  @override
  List<Object?> get props => [message];
}
