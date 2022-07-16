import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';

part 'line_30_event.dart';
part 'line_30_state.dart';

class Line30Bloc extends Bloc<Line30Event, Line30State> {
  final GetSpecificNodeBusInfo getSpecificNodeBusInfo;
  SpecificNodeParam nodeParam =
      const SpecificNodeParam(busStop: BUS_STOP.YEONGDO_BRIDGE, busNumber: 30);

  List<BUS_STOP> paramList = [
    BUS_STOP.KMOU_ENTRANCE,
    BUS_STOP.YEONGDO_BRIDGE,
  ];

  Timer? _timer;

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
  }

  Line30Bloc({required this.getSpecificNodeBusInfo}) : super(Line30Loading()) {
    on<FetchLine30Info>(_onAppLaunched);
    on<Refresh30Info>(_onBusInfoRefreshRequested);
    on<Change30Node>(_onNodeParamChangeRequested);
  }

  Future<void> _onAppLaunched(
    FetchLine30Info event,
    Emitter<Line30State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);
    logger.d(result);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line30Error('SETTING_ERROR'));
        } else {
          emit(Line30Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        emit(Line30LoadedWithBusInfo(
          selectedBusStop: nodeParam.busStop,
          busInfo: success,
        ));
      },
    );

    _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
      add(Refresh30Info());
    });
  }

  Future<void> _onBusInfoRefreshRequested(
    Refresh30Info event,
    Emitter<Line30State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line30Error('SETTING_ERROR'));
        } else {
          emit(Line30Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        final state = this.state;
        if (state is Line30LoadedWithBusInfo) {
          emit(state.copyWith(busInfo: success));
        }
      },
    );
  }

  Future<void> _onNodeParamChangeRequested(
    Change30Node event,
    Emitter<Line30State> emit,
  ) async {
    nodeParam = nodeParam.copyWith(busStop: event.changedNode);
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line30Error('SETTING_ERROR'));
        } else {
          emit(Line30Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        final state = this.state;
        if (state is Line30LoadedWithBusInfo) {
          emit(state.copyWith(
            busInfo: success,
            selectedBusStop: event.changedNode,
          ));
        }
      },
    );

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
      add(Refresh30Info());
    });
  }
}
