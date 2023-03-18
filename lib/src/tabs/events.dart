@JS()
import 'package:js/js.dart';
// import 'misc.dart' show ActiveInfo, RemoveInfo;

external void onActivated(void Function(ActiveInfo activeInfo) callback);

external void onRemoved(void Function(int tabId, RemoveInfo info) callback);

@JS()
@anonymous
class ActiveInfo {
  external int get tabId;
  external int get windowId;
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
