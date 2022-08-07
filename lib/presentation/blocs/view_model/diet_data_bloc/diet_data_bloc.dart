import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_dorm_today/response_diet_dorm_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_society_dto.dart';
import 'package:oceanview/core/network/response/endpoint_dorm/response_diet_data.dart';
import 'package:oceanview/domain/usecases/get_diet_data.dart';
import 'package:oceanview/domain/usecases/get_dorm_diet.dart';

part 'diet_data_event.dart';
part 'diet_data_state.dart';

class DietDataBloc extends Bloc<DietDataEvent, DietDataState> {
  final GetDormDiet getDormDiet;
  final GetDietData getDietData;

  DormData dormDietInfo = DormData();
  DietSocietyWrapper cafeDietInfo = DietSocietyWrapper();
  DietDataParam dietParam = DietDataParam(dietTime: DietTabExt.from());

  List<DietData> morning = [];
  List<DietData> lunch = [];
  List<DietData> dinner = [];

  DietDormWrapper? dorm;

  DietDataBloc({
    required this.getDormDiet,
    required this.getDietData,
  }) : super(DietLoading()) {
    on<DormDataInited>(_onAppLaunched);
    on<DormTabChanged>(_onDietTabChanged);
    on<RefreshDietDataEvent>(_onBusInfoRefreshRequested);
  }

  Future<void> _onAppLaunched(
    DormDataInited event,
    Emitter<DietDataState> emit,
  ) async {
    final result = await getDietData.call(dietParam);

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(DietError('SETTING_ERROR'));
        } else {
          emit(DietError('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        switch (dietParam.dietTime) {
          case DietTab.morning:
            morning = success;
            emit(DietLoaded(
              morning: success,
            ));
            break;
          case DietTab.lunch:
            lunch = success;
            emit(DietLoaded(
              lunch: success,
            ));
            break;
          case DietTab.dinner:
            dinner = success;
            emit(DietLoaded(
              dinner: success,
            ));
            break;
          default:
            return '';
        }
      },
    );
  }

  Future<void> _onDietTabChanged(
    DormTabChanged event,
    Emitter<DietDataState> emit,
  ) async {
    dietParam = dietParam.copyWith(dietTime: event.selectedDietTab);
    switch (dietParam.dietTime) {
      case DietTab.morning:
        if (morning.isNotEmpty) {
          return;
        } else {
          break;
        }
      case DietTab.lunch:
        if (lunch.isNotEmpty) {
          return;
        } else {
          break;
        }
      case DietTab.dinner:
        if (dinner.isNotEmpty) {
          return;
        } else {
          break;
        }
      case DietTab.dorm:
        if (dorm != null) {
          return;
        } else {
          break;
        }
      default:
        break;
    }

    if (dietParam.dietTime != DietTab.dorm &&
        dietParam.dietTime != DietTab.navy) {
      final result = await getDietData.call(dietParam);

      result.fold(
        (failure) async* {
          if (failure is CacheFailure) {
            emit(DietError('SETTING_ERROR'));
          } else {
            emit(DietError('NO_CONNECTION_ERROR'));
          }
        },
        (success) {
          switch (dietParam.dietTime) {
            case DietTab.morning:
              morning = success;
              break;
            case DietTab.lunch:
              lunch = success;
              break;
            case DietTab.dinner:
              dinner = success;
              break;
            default:
              return '';
          }
        },
      );
    } else {
      final result = await getDormDiet.call();

      result.fold(
        (failure) async* {
          if (failure is CacheFailure) {
            emit(DietError('SETTING_ERROR'));
          } else {
            emit(DietError('NO_CONNECTION_ERROR'));
          }
        },
        (success) {
          dorm = success;
          // dormDietInfo = DormData(success.) success as DormData;
        },
      );
    }

    emit(DietLoaded(
      morning: morning,
      lunch: lunch,
      dinner: dinner,
      dorm: dorm,
    ));
  }

  void _onBusInfoRefreshRequested(
    RefreshDietDataEvent event,
    Emitter<DietDataState> emit,
  ) {
    // emit(DietLoaded());
  }
}
