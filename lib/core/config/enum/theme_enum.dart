import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:oceanview/core/utils/theme.dart';

enum CustomTheme {
  light,
  dark,
  system,
}

extension CustomThemeExt on CustomTheme {
  String get text {
    switch (this) {
      case CustomTheme.light:
        return '라이트 모드';
      case CustomTheme.dark:
        return '다크 모드';
      case CustomTheme.system:
        return '자동 모드';
    }
  }

  ThemeData get theme {
    switch (this) {
      case CustomTheme.light:
        return AppTheme.light;
      case CustomTheme.dark:
        return AppTheme.dark;
      case CustomTheme.system:
        return SchedulerBinding.instance.window.platformBrightness ==
                Brightness.light
            ? AppTheme.light
            : AppTheme.dark;
    }
  }
}
