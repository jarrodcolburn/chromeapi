@JS()
part of "methods.dart";

@JS()
@anonymous
class MessageSender {
  external factory MessageSender({String? id, String? url, Tab? tab});
  external String? get id;
  external Tab? get tab;
  external String? get url;
}

@JS()
@anonymous
class Port {
  external String? get name;
  external ConnectionHandler get onDisconnect;
  external void disconnect();
}
