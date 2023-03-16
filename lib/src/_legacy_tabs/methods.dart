@JS('chrome.tabs')
library tabs;

import 'dart:html_common';

import 'types.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart';

// typedef Promise<Tab> = Object;

/// https://developer.chrome.com/docs/extensions/reference/tabs/#method-duplicate
external duplicate(num tabId);

/// https://developer.chrome.com/docs/extensions/reference/tabs/#method-executeScript
external executeScript(num tabId, InjectionDetails details);

external get(num tabId);

/// https://developer.chrome.com/docs/extensions/reference/tabs/#method-getCurrent
external getCurrent();

external getZoom(num? tabId);

/// https://developer.chrome.com/docs/extensions/reference/tabs/#method-query
external Object query(QueryInfo queryInfo);
