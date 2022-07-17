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
    required this.diet,
    required this.dateType,
  });
  final WeatherData weather;
  final List<NoticeData> notice;
  final LatestWrapper event;
  final CafeData diet;
  final String dateType;

  @override
  List<Object?> get props => [weather, notice, event, diet, dateType];

  HomeDataLoaded copyWith({
    WeatherData? weather,
    List<NoticeData>? notice,
    LatestWrapper? event,
    CafeData? diet,
    String? dateType,
  }) {
    return HomeDataLoaded(
      weather: weather ?? this.weather,
      notice: notice ?? this.notice,
      event: event ?? this.event,
      diet: diet ?? this.diet,
      dateType: dateType ?? this.dateType,
    );
  }
}

class HomeDataError extends HomeDataState {
  final String message;

  HomeDataError(this.message);

  @override
  List<Object?> get props => [message];
}
