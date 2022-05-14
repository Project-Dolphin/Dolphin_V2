part of 'splash_page_bloc.dart';

abstract class SplashPageState extends Equatable {}

class SplashLoading extends SplashPageState {
  @override
  List<Object?> get props => [];
}

class SplashLoaded extends SplashPageState {
  SplashLoaded({
    required this.stationInfo,
  });
  final StationInfo stationInfo;
  @override
  List<Object?> get props => [stationInfo];

  SplashLoaded copyWith({
    StationInfo? stationInfo,
  }) {
    return SplashLoaded(
      stationInfo: stationInfo ?? this.stationInfo,
    );
  }
}
