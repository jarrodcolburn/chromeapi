@JS('chrome.tabs')
library chrome.tabs;

import '../_helpers.dart';

import 'package:js/js.dart';

part 'events.dart';
part 'misc.dart';
part 'types.dart';

/// chrome.tabs APIs
/// https://developer.chrome.com/docs/extensions/reference/tabs
external Tab create(TabInfo tabInfo, [_]);
external Tab? duplicate(int tabId);
external List executeScript(int tabId, InjectionDetails details);
external Tab? get(int tabId, [_]);
external Object getCurrent();
external List<Tab> query(QueryInfo queryInfo, [_]);
