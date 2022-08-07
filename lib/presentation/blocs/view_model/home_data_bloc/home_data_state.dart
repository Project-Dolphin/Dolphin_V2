part of 'home_data_bloc.dart';

abstract class HomeDataState extends Equatable {}

class LoadingState extends HomeDataState {
  @override
  List<Object?> get props => [];
}

class HomeDataLoaded extends HomeDataState {
  HomeDataLoaded({
    required this.dateType,
    required this.weather,
    required this.notice,
    required this.event,
    required this.cafeData,
  });
  final String dateType;
  final WeatherData weather;
  final List<NoticeData> notice;
  final LatestWrapper event;
  final CafeData cafeData;

  @override
  List<Object?> get props => [];

  HomeDataLoaded copyWith({
    String? dateType,
    WeatherData? weather,
    List<NoticeData>? notice,
    LatestWrapper? event,
    CafeData? cafeData,
  }) {
    return HomeDataLoaded(
      dateType: dateType ?? this.dateType,
      weather: weather ?? this.weather,
      notice: notice ?? this.notice,
      event: event ?? this.event,
      cafeData: cafeData ?? this.cafeData,
    );
  }
}

class HomeDataError extends HomeDataState {
  final String message;

  HomeDataError(this.message);

  @override
  List<Object?> get props => [message];
}
