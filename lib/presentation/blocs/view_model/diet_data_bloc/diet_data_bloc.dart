import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_data_dto.dart';
import 'package:oceanview/domain/usecases/get_dorm_diet.dart';

part 'diet_data_event.dart';
part 'diet_data_state.dart';

class DietDataBloc extends Bloc<DietDataEvent, DietDataState> {
  final GetDormDiet getDormDiet;

  DietDataBloc({required this.getDormDiet}) : super(DietLoading()) {
    on<DormDataInited>(_onAppLaunched);
    on<RefreshDietDataEvent>(_onBusInfoRefreshRequested);
  }

  Future<void> _onAppLaunched(
    DormDataInited event,
    Emitter<DietDataState> emit,
  ) async {
    final _dormDietResponse = await getDormDiet.call();
    DormData _dormDietInfo = DormData();
    // TODO: Use Extract
    _dormDietResponse.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(DietError('SETTING_ERROR'));
        } else {
          emit(DietError('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        _dormDietInfo = success;
      },
    );

    // TODO : init 초기 메서드 가져오기
    emit(DietLoaded(dormData: _dormDietInfo));
  }

  void _onBusInfoRefreshRequested(
    RefreshDietDataEvent event,
    Emitter<DietDataState> emit,
  ) {
    // emit(DietLoaded());
  }
}
