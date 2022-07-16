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

  List<BUS_STOP> paramList = [
    BUS_STOP.KMOH_KMOH,
    BUS_STOP.YEONGDO_BRIDGE,
    BUS_STOP.BUSAN_STATION,
  ];

  Line88Bloc({required this.getSpecificNodeBusInfo}) : super(Line88Loading()) {
    on<FetchLine88Info>(_onAppLaunched);
    on<Refresh88Info>(_onBusInfoRefreshRequested);
    on<Change88Node>(_onNodeParamChangeRequested);
  }

  Timer? _timer;

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
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
        emit(Line88LoadedWithBusInfo(
          selectedBusStop: nodeParam.busStop,
          busInfo: success,
        ));
      },
    );
  }

  Future<void> _onBusInfoRefreshRequested(
    Refresh88Info event,
    Emitter<Line88State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line88Error('SETTING_ERROR'));
        } else {
          emit(Line88Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        final state = this.state;
        if (state is Line88LoadedWithBusInfo) {
          emit(state.copyWith(busInfo: success));
        }
      },
    );
  }

  Future<void> _onNodeParamChangeRequested(
    Change88Node event,
    Emitter<Line88State> emit,
  ) async {
    nodeParam = nodeParam.copyWith(busStop: event.changedNode);
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line88Error('SETTING_ERROR'));
        } else {
          emit(Line88Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        final state = this.state;
        if (state is Line88LoadedWithBusInfo) {
          emit(state.copyWith(
            busInfo: success,
            selectedBusStop: event.changedNode,
          ));
        }
      },
    );

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
      add(Refresh88Info());
    });
  }
}
