import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_latest/response_calendar_latest_dto.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_cafe_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';
import 'package:oceanview/domain/usecases/get_home_data.dart';

part 'home_data_event.dart';
part 'home_data_state.dart';

class HomeDataBloc extends Bloc<HomeDataEvent, HomeDataState> {
  final GetHomeData getHomeData;

  WeatherData _weather =
      WeatherData(humidity: '', status: '', temparature: '', windSpeed: '');
  List<NoticeData> _notices = [];
  LatestWrapper _events = LatestWrapper();
  String _dateType = '';
  CafeData _cafeData = CafeData();

  HomeDataBloc({
    required this.getHomeData,
  }) : super(LoadingState()) {
    on<HomeDataInited>(_onAppLaunched);
    on<RefreshBusEvent>(_onBusInfoRefreshRequested);
  }

  Future<void> _onAppLaunched(
    HomeDataInited event,
    Emitter<HomeDataState> emit,
  ) async {
    final result = await getHomeData.call();

    result.fold(
      (failure) async* {
        if (failure is CacheFailure) {
          emit(HomeDataError('SETTING_ERROR'));
        } else {
          emit(HomeDataError('NO_CONNECTION_ERROR'));
        }
      },
      (success) {
        _weather = success.weather ?? _weather;
        _notices = success.notices;
        _cafeData = success.diets ?? _cafeData;

        _events = success.schedules ?? _events;
        _dateType = success.dayType;
      },
    );

    emit(HomeDataLoaded(
      weather: _weather,
      notice: _notices,
      event: _events,
      diet: _cafeData,
      dateType: _dateType,
    ));
  }

  void _onBusInfoRefreshRequested(
    RefreshBusEvent event,
    Emitter<HomeDataState> emit,
  ) {
    // emit(LoadedState());
  }
}
