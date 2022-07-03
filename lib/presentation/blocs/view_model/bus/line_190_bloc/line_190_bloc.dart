import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';

part 'line_190_event.dart';
part 'line_190_state.dart';

class Line190Bloc extends Bloc<Line190Event, Line190State> {
  final GetSpecificNodeBusInfo getSpecificNodeBusInfo;
  SpecificNodeParam nodeParam =
      const SpecificNodeParam(busStop: BUS_STOP.BUSAN_STATION, busNumber: 190);

  Line190Bloc({required this.getSpecificNodeBusInfo})
      : super(Line190Loading()) {
    on<FetchLine190Info>(_onAppLaunched);
    on<Refresh190Info>(_onBusInfoRefreshRequested);
  }

  Timer? _timer;

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
  }

  Future<void> _onAppLaunched(
    FetchLine190Info event,
    Emitter<Line190State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line190Error('SETTING_ERROR'));
        } else {
          emit(Line190Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        emit(Line190LoadedWithBusInfo(busInfo: success));
      },
    );
  }

  Future<void> _onBusInfoRefreshRequested(
    Refresh190Info event,
    Emitter<Line190State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line190Error('SETTING_ERROR'));
        } else {
          emit(Line190Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        emit(Line190LoadedWithBusInfo(busInfo: success));
      },
    );
  }
}
