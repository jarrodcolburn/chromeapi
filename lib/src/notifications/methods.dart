library chrome.notifications;

import 'package:js/js.dart';
part 'types.dart';

/// https://developer.chrome.com/docs/extensions/reference/notifications/
@JS()
@anonymous
class Notifications {
  external void create(
      String? notificationId, NotificationOptions options, Function? callback);
}
