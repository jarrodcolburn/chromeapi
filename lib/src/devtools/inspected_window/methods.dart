library chrome.devtools.inspectedWindow;

import 'package:js/js.dart';
// part 'types.dart';

/// https://developer.chrome.com/docs/extensions/reference/devtools_inspectedWindow/
@JS()
@anonymous
class InspectedWindow {
  external int get tabId;
}
