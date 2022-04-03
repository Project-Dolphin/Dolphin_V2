import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';

part 'diet_page_event.dart';
part 'diet_page_state.dart';

class DietPageBloc extends Bloc<DietPageEvent, DietPageState> {
  DietPageBloc() : super(DietPageState(selectedDietTab: DietTabExt.from())) {
    on<DietTabSelected>(_onPageChanged);
  }

  void _onPageChanged(
    DietTabSelected event,
    Emitter<DietPageState> emit,
  ) {
    final state = this.state;
    emit(state.copyWith(selectedDietTab: event.selectedTab));
  }
}
