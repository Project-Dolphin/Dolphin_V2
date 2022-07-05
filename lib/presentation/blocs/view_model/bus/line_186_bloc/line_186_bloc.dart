import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';

part 'line_186_event.dart';
part 'line_186_state.dart';

class Line186Bloc extends Bloc<Line186Event, Line186State> {
  final GetSpecificNodeBusInfo getSpecificNodeBusInfo;
  SpecificNodeParam nodeParam =
      const SpecificNodeParam(busStop: BUS_STOP.YEONGDO_BRIDGE, busNumber: 186);

  List<BUS_STOP> paramList = [
    BUS_STOP.KMOH_MAIN,
    BUS_STOP.YEONGDO_BRIDGE,
  ];

  Line186Bloc({required this.getSpecificNodeBusInfo})
      : super(Line186Loading()) {
    on<FetchLine186Info>(_onAppLaunched);
    on<Refresh186Info>(_onBusInfoRefreshRequested);
  }

  Timer? _timer;

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
  }

  Future<void> _onAppLaunched(
    FetchLine186Info event,
    Emitter<Line186State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);
    logger.d(result);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line186Error('SETTING_ERROR'));
        } else {
          emit(Line186Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        emit(Line186LoadedWithBusInfo(busInfo: success));
      },
    );
  }

  Future<void> _onBusInfoRefreshRequested(
    Refresh186Info event,
    Emitter<Line186State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line186Error('SETTING_ERROR'));
        } else {
          emit(Line186Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        emit(Line186LoadedWithBusInfo(busInfo: success));
      },
    );
  }
}
