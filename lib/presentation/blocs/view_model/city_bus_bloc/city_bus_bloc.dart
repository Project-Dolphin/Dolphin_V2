import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/domain/usecases/get_running_city_bus_list.dart';

part 'city_bus_event.dart';
part 'city_bus_state.dart';

class CityBusBloc extends Bloc<CityBusEvent, CityBusState> {
  final GetOperationCityBusList getOperationCityBusList;

  CityBusBloc({required this.getOperationCityBusList})
      : super(CityBusLoading()) {
    on<CityBusInited>(_onAppLaunched);
    on<RefreshCityBusEvent>(_onBusInfoRefreshRequested);
  }

  Future<void> _onAppLaunched(
    CityBusInited event,
    Emitter<CityBusState> emit,
  ) async {
    final result = await getOperationCityBusList.call();
    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(CityBusError('SETTING_ERROR'));
        } else {
          emit(CityBusError('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        logger.d(success);
      },
    );
    // TODO : init 초기 메서드 가져오기
    emit(CityBusLoaded());
  }

  void _onBusInfoRefreshRequested(
    RefreshCityBusEvent event,
    Emitter<CityBusState> emit,
  ) {
    emit(CityBusLoaded());
  }
}
