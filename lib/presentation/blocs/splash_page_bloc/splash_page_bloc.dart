import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/station_info.dart';
import 'package:oceanview/core/utils/location_utils.dart';

part 'splash_page_event.dart';
part 'splash_page_state.dart';

class SplashPageBloc extends Bloc<SplashPageEvent, SplashPageState> {
  SplashPageBloc() : super(SplashLoading()) {
    on<SplashPageInited>(_onSplashInited);
  }

  Future<void> _onSplashInited(
    SplashPageInited event,
    Emitter<SplashPageState> emit,
  ) async {
    StationInfo nearStaion = await LocationUtils().findNearStation();
    emit(SplashLoaded(stationInfo: nearStaion));
  }
}
