import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';

part 'line_8_event.dart';
part 'line_8_state.dart';

class Line8Bloc extends Bloc<Line8Event, Line8State> {
  final GetSpecificNodeBusInfo getSpecificNodeBusInfo;
  SpecificNodeParam nodeParam =
      const SpecificNodeParam(busStop: BUS_STOP.YEONGDO_BRIDGE, busNumber: 8);

  // TODO : 수정해야함, 8번 용 맞춰서
  List<BUS_STOP> paramList = [
    BUS_STOP.KMOU_ENTRANCE,
    BUS_STOP.YEONGDO_BRIDGE,
  ];

  Line8Bloc({required this.getSpecificNodeBusInfo}) : super(Line8Loading()) {
    on<FetchLine8Info>(_onAppLaunched);
    on<Refresh8Info>(_onBusInfoRefreshRequested);
    on<Change8Node>(_onNodeParamChangeRequested);
  }

  Timer? _timer;

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
  }

  Future<void> _onBusInfoRefreshRequested(
    Refresh8Info event,
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
        emit(Line8LoadedWithBusInfo(
          busInfo: success,
          selectedBusStop: nodeParam.busStop,
        ));
      },
    );
  }

  Future<void> _onAppLaunched(
    FetchLine8Info event,
    Emitter<Line8State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);
    logger.d(result);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line8Error('SETTING_ERROR'));
        } else {
          emit(Line8Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        final state = this.state;
        if (state is Line8LoadedWithBusInfo) {
          emit(state.copyWith(busInfo: success));
        }
      },
    );
  }

  Future<void> _onNodeParamChangeRequested(
    Change8Node event,
    Emitter<Line8State> emit,
  ) async {
    nodeParam = nodeParam.copyWith(busStop: event.changedNode);
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
        final state = this.state;
        if (state is Line8LoadedWithBusInfo) {
          emit(state.copyWith(
            busInfo: success,
            selectedBusStop: event.changedNode,
          ));
        }
      },
    );

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
      add(Refresh8Info());
    });
  }
}
