@JS()
part of "methods.dart";

@JS('chrome.tabs.onActivated')
external void _onActivated(void Function(ActiveInfo activeInfo) callback);

@JS('chrome.tabs.onRemoved')
external void _onRemoved(void Function(int tabId, dynamic info) callback);

Stream<ActiveInfo> get onActivated async* {
  while (true) {
    final completer = Completer<ActiveInfo>();
    _onActivated((ActiveInfo activeInfo) {
      completer.complete(activeInfo);
    });
    yield await completer.future;
  }
}

Stream<Record<int,>> get onRemoved async* {}

@JS()