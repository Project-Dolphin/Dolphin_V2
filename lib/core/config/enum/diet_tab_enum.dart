import 'package:oceanview/core/config/r.dart';

enum DietTab {
  morning,
  lunch,
  dinner,
  dorm,
  navy,
}

extension DietTabExt on DietTab {
  String get text {
    switch (this) {
      case DietTab.morning:
        return R.string.morning;
      case DietTab.lunch:
        return R.string.lunch;
      case DietTab.dinner:
        return R.string.dinner;
      case DietTab.dorm:
        return R.string.dorm;
      case DietTab.navy:
        return R.string.navy;
    }
  }

  String get param {
    switch (this) {
      case DietTab.morning:
        return 'morning';
      case DietTab.lunch:
        return 'lunch';
      case DietTab.dinner:
        return 'dinner';
      default:
        return '';
    }
  }

  String get time {
    switch (this) {
      case DietTab.morning:
        return '08:30 ~ 09:30';
      case DietTab.lunch:
        return '1:30 ~ 13:30';
      case DietTab.dinner:
        return '17:30 ~ 19:30';
      default:
        return '';
    }
  }

  int get index {
    switch (this) {
      case DietTab.morning:
        return 0;
      case DietTab.lunch:
        return 1;
      case DietTab.dinner:
        return 2;
      case DietTab.dorm:
        return 3;
      case DietTab.navy:
        return 4;
    }
  }

  static DietTab from() {
    final DateTime now = DateTime.now();
    // TODO : 더러워서 정리하고 싶음
    if ((now.hour == 11 && now.minute < 30) || now.hour < 11) {
      return DietTab.morning;
    } else if ((now.hour == 13 && now.minute > 30) || now.hour > 13) {
      return DietTab.dinner;
    }

    return DietTab.lunch;
  }
}
