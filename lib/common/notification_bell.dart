import 'package:flutter/cupertino.dart';
import 'package:oceanview/core/config/enum/notification_type_enum.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/utils/notification_utils.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({
    required this.id,
    required this.hour,
    required this.minutes,
    Key? key,
  }) : super(key: key);
  final int id;
  final int hour;
  final int minutes;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<int>>(
      valueListenable: NotificationManager.messageIdList,
      builder: (context, value, _) {
        return GestureDetector(
          onTap: value.contains(id)
              ? () {
                  NotificationManager.cancelNotification(id);
                  NotificationManager.onShowConfirmMessage(context);
                }
              : () {
                  NotificationManager.registerBusMessage(
                    id: id,
                    hour: hour,
                    minutes: minutes,
                    message: 'message',
                  );

                  NotificationManager.onShowConfirmMessage(
                    context,
                    type: NOTIFICATION_TYPE.BUS,
                  );
                },
          child: value.contains(id)
              ? R.image.icon_bell_fill.svgPicture(width: 13.44, height: 14.5)
              : R.image.icon_bell.svgPicture(width: 13.44, height: 14.5),
        );
      },
    );
  }
}
