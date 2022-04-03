import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/root_tab_enum.dart';
import 'package:oceanview/core/config/r.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashBoardBloc extends Bloc<DashBoardEvent, DashBoardState> {
  DashBoardBloc()
      : super(
          DashBoardState(
            state: DateStateExt.from(),
            selectedTab: RootTab.home,
          ),
        ) {
    on<RootTabSelected>(_onPageChanged);
  }

  final PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.893);

  void _onPageChanged(
    RootTabSelected event,
    Emitter<DashBoardState> emit,
  ) {
    final state = this.state;
    controller.animateToPage(
      event.selectedTab.index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
    );
    emit(state.copyWith(selectedTab: event.selectedTab));
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
