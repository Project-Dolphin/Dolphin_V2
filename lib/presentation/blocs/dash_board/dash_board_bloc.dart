import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/domain/usecases/get_city_bus_list.dart';

part 'dash_board_event.dart';
part 'dash_board_state.dart';

class DashboardBloc extends Bloc<DashBoardEvent, DashBoardState> {
  final GetCityBusList getCityBusList;

  DashboardBloc({required this.getCityBusList}) : super(LoadingState()) {
    on<PageInited>(_onAppLaunched);
    on<RefreshBusEvent>(_onBusInfoRefreshRequested);
  }

  void _onAppLaunched(
    PageInited event,
    Emitter<DashBoardState> emit,
  ) {
    // TODO : init 초기 메서드 가져오기
    emit(LoadedState());
  }

  void _onBusInfoRefreshRequested(
    RefreshBusEvent event,
    Emitter<DashBoardState> emit,
  ) {
    emit(LoadedState());
  }
}
