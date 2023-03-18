@JS('chrome.tabs')
// library chrome.tabs;

import 'package:js/js.dart';

import 'misc.dart';
import 'types.dart';

// part 'events.dart';
// part 'misc.dart';
// part 'types.dart';
/// chrome.tabs APIs
/// https://developer.chrome.com/docs/extensions/reference/tabs
external Object create(CreateProperties createProperties, [_]);
external Object duplicate(int tabId);

@Deprecated('Use executeScript instead')
external Object executeScript(int tabId, InjectionDetails details);
external Object get(int tabId, [_]);
external Object getCurrent();
external Object query(QueryInfo queryInfo, [_]);

external Object getZoom(int? tabId);
