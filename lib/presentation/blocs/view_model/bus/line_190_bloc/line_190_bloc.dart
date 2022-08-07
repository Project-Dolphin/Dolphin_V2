import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_timetable_190/response_depart_bus_info_dto.dart';
import 'package:oceanview/domain/usecases/get_190_time_table.dart';
import 'package:oceanview/domain/usecases/get_specific_node_bus_info.dart';

part 'line_190_event.dart';
part 'line_190_state.dart';

class Line190Bloc extends Bloc<Line190Event, Line190State> {
  final GetSpecificNodeBusInfo getSpecificNodeBusInfo;
  final Get190TimeTable get190timeTable;
  SpecificNodeParam nodeParam =
      const SpecificNodeParam(busStop: BUS_STOP.BUSAN_STATION, busNumber: 190);

  List<BUS_STOP> paramList = [
    BUS_STOP.KMOU_CENTER,
    BUS_STOP.KMOU_ENTRANCE,
    BUS_STOP.YEONGDO_BRIDGE,
    BUS_STOP.BUSAN_STATION,
  ];

  Line190Bloc({
    required this.getSpecificNodeBusInfo,
    required this.get190timeTable,
  }) : super(Line190Loading()) {
    on<FetchLine190Info>(_onAppLaunched);
    on<Refresh190Info>(_onBusInfoRefreshRequested);
    on<Change190Node>(_onNodeParamChangeRequested);
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
        emit(Line190LoadedWithBusInfo(
          busInfo: success,
          selectedBusStop: nodeParam.busStop,
        ));
      },
    );
  }

  Future<void> _onBusInfoRefreshRequested(
    Refresh190Info event,
    Emitter<Line190State> emit,
  ) async {
    final state = this.state;
    if (state is Line190LoadedWithBusInfo) {
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
          emit(state.copyWith(busInfo: success));
        },
      );
    } else if (state is Line190LoadedWithDepartInfo) {
      final result = await get190timeTable.call();

      result.fold(
        (failure) async* {
          if (failure is CacheFailure) {
            emit(Line190Error('SETTING_ERROR'));
          } else {
            emit(Line190Error('NO_CONNECTION_ERROR'));
          }
        },
        (success) {
          emit(state.copyWith(
            busInfo: success.nextDepartBus,
          ));
        },
      );
    }
  }

  Future<void> _onNodeParamChangeRequested(
    Change190Node event,
    Emitter<Line190State> emit,
  ) async {
    nodeParam = nodeParam.copyWith(busStop: event.changedNode);
    if (nodeParam.busStop != BUS_STOP.KMOU_CENTER) {
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
          final state = this.state;
          if (state is Line190LoadedWithBusInfo) {
            emit(state.copyWith(
              busInfo: success,
              selectedBusStop: event.changedNode,
            ));
          } else {
            emit(
              Line190LoadedWithBusInfo(
                busInfo: success,
                selectedBusStop: event.changedNode,
              ),
            );
          }
        },
      );

      _timer?.cancel();
      _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
        add(Refresh190Info());
      });
    } else {
      final result = await get190timeTable.call();

      result.fold(
        (failure) async* {
          if (failure is CacheFailure) {
            emit(Line190Error('SETTING_ERROR'));
          } else {
            emit(Line190Error('NO_CONNECTION_ERROR'));
          }
        },
        (success) {
          emit(Line190LoadedWithDepartInfo(
            busInfo: success.nextDepartBus,
            selectedBusStop: event.changedNode,
          ));
        },
      );

      _timer?.cancel();
      _timer = Timer.periodic(const Duration(seconds: 60), (timer) {
        add(Refresh190Info());
      });
    }
  }
}
