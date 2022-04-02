import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/domain/usecases/get_city_bus_list.dart';

part 'city_bus_event.dart';
part 'city_bus_state.dart';

class CityBusBloc extends Bloc<CityBusEvent, CityBusState> {
  final GetCityBusList getCityBusList;

  CityBusBloc({required this.getCityBusList}) : super(LoadingState()) {
    on<CityBusInited>(_onAppLaunched);
    on<RefreshCityBusEvent>(_onBusInfoRefreshRequested);
  }

  Future<void> _onAppLaunched(
    CityBusInited event,
    Emitter<CityBusState> emit,
  ) async {
    final result = await getCityBusList.call();
    result.fold((failure) async* {
      if (failure is CacheFailure) {
        emit(ErrorState('SETTING_ERROR'));
      } else {
        emit(ErrorState('NO_CONNECTION_ERROR'));
      }
    }, (success) {
      print(success);
    });
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
