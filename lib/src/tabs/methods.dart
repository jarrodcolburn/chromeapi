@JS()
library chorome.tabs;

import 'dart:async';

import 'package:js/js.dart';

part 'events.dart';
part 'misc.dart';
part 'types.dart';

/// chrome.tabs APIs
/// https://developer.chrome.com/docs/extensions/reference/tabs

@JS()
@anonymous
class Tabs {
  external Tab create(TabInfo tabInfo, [_]);
  external Tab? duplicate(int tabId);
  external List executeScript(int tabId, InjectionDetails details);
  external Tab? get(int tabId, [_]);
  external Tab? getCurrent();
  external List<Tab> query(QueryInfo queryInfo, [_]);
  external void remove(int tabId, [_]);
}
