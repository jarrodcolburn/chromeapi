@JS()
part of "methods.dart";

@JS()
@anonymous
class OnChangedHandler {
  external void addListener(
    void Function(Object changes, String areaName) callback,
  );
}