part of 'setting_bloc.dart';

class SettingState extends Equatable {
  const SettingState({required this.theme});

  final CustomTheme theme;
  @override
  List<Object?> get props => [theme];

  SettingState copyWith({
    CustomTheme? theme,
  }) {
    return SettingState(
      theme: theme ?? this.theme,
    );
  }
}
