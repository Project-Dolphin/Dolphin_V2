import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
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

    on<PageSlided>(_onPageSlided);
  }

  final PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.893);

  final ScrollController homeScrollController = ScrollController();
  final ScrollController campusEventScrollController = ScrollController();
  final ScrollController morningDietScrollController = ScrollController();
  final ScrollController lunchDietScrollController = ScrollController();
  final ScrollController dinnerDietScrollController = ScrollController();
  final ScrollController dormDietScrollController = ScrollController();

  void _onPageChanged(
    RootTabSelected event,
    Emitter<DashBoardState> emit,
  ) {
    final state = this.state;
    final int index = event.selectedTab.index;
    logger.d(index);
    controllerInit();
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
    emit(state.copyWith(selectedTab: event.selectedTab));
  }

  void _onPageSlided(
    PageSlided event,
    Emitter<DashBoardState> emit,
  ) {
    final state = this.state;
    controllerInit();
    emit(state.copyWith(selectedTab: RootTabExt.from(event.selectedPage)));
  }

  void controllerInit() {
    campusEventScrollController.hasClients
        ? campusEventScrollController.jumpTo(0)
        : {};
    morningDietScrollController.hasClients
        ? morningDietScrollController.jumpTo(0)
        : {};
    lunchDietScrollController.hasClients
        ? lunchDietScrollController.jumpTo(0)
        : {};
    dinnerDietScrollController.hasClients
        ? dinnerDietScrollController.jumpTo(0)
        : {};
    dormDietScrollController.hasClients
        ? dormDietScrollController.jumpTo(0)
        : {};
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
