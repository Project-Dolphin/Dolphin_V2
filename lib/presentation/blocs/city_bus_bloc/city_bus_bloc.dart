import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/domain/usecases/get_city_bus_list.dart';

part 'city_bus_event.dart';
part 'city_bus_state.dart';

class CityBusBloc extends Bloc<CityBusEvent, CityBusState> {
  final GetCityBusList getCityBusList;

  CityBusBloc({required this.getCityBusList}) : super(LoadingState()) {
    on<CityBusInited>(_onAppLaunched);
    on<RefreshCityBusEvent>(_onBusInfoRefreshRequested);
  }

  void _onAppLaunched(
    CityBusInited event,
    Emitter<CityBusState> emit,
  ) {
    final result = getCityBusList.call();
    // TODO : init 초기 메서드 가져오기
    emit(LoadedState());
  }

  void _onBusInfoRefreshRequested(
    RefreshCityBusEvent event,
    Emitter<CityBusState> emit,
  ) {
    emit(LoadedState());
  }
}
