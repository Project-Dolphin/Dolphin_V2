import 'package:flutter/cupertino.dart';
import 'package:oceanview/core/config/enum/notification_type_enum.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/utils/notification_utils.dart';

class NotificationBell extends StatefulWidget {
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
  State<StatefulWidget> createState() {
    return _NotificationBellState();
  }
}

class _NotificationBellState extends State<NotificationBell> {
  bool isClicked = false;

  @override
  void initState() {
    super.initState();
    if (NotificationManager.messageIdList.contains(widget.id)) {
      isClicked = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isClicked
          ? () {
              NotificationManager.cancelNotification(widget.id);
              NotificationManager.onShowConfirmMessage(context);

              setState(() {
                isClicked = !isClicked;
              });
            }
          : () {
              NotificationManager.registerBusMessage(
                id: widget.id,
                hour: widget.hour,
                minutes: widget.minutes,
                message: 'message',
              );

              NotificationManager.onShowConfirmMessage(
                context,
                type: NOTIFICATION_TYPE.BUS,
              );

              setState(() {
                isClicked = !isClicked;
              });
            },
      child: isClicked
          ? R.image.icon_bell_fill.svgPicture(width: 13.44, height: 14.5)
          : R.image.icon_bell.svgPicture(width: 13.44, height: 14.5),
    );
  }
}
