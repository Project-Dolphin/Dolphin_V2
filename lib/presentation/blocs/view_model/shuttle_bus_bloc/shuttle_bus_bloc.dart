import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/domain/usecases/get_next_shuttle_info.dart';
import 'package:oceanview/domain/usecases/get_today_shuttle_info.dart';

part 'shuttle_bus_event.dart';
part 'shuttle_bus_state.dart';

class ShuttleBusBloc extends Bloc<ShuttleBusEvent, ShuttleBusState> {
  final GetTodayShuttleInfo getTodayShuttleInfo;
  final GetNextShuttleInfo getNextShuttleInfo;

  ShuttleBusBloc({
    required this.getTodayShuttleInfo,
    required this.getNextShuttleInfo,
  }) : super(LoadingState()) {
    on<ShuttleBusInited>(_onAppLaunched);
    on<RefreshShuttleBusEvent>(_onBusInfoRefreshRequested);
  }

  void _onAppLaunched(
    ShuttleBusInited event,
    Emitter<ShuttleBusState> emit,
  ) {
    final _todayShuttleInfo = getTodayShuttleInfo.call();
    final _nextShuttleInfo = getNextShuttleInfo.call();

    // TODO : init 초기 메서드 가져오기
    emit(LoadedState());
  }

  void _onBusInfoRefreshRequested(
    RefreshShuttleBusEvent event,
    Emitter<ShuttleBusState> emit,
  ) {
    emit(LoadedState());
  }
}
