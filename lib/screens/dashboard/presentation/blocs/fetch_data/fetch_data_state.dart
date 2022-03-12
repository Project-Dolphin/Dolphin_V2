part of 'fetch_data_bloc.dart';

abstract class FetchDataState extends Equatable {}

class LoggedInState extends FetchDataState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends FetchDataState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends FetchDataState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends FetchDataState {
  final String message;

  ErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
