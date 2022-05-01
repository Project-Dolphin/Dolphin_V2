part of 'setting_bloc.dart';

abstract class SettingEvent extends Equatable {}

class SettingInited extends SettingEvent {
  @override
  List<Object?> get props => [];
}

class ThemeChanged extends SettingEvent {
  ThemeChanged({required this.selectedTheme});
  final CustomTheme selectedTheme;
  @override
  List<Object?> get props => [];
}
