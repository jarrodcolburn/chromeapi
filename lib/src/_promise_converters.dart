// Collection of helper that convert JS promises to Dart futures
// and do some type checking
import 'dart:html_common' show promiseToFuture, isJavaScriptPromise;
import 'dart:async' show Completer;

/// Convert a JS promise to a Dart future
/// Takes advantage that everything in Dart is an object
/// to create an extension method that performs the conversion
/// and type checking, especially for  JavaScript's ambiguous
/// return of individual objects or lists of objects.
extension PromiseToFuture on Object {
  Future<List<T>> toFutureList<T>() async {
    if (!isJavaScriptPromise(this)) {
      throw Exception(
          'Promise return type expected but received instead: $this');
    }
    final result = await promiseToFuture(this);
    if (result is List) return result.cast<T>();
    if (result == null) return <T>[];
    if (result is T) return <T>[result];
    throw Exception(
        'List of type ${T.toString()} could not be resolved as $this');
  }

  Future<T> toFuture<T>() => promiseToFuture(this);
}

/// Convert a JS callback to a Dart stream
extension CallbackToStream<F extends Function> on void Function(F) {
  Stream toStream(F Function(Completer) converter) async* {
    final completer = Completer();
    final callback = converter(completer);
    this.call(callback);
    yield await completer.future;
  }
}
