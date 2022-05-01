import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/theme_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'setting_event.dart';
part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc(this.sharedPref)
      : super(
          const SettingState(
            theme: CustomTheme.light,
          ),
        ) {
    on<SettingInited>(_onThemeInited);
    on<ThemeChanged>(_onThemeChanged);
  }

  SharedPreferences sharedPref;

  void _onThemeInited(
    SettingInited event,
    Emitter<SettingState> emit,
  ) {
    String? storedTheme = sharedPref.getString('theme');
    CustomTheme theme = CustomTheme.system;
    if (storedTheme == null) {
      sharedPref.setString('theme', 'system');
    } else {
      theme = storedTheme == 'light'
          ? CustomTheme.light
          : storedTheme == 'dark'
              ? CustomTheme.dark
              : CustomTheme.system;
    }
    emit(state.copyWith(theme: theme));
  }

  void _onThemeChanged(
    ThemeChanged event,
    Emitter<SettingState> emit,
  ) {
    final state = this.state;
    emit(state.copyWith(theme: event.selectedTheme));
  }
}
