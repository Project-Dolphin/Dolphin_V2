import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_businfo/response_businfo_data_dto.dart';
import 'package:oceanview/core/utils/constants.dart';
import 'package:oceanview/domain/usecases/get_running_city_bus_list.dart';

part 'running_bus_event.dart';
part 'running_bus_state.dart';

class RunningBusPageBloc
    extends Bloc<RunningBusPageEvent, RunningBusPageState> {
  RunningBusPageBloc({required this.getOperationCityBusList})
      : super(RunningBusLoading()) {
    on<RunningBusPageInited>(_onRunningBusInited);
  }

  final GetOperationCityBusList getOperationCityBusList;

  Future<void> _onRunningBusInited(
    RunningBusPageInited event,
    Emitter<RunningBusPageState> emit,
  ) async {
    final result = await getOperationCityBusList.call();
    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(RunningBusErrored(message: 'SETTING_ERROR'));
        } else {
          emit(RunningBusErrored(message: 'NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        emit(RunningBusLoaded(busInfo: busFilter(success)));
      },
    );
  }

  List<BusInfoData> busFilter(List<BusInfoData> apiResult) {
    return apiResult
        .where((result) =>
            AppConstants.station_190
                .indexWhere((busInfo) => busInfo['nodeId'] == result.nodeid) >
            -1)
        .toList();
  }
}
