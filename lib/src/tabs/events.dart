@JS()
part of "methods.dart";

// TODO: these functions need to be made reusable for other streams

Stream<ActivatedEvent> get onActivated async* {
  while (true) {
    final completer = Completer<ActivatedEvent>();
    void callback(ActiveInfo activeInfo) {
      ActivatedEvent activatedEvent = (activeInfo:activeInfo,);
      completer.complete(activatedEvent);
    }
    _onActivated(callback);
    yield await completer.future;
  }
}

Stream<RemovedEvent> get onRemoved async* {
  while (true) {
    final completer = Completer<RemovedEvent>();
    void callback(int tabId, RemoveInfo info) {
      RemovedEvent removedEvent = (tabId:tabId,info:info);
      completer.complete(removedEvent);
    }
    _onRemoved(callback);
    yield await completer.future;
  }
}

@JS('chrome.tabs.onActivated')
external void _onActivated(void Function(ActiveInfo activeInfo) callback);

@JS('chrome.tabs.onRemoved')
external void _onRemoved(void Function(int tabId, RemoveInfo info) callback);

typedef ActivatedEvent =({ActiveInfo activeInfo,}) ;

typedef RemovedEvent =({int tabId , RemoveInfo info}) ;

@JS()
@anonymous
class RemoveInfo {
  external factory RemoveInfo({bool isWindowClosing, int windowId});
  external bool get isWindowClosing;
  external set isWindowClosing(bool newValue);
  external int get windowId;
  external set windowId(int newValue);
}
