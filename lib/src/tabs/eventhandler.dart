import 'dart:async';
import 'package:js/js.dart';
import './misc.dart';

@JS()
@staticInterop
class ActiveEventHandler {}

extension on ActiveEventHandler {
  external void addListener(void Function(ActiveInfo) f);
  external void removeListener(void Function(ActiveInfo) f);
}

extension wrapper<R> on StreamController<R> {
  void Function(A) single<A>(R Function(A) inner) => (A a) => add(inner(a));
  // void Function(A, B) double<A, B>(R Function(A, B) inner) => (A a, B b) => add(inner(a, b));
  setup(ActiveEventHandler e, R Function(ActiveInfo) inner) {
    final callback = allowInterop((ActiveInfo a) => add(inner(a)));
    onListen = () => e.addListener(callback);
    onCancel = () => e.removeListener(callback);
  }
}
