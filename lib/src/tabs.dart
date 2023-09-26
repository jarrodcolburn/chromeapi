// @JS('chrome')
// library chrome.tabs;

import 'dart:async';

import 'package:chromeapi/src/_promise_converters.dart';
import 'package:js/js.dart';
import 'tabs/misc.dart';
import 'tabs/types.dart' show ZoomSettings, Tab;
import 'tabs/temp.dart';
import 'tabs/eventhandler.dart';
// part 'events.dart';

// part 'events.dart';
// part 'misc.dart';
// part 'types.dart';
/// chrome.tabs APIs
/// https://developer.chrome.com/docs/extensions/reference/tabs

@JS('chrome.tabs')
@staticInterop
class Tabs {}

extension TabsExt on Tabs {
  external int get MAX_CAPTURE_VISIBLE_TAB_CALLS_PER_SECOND;
  external int get TAB_ID_NONE;
  @JS('captureVisibleTab')
  external Object _captureVisibleTab([int? windowId, ImageDetails? options, _]);
  Future<String> captureVisibleTab(int windowId, ImageDetails options) =>
      _captureVisibleTab(windowId, options).toFuture<String>();

  @JS('connect')
  external Object _connect(int tabId, [ConnectInfo? connectInfo]);
  Future<Port> connect(int tabId, [ConnectInfo? connectInfo]) =>
      _connect(tabId, connectInfo).toFuture<Port>();

  @JS('create')
  external Object _create(CreateProperties createProperties, [_]);
  Future<Tab> create(CreateProperties tabInfo) =>
      _create(tabInfo).toFuture<Tab>();

  @JS('detectLanguage')
  external Object _detectLanguage([int? tabId, _]);
  Future<String> detectLanguage([int? tabId]) =>
      _detectLanguage(tabId).toFuture<String>();

  @JS('discard')
  external Object _discard([int? tabId, _]);
  Future<List<Tab>> discard([int? tabId]) =>
      _discard(tabId).toFutureList<Tab>();

  @JS('duplicate')
  external Object _duplicate(int tabId, [_]);
  Future<Tab?> duplicate(int tabId) => _duplicate(tabId).toFuture<Tab?>();

  @JS('get')
  external Object _get(int tabId, [_]);
  Future<Tab?> get(int tabId) => _get(tabId).toFuture<Tab?>();

  @JS('getCurrent')
  external Object _getCurrent([_]);
  Future<Tab?> getCurrent() => _getCurrent().toFuture<Tab?>();

  @JS('getZoom')
  external Object _getZoom([int? tabId, _]);
  Future<int> getZoom([int? tabId]) => _getZoom(tabId).toFuture<int>();

  @JS('getZoomSettings')
  external Object _getZoomSettings([int? tabId, _]);
  Future<ZoomSettings> getZoomSettings([int? tabId]) =>
      _getZoomSettings(tabId).toFuture<ZoomSettings>();

  @JS('goBack')
  external Object _goBack([int? tabId, _]);
  Future<void> goBack([int? tabId]) => _goBack(tabId).toFuture<void>();

  @JS('goForward')
  external Object _goForward([int? tabId, _]);
  Future<void> goForward([int? tabId]) => _goForward(tabId).toFuture<void>();

  @JS('group')
  external Object _group(Options? groupOptions, [_]);
  Future<int> group(Options? groupOptions) =>
      _group(groupOptions).toFuture<int>();

  @JS('highlight')
  external Object _highlight(HighlightInfo highlightInfo, [_]);
  Future<void> highlight(HighlightInfo highlightInfo) =>
      _highlight(highlightInfo).toFuture<void>();

  @JS('move')
  external Object _move(int tabId, MoveProperties moveProperties, [_]);
  Future<Tab> move(int tabId, MoveProperties moveProperties) =>
      _move(tabId, moveProperties).toFuture<Tab>();

  @JS('query')
  external Object _query(QueryInfo queryInfo, [_]);
  Future<List<Tab>> query(QueryInfo queryInfo) =>
      _query(queryInfo).toFutureList<Tab>();

  @JS('reload')
  external Object _reload([int? tabId, ReloadProperties? reloadProperties, _]);
  Future<void> reload([int? tabId, ReloadProperties? reloadProperties]) =>
      _reload(tabId, reloadProperties).toFuture<void>();

  @JS('remove')
  external Object _remove(List<int> tabIds, [_]);
  Future<void> remove(List<int> tabIds) => _remove(tabIds).toFuture<void>();

  @JS('sendMessage')
  external Object _sendMessage(int tabId, String message,
      [SendMessageOptions? options, _]);
  Future<String> sendMessage(int tabId, String message,
          [SendMessageOptions? options]) =>
      _sendMessage(tabId, message, options).toFuture<String>();

  @JS('setZoom')
  external Object _setZoom(int? tabId, double zoomFactor, [_]);
  Future<void> setZoom(int? tabId, double zoomFactor) =>
      _setZoom(tabId, zoomFactor).toFuture<void>();

  @JS('setZoomSettings')
  external Object _setZoomSettings(int? tabId, ZoomSettings zoomSettings, [_]);
  Future<void> setZoomSettings(int? tabId, ZoomSettings zoomSettings) =>
      _setZoomSettings(tabId, zoomSettings).toFuture<void>();

  @JS('ungroup')
  external Object _ungroup(List<int> tabIds, [_]);
  Future<void> ungroup(List<int> tabIds) => _ungroup(tabIds).toFuture<void>();

  @JS('update')
  external Object _update(int? tabId, UpdateProperties updateProperties, [_]);
  Future<List<Tab>> update(int tabId, UpdateProperties updateProperties) =>
      _update(tabId, updateProperties).toFutureList<Tab>();

  @JS('onActivated')
  external ActiveEventHandler get _onActivated;
  Stream<ActiveEvent> get onActivated {
    final s = StreamController<ActiveEvent>()
      ..setup(_onActivated, ActiveEvent._);
    return s.stream;
  }
}

class ActiveEvent {
  final ActiveInfo activeInfo;
  ActiveEvent._(this.activeInfo);
}