import 'package:chromeapi/src/tabs/misc.dart';

import '../_promise_converters.dart';
import 'methods.dart' as tabs;
// import 'events.dart' as events;
import 'types.dart';
import 'temp.dart';

// List of items that are deprecated in `tabs`
// Deprecated methods:
// * `executeScript`
// * `getAllInWindow`
// * `getSelected`
// * `insertCSS`
// * `removeCSS`
// * `sendMessage`
// Deprecated events:
// * `onActiveChanged`
// * `onHighlightChanged`

// Export this to be used as namespace
// used under Chrome's namespace
Tabs get chromeTabs => Tabs._();

class Tabs {
  Tabs._();
  Future<String> captureVisibleTab([int? windowId, ImageDetails? options]) =>
      tabs.captureVisibleTab(windowId, options).toFuture<String>();

  Future<Port> connect(int tabId, [ConnectInfo? connectInfo]) =>
      tabs.connect(tabId, connectInfo).toFuture<Port>();

  Future<Tab> create(CreateProperties tabInfo) =>
      tabs.create(tabInfo).toFuture<Tab>();

  Future<List<Tab>> discard([int? tabId]) =>
      tabs.discard(tabId).toFutureList<Tab>();

  Future<String> detectLanguage([int? tabId]) =>
      tabs.detectLanguage(tabId).toFuture<String>();
  Future<Tab?> duplicate(int tabId) => tabs.duplicate(tabId).toFuture<Tab?>();

  Future<Tab?> get(int tabId) => tabs.get(tabId).toFuture<Tab?>();

  Future<Tab?> getCurrent() => tabs.getCurrent().toFuture<Tab?>();

  Future<int> getZoom([int? tabId]) => tabs.getZoom(tabId).toFuture<int>();

  Future<ZoomSettings> getZoomSettings([int? tabId]) =>
      tabs.getZoomSettings(tabId).toFuture<ZoomSettings>();

  Future<void> goBack([int? tabId]) => tabs.goBack(tabId).toFuture<void>();

  Future<void> goForward([int? tabId]) =>
      tabs.goForward(tabId).toFuture<void>();

  Future<int> group(Options? groupOptions) =>
      tabs.group(groupOptions).toFuture<int>();

  Future<void> highlight(HighlightInfo highlightInfo) =>
      tabs.highlight(highlightInfo).toFuture<void>();

  Future<Tab> move(int tabId, MoveProperties moveProperties) =>
      tabs.move(tabId, moveProperties).toFuture<Tab>();

  Future<List<Tab>> query(QueryInfo queryInfo) =>
      tabs.query(queryInfo).toFutureList<Tab>();

  Future<void> reload([int? tabId, ReloadProperties? reloadProperties]) =>
      tabs.reload(tabId, reloadProperties).toFuture<void>();

  Future<void> remove(List<int> tabIds) => tabs.remove(tabIds).toFuture<void>();

  Future<JSONstring> sendMessage(int tabId, String message,
          [SendMessageOptions? options]) =>
      tabs.sendMessage(tabId, message, options).toFuture<JSONstring>();
  Future<void> setZoom(int? tabId, double zoomFactor) =>
      tabs.setZoom(tabId, zoomFactor).toFuture<void>();
  Future<void> setZoomSettings(int? tabId, ZoomSettings zoomSettings) =>
      tabs.setZoomSettings(tabId, zoomSettings).toFuture<void>();
  Future<void> ungroup(List<int> tabIds) =>
      tabs.ungroup(tabIds).toFuture<void>();

  Future<List<Tab>> update(int tabId, UpdateProperties updateProperties) =>
      tabs.update(tabId, updateProperties).toFutureList<Tab>();
}
// Stream get onActivated => tabs.onActivated.toStream((Completer completer) {
//       return (a) => completer.complete(a);
//     });

typedef JSONstring = String;
