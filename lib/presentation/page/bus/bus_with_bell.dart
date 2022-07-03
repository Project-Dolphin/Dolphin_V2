import 'package:flutter/material.dart';
import 'package:oceanview/common/notification_bell.dart';
import 'package:oceanview/core/config/r.dart';

class BusWithBell extends StatelessWidget {
  const BusWithBell({required this.minutes, required this.id, super.key});

  final int minutes;
  final int id;

  @override
  Widget build(BuildContext context) {
    final notiDate = getDateTimeWithRemainMinutes(minutes);

    return Row(children: [
      Text(
        '$minutes분',
        style: textStyleBold(
          Theme.of(context).colorScheme.onPrimary,
          18,
        ),
        softWrap: true,
      ),
      SizedBox(width: 6),
      NotificationBell(
        id: id,
        hour: notiDate.hour,
        minutes: notiDate.minute,
      ),
    ]);
  }

  DateTime getDateTimeWithRemainMinutes(int remainMinutes) {
    DateTime now = DateTime.now();

    return now.add(Duration(minutes: remainMinutes));
  }
}
