import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_next_dto.dart';
import 'package:oceanview/domain/usecases/get_next_shuttle_info.dart';

part 'shuttle_bus_event.dart';
part 'shuttle_bus_state.dart';

class ShuttleBusBloc extends Bloc<ShuttleBusEvent, ShuttleBusState> {
  // final GetTodayShuttleInfo getTodayShuttleInfo;
  final GetNextShuttleInfo getNextShuttleInfo;

  Timer? _timer;

  List<ShuttleDataDto> nextShuttleInfo = <ShuttleDataDto>[];

  // Future<Either<Failure, ShuttleTodayWrapper>> async1() async {
  //   return await getTodayShuttleInfo.call();
  // }

  Future<Either<Failure, ShuttleNextWrapper>> async2() async {
    return await getNextShuttleInfo.call();
  }

  @override
  Future<void> close() async {
    _timer?.cancel();
    super.close();
  }

  ShuttleBusBloc({
    // required this.getTodayShuttleInfo,
    required this.getNextShuttleInfo,
  }) : super(ShuttleDataLoading()) {
    on<ShuttleBusInited>(_onAppLaunched);
    on<RefreshShuttleBusEvent>(_onBusInfoRefreshRequested);
  }

  Future<void> _onAppLaunched(
    ShuttleBusInited event,
    Emitter<ShuttleBusState> emit,
  ) async {
    final shuttleInfoResp = await getNextShuttleInfo.call();
    shuttleInfoResp.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(ShuttleDataError('SETTING_ERROR'));
        } else {
          emit(ShuttleDataError('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        nextShuttleInfo = success.nextShuttle;
      },
    );
    // await Future.wait([async1(), async2()]).then((data) {
    //   logger.d(data);
    //   data[0].fold(
    //     (failure) async* {
    //       if (failure is CacheFailure) {
    //         emit(ShuttleDataError('SETTING_ERROR'));
    //       } else {
    //         emit(ShuttleDataError('NO_CONNECTION_ERROR'));
    //       }
    //     },
    //     (success) {
    //       todayShuttleInfo = (success as ShuttleTodayWrapper).data;
    //     },
    //   );

    //   data[1].fold(
    //     (failure) async* {
    //       if (failure is CacheFailure) {
    //         emit(ShuttleDataError('SETTING_ERROR'));
    //       } else {
    //         emit(ShuttleDataError('NO_CONNECTION_ERROR'));
    //       }
    //     },
    //     (success) {
    //       nextShuttleInfo = (success as ShuttleNextWrapper).data?.next ?? [];
    //     },
    //   );
    // });

    // TODO : init 초기 메서드 가져오기
    emit(ShuttleDataLoaded(
      nextShuttleInfo: nextShuttleInfo,
    ));

    // 타이머로 반복, 앱 종료 혹은 dispose 상태 시 종료
    // _timer = Timer.periodic(Duration(seconds: 60), (timer) {
    //   add(RefreshShuttleBusEvent());
    // });
  }

  Future<void> _onBusInfoRefreshRequested(
    RefreshShuttleBusEvent event,
    Emitter<ShuttleBusState> emit,
  ) async {
    final state = this.state;
    if (state is ShuttleDataLoaded) {
      final newNextShuttleResponse = await getNextShuttleInfo.call();
      newNextShuttleResponse.fold(
        (failure) async* {
          if (failure is CacheFailure) {
            emit(ShuttleDataError('SETTING_ERROR'));
          } else {
            emit(ShuttleDataError('NO_CONNECTION_ERROR'));
          }
        },
        (success) {
          nextShuttleInfo = success.nextShuttle;
        },
      );
      emit(state.copyWith(nextShuttleInfo: nextShuttleInfo));
    }
  }
}
