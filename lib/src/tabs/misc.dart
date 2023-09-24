import 'package:js/js.dart';
import "types.dart";

/// https://developer.chrome.com/docs/extensions/reference/extensionTypes/#type-RunAt
/// `document_start`,`document_end`,`document_idle`

/// https://developer.chrome.com/docs/extensions/reference/extensionTypes/#type-CSSOrigin
/// `author`,`user`
typedef CSSOrigin = String;

/// `jpeg`,`png`
typedef ImageFormat = String;

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
class ConnectInfo {
  external factory ConnectInfo(
      {String? docuemtnId, int? frameId, String? name});
  external String? get documentId;
  external int? get frameId;
  external String? get name;
}

@JS()
@anonymous
class CreateProperties {
  external factory CreateProperties(
      {bool? active,
      int index,
      int? openerTabId,
      bool? pinned,
      String? url,
      String? windowId});
  external bool? get active;
  external int? get index;
  external int? get openerTabId;
  external bool? get pinned;
  external String? get url;
  external String? get windowId;
}

@JS()
@anonymous
class HighlightInfo {
  external factory HighlightInfo({int? windowId, List<int>? tabs});
  external List<int>? get tabs;
  external int? get windowId;
}

/// Extension Types
@JS()
@anonymous
class ImageDetails {
  external factory ImageDetails({ImageFormat? format, int? quality});
  external ImageFormat? get format;
  external int? get quality;
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
class MoveProperties {
  external factory MoveProperties({int? index, int? windowId});
  external int? get index;
  external int? get windowId;
}

@JS()
@anonymous
class Options {
  external factory Options(
      {CreateProperties? createProperties, int? groupId, List<int>? tabIds});
  external CreateProperties? get createProperties;
  external int? get groupId;
  external List<int>? get tabIds;
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
class ReloadProperties {
  external bool? bypassCache;
  external factory ReloadProperties({bool? bypassCache});
}

@JS()
@anonymous
class RemoveInfo {
  external factory RemoveInfo({bool isWindowClosing, int windowId});
  external bool get isWindowClosing;
  external set isWindowClosing(bool newValue);
  external int get windowId;
  external set windowId(int newValue);
}

@JS()
@anonymous
class SendMessageOptions {
  external factory SendMessageOptions({String? optional, int? frameId});
  external int? get frameId;
  external String? get optional;
}

@JS()
@anonymous
class UpdateProperties {
  external factory UpdateProperties(
      {bool? active,
      bool? autoDiscardable,
      bool? highlighted,
      bool? muted,
      int? openerTabId,
      bool? pinned,
      String? url});
  external bool? get active;
  external bool? get autoDiscardable;
  external bool? get highlighted;
  external bool? get muted;
  external int? get openerTabId;
  external bool? get pinned;
  external String? get url;
}

@JS()
@anonymous
class AttachInfo {
  external factory AttachInfo({int newWindowId, int newPosition});
  external int get newWindowId;
  external int get newPosition;
}

@JS()
@anonymous
class DetachInfo {
  external factory DetachInfo({int? oldWindowId, int oldPosition});
  external int get oldWindowId;
  external int get oldPosition;
}

@JS()
@anonymous
class MoveInfo {
  external factory MoveInfo({int windowId, int fromIndex, int toIndex});
  external int get windowId;
  external int get fromIndex;
  external int get toIndex;
}

@JS()
@anonymous
class ChangeInfo {
  external bool? get audible;
  external bool? get autoDiscardable;
  external bool? get discarded;
  external bool? get favIconUrl;
  external int? get groupId;
  external MutedInfo? get mutedInfo;
  external bool? get pinned;
  external TabStatus? get status;
  external String? get title;
  external String? get url;
  external factory ChangeInfo(
      {bool? audible,
      bool? autoDiscardable,
      bool? discarded,
      bool? favIconUrl,
      int? groupId,
      MutedInfo? mutedInfo,
      bool? pinned,
      TabStatus? status,
      String? title,
      String? url});
}
