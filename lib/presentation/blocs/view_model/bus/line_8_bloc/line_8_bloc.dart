import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';

part 'line_8_event.dart';
part 'line_8_state.dart';

class Line8Bloc extends Bloc<Line8Event, Line8State> {
  final GetSpecificNodeBusInfo getSpecificNodeBusInfo;
  SpecificNodeParam nodeParam =
      const SpecificNodeParam(busStop: BUS_STOP.BUSAN_STATION, busNumber: 88);

  Line8Bloc({required this.getSpecificNodeBusInfo}) : super(Line8Loading()) {
    on<FetchLine8Info>(_onAppLaunched);
  }

  Future<void> _onAppLaunched(
    FetchLine8Info event,
    Emitter<Line8State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);
    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line8Error('SETTING_ERROR'));
        } else {
          emit(Line8Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        logger.d(success);
      },
    );
    // TODO : init 초기 메서드 가져오기
    emit(Line8Loaded());
  }
}
