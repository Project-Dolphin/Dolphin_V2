import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/domain/usecases/get_city_bus_list.dart';

part 'campus_event_event.dart';
part 'campus_event_state.dart';

class CampusEventBloc extends Bloc<CampusEventEvent, CampusEventState> {
  final GetCityBusList getCityBusList;

  CampusEventBloc({required this.getCityBusList}) : super(LoadingState()) {
    on<PageInited>(_onAppLaunched);
    on<RefreshBusEvent>(_onBusInfoRefreshRequested);
  }

  void _onAppLaunched(
    PageInited event,
    Emitter<CampusEventState> emit,
  ) {
    final result = getCityBusList.call();
    // TODO : init 초기 메서드 가져오기
    emit(LoadedState());
  }

  void _onBusInfoRefreshRequested(
    RefreshBusEvent event,
    Emitter<CampusEventState> emit,
  ) {
    emit(LoadedState());
  }
}
