@JS()
part of "methods.dart";

@JS()
@anonymous
class Debuggee {
  external int get tabId;
  external String get extensionId;
  external String get targetId;
  external factory Debuggee({int tabId, String? extensionId, String? targetId});
}

// TODO Classes: DetachReason, TargetInfo, TargetInfoType