part of 'shuttle_bus_bloc.dart';

abstract class ShuttleBusState extends Equatable {}

class ShuttleDataLoading extends ShuttleBusState {
  @override
  List<Object?> get props => [];
}

class ShuttleDataLoaded extends ShuttleBusState {
  ShuttleDataLoaded({
    required this.todayShuttleInfo,
    required this.nextShuttleInfo,
  });
  final List<ShuttleDetailDto> todayShuttleInfo;
  final List<ShuttleDetailDto> nextShuttleInfo;
  final DateTime now = DateTime.now();
  @override
  List<Object?> get props => [todayShuttleInfo, nextShuttleInfo, now];

  ShuttleDataLoaded copyWith({
    List<ShuttleDetailDto>? todayShuttleInfo,
    List<ShuttleDetailDto>? nextShuttleInfo,
  }) {
    return ShuttleDataLoaded(
      todayShuttleInfo: todayShuttleInfo ?? this.todayShuttleInfo,
      nextShuttleInfo: nextShuttleInfo ?? this.nextShuttleInfo,
    );
  }
}

class ShuttleDataError extends ShuttleBusState {
  final String message;

  ShuttleDataError(this.message);

  @override
  List<Object?> get props => [message];
}
