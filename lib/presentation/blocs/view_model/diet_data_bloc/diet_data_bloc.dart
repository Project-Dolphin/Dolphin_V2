import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_cafe_data_dto.dart';
import 'package:oceanview/domain/usecases/get_cafe_diet.dart';
import 'package:oceanview/domain/usecases/get_dorm_diet.dart';

part 'diet_data_event.dart';
part 'diet_data_state.dart';

class DietDataBloc extends Bloc<DietDataEvent, DietDataState> {
  final GetDormDiet getDormDiet;
  final GetCafeDiet getCafeDiet;

  DormData dormDietInfo = DormData();
  CafeData cafeDietInfo = CafeData();

  Future<Either<Failure, DormData>> async1() async {
    return await getDormDiet.call();
  }

  Future<Either<Failure, CafeData>> async2() async {
    return await getCafeDiet.call();
  }

  DietDataBloc({
    required this.getDormDiet,
    required this.getCafeDiet,
  }) : super(DietLoading()) {
    on<DormDataInited>(_onAppLaunched);
    on<RefreshDietDataEvent>(_onBusInfoRefreshRequested);
  }

  Future<void> _onAppLaunched(
    DormDataInited event,
    Emitter<DietDataState> emit,
  ) async {
    await Future.wait([async1(), async2()]).then((data) {
      logger.d(data);
      data[0].fold(
        (failure) async* {
          if (failure is CacheFailure) {
            emit(DietError('SETTING_ERROR'));
          } else {
            emit(DietError('NO_CONNECTION_ERROR'));
          }
        },
        (success) {
          dormDietInfo = success as DormData;
        },
      );
      data[1].fold(
        (failure) async* {
          if (failure is CacheFailure) {
            emit(DietError('SETTING_ERROR'));
          } else {
            emit(DietError('NO_CONNECTION_ERROR'));
          }
        },
        (success) {
          cafeDietInfo = success as CafeData;
        },
      );
    });

    emit(DietLoaded(cafeData: cafeDietInfo, dormData: dormDietInfo));
  }

  void _onBusInfoRefreshRequested(
    RefreshDietDataEvent event,
    Emitter<DietDataState> emit,
  ) {
    // emit(DietLoaded());
  }
}
