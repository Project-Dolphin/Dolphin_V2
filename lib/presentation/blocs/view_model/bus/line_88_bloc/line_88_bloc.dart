import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';

part 'line_88_event.dart';
part 'line_88_state.dart';

class Line88Bloc extends Bloc<Line88Event, Line88State> {
  final GetSpecificNodeBusInfo getSpecificNodeBusInfo;
  SpecificNodeParam nodeParam =
      const SpecificNodeParam(busStop: BUS_STOP.BUSAN_STATION, busNumber: 88);

  Line88Bloc({required this.getSpecificNodeBusInfo}) : super(Line88Loading()) {
    on<FetchLine88Info>(_onAppLaunched);
  }

  Future<void> _onAppLaunched(
    FetchLine88Info event,
    Emitter<Line88State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);
    logger.d(result);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line88Error('SETTING_ERROR'));
        } else {
          emit(Line88Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        emit(Line88LoadedWithBusInfo(busInfo: success));
      },
    );
  }
}
