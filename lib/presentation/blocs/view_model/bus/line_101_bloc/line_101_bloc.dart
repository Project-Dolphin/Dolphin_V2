import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';

part 'line_101_event.dart';
part 'line_101_state.dart';

class Line101Bloc extends Bloc<Line101Event, Line101State> {
  final GetSpecificNodeBusInfo getSpecificNodeBusInfo;
  SpecificNodeParam nodeParam =
      const SpecificNodeParam(busStop: BUS_STOP.BUSAN_STATION, busNumber: 101);

  Line101Bloc({required this.getSpecificNodeBusInfo})
      : super(Line101Loading()) {
    on<FetchLine101Info>(_onAppLaunched);
  }

  Future<void> _onAppLaunched(
    FetchLine101Info event,
    Emitter<Line101State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);
    logger.d(result);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line101Error('SETTING_ERROR'));
        } else {
          emit(Line101Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        emit(Line101LoadedWithBusInfo(busInfo: success));
      },
    );
  }
}
