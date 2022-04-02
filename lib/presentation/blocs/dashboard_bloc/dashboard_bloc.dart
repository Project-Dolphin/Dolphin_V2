import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/page/widgets/tab_view.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashBoardBloc extends Bloc<DashBoardEvent, DashBoardState> {
  DashBoardBloc() : super(DashBoardLoading()) {
    on<DashBoardInited>(_onAppLaunched);
    on<RootTabSelected>(_onPageChanged);
  }

  void _onAppLaunched(
    DashBoardInited event,
    Emitter<DashBoardState> emit,
  ) {
    DateState temp = DateStateExt.from();

    emit(DashBoardLoaded(state: temp, selectedTab: RootTab.home));
  }

  void _onPageChanged(
    RootTabSelected event,
    Emitter<DashBoardState> emit,
  ) {
    final state = this.state;
    if (state is DashBoardLoaded) {
      emit(state.copyWith(selectedTab: event.selectedTab));
    } else {
      DateState temp = DateStateExt.from();
      emit(DashBoardLoaded(state: temp, selectedTab: RootTab.home));
    }
  }
}

enum DateState {
  weekday,
  weekend,
  test,
}

extension DateStateExt on DateState {
  String get text {
    switch (this) {
      case DateState.weekday:
        return R.string.weekday;
      case DateState.weekend:
        return R.string.weekend;
      case DateState.test:
        return R.string.test;
    }
  }

  static DateState from() {
    DateTime today = DateTime.now();
    if (today.weekday == DateTime.saturday ||
        today.weekday == DateTime.sunday) {
      return DateState.weekend;
    }

    return DateState.weekday;
  }
}
