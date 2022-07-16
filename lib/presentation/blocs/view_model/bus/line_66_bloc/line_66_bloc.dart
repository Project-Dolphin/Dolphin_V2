import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';

part 'line_66_event.dart';
part 'line_66_state.dart';

class Line66Bloc extends Bloc<Line66Event, Line66State> {
  final GetSpecificNodeBusInfo getSpecificNodeBusInfo;
  SpecificNodeParam nodeParam =
      const SpecificNodeParam(busStop: BUS_STOP.BUSAN_STATION, busNumber: 66);

  List<BUS_STOP> paramList = [
    BUS_STOP.KMOU_ENTRANCE,
  ];

  Timer? _timer;

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
  }

  Line66Bloc({required this.getSpecificNodeBusInfo}) : super(Line66Loading()) {
    on<FetchLine66Info>(_onAppLaunched);
    on<Refresh66Info>(_onBusInfoRefreshRequested);
    on<Change66Node>(_onNodeParamChangeRequested);
  }

  Future<void> _onAppLaunched(
    FetchLine66Info event,
    Emitter<Line66State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);
    logger.d(result);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line66Error('SETTING_ERROR'));
        } else {
          emit(Line66Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        emit(Line66LoadedWithBusInfo(
          selectedBusStop: nodeParam.busStop,
          busInfo: success,
        ));
      },
    );
  }

  Future<void> _onBusInfoRefreshRequested(
    Refresh66Info event,
    Emitter<Line66State> emit,
  ) async {
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line66Error('SETTING_ERROR'));
        } else {
          emit(Line66Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        final state = this.state;
        if (state is Line66LoadedWithBusInfo) {
          emit(state.copyWith(busInfo: success));
        }
      },
    );
  }

  Future<void> _onNodeParamChangeRequested(
    Change66Node event,
    Emitter<Line66State> emit,
  ) async {
    nodeParam = nodeParam.copyWith(busStop: event.changedNode);
    final result = await getSpecificNodeBusInfo.call(nodeParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(Line66Error('SETTING_ERROR'));
        } else {
          emit(Line66Error('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        final state = this.state;
        if (state is Line66LoadedWithBusInfo) {
          emit(state.copyWith(
            busInfo: success,
            selectedBusStop: event.changedNode,
          ));
        }
      },
    );

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
      add(Refresh66Info());
    });
  }
}
