@JS()
part of "methods.dart";

@JS()
@anonymous
class OnCommittedHandler {
  external void addListener(void Function(NavigationInfo details) callback);
}

@JS()
@anonymous
class NavigationInfo {
  external String get transitionType;
  external int get tabId;
  external String get url;
}
