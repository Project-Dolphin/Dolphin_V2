import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/error/failures.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';
import 'package:oceanview/core/network/rest_client_service.dart';
import 'package:oceanview/domain/usecases/get_city_bus_list.dart';
import 'package:oceanview/domain/usecases/get_notice_list.dart';
import 'package:oceanview/domain/usecases/get_weather_info.dart';

part 'home_data_event.dart';
part 'home_data_state.dart';

class HomeDataBloc extends Bloc<HomeDataEvent, HomeDataState> {
  final GetWeatherInfo getWeatherInfo;
  final GetNoticeList getNoticeList;

  HomeDataBloc({required this.getWeatherInfo, required this.getNoticeList})
      : super(LoadingState()) {
    on<HomeDataInited>(_onAppLaunched);
    on<RefreshBusEvent>(_onBusInfoRefreshRequested);
  }

  Future<void> _onAppLaunched(
    HomeDataInited event,
    Emitter<HomeDataState> emit,
  ) async {
    final _weatherResponse = await getWeatherInfo.call();
    final _noticesResponse = await getNoticeList.call();

    WeatherData _weather =
        WeatherData(humidity: '', status: '', temparature: '', windSpeed: '');
    List<NoticeData> _notices = [];
    _noticesResponse.fold((failure) async* {
      if (failure is CacheFailure) {
        emit(HomeDataError('SETTING_ERROR'));
      } else {
        emit(HomeDataError('NO_CONNECTION_ERROR'));
      }
    }, (success) {
      _notices = success;
    });

    _weatherResponse.fold((failure) async* {
      if (failure is CacheFailure) {
        emit(HomeDataError('SETTING_ERROR'));
      } else {
        emit(HomeDataError('NO_CONNECTION_ERROR'));
      }
    }, (success) {
      _weather = success;
    });
    emit(HomeDataLoaded(weather: _weather, notice: _notices));
  }

  void _onBusInfoRefreshRequested(
    RefreshBusEvent event,
    Emitter<HomeDataState> emit,
  ) {
    // emit(LoadedState());
  }
}
