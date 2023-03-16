@JS()
library chrome.devtools;

import 'panels/methods.dart';
import 'inspected_window/methods.dart';
import 'package:js/js.dart';

@JS()
@anonymous
class Devtools {
  external InspectedWindow get inspectedWindow;
  external Panels get panels;
}
