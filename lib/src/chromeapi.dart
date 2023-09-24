import 'package:js/js.dart';
import 'tabs.dart';
export 'tabs.dart' show TabsExt;
export 'tabs/misc.dart';
export 'tabs/types.dart';

@JS('chrome')
@staticInterop
class Chrome {}

extension ChromeExt on Chrome {
  external Tabs get tabs;
}

@JS()
external Chrome get chrome;
