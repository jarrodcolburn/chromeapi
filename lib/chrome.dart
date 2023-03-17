import 'package:js/js.dart';

import 'src/debugger/methods.dart';
import 'src/devtools/methods.dart';
import 'src/notifications/methods.dart';
import 'src/runtime/methods.dart';
import 'src/storage/methods.dart';
import 'src/tabs/methods.dart';
import 'src/web_navigation/methods.dart';
import 'src/windows/methods.dart';

@JS()
external Chrome get chrome;

@JS()
@anonymous
class Chrome {
  external Debugger get debugger;
  external Devtools get devtools;
  external Notifications get notifications;
  external Runtime get runtime;
  external Storage get storage;
  external Tabs get tabs;
  external WebNavigation get webNavigation;
  external Windows get windows;
}
