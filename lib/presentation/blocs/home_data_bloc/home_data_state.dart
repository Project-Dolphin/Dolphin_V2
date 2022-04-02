part of 'home_data_bloc.dart';

abstract class HomeDataState extends Equatable {}

class LoadingState extends HomeDataState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends HomeDataState {
  LoadedState({required this.weather, required this.notice});
  final Weather weather;
  final List<Notice> notice;

  @override
  List<Object?> get props => [];
}

class ErrorState extends HomeDataState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
