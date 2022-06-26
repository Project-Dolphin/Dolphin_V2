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
  final LatestWrapper event;

  @override
  List<Object?> get props => [];

  HomeDataLoaded copyWith({
    WeatherData? weather,
    List<NoticeData>? notice,
    LatestWrapper? event,
  }) {
    return HomeDataLoaded(
      weather: weather ?? this.weather,
      notice: notice ?? this.notice,
      event: event ?? this.event,
    );
  }
}

class HomeDataError extends HomeDataState {
  final String message;

  HomeDataError(this.message);

  @override
  List<Object?> get props => [message];
}
