import 'dart:html_common';

extension Dartify on Object {
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

// Future<List<T?>> _promiseToFutureList<T>(dynamic response) =>
//     promiseToFuture(response).then((result) {
//       if (result is List) return result.cast<T?>();
//       if (result == null) return <T>[];
//       if (result is T) return <T>[result];
//       throw Exception('Promise return type not expected');
//     });
