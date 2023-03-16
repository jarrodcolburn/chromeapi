@JS()
part of "methods.dart";

// TODO: change to a stream
@JS('chrome.webNavigation.onCommitted')
external OnCommittedHandler get onCommitted;
