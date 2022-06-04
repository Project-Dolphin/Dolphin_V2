part of 'shuttle_bus_bloc.dart';

abstract class ShuttleBusState extends Equatable {}

class ShuttleDataLoading extends ShuttleBusState {
  @override
  List<Object?> get props => [];
}

class ShuttleDataLoaded extends ShuttleBusState {
  ShuttleDataLoaded({
    required this.nextShuttleInfo,
  });
  final List<ShuttleDataDto> nextShuttleInfo;
  final DateTime now = DateTime.now();
  @override
  List<Object?> get props => [nextShuttleInfo, now];

  ShuttleDataLoaded copyWith({
    List<ShuttleDataDto>? nextShuttleInfo,
  }) {
    return ShuttleDataLoaded(
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
