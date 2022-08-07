import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_latest/response_calendar_latest_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_cafe_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';
import 'package:oceanview/domain/usecases/get_init_data.dart';
import 'package:oceanview/domain/usecases/get_latest_event.dart';
import 'package:oceanview/domain/usecases/get_notice_list.dart';
import 'package:oceanview/domain/usecases/get_weather_info.dart';

part 'home_data_event.dart';
part 'home_data_state.dart';

class HomeDataBloc extends Bloc<HomeDataEvent, HomeDataState> {
  final GetWeatherInfo getWeatherInfo;
  final GetNoticeList getNoticeList;
  final GetLatestEvent getLatestEvent;
  final GetInitData getInitData;

  WeatherData _weather = WeatherData(
    humidity: '',
    status: '',
    temparature: '',
    windSpeed: '',
  );
  List<NoticeData> _notices = [];
  LatestWrapper _events = LatestWrapper();

  HomeDataBloc({
    required this.getWeatherInfo,
    required this.getNoticeList,
    required this.getLatestEvent,
    required this.getInitData,
  }) : super(LoadingState()) {
    on<HomeDataInited>(_onAppLaunched);
    on<RefreshBusEvent>(_onBusInfoRefreshRequested);
  }

  Future<Either<Failure, WeatherData>> async1() async {
    return await getWeatherInfo.call();
  }

  Future<Either<Failure, List<NoticeData>>> async2() async {
    return await getNoticeList.call();
  }

  Future<Either<Failure, LatestWrapper>> async3() async {
    return await getLatestEvent.call();
  }

  Future<void> _onAppLaunched(
    HomeDataInited event,
    Emitter<HomeDataState> emit,
  ) async {
    final result = await getInitData.call();

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(HomeDataError('SETTING_ERROR'));
        } else {
          emit(HomeDataError('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        _weather = success.weather ?? WeatherData();
        _notices = success.notices;
        _events = success.schedules ?? LatestWrapper();
        emit(HomeDataLoaded(
          dateType: success.dayType,
          weather: _weather,
          event: _events,
          notice: _notices,
          cafeData: success.diets ?? CafeData(),
        ));
      },
    );
    // await Future.wait([async1(), async2(), async3()]).then((data) {
    //   data[0].fold(
    //     (failure) async* {
    //       if (failure is CacheFailure) {
    //         emit(HomeDataError('SETTING_ERROR'));
    //       } else {
    //         emit(HomeDataError('NO_CONNECTION_ERROR'));
    //       }
    //     },
    //     (success) {
    //       _weather = success as WeatherData;
    //     },
    //   );

    //   data[1].fold(
    //     (failure) async* {
    //       if (failure is CacheFailure) {
    //         emit(HomeDataError('SETTING_ERROR'));
    //       } else {
    //         emit(HomeDataError('NO_CONNECTION_ERROR'));
    //       }
    //     },
    //     (success) {
    //       _notices = success as List<NoticeData>;
    //     },
    //   );

    //   data[2].fold(
    //     (failure) async* {
    //       if (failure is CacheFailure) {
    //         emit(HomeDataError('SETTING_ERROR'));
    //       } else {
    //         emit(HomeDataError('NO_CONNECTION_ERROR'));
    //       }
    //     },
    //     (success) {
    //       _events = success as LatestWrapper;
    //     },
    //   );
    // });
  }

  void _onBusInfoRefreshRequested(
    RefreshBusEvent event,
    Emitter<HomeDataState> emit,
  ) {
    // emit(LoadedState());
  }
}
