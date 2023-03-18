// Collection of helper that convert JS callbacks to Dart streams

import 'dart:async' show Completer;

// import 'tabs/methods.dart' show onRemoved, onActivated, ActiveInfo, RemoveInfo;

class CallbackToStream1<F extends Function> {
  final void Function(F) listener;
  final F Function(Completer) converter;
  CallbackToStream1(this.listener, this.converter);
  Stream go() async* {
    final completer = Completer();
    final callback = converter(completer);
    listener(callback);
    yield await completer.future;
  }
}

void Function(A) completeMe<A>(Completer completer) {
  return (activeInfo) => completer.complete(activeInfo);
}

void Function(A, B) completeMe2<A,B>(Completer completer) {
  return ( tabId, info) => completer.complete((tabId, info));
}

// void v() {
//   final f = CallbackToStream1(onActivated, completeMe);
//   f.go();
//   final ff = CallbackToStream1(onRemoved, completeMe2);
//   ff.go();
// }
