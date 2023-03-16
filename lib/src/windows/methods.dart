@JS()
library chorome.windows;

import 'package:js/js.dart';
part 'types.dart';
part 'events.dart';
part 'misc.dart';

/// chrome.windows APIs
/// https://developer.chrome.com/docs/extensions/reference/windows

@JS()
@anonymous
class Windows {
  external dynamic create(WindowInfo? createData, Function(Window) callback);

  external OnFocusChangedHandler get onFocusChanged;
}
