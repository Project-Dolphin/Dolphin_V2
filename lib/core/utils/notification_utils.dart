import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:oceanview/core/config/enum/notification_type_enum.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationManager {
  static final NotificationManager _instance = NotificationManager._internal();

  static final NotificationController messageIdList = NotificationController();

  factory NotificationManager() => _instance;

  NotificationManager._internal() {
    init();
  }

  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    await _initializeNotification();
    await _configureLocalTimeZone();
  }

  // 타임존에서 에러나면 설정할 필요도 있을 것 같음
  static Future<void> _configureLocalTimeZone() async {
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Asia/Seoul'));
  }

  static Future<void> _initializeNotification() async {
    await _requestPermissions();

    const IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> cancelNotificationAll() async {
    await _flutterLocalNotificationsPlugin.cancelAll();
    messageIdList.removeAll();
  }

  static Future<void> cancelNotification(int id) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
    messageIdList.removeId(id);
  }

  static Future<void> _requestPermissions() async {
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  static Future<void> registerBusMessage({
    required int id,
    required int hour,
    required int minutes,
    required message,
  }) async {
    messageIdList.addId(id);

    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minutes,
    );

    await _flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      'flutter_local_notifications',
      message,
      scheduledDate,
      NotificationDetails(
        android: AndroidNotificationDetails(
          'channel id',
          'channel name',
          importance: Importance.max,
          priority: Priority.high,
          ongoing: true,
          styleInformation: BigTextStyleInformation(message),
          icon: '@mipmap/ic_launcher',
        ),
        iOS: const IOSNotificationDetails(),
      ),
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  static void onShowConfirmMessage(
    BuildContext context, {
    NOTIFICATION_TYPE type = NOTIFICATION_TYPE.CANCLE,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Center(
          child: Container(
            width: 250,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).canvasColor,
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                R.image.icon_noti_dialog_bell.svgPictureSize(size: 40),
                Expanded(
                  child: Center(
                    child: Text(type.notiMessage),
                  ),
                ),
                Divider(
                  height: 1,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 6.5, bottom: 10),
                    child: Text('확인'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class NotificationController extends ValueNotifier<List<int>> {
  NotificationController() : super([]);

  void addId(int idx) {
    value = [...value, idx];
  }

  void removeId(idx) {
    value = [...value.where((element) => element != idx)];
  }

  void removeAll() {
    value = [];
  }
}
