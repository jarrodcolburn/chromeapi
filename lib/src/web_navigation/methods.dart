@JS()
// to match the name of the JS library...
// ignore: library_names
library chrome.webNavigation;

import 'package:js/js.dart';
part 'types.dart';
part 'events.dart';
part 'misc.dart';

/// chrome.webNavigation APIs
/// https://developer.chrome.com/docs/extensions/reference/webNavigation
@JS()
@anonymous
class WebNavigation {}
