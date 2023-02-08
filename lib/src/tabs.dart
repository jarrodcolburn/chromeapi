// File interop with javascript functionality exposed by chrome extensions.
@JS()
library chromeapi;

import 'package:js/js.dart';
import 'package:js/js_util.dart' show promiseToFuture;

/// Calls invoke JavaScript `chrome.tabs.query(obj)`. See documentation at
/// https://developer.chrome.com/docs/extensions/reference/tabs/#method-query
@JS('chrome.tabs.query')
external dynamic _query(QueryInfo queryInfo, [Function? callback]);

Future<List<Tab?>> query(QueryInfo queryInfo) async {
  final response = await promiseToFuture(_query(queryInfo));
  if (response is List) return response.cast<Tab?>();
  return (response is Tab) ? [response] : <Tab>[];
}

/// https://developer.chrome.com/docs/extensions/reference/tabs/#type-TabStatus
/// `unloaded`,`loading`,`complete`
typedef TabStatus = String;

// https://developer.chrome.com/docs/extensions/reference/tabs/#type-WindowType
/// `normal`,`popup`,`panel`,`app`,`devtools`
typedef WindowId = num;

/// https://developer.chrome.com/docs/extensions/reference/tabs/#type-MutedInfoReason
/// `user`,`capture`,`extension`
typedef MutedInfoReason = String;

/// String | String[]
typedef Url = dynamic;

@JS()
@anonymous
class QueryInfo {
  external bool? get active;
  external bool? get audible;
  external bool? get autoDiscardable;
  external bool? get currentWindow;
  external bool? get discarded;
  external num? get groupId;
  external bool? get highlighted;
  external num? get index;
  external bool? get lastFocusedWindow;
  external bool? get muted;
  external bool? get pinned;
  external TabStatus? get status;
  external String? get title;
  external String? get url;
  external num? get windowId;
  external WindowId? get windowType;
  external factory QueryInfo({
    bool? active,
    bool? audible,
    bool? autoDiscardable,
    bool? currentWindow,
    bool? discarded,
    num? groupId,
    bool? highlighted,
    num? index,
    bool? lastFocusedWindow,
    bool? muted,
    bool? pinned,
    TabStatus? status,
    String? title,
    Url? url,
    WindowId? windowId,
    WindowId? windowType,
  });
}

/// JavaScript object(s) returned from `chrome.tabs.query`
@JS()
@anonymous
class Tab {
  external bool? get audible;
  external bool? get autoDiscardable;
  external bool? get discarded;
  external String? get favIconUrl;
  external num? get groupId;
  external num? get height;
  external bool? get highlighted;
  external num? get id;
  external bool get icognito;
  external num get index;
  external num get mutedInfo;
  external num get openerTabId;
  external String? get pendingUrl;
  external bool? get pinned;
  external String? get sessionId;
  external TabStatus? get status;
  external String? get title;
  external String? get url;
  external num? get width;
  external num? get windowId;

  external factory Tab({
    bool? audible,
    bool? autoDiscardable,
    bool? discarded,
    String? favIconUrl,
    num? groupId,
    num? height,
    bool? highlighted,
    num? id,
    bool incognito,
    num index,
    MutedInfo? mutedInfo,
    num openerTabId,
    String? pendingUrl,
    bool? pinned,
    String? sessionId,
    TabStatus? status,
    String? title,
    String? url,
    num? width,
    num? windowId,
  });
}

/// https://developer.chrome.com/docs/extensions/reference/tabs/#type-MutedInfo
@JS()
@anonymous
class MutedInfo {
  external String? get extensionId;
  external bool? get muted;
  external MutedInfoReason? get reason;
  external factory MutedInfo({
    String? extensionId,
    bool? muted,
    MutedInfoReason? reason,
  });
}
