part of 'methods.dart';

// import 'package:js/js.dart';
// import 'misc.dart';
// import 'types.dart' show Tab;

external void onActivated(void Function(ActiveInfo activeInfo) callback);

external void onAttached(
    void Function(int tabId, AttachInfo attachInfo) callback);

external void onCreated(void Function(Tab tab) callback);

external void onDetached(
    void Function(int tabId, DetachInfo detachInfo) callback);

external void onHighlighted(
    void Function(HighlightInfo highlightInfo) callback);

external void onMoved(void Function(int tabId, MoveInfo moveInfo) callback);

external void onRemoved(void Function(int tabId, RemoveInfo info) callback);

external void onReplaced(
    void Function(int addedTabId, int removedTabId) callback);

external void onUpdated(
    void Function(int tabId, ChangeInfo changeInfo, Tab tab) callback);
