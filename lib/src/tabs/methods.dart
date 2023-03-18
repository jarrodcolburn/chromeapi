@JS('chrome.tabs')
// library chrome.tabs;

import 'package:js/js.dart';

import 'misc.dart';
import 'types.dart' show ZoomSettings;
// import 'types.dart';

// part 'events.dart';
// part 'misc.dart';
// part 'types.dart';
/// chrome.tabs APIs
/// https://developer.chrome.com/docs/extensions/reference/tabs

external Object captureVisibleTab([int? windowId, ImageDetails? options, _]);
external Object connect(int tabId, [ConnectInfo? connectInfo]);
external Object create(CreateProperties createProperties, [_]);
external Object detectLanguage([int? tabId, _]);
external Object discard([int? tabId, _]);
external Object duplicate(int tabId, [_]);
external Object get(int tabId, [_]);
external Object getCurrent([_]);
external Object getZoom([int? tabId, _]);
external Object getZoomSettings([int? tabId, _]);
external Object goBack([int? tabId, _]);
external Object goForward([int? tabId, _]);
external Object group(Options? groupOptions, [_]);
external Object highlight(HighlightInfo highlightInfo, [_]);
external Object move(int tabId, MoveProperties moveProperties, [_]);
external Object query(QueryInfo queryInfo, [_]);
external Object reload([int? tabId, ReloadProperties? reloadProperties, _]);
external Object remove(List<int> tabIds, [_]);
external Object sendMessage(int tabId, String message,
    [SendMessageOptions? options, _]);
external Object setZoom(int? tabId, double zoomFactor, [_]);
external Object setZoomSettings(int? tabId, ZoomSettings zoomSettings, [_]);
external Object ungroup(List<int> tabIds, [_]);
external Object update(int? tabId, UpdateProperties updateProperties, [_]);
