import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fetch_data_event.dart';
part 'fetch_data_state.dart';

class DashboardBloc extends Bloc<FetchDataEvent, FetchDataState> {
  DashboardBloc() : super(LoggedInState()) {
    on<RefreshBusEvent>(_onBusInfoRefreshRequested);
  }

  void _onBusInfoRefreshRequested(
    RefreshBusEvent event,
    Emitter<FetchDataState> emit,
  ) {
    // final cstmname = Cstmname.dirty(event.cstmname);
    emit(LoadedState());
  }
}
