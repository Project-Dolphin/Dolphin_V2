import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/domain/usecases/get_next_shuttle_info.dart';
import 'package:oceanview/domain/usecases/get_today_shuttle_info.dart';

part 'meal_data_event.dart';
part 'meal_data_state.dart';

class MealDataBloc extends Bloc<MealDataEvent, MealDataState> {
  final GetTodayShuttleInfo getTodayShuttleInfo;
  final GetNextShuttleInfo getNextShuttleInfo;

  MealDataBloc(
      {required this.getTodayShuttleInfo, required this.getNextShuttleInfo})
      : super(LoadingState()) {
    on<ShuttleBusInited>(_onAppLaunched);
    on<RefreshMealDataEvent>(_onBusInfoRefreshRequested);
  }

  void _onAppLaunched(
    ShuttleBusInited event,
    Emitter<MealDataState> emit,
  ) {
    final _todayShuttleInfo = getTodayShuttleInfo.call();
    final _nextShuttleInfo = getNextShuttleInfo.call();

    // TODO : init 초기 메서드 가져오기
    emit(LoadedState());
  }

  void _onBusInfoRefreshRequested(
    RefreshMealDataEvent event,
    Emitter<MealDataState> emit,
  ) {
    emit(LoadedState());
  }
}
