part of 'home_data_bloc.dart';

abstract class HomeDataState extends Equatable {}

class LoadingState extends HomeDataState {
  @override
  List<Object?> get props => [];
}

class HomeDataLoaded extends HomeDataState {
  HomeDataLoaded({
    required this.weather,
    required this.notice,
    required this.event,
  });
  final WeatherData weather;
  final List<NoticeData> notice;
  final List<LatestData> event;

  @override
  List<Object?> get props => [];
}

class HomeDataError extends HomeDataState {
  final String message;

  HomeDataError(this.message);

  @override
  List<Object?> get props => [message];
}
