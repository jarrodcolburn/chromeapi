@JS('chrome.tabs')
library tabs;

import 'types.dart';
import 'package:js/js.dart' show JS;

/// https://developer.chrome.com/docs/extensions/reference/tabs/#method-duplicate
external duplicate(num tabId);

/// https://developer.chrome.com/docs/extensions/reference/tabs/#method-executeScript
external executeScript(num tabId, InjectionDetails details);

external get(num tabId);

external getCurrent();

external getZoom(num? tabId);

/// https://developer.chrome.com/docs/extensions/reference/tabs/#method-query
external query(QueryInfo queryInfo);
