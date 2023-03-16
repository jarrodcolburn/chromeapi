@JS()
library chorome.tabs;

import 'dart:async';
import 'dart:core';
import 'dart:core';
import 'dart:html_common';

import 'package:js/js.dart';

part 'events.dart';
part 'misc.dart';
part 'types.dart';

@JS()
@anonymous
class Tabs {
  external dynamic create(TabInfo tabInfo, void Function(Tab) callback);
  external duplicate(int tabId);
  external executeScript(int tabId, InjectionDetails details);
  external Tab? get(int tabId, [_]);
  external getCurrent();
  external List<Tab?> query(QueryInfo queryInfo, [_]);
  external void remove(int tabId, [_]);
}
