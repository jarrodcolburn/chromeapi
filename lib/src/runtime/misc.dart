part of "methods.dart";

@JS()
@anonymous
class ConnectInfo {
  external factory ConnectInfo({String? name});
  external String? get name;
}

@JS()
@anonymous
class ConnectionHandler {
  external void addListener(void Function(Port) callback);
}

@JS()
@anonymous
class OnMessageHandler {
  external void addListener(
      void Function(dynamic, MessageSender, Function) callback);
}
