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

  List<BUS_STOP> paramList = [
    BUS_STOP.KMOU_ENTRANCE,
    BUS_STOP.BUSAN_STATION,
  ];

  Line101Bloc({required this.getSpecificNodeBusInfo})
      : super(Line101Loading()) {
    on<FetchLine101Info>(_onAppLaunched);
    on<Refresh101Info>(_onBusInfoRefreshRequested);
    on<Change101Node>(_onNodeParamChangeRequested);
  }

  Timer? _timer;

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
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
        emit(Line101LoadedWithBusInfo(
          selectedBusStop: nodeParam.busStop,
          busInfo: success,
        ));
      },
    );
  }

  Future<void> _onBusInfoRefreshRequested(
    Refresh101Info event,
    Emitter<Line101State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line101Error('SETTING_ERROR'));
        } else {
          emit(Line101Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        final state = this.state;
        if (state is Line101LoadedWithBusInfo) {
          emit(state.copyWith(busInfo: success));
        }
      },
    );
  }

  Future<void> _onNodeParamChangeRequested(
    Change101Node event,
    Emitter<Line101State> emit,
  ) async {
    nodeParam = nodeParam.copyWith(busStop: event.changedNode);
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line101Error('SETTING_ERROR'));
        } else {
          emit(Line101Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        final state = this.state;
        if (state is Line101LoadedWithBusInfo) {
          emit(state.copyWith(
            busInfo: success,
            selectedBusStop: event.changedNode,
          ));
        }
      },
    );

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
      add(Refresh101Info());
    });
  }
}
