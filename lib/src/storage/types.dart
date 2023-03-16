@JS()
part of "methods.dart";

@JS()
@anonymous
class StorageArea {
  external Object get(List<String> keys, void Function(Object result) callback);

  external Object set(Object items, void Function()? callback);

  external Object remove(List<String> keys, void Function()? callback);
}
