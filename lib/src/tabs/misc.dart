@JS()
part of "methods.dart";

/// https://developer.chrome.com/docs/extensions/reference/extensionTypes/#type-RunAt
/// `document_start`,`document_end`,`document_idle`

/// https://developer.chrome.com/docs/extensions/reference/extensionTypes/#type-CSSOrigin
/// `author`,`user`
typedef CSSOrigin = String;

typedef RunAt = String;

/// String | String[]
typedef Url = dynamic;

@JS()
@anonymous
class ActiveInfo {
  external int get tabId;
  external int get windowId;
}

@JS()
@anonymous
class InjectionDetails {
  external factory InjectionDetails({
    bool? allFrames,
    String? code,
    CSSOrigin? cssOrigin,
    String? file,
    num? frameId,
    bool? matchAboutBlank,
    RunAt? runAt,
  });
  external bool? get allFrames;
  external String? get code;
  external CSSOrigin? get cssOrigin;
  external String? get file;
  external num? get frameId;
  external bool? get matchAboutBlank;
  external RunAt? get runAt;
}

@JS()
@anonymous
class QueryInfo {
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
    WindowType? windowId,
    WindowType? windowType,
  });
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
  external WindowType? get windowType;
}

@JS()
@anonymous
class TabInfo {
  external factory TabInfo({bool? active, bool? pinned, String? url});
  external bool? get active;
  external bool? get pinned;
  external String? get url;
}

