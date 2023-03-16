@JS()
part of "methods.dart";

/// https://developer.chrome.com/docs/extensions/reference/tabs/#type-MutedInfoReason
/// `user`,`capture`,`extension`
typedef MutedInfoReason = String;

/// https://developer.chrome.com/docs/extensions/reference/tabs/#type-TabStatus
/// `unloaded`,`loading`,`complete`
typedef TabStatus = String;

// https://developer.chrome.com/docs/extensions/reference/tabs/#type-WindowType
/// `normal`,`popup`,`panel`,`app`,`devtools`
typedef WindowType = num;

@JS()
@anonymous
class MutedInfo {
  external factory MutedInfo({
    String? extensionId,
    bool? muted,
    MutedInfoReason? reason,
  });
  external String? get extensionId;
  external bool? get muted;
  external MutedInfoReason? get reason;
}

@JS()
@anonymous
class Tab {
  external factory Tab({
    bool? audible,
    bool? autoDiscardable,
    bool? discarded,
    String? favIconUrl,
    num? groupId,
    num? height,
    bool? highlighted,
    int? id,
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
  external bool? get audible;
  external bool? get autoDiscardable;
  external bool? get discarded;
  external String? get favIconUrl;
  external int? get groupId;
  external num? get height;
  external bool? get highlighted;
  external bool get icognito;
  external num? get id;
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
}
