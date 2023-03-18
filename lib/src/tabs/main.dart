import 'package:chromeapi/src/tabs/misc.dart';

import 'dart:async' show Completer;
import '../_promise_converters.dart';
import 'methods.dart' as methods;
import 'events.dart' as events;
import 'types.dart';
import 'temp.dart';

// TODO: Implement executeScript! in `scripting` is deprecated in tabs.
/// List of items that are deprecated in `tabs`
/// Deprecated mehtods:
/// * `executeScript`
/// * `getAllInWindow`
/// * `getSelected`
/// * `insertCSS`
/// * `removeCSS`
/// * `sendMessage`
/// Deprecated events:
/// * `onActiveChanged`
/// * `onHighlightChanged`

Future<String> captureVisibleTab([int? windowId, ImageDetails? options]) =>
    methods.captureVisibleTab(windowId, options).toFuture<String>();

Future<Port> connect(int tabId, [ConnectInfo? connectInfo]) =>
    methods.connect(tabId, connectInfo).toFuture<Port>();

Future<Tab> create(CreateProperties tabInfo) =>
    methods.create(tabInfo).toFuture<Tab>();

Future<List<Tab>> discard([int? tabId]) =>
    methods.discard(tabId).toFutureList<Tab>();

Future<String> detectLanguage([int? tabId]) =>
    methods.detectLanguage(tabId).toFuture<String>();
Future<Tab?> duplicate(int tabId) => methods.duplicate(tabId).toFuture<Tab?>();

Future<Tab?> get(int tabId) => methods.get(tabId).toFuture<Tab?>();

Future<Tab?> getCurrent() => methods.getCurrent().toFuture<Tab?>();

Future<int> getZoom([int? tabId]) => methods.getZoom(tabId).toFuture<int>();

Future<ZoomSettings> getZoomSettings([int? tabId]) =>
    methods.getZoomSettings(tabId).toFuture<ZoomSettings>();

Future<void> goBack([int? tabId]) => methods.goBack(tabId).toFuture<void>();

Future<void> goForward([int? tabId]) =>
    methods.goForward(tabId).toFuture<void>();

Future<int> group(Options? groupOptions) =>
    methods.group(groupOptions).toFuture<int>();

Future<void> highlight(HighlightInfo highlightInfo) =>
    methods.highlight(highlightInfo).toFuture<void>();

Future<Tab> move(int tabId, MoveProperties moveProperties) =>
    methods.move(tabId, moveProperties).toFuture<Tab>();

Future<List<Tab>> query(QueryInfo queryInfo) =>
    methods.query(queryInfo).toFutureList<Tab>();

Future<void> reload([int? tabId, ReloadProperties? reloadProperties]) =>
    methods.reload(tabId, reloadProperties).toFuture<void>();

Future<void> remove(List<int> tabIds) =>
    methods.remove(tabIds).toFuture<void>();

typedef JSONstring = String;
Future<JSONstring> sendMessage(int tabId, String message,
        [SendMessageOptions? options]) =>
    methods.sendMessage(tabId, message, options).toFuture<JSONstring>();
Future<void> setZoom(int? tabId, double zoomFactor) =>
    methods.setZoom(tabId, zoomFactor).toFuture<void>();
Future<void> setZoomSettings(int? tabId, ZoomSettings zoomSettings) =>
    methods.setZoomSettings(tabId, zoomSettings).toFuture<void>();
Future<void> ungroup(List<int> tabIds) =>
    methods.ungroup(tabIds).toFuture<void>();

Future<List<Tab>> update(int tabId, UpdateProperties updateProperties) =>
    methods.update(tabId, updateProperties).toFutureList<Tab>();

Stream get onActivated => events.onActivated.toStream((Completer completer) {
      return (a) => completer.complete(a);
    });
