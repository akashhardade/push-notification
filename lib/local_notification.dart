import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationApi {
  static final _notification = FlutterLocalNotificationsPlugin();

  static Future _notificationDetails() async {
    return const NotificationDetails(
        android: AndroidNotificationDetails("channelId", "channelName",
            importance: Importance.high,
            channelDescription: "channeldescreiption"));
  }

  static Future shownotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  }) async {
    _notification.show(id, title, body, await _notificationDetails(),
        payload: payload);
  }
}
